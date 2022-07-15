import { basePath, isDevelopment } from '@/constants';

export interface MicroAppMap {
  [microName: string]: {
    scripts: {
      es: string[];
    };
    links: {
      style: string[];
      preload: string[];
    };
  };
}

// html 注释内容匹配用的正则表达式
const COMMENT_REGEX = /<!--.*?-->/g;

/**
 * 加载 html 内容
 * @param url
 * @returns
 */
const loadHTMLContentInDev = async (url: string) => {
  const htmlContent = await fetch(url).then((res) => res.text());
  return htmlContent;
};

/**
 * 解析 html 内容拿到入口文件和静态资源（包括预加载js文件和css文件）
 * @param htmlContent
 * @returns
 */
const parseHTMLInDev = (htmlContent: string) => {
  const domContent = new DOMParser().parseFromString(
    htmlContent.replace(COMMENT_REGEX, ''),
    'text/html',
  );

  // process js assets
  const scripts = Array.from(domContent.body.getElementsByTagName('script'));
  const scriptAssets = scripts.reduce(
    (res, script) => {
      // 本地开发环境中，加载入口文件
      if (script.type === 'module') {
        res.es.push(script.getAttribute('src'));
      }

      return res;
    },
    { es: [], sys: [] },
  );

  // process link assets, include preload and css
  const links = Array.from(domContent.getElementsByTagName('link'));
  const linkAssets = links.reduce(
    (res, link) => {
      if (link.hasAttribute('href')) {
        if (link.getAttribute('rel') === 'stylesheet') {
          res.style.push(link.getAttribute('href'));
        } else if (link.getAttribute('rel') === 'modulepreload') {
          res.preload.push(link.getAttribute('href'));
        }
      }
      return res;
    },
    {
      style: [],
      preload: [],
    },
  );

  return {
    scripts: scriptAssets,
    links: linkAssets,
  };
};

/**
 * 给 head 元素添加 link，包括 preload 和 css
 * @param href
 * @param rel
 */
const appendAssets = (href: string, rel: string) => {
  const headElement: HTMLElement = document.getElementsByTagName('head')[0];
  if (!document.querySelector(`link[href="${href}"]`)) {
    const element: HTMLLinkElement = document.createElement('link');
    // element.setAttribute(PREFIX, DYNAMIC);
    // element.id = id;
    element.rel = rel;
    element.href = href;
    headElement.appendChild(element);
  }
};

const appendCSS = (href: string) => {
  appendAssets(href, 'stylesheet');
};

const appendPreload = (href: string) => {
  appendAssets(href, 'modulepreload');
};

/**
 * 导出微应用的三个生命周期钩子
 * @param es , ESModule 的入口
 * @param sys , SystemJS 的入口
 * @returns micro app lifeCycles
 */
const loadMicroEntry = async (es) => {
  const { bootstrap, mount, unmount } = await import(/* @vite-ignore */ es);
  return { bootstrap, mount, unmount };
};

/**
 * 在开发环境，通过 MicroName 加载微应用，仅 ESModule 入口
 * @param micro micro app name
 * @returns micro app lifeCycles
 */
const loadMicroInDev = async (microName: string) => {
  const htmlContent = await loadHTMLContentInDev(
    `${window.location.origin}${basePath}/${microName}.html`,
  );
  const microAssets = parseHTMLInDev(htmlContent);
  const { scripts, links } = microAssets;
  links.style.forEach((style) => {
    appendCSS(style);
  });
  links.preload.forEach((preload) => {
    appendPreload(preload);
  });
  return loadMicroEntry(scripts.es[0]);
};

/**
 * 从提前注入到index.html的 microAppEntryMap 中解析出 MicroAppMap
 * @returns MicroAppMap
 */
const getMicroAppMap = (): MicroAppMap => {
  // 本地开发环境中，microAppMap 是空对象
  const microAppMap = (
    window.microAppEntryMap ? JSON.parse(window.microAppEntryMap) : {}
  ) as MicroAppMap;
  return microAppMap;
};

const microAppMap = getMicroAppMap();

/**
 * 在生产环境，通过 MicroName 加载微应用，支持 ESModule，且支持降级到 SystemJS
 * @param micro micro app name
 * @returns micro app lifeCycles
 */
const loadMicroInLive = async (microName: string) => {
  const microAppAssets = microAppMap[microName];
  const { scripts, links } = microAppAssets;
  links.style.forEach((style) => {
    appendCSS(style);
  });
  links.preload.forEach((preload) => {
    appendPreload(preload);
  });
  return loadMicroEntry(scripts.es[0]);
};

/**
 * 通过 MicroName 加载微应用，基于 Single-SPA
 * @param micro micro app name
 * @returns micro app lifeCycles
 */
export const loadMicroByName = async (microName: string) => {
  if (isDevelopment) {
    return loadMicroInDev(microName);
  } else {
    return loadMicroInLive(microName);
  }
};
