import { Plugin } from 'vite';

const injectReactDevtools = (): Plugin => {
  return {
    name: 'vite-plugin-inject-react-devtools',
    enforce: 'post',
    apply: 'serve',
    transformIndexHtml: {
      enforce: 'post',
      async transform(html, ctx) {
        if (!ctx.path.endsWith('base/index.html')) return;
        return {
          html,
          tags: [
            {
              tag: 'script',
              attrs: {
                src: 'http://localhost:8097',
              },
              injectTo: 'head',
            },
          ],
        };
      },
    },
  };
};

export default injectReactDevtools;
