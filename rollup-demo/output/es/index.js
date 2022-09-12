import _throttle from 'lodash/throttle';

var Button = 'Button';

var dynamicImport = function dynamicImport() {
  import('./incrementer-79e85d58.js').then(function (_ref) {
    var count = _ref.count,
        increment = _ref.increment;
    console.log(count);
    increment();
    console.log(count);
  });
};
console.log(Button);
var throttleFn = _throttle(function () {
  console.log("throttle");
});
var rollup = rollup;

export { dynamicImport, rollup, throttleFn };
