import { readFile } from 'fs/promises';
import path from 'path';

export const appNameMap = (appName) => {
  // index 应该指向 packages/base
  return appName === 'index' ? 'base' : appName;
};

// 匹配本地路径的html的 appName，比如 /usr/abc/index.html，将会匹配到 index
export const localPathHtmlAppNameReg = /\/([^/]+?)\.html$/;

// 匹配URl上path的appName，比如 /index.html，将会匹配到 index
export const urlPathHtmlAppNameReg = /^\/([a-zA-Z0-9_]+?).html$/;

export const readHtmlContentFromAppName = async (rootPath, appName) => {
  return await readFile(
    path.resolve(rootPath, 'packages', appNameMap(appName), 'index.html'),
    {
      encoding: 'utf-8',
    },
  );
};
