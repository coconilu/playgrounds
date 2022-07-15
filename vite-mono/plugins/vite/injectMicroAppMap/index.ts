import { PluginOption } from 'vite';
import { injectMicroAppMap } from './helper';

export interface InjectConfig {
  rootPath: string;
}

export default function injectMicroAppMapToIndexHTML(
  config: InjectConfig,
): PluginOption {
  const { rootPath } = config;
  return {
    name: 'vite-plugin-merge-manifest',
    enforce: 'post',
    apply: 'build',
    closeBundle() {
      try {
        injectMicroAppMap(rootPath);
      } catch (err) {
        console.error(err);
      }
    },
  };
}
