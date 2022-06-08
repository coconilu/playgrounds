"use strict";

var _interopRequireDefault = require("@babel/runtime/helpers/interopRequireDefault");

var _regenerator = _interopRequireDefault(require("@babel/runtime/regenerator"));

var _asyncToGenerator2 = _interopRequireDefault(require("@babel/runtime/helpers/asyncToGenerator"));

require("core-js/modules/es.array.fill.js");

require("core-js/modules/es.object.to-string.js");

require("core-js/modules/es.promise.js");

require("core-js/modules/es.array.iterator.js");

require("core-js/modules/es.object.from-entries.js");

// import "core-js";
var arr = new Array(5).fill(1);
console.log("🚀 ~ file: index.js ~ line 2 ~ arr", arr);

var as = /*#__PURE__*/function () {
  var _ref = (0, _asyncToGenerator2.default)( /*#__PURE__*/_regenerator.default.mark(function _callee() {
    return _regenerator.default.wrap(function _callee$(_context) {
      while (1) {
        switch (_context.prev = _context.next) {
          case 0:
            _context.next = 2;
            return Promise.resolve();

          case 2:
            return _context.abrupt("return", _context.sent);

          case 3:
          case "end":
            return _context.stop();
        }
      }
    }, _callee);
  }));

  return function as() {
    return _ref.apply(this, arguments);
  };
}();

var obj = Object.fromEntries([["a", "1"], ["b", "2"]]);
console.log("🚀 ~ file: index.js ~ line 11 ~ obj", obj); // export default arr