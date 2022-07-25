import { defineConfig } from 'vitepress';

const config = defineConfig({
  title: 'VitePress',
  description: 'Just playing around.',
  lastUpdated: true,
  markdown: {
    theme: 'material-palenight',
    lineNumbers: true
  },
  themeConfig: {
    logo: '/logo.png',
  }
});

export default config;
