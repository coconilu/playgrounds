const path = require('path');
const fs = require('fs');

const lessRender = require('./lessRender');

const targetPath = path.resolve(
  __dirname,
  '../../',
  'packages/common/biz-comps/PhoneNumber/style.module.less',
);
const targetContent = fs.readFileSync(targetPath);

const result = lessRender(targetContent, { filename: targetPath });
console.log('🚀 ~ file: lessRender.test.js ~ line 13 ~ result', result);
