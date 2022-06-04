const plugins = [[
  '@babel/plugin-transform-runtime',
  {
    // corejs: 3
  }
]]

const presets = [
  [
    "@babel/preset-env",
    {
      debug: true,
      targets: {
        edge: "17",
        firefox: "60",
        chrome: "44",
        safari: "11.1",
      },
      useBuiltIns: "usage",
      corejs: 3,
    },
  ],
];

module.exports = { presets, plugins, include: ['src/**'] };
