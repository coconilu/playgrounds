import { Plugin } from 'vite';
import path from 'path';
import { access } from 'fs/promises';

export interface PluginConfig {
  cid: string;
  rootPath: string;
}

/**
 * 代码国际化插件
 * @param pluginConfig
 * @returns
 */
const extensionByCid = (pluginConfig: PluginConfig): Plugin => {
  const { cid, rootPath } = pluginConfig;

  const extensions = ['tsx', 'ts', 'jsx', 'js'];

  return {
    name: 'vite-plugin-extension-by-cid',
    enforce: 'pre',
    async resolveId(source, importer) {
      // 是否来自第三方库
      const isFromNodeModules = source.includes('node_modules');
      if (isFromNodeModules) return undefined;

      const pathSections = source.split('/');
      const fileName = pathSections[pathSections.length - 1];
      const fileNameSections = fileName.split('.');

      // 是否已经有扩展名
      const hasExtension =
        fileNameSections.length > 1 &&
        !extensions.includes(fileNameSections[fileNameSections.length - 1]);
      if (hasExtension) return undefined;

      // 是否已经有cid
      const hasCid =
        fileNameSections.length > 1 &&
        fileNameSections[fileNameSections.length - 1] === cid;
      if (hasCid) return undefined;

      // 判断是不是 common 里的包
      const isFromCommon = source.startsWith('common/');
      const prefixPath = isFromCommon
        ? path.resolve(rootPath, 'packages')
        : path.dirname(importer || '');

      // 尝试通过 cid 和 extension 寻找正确的文件
      for (const extension of extensions) {
        const guessPath = path.resolve(
          prefixPath,
          `${source}.${cid}.${extension}`,
        );

        try {
          await access(guessPath);
          return guessPath;
        } catch {
          // 如果 source 是一个文件夹，需要考虑 index
          const guessPath = path.resolve(
            prefixPath,
            `${source}/index.${cid}.${extension}`,
          );
          try {
            await access(guessPath);
            return guessPath;
          } catch {
            // DO NOTHING
          }
        }
      }

      return undefined;
    },
  };
};

export default extensionByCid;
