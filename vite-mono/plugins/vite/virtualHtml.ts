import path from 'path';
import { PluginOption } from 'vite';
import {
  appNameMap,
  localPathHtmlAppNameReg,
  readHtmlContentFromAppName,
  urlPathHtmlAppNameReg,
} from './helper';

export interface EntryHtmlConfig {
  packages: string[];
  rootPath: string;
}

/**
 * 用于生成每一个微模块的html内容。
 * 对于该项目，主要生成以下入口（entry）：
 * 1. index.html
 * 2. order.html
 * 3. checkout.html
 * 4. topup.html
 * 5. donation.html
 * 6. ...more
 * @param config
 * @returns
 */
export default function virtualHtml(config: EntryHtmlConfig): PluginOption {
  const { packages, rootPath } = config;

  return {
    name: 'vite-plugin-dp-entry-html',
    enforce: 'pre',
    config(userOptions) {
      if (!userOptions.build) {
        userOptions.build = {};
      }
      if (!userOptions.build.rollupOptions) {
        userOptions.build.rollupOptions = {};
      }
      userOptions.build.rollupOptions.input = [...packages].reduce(
        (option, curApp) => {
          option[curApp] = `${curApp}.html`;
          return option;
        },
        {},
      );
      return {
        ...userOptions,
      };
    },
    resolveId(source, importer) {
      if (source.endsWith('html') && !importer) {
        const appName = source.replace('.html', '');
        return path.resolve(rootPath, `${appName}.html`);
      }
      return null;
    },
    async load(id) {
      if (id.endsWith('html')) {
        const matchResult = localPathHtmlAppNameReg.exec(id);
        if (!matchResult) {
          return null;
        }
        const appName = matchResult[1];
        const htmlContent = await readHtmlContentFromAppName(rootPath, appName);
        return htmlContent;
      }
      return null;
    },
    // writeBundle(options, bundle) {
    //   const fileNames = Object.keys(bundle);
    //   console.log(
    //     '🚀 ~ file: virtualHtml.ts ~ line 79 ~ generateBundle ~ fileNames',
    //     '\n',
    //     fileNames,
    //   );
    // },
    configureServer(server) {
      return () => {
        server.middlewares.use((req, res, next) => {
          if (req.url?.endsWith('html')) {
            const matchAppName = urlPathHtmlAppNameReg.exec(req.url);
            if (!matchAppName) {
              return next();
            } else {
              const appName = appNameMap(matchAppName[1]);
              req.url = `/packages/${appName}/index.html`;
              return next();
            }
          }
          next();
        });
      };
    },
  };
}
