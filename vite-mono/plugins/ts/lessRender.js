const less = require('less');
const path = require('path');

const importVarsPath = path.resolve(
  __dirname,
  '../../',
  'packages/common/styles/_vars.less',
);

const importMixinsPath = path.resolve(
  __dirname,
  '../../',
  'packages/common/styles/_mixin.less',
);

lessRender = (css, options) => {
  const { filename } = options;
  const toParsedCss = `;@import "${importVarsPath}";\n@import "${importMixinsPath}";\n ${css}`;
  let result = '';
  less.render(
    toParsedCss,
    {
      syncImport: true,
      filename,
      lint: true,
      // silent: true,
    },
    (error, output) => {
      if (error || output === undefined) throw error;
      result = output.css.toString();
    },
  );
  return result;
};

module.exports = lessRender;
