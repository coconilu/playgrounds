import fs from 'fs';
import { readdir } from 'fs/promises';
import jsdom from 'jsdom';
import path from 'path';
import { localPathHtmlAppNameReg } from '../helper';

export interface MicroAppAssets {
  scripts: {
    es: string[];
    sys: string[];
  };
  links: {
    style: string[];
    preload: string[];
  };
}

const distSubPath = 'demo';

export interface MicroAppMap {
  [microName: string]: MicroAppAssets;
}

const docType = '<!DOCTYPE html>';

// html 注释内容匹配用的正则表达式
const COMMENT_REGEX = /<!--.*?-->/g;

// 微应用降级方案（SystemJS）入口文件
const microAppLegacyEntryId = 'vite-legacy-entry';

const blackList = ['index.html'];

export const getAllMicroHtml = async (rootPath: string) => {
  const files = await readdir(path.join(rootPath, 'dist', distSubPath));
  const microHTMLs: string[] = files
    .filter((file) => file.endsWith('html') && !blackList.includes(file))
    .map((file) => path.join(rootPath, 'dist', distSubPath, file));
  return microHTMLs;
};

export const parseHtml = (html: string): MicroAppAssets => {
  const jsDocument = new jsdom.JSDOM(html.replace(COMMENT_REGEX, '')).window
    .document;

  // process js assets
  const scripts = Array.from(jsDocument.getElementsByTagName('script'));
  const scriptAssets = scripts.reduce<{ es: string[]; sys: string[] }>(
    (res, script) => {
      // 线上环境，加载入口
      if (
        script.type === 'module' &&
        script.hasAttribute('src') &&
        script.hasAttribute('crossorigin')
      ) {
        const src = script.getAttribute('src');
        if (src) {
          res.es.push(src);
        }
      } else if (
        script.hasAttribute('nomodule') &&
        script.id === microAppLegacyEntryId
      ) {
        const src = script.getAttribute('data-src');
        if (src) {
          res.sys.push(src);
        }
      }

      return res;
    },
    { es: [], sys: [] },
  );

  // process link assets, include preload and css
  const links = Array.from(jsDocument.getElementsByTagName('link'));
  const linkAssets = links.reduce<{ style: string[]; preload: string[] }>(
    (res, link) => {
      if (link.hasAttribute('href')) {
        if (link.getAttribute('rel') === 'stylesheet') {
          const href = link.getAttribute('href');
          if (href) {
            res.style.push(href);
          }
        } else if (link.getAttribute('rel') === 'modulepreload') {
          const href = link.getAttribute('href');
          if (href) {
            res.preload.push(href);
          }
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

// 固定的 script id，Live 环境下会读取
const MicroAppEntryMap = 'MicroAppEntryMap';

export const injectMicroAppMapToHTML = (
  htmlContent: string,
  microAppMap: MicroAppMap,
) => {
  const jsDocument = new jsdom.JSDOM(htmlContent).window.document;

  const preScript = jsDocument.querySelector(`#${MicroAppEntryMap}`);
  if (preScript) {
    preScript.remove();
  }

  const script = jsDocument.createElement('script');
  script.id = MicroAppEntryMap;
  const microAppEntryMapContent = JSON.stringify(microAppMap);
  script.innerHTML = `window.microAppEntryMap = '${microAppEntryMapContent}';`;
  jsDocument.head.appendChild(script);

  return jsDocument.documentElement.outerHTML;
};

export const injectMicroAppMapToIndexHTML = (
  rootPath: string,
  microAppMap: MicroAppMap,
) => {
  const indexHtmlPath = path.join(rootPath, 'dist', distSubPath, 'index.html');
  const htmlContent = fs.readFileSync(indexHtmlPath, 'utf8');

  let newHtmlContent = injectMicroAppMapToHTML(htmlContent, microAppMap);
  // jsdom 输出的 html 内容貌似会少了 docType
  if (!newHtmlContent.startsWith(docType)) {
    newHtmlContent = docType + newHtmlContent;
  }
  fs.writeFileSync(indexHtmlPath, newHtmlContent);
};

export const injectMicroAppMap = async (rootPath: string) => {
  const allMicroHtmlPaths = await getAllMicroHtml(rootPath);
  const microAppMap: MicroAppMap = {};
  allMicroHtmlPaths.forEach((htmlPath) => {
    const matchResult = localPathHtmlAppNameReg.exec(htmlPath);
    if (matchResult) {
      const htmlContent = fs.readFileSync(htmlPath, 'utf8');
      const microName = matchResult[1];
      const microAssets = parseHtml(htmlContent);
      microAppMap[microName] = microAssets;
    }
  });

  injectMicroAppMapToIndexHTML(rootPath, microAppMap);
};
