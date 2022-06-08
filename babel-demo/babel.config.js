const plugins = [[
  '@babel/plugin-transform-runtime',
  {
    corejs: false,
    regenerator: true,
  }
]]

const presets = [
  [
    "@babel/preset-env",
    {
      debug: true,
      // targets: ['Firefox > 20'], // 读取 .browserslistrc
      useBuiltIns: "usage",
      corejs: 3,
    },
  ],
];

module.exports = { presets, plugins, include: ['src/**'] };
