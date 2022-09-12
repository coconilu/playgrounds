{
  "code": "'use strict';\n\nObject.defineProperty(exports, '__esModule', { value: true });\n\nvar commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};\n\n/**\n * Checks if `value` is the\n * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n * @example\n *\n * _.isObject({});\n * // => true\n *\n * _.isObject([1, 2, 3]);\n * // => true\n *\n * _.isObject(_.noop);\n * // => true\n *\n * _.isObject(null);\n * // => false\n */\n\nfunction isObject$3(value) {\n  var type = typeof value;\n  return value != null && (type == 'object' || type == 'function');\n}\n\nvar isObject_1 = isObject$3;\n\n/** Detect free variable `global` from Node.js. */\n\nvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\nvar _freeGlobal = freeGlobal$1;\n\nvar freeGlobal = _freeGlobal;\n\n/** Detect free variable `self`. */\nvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n/** Used as a reference to the global object. */\nvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\nvar _root = root$2;\n\nvar root$1 = _root;\n\n/**\n * Gets the timestamp of the number of milliseconds that have elapsed since\n * the Unix epoch (1 January 1970 00:00:00 UTC).\n *\n * @static\n * @memberOf _\n * @since 2.4.0\n * @category Date\n * @returns {number} Returns the timestamp.\n * @example\n *\n * _.defer(function(stamp) {\n *   console.log(_.now() - stamp);\n * }, _.now());\n * // => Logs the number of milliseconds it took for the deferred invocation.\n */\nvar now$1 = function() {\n  return root$1.Date.now();\n};\n\nvar now_1 = now$1;\n\n/** Used to match a single whitespace character. */\n\nvar reWhitespace = /\\s/;\n\n/**\n * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n * character of `string`.\n *\n * @private\n * @param {string} string The string to inspect.\n * @returns {number} Returns the index of the last non-whitespace character.\n */\nfunction trimmedEndIndex$1(string) {\n  var index = string.length;\n\n  while (index-- && reWhitespace.test(string.charAt(index))) {}\n  return index;\n}\n\nvar _trimmedEndIndex = trimmedEndIndex$1;\n\nvar trimmedEndIndex = _trimmedEndIndex;\n\n/** Used to match leading whitespace. */\nvar reTrimStart = /^\\s+/;\n\n/**\n * The base implementation of `_.trim`.\n *\n * @private\n * @param {string} string The string to trim.\n * @returns {string} Returns the trimmed string.\n */\nfunction baseTrim$1(string) {\n  return string\n    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n    : string;\n}\n\nvar _baseTrim = baseTrim$1;\n\nvar root = _root;\n\n/** Built-in value references. */\nvar Symbol$2 = root.Symbol;\n\nvar _Symbol = Symbol$2;\n\nvar Symbol$1 = _Symbol;\n\n/** Used for built-in method references. */\nvar objectProto$1 = Object.prototype;\n\n/** Used to check objects for own properties. */\nvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString$1 = objectProto$1.toString;\n\n/** Built-in value references. */\nvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n/**\n * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the raw `toStringTag`.\n */\nfunction getRawTag$1(value) {\n  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n      tag = value[symToStringTag$1];\n\n  try {\n    value[symToStringTag$1] = undefined;\n    var unmasked = true;\n  } catch (e) {}\n\n  var result = nativeObjectToString$1.call(value);\n  if (unmasked) {\n    if (isOwn) {\n      value[symToStringTag$1] = tag;\n    } else {\n      delete value[symToStringTag$1];\n    }\n  }\n  return result;\n}\n\nvar _getRawTag = getRawTag$1;\n\n/** Used for built-in method references. */\n\nvar objectProto = Object.prototype;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString = objectProto.toString;\n\n/**\n * Converts `value` to a string using `Object.prototype.toString`.\n *\n * @private\n * @param {*} value The value to convert.\n * @returns {string} Returns the converted string.\n */\nfunction objectToString$1(value) {\n  return nativeObjectToString.call(value);\n}\n\nvar _objectToString = objectToString$1;\n\nvar Symbol = _Symbol,\n    getRawTag = _getRawTag,\n    objectToString = _objectToString;\n\n/** `Object#toString` result references. */\nvar nullTag = '[object Null]',\n    undefinedTag = '[object Undefined]';\n\n/** Built-in value references. */\nvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n/**\n * The base implementation of `getTag` without fallbacks for buggy environments.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the `toStringTag`.\n */\nfunction baseGetTag$1(value) {\n  if (value == null) {\n    return value === undefined ? undefinedTag : nullTag;\n  }\n  return (symToStringTag && symToStringTag in Object(value))\n    ? getRawTag(value)\n    : objectToString(value);\n}\n\nvar _baseGetTag = baseGetTag$1;\n\n/**\n * Checks if `value` is object-like. A value is object-like if it's not `null`\n * and has a `typeof` result of \"object\".\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n * @example\n *\n * _.isObjectLike({});\n * // => true\n *\n * _.isObjectLike([1, 2, 3]);\n * // => true\n *\n * _.isObjectLike(_.noop);\n * // => false\n *\n * _.isObjectLike(null);\n * // => false\n */\n\nfunction isObjectLike$1(value) {\n  return value != null && typeof value == 'object';\n}\n\nvar isObjectLike_1 = isObjectLike$1;\n\nvar baseGetTag = _baseGetTag,\n    isObjectLike = isObjectLike_1;\n\n/** `Object#toString` result references. */\nvar symbolTag = '[object Symbol]';\n\n/**\n * Checks if `value` is classified as a `Symbol` primitive or object.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n * @example\n *\n * _.isSymbol(Symbol.iterator);\n * // => true\n *\n * _.isSymbol('abc');\n * // => false\n */\nfunction isSymbol$1(value) {\n  return typeof value == 'symbol' ||\n    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n}\n\nvar isSymbol_1 = isSymbol$1;\n\nvar baseTrim = _baseTrim,\n    isObject$2 = isObject_1,\n    isSymbol = isSymbol_1;\n\n/** Used as references for various `Number` constants. */\nvar NAN = 0 / 0;\n\n/** Used to detect bad signed hexadecimal string values. */\nvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n/** Used to detect binary string values. */\nvar reIsBinary = /^0b[01]+$/i;\n\n/** Used to detect octal string values. */\nvar reIsOctal = /^0o[0-7]+$/i;\n\n/** Built-in method references without a dependency on `root`. */\nvar freeParseInt = parseInt;\n\n/**\n * Converts `value` to a number.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to process.\n * @returns {number} Returns the number.\n * @example\n *\n * _.toNumber(3.2);\n * // => 3.2\n *\n * _.toNumber(Number.MIN_VALUE);\n * // => 5e-324\n *\n * _.toNumber(Infinity);\n * // => Infinity\n *\n * _.toNumber('3.2');\n * // => 3.2\n */\nfunction toNumber$1(value) {\n  if (typeof value == 'number') {\n    return value;\n  }\n  if (isSymbol(value)) {\n    return NAN;\n  }\n  if (isObject$2(value)) {\n    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n    value = isObject$2(other) ? (other + '') : other;\n  }\n  if (typeof value != 'string') {\n    return value === 0 ? value : +value;\n  }\n  value = baseTrim(value);\n  var isBinary = reIsBinary.test(value);\n  return (isBinary || reIsOctal.test(value))\n    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n    : (reIsBadHex.test(value) ? NAN : +value);\n}\n\nvar toNumber_1 = toNumber$1;\n\nvar isObject$1 = isObject_1,\n    now = now_1,\n    toNumber = toNumber_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n/* Built-in method references for those with the same name as other `lodash` methods. */\nvar nativeMax = Math.max,\n    nativeMin = Math.min;\n\n/**\n * Creates a debounced function that delays invoking `func` until after `wait`\n * milliseconds have elapsed since the last time the debounced function was\n * invoked. The debounced function comes with a `cancel` method to cancel\n * delayed `func` invocations and a `flush` method to immediately invoke them.\n * Provide `options` to indicate whether `func` should be invoked on the\n * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n * with the last arguments provided to the debounced function. Subsequent\n * calls to the debounced function return the result of the last `func`\n * invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the debounced function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.debounce` and `_.throttle`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to debounce.\n * @param {number} [wait=0] The number of milliseconds to delay.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=false]\n *  Specify invoking on the leading edge of the timeout.\n * @param {number} [options.maxWait]\n *  The maximum time `func` is allowed to be delayed before it's invoked.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new debounced function.\n * @example\n *\n * // Avoid costly calculations while the window size is in flux.\n * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n *\n * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n * jQuery(element).on('click', _.debounce(sendMail, 300, {\n *   'leading': true,\n *   'trailing': false\n * }));\n *\n * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n * var source = new EventSource('/stream');\n * jQuery(source).on('message', debounced);\n *\n * // Cancel the trailing debounced invocation.\n * jQuery(window).on('popstate', debounced.cancel);\n */\nfunction debounce$1(func, wait, options) {\n  var lastArgs,\n      lastThis,\n      maxWait,\n      result,\n      timerId,\n      lastCallTime,\n      lastInvokeTime = 0,\n      leading = false,\n      maxing = false,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT$1);\n  }\n  wait = toNumber(wait) || 0;\n  if (isObject$1(options)) {\n    leading = !!options.leading;\n    maxing = 'maxWait' in options;\n    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n\n  function invokeFunc(time) {\n    var args = lastArgs,\n        thisArg = lastThis;\n\n    lastArgs = lastThis = undefined;\n    lastInvokeTime = time;\n    result = func.apply(thisArg, args);\n    return result;\n  }\n\n  function leadingEdge(time) {\n    // Reset any `maxWait` timer.\n    lastInvokeTime = time;\n    // Start the timer for the trailing edge.\n    timerId = setTimeout(timerExpired, wait);\n    // Invoke the leading edge.\n    return leading ? invokeFunc(time) : result;\n  }\n\n  function remainingWait(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime,\n        timeWaiting = wait - timeSinceLastCall;\n\n    return maxing\n      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n      : timeWaiting;\n  }\n\n  function shouldInvoke(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime;\n\n    // Either this is the first call, activity has stopped and we're at the\n    // trailing edge, the system time has gone backwards and we're treating\n    // it as the trailing edge, or we've hit the `maxWait` limit.\n    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n  }\n\n  function timerExpired() {\n    var time = now();\n    if (shouldInvoke(time)) {\n      return trailingEdge(time);\n    }\n    // Restart the timer.\n    timerId = setTimeout(timerExpired, remainingWait(time));\n  }\n\n  function trailingEdge(time) {\n    timerId = undefined;\n\n    // Only invoke if we have `lastArgs` which means `func` has been\n    // debounced at least once.\n    if (trailing && lastArgs) {\n      return invokeFunc(time);\n    }\n    lastArgs = lastThis = undefined;\n    return result;\n  }\n\n  function cancel() {\n    if (timerId !== undefined) {\n      clearTimeout(timerId);\n    }\n    lastInvokeTime = 0;\n    lastArgs = lastCallTime = lastThis = timerId = undefined;\n  }\n\n  function flush() {\n    return timerId === undefined ? result : trailingEdge(now());\n  }\n\n  function debounced() {\n    var time = now(),\n        isInvoking = shouldInvoke(time);\n\n    lastArgs = arguments;\n    lastThis = this;\n    lastCallTime = time;\n\n    if (isInvoking) {\n      if (timerId === undefined) {\n        return leadingEdge(lastCallTime);\n      }\n      if (maxing) {\n        // Handle invocations in a tight loop.\n        clearTimeout(timerId);\n        timerId = setTimeout(timerExpired, wait);\n        return invokeFunc(lastCallTime);\n      }\n    }\n    if (timerId === undefined) {\n      timerId = setTimeout(timerExpired, wait);\n    }\n    return result;\n  }\n  debounced.cancel = cancel;\n  debounced.flush = flush;\n  return debounced;\n}\n\nvar debounce_1 = debounce$1;\n\nvar debounce = debounce_1,\n    isObject = isObject_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT = 'Expected a function';\n\n/**\n * Creates a throttled function that only invokes `func` at most once per\n * every `wait` milliseconds. The throttled function comes with a `cancel`\n * method to cancel delayed `func` invocations and a `flush` method to\n * immediately invoke them. Provide `options` to indicate whether `func`\n * should be invoked on the leading and/or trailing edge of the `wait`\n * timeout. The `func` is invoked with the last arguments provided to the\n * throttled function. Subsequent calls to the throttled function return the\n * result of the last `func` invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the throttled function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.throttle` and `_.debounce`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to throttle.\n * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=true]\n *  Specify invoking on the leading edge of the timeout.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new throttled function.\n * @example\n *\n * // Avoid excessively updating the position while scrolling.\n * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n *\n * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n * jQuery(element).on('click', throttled);\n *\n * // Cancel the trailing throttled invocation.\n * jQuery(window).on('popstate', throttled.cancel);\n */\nfunction throttle(func, wait, options) {\n  var leading = true,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT);\n  }\n  if (isObject(options)) {\n    leading = 'leading' in options ? !!options.leading : leading;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n  return debounce(func, wait, {\n    'leading': leading,\n    'maxWait': wait,\n    'trailing': trailing\n  });\n}\n\nvar throttle_1 = throttle;\n\nvar Button = 'Button';\n\nvar dynamicImport = function dynamicImport() {\n  Promise.resolve().then(function () { return require('./incrementer-62789671.js'); }).then(function (_ref) {\n    var count = _ref.count,\n        increment = _ref.increment;\n    console.log(count);\n    increment();\n    console.log(count);\n  });\n};\nconsole.log(Button);\nvar throttleFn = throttle_1(function () {\n  console.log(\"throttle\");\n});\nvar rollup = rollup;\n\nexports.dynamicImport = dynamicImport;\nexports.rollup = rollup;\nexports.throttleFn = throttleFn;",
  "chunk": {
    "exports": [
      "dynamicImport",
      "rollup",
      "throttleFn"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/index.js",
    "isDynamicEntry": false,
    "isEntry": true,
    "isImplicitEntry": false,
    "modules": {
      "\u0000commonjsHelpers.js": {
        "code": "var commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};",
        "originalLength": 1299,
        "removedExports": [
          "getDefaultExportFromCjs",
          "getDefaultExportFromNamespaceIfPresent",
          "getDefaultExportFromNamespaceIfNotNamed",
          "getAugmentedNamespace",
          "commonjsRequire"
        ],
        "renderedExports": [
          "commonjsGlobal"
        ],
        "renderedLength": 192
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js": {
        "code": "/**\n * Checks if `value` is the\n * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n * @example\n *\n * _.isObject({});\n * // => true\n *\n * _.isObject([1, 2, 3]);\n * // => true\n *\n * _.isObject(_.noop);\n * // => true\n *\n * _.isObject(null);\n * // => false\n */\n\nfunction isObject$3(value) {\n  var type = typeof value;\n  return value != null && (type == 'object' || type == 'function');\n}\n\nvar isObject_1 = isObject$3;",
        "originalLength": 733,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 737
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js": {
        "code": "/** Detect free variable `global` from Node.js. */\n\nvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\nvar _freeGlobal = freeGlobal$1;",
        "originalLength": 173,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 210
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js": {
        "code": "var freeGlobal = _freeGlobal;\n\n/** Detect free variable `self`. */\nvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n/** Used as a reference to the global object. */\nvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\nvar _root = root$2;",
        "originalLength": 300,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 285
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js": {
        "code": "var root$1 = _root;\n\n/**\n * Gets the timestamp of the number of milliseconds that have elapsed since\n * the Unix epoch (1 January 1970 00:00:00 UTC).\n *\n * @static\n * @memberOf _\n * @since 2.4.0\n * @category Date\n * @returns {number} Returns the timestamp.\n * @example\n *\n * _.defer(function(stamp) {\n *   console.log(_.now() - stamp);\n * }, _.now());\n * // => Logs the number of milliseconds it took for the deferred invocation.\n */\nvar now$1 = function() {\n  return root$1.Date.now();\n};\n\nvar now_1 = now$1;",
        "originalLength": 520,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 509
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js": {
        "code": "/** Used to match a single whitespace character. */\n\nvar reWhitespace = /\\s/;\n\n/**\n * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n * character of `string`.\n *\n * @private\n * @param {string} string The string to inspect.\n * @returns {number} Returns the index of the last non-whitespace character.\n */\nfunction trimmedEndIndex$1(string) {\n  var index = string.length;\n\n  while (index-- && reWhitespace.test(string.charAt(index))) {}\n  return index;\n}\n\nvar _trimmedEndIndex = trimmedEndIndex$1;",
        "originalLength": 515,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 525
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js": {
        "code": "var trimmedEndIndex = _trimmedEndIndex;\n\n/** Used to match leading whitespace. */\nvar reTrimStart = /^\\s+/;\n\n/**\n * The base implementation of `_.trim`.\n *\n * @private\n * @param {string} string The string to trim.\n * @returns {string} Returns the trimmed string.\n */\nfunction baseTrim$1(string) {\n  return string\n    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n    : string;\n}\n\nvar _baseTrim = baseTrim$1;",
        "originalLength": 444,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 433
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js": {
        "code": "var root = _root;\n\n/** Built-in value references. */\nvar Symbol$2 = root.Symbol;\n\nvar _Symbol = Symbol$2;",
        "originalLength": 118,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 105
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js": {
        "code": "var Symbol$1 = _Symbol;\n\n/** Used for built-in method references. */\nvar objectProto$1 = Object.prototype;\n\n/** Used to check objects for own properties. */\nvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString$1 = objectProto$1.toString;\n\n/** Built-in value references. */\nvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n/**\n * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the raw `toStringTag`.\n */\nfunction getRawTag$1(value) {\n  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n      tag = value[symToStringTag$1];\n\n  try {\n    value[symToStringTag$1] = undefined;\n    var unmasked = true;\n  } catch (e) {}\n\n  var result = nativeObjectToString$1.call(value);\n  if (unmasked) {\n    if (isOwn) {\n      value[symToStringTag$1] = tag;\n    } else {\n      delete value[symToStringTag$1];\n    }\n  }\n  return result;\n}\n\nvar _getRawTag = getRawTag$1;",
        "originalLength": 1139,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1157
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js": {
        "code": "/** Used for built-in method references. */\n\nvar objectProto = Object.prototype;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString = objectProto.toString;\n\n/**\n * Converts `value` to a string using `Object.prototype.toString`.\n *\n * @private\n * @param {*} value The value to convert.\n * @returns {string} Returns the converted string.\n */\nfunction objectToString$1(value) {\n  return nativeObjectToString.call(value);\n}\n\nvar _objectToString = objectToString$1;",
        "originalLength": 565,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 574
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js": {
        "code": "var Symbol = _Symbol,\n    getRawTag = _getRawTag,\n    objectToString = _objectToString;\n\n/** `Object#toString` result references. */\nvar nullTag = '[object Null]',\n    undefinedTag = '[object Undefined]';\n\n/** Built-in value references. */\nvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n/**\n * The base implementation of `getTag` without fallbacks for buggy environments.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the `toStringTag`.\n */\nfunction baseGetTag$1(value) {\n  if (value == null) {\n    return value === undefined ? undefinedTag : nullTag;\n  }\n  return (symToStringTag && symToStringTag in Object(value))\n    ? getRawTag(value)\n    : objectToString(value);\n}\n\nvar _baseGetTag = baseGetTag$1;",
        "originalLength": 792,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 757
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js": {
        "code": "/**\n * Checks if `value` is object-like. A value is object-like if it's not `null`\n * and has a `typeof` result of \"object\".\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n * @example\n *\n * _.isObjectLike({});\n * // => true\n *\n * _.isObjectLike([1, 2, 3]);\n * // => true\n *\n * _.isObjectLike(_.noop);\n * // => false\n *\n * _.isObjectLike(null);\n * // => false\n */\n\nfunction isObjectLike$1(value) {\n  return value != null && typeof value == 'object';\n}\n\nvar isObjectLike_1 = isObjectLike$1;",
        "originalLength": 614,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 622
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js": {
        "code": "var baseGetTag = _baseGetTag,\n    isObjectLike = isObjectLike_1;\n\n/** `Object#toString` result references. */\nvar symbolTag = '[object Symbol]';\n\n/**\n * Checks if `value` is classified as a `Symbol` primitive or object.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n * @example\n *\n * _.isSymbol(Symbol.iterator);\n * // => true\n *\n * _.isSymbol('abc');\n * // => false\n */\nfunction isSymbol$1(value) {\n  return typeof value == 'symbol' ||\n    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n}\n\nvar isSymbol_1 = isSymbol$1;",
        "originalLength": 682,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 661
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js": {
        "code": "var baseTrim = _baseTrim,\n    isObject$2 = isObject_1,\n    isSymbol = isSymbol_1;\n\n/** Used as references for various `Number` constants. */\nvar NAN = 0 / 0;\n\n/** Used to detect bad signed hexadecimal string values. */\nvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n/** Used to detect binary string values. */\nvar reIsBinary = /^0b[01]+$/i;\n\n/** Used to detect octal string values. */\nvar reIsOctal = /^0o[0-7]+$/i;\n\n/** Built-in method references without a dependency on `root`. */\nvar freeParseInt = parseInt;\n\n/**\n * Converts `value` to a number.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to process.\n * @returns {number} Returns the number.\n * @example\n *\n * _.toNumber(3.2);\n * // => 3.2\n *\n * _.toNumber(Number.MIN_VALUE);\n * // => 5e-324\n *\n * _.toNumber(Infinity);\n * // => Infinity\n *\n * _.toNumber('3.2');\n * // => 3.2\n */\nfunction toNumber$1(value) {\n  if (typeof value == 'number') {\n    return value;\n  }\n  if (isSymbol(value)) {\n    return NAN;\n  }\n  if (isObject$2(value)) {\n    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n    value = isObject$2(other) ? (other + '') : other;\n  }\n  if (typeof value != 'string') {\n    return value === 0 ? value : +value;\n  }\n  value = baseTrim(value);\n  var isBinary = reIsBinary.test(value);\n  return (isBinary || reIsOctal.test(value))\n    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n    : (reIsBadHex.test(value) ? NAN : +value);\n}\n\nvar toNumber_1 = toNumber$1;",
        "originalLength": 1519,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1493
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js": {
        "code": "var isObject$1 = isObject_1,\n    now = now_1,\n    toNumber = toNumber_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n/* Built-in method references for those with the same name as other `lodash` methods. */\nvar nativeMax = Math.max,\n    nativeMin = Math.min;\n\n/**\n * Creates a debounced function that delays invoking `func` until after `wait`\n * milliseconds have elapsed since the last time the debounced function was\n * invoked. The debounced function comes with a `cancel` method to cancel\n * delayed `func` invocations and a `flush` method to immediately invoke them.\n * Provide `options` to indicate whether `func` should be invoked on the\n * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n * with the last arguments provided to the debounced function. Subsequent\n * calls to the debounced function return the result of the last `func`\n * invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the debounced function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.debounce` and `_.throttle`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to debounce.\n * @param {number} [wait=0] The number of milliseconds to delay.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=false]\n *  Specify invoking on the leading edge of the timeout.\n * @param {number} [options.maxWait]\n *  The maximum time `func` is allowed to be delayed before it's invoked.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new debounced function.\n * @example\n *\n * // Avoid costly calculations while the window size is in flux.\n * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n *\n * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n * jQuery(element).on('click', _.debounce(sendMail, 300, {\n *   'leading': true,\n *   'trailing': false\n * }));\n *\n * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n * var source = new EventSource('/stream');\n * jQuery(source).on('message', debounced);\n *\n * // Cancel the trailing debounced invocation.\n * jQuery(window).on('popstate', debounced.cancel);\n */\nfunction debounce$1(func, wait, options) {\n  var lastArgs,\n      lastThis,\n      maxWait,\n      result,\n      timerId,\n      lastCallTime,\n      lastInvokeTime = 0,\n      leading = false,\n      maxing = false,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT$1);\n  }\n  wait = toNumber(wait) || 0;\n  if (isObject$1(options)) {\n    leading = !!options.leading;\n    maxing = 'maxWait' in options;\n    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n\n  function invokeFunc(time) {\n    var args = lastArgs,\n        thisArg = lastThis;\n\n    lastArgs = lastThis = undefined;\n    lastInvokeTime = time;\n    result = func.apply(thisArg, args);\n    return result;\n  }\n\n  function leadingEdge(time) {\n    // Reset any `maxWait` timer.\n    lastInvokeTime = time;\n    // Start the timer for the trailing edge.\n    timerId = setTimeout(timerExpired, wait);\n    // Invoke the leading edge.\n    return leading ? invokeFunc(time) : result;\n  }\n\n  function remainingWait(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime,\n        timeWaiting = wait - timeSinceLastCall;\n\n    return maxing\n      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n      : timeWaiting;\n  }\n\n  function shouldInvoke(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime;\n\n    // Either this is the first call, activity has stopped and we're at the\n    // trailing edge, the system time has gone backwards and we're treating\n    // it as the trailing edge, or we've hit the `maxWait` limit.\n    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n  }\n\n  function timerExpired() {\n    var time = now();\n    if (shouldInvoke(time)) {\n      return trailingEdge(time);\n    }\n    // Restart the timer.\n    timerId = setTimeout(timerExpired, remainingWait(time));\n  }\n\n  function trailingEdge(time) {\n    timerId = undefined;\n\n    // Only invoke if we have `lastArgs` which means `func` has been\n    // debounced at least once.\n    if (trailing && lastArgs) {\n      return invokeFunc(time);\n    }\n    lastArgs = lastThis = undefined;\n    return result;\n  }\n\n  function cancel() {\n    if (timerId !== undefined) {\n      clearTimeout(timerId);\n    }\n    lastInvokeTime = 0;\n    lastArgs = lastCallTime = lastThis = timerId = undefined;\n  }\n\n  function flush() {\n    return timerId === undefined ? result : trailingEdge(now());\n  }\n\n  function debounced() {\n    var time = now(),\n        isInvoking = shouldInvoke(time);\n\n    lastArgs = arguments;\n    lastThis = this;\n    lastCallTime = time;\n\n    if (isInvoking) {\n      if (timerId === undefined) {\n        return leadingEdge(lastCallTime);\n      }\n      if (maxing) {\n        // Handle invocations in a tight loop.\n        clearTimeout(timerId);\n        timerId = setTimeout(timerExpired, wait);\n        return invokeFunc(lastCallTime);\n      }\n    }\n    if (timerId === undefined) {\n      timerId = setTimeout(timerExpired, wait);\n    }\n    return result;\n  }\n  debounced.cancel = cancel;\n  debounced.flush = flush;\n  return debounced;\n}\n\nvar debounce_1 = debounce$1;",
        "originalLength": 6100,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 6078
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js": {
        "code": "var debounce = debounce_1,\n    isObject = isObject_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT = 'Expected a function';\n\n/**\n * Creates a throttled function that only invokes `func` at most once per\n * every `wait` milliseconds. The throttled function comes with a `cancel`\n * method to cancel delayed `func` invocations and a `flush` method to\n * immediately invoke them. Provide `options` to indicate whether `func`\n * should be invoked on the leading and/or trailing edge of the `wait`\n * timeout. The `func` is invoked with the last arguments provided to the\n * throttled function. Subsequent calls to the throttled function return the\n * result of the last `func` invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the throttled function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.throttle` and `_.debounce`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to throttle.\n * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=true]\n *  Specify invoking on the leading edge of the timeout.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new throttled function.\n * @example\n *\n * // Avoid excessively updating the position while scrolling.\n * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n *\n * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n * jQuery(element).on('click', throttled);\n *\n * // Cancel the trailing throttled invocation.\n * jQuery(window).on('popstate', throttled.cancel);\n */\nfunction throttle(func, wait, options) {\n  var leading = true,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT);\n  }\n  if (isObject(options)) {\n    leading = 'leading' in options ? !!options.leading : leading;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n  return debounce(func, wait, {\n    'leading': leading,\n    'maxWait': wait,\n    'trailing': trailing\n  });\n}\n\nvar throttle_1 = throttle;",
        "originalLength": 2709,
        "removedExports": [],
        "renderedExports": [
          "default",
          "__moduleExports"
        ],
        "renderedLength": 2686
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js": {
        "code": "var Button = 'Button';",
        "originalLength": 30,
        "removedExports": [],
        "renderedExports": [
          "Button"
        ],
        "renderedLength": 22
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/index.js": {
        "code": "var dynamicImport = function dynamicImport() {\n  Promise.resolve().then(function () { return require('./incrementer-62789671.js'); }).then(function (_ref) {\n    var count = _ref.count,\n        increment = _ref.increment;\n    console.log(count);\n    increment();\n    console.log(count);\n  });\n};\nconsole.log(Button);\nvar throttleFn = throttle_1(function () {\n  console.log(\"throttle\");\n});\nvar rollup = rollup;",
        "originalLength": 377,
        "removedExports": [],
        "renderedExports": [
          "dynamicImport",
          "throttleFn",
          "rollup"
        ],
        "renderedLength": 400
      }
    },
    "name": "index",
    "type": "chunk",
    "dynamicImports": [
      "incrementer-62789671.js"
    ],
    "fileName": "index.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/cjs",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "cjs",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": false,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "'use strict';\n\nexports.count = 0;\nfunction increment() {\n  exports.count += 1;\n}\n\nexports.increment = increment;",
  "chunk": {
    "exports": [
      "count",
      "increment"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js",
    "isDynamicEntry": true,
    "isEntry": false,
    "isImplicitEntry": false,
    "modules": {
      "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js": {
        "code": "exports.count = 0;\nfunction increment() {\n  exports.count += 1;\n}",
        "originalLength": 68,
        "removedExports": [],
        "renderedExports": [
          "count",
          "increment"
        ],
        "renderedLength": 65
      }
    },
    "name": "incrementer",
    "type": "chunk",
    "dynamicImports": [],
    "fileName": "incrementer-62789671.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/cjs",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "cjs",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": false,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "define(['require', 'exports'], (function (require, exports) { 'use strict';\n\n\tvar commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};\n\n\t/**\n\t * Checks if `value` is the\n\t * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n\t * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 0.1.0\n\t * @category Lang\n\t * @param {*} value The value to check.\n\t * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n\t * @example\n\t *\n\t * _.isObject({});\n\t * // => true\n\t *\n\t * _.isObject([1, 2, 3]);\n\t * // => true\n\t *\n\t * _.isObject(_.noop);\n\t * // => true\n\t *\n\t * _.isObject(null);\n\t * // => false\n\t */\n\n\tfunction isObject$3(value) {\n\t  var type = typeof value;\n\t  return value != null && (type == 'object' || type == 'function');\n\t}\n\n\tvar isObject_1 = isObject$3;\n\n\t/** Detect free variable `global` from Node.js. */\n\n\tvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\n\tvar _freeGlobal = freeGlobal$1;\n\n\tvar freeGlobal = _freeGlobal;\n\n\t/** Detect free variable `self`. */\n\tvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n\t/** Used as a reference to the global object. */\n\tvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\n\tvar _root = root$2;\n\n\tvar root$1 = _root;\n\n\t/**\n\t * Gets the timestamp of the number of milliseconds that have elapsed since\n\t * the Unix epoch (1 January 1970 00:00:00 UTC).\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 2.4.0\n\t * @category Date\n\t * @returns {number} Returns the timestamp.\n\t * @example\n\t *\n\t * _.defer(function(stamp) {\n\t *   console.log(_.now() - stamp);\n\t * }, _.now());\n\t * // => Logs the number of milliseconds it took for the deferred invocation.\n\t */\n\tvar now$1 = function() {\n\t  return root$1.Date.now();\n\t};\n\n\tvar now_1 = now$1;\n\n\t/** Used to match a single whitespace character. */\n\n\tvar reWhitespace = /\\s/;\n\n\t/**\n\t * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n\t * character of `string`.\n\t *\n\t * @private\n\t * @param {string} string The string to inspect.\n\t * @returns {number} Returns the index of the last non-whitespace character.\n\t */\n\tfunction trimmedEndIndex$1(string) {\n\t  var index = string.length;\n\n\t  while (index-- && reWhitespace.test(string.charAt(index))) {}\n\t  return index;\n\t}\n\n\tvar _trimmedEndIndex = trimmedEndIndex$1;\n\n\tvar trimmedEndIndex = _trimmedEndIndex;\n\n\t/** Used to match leading whitespace. */\n\tvar reTrimStart = /^\\s+/;\n\n\t/**\n\t * The base implementation of `_.trim`.\n\t *\n\t * @private\n\t * @param {string} string The string to trim.\n\t * @returns {string} Returns the trimmed string.\n\t */\n\tfunction baseTrim$1(string) {\n\t  return string\n\t    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n\t    : string;\n\t}\n\n\tvar _baseTrim = baseTrim$1;\n\n\tvar root = _root;\n\n\t/** Built-in value references. */\n\tvar Symbol$2 = root.Symbol;\n\n\tvar _Symbol = Symbol$2;\n\n\tvar Symbol$1 = _Symbol;\n\n\t/** Used for built-in method references. */\n\tvar objectProto$1 = Object.prototype;\n\n\t/** Used to check objects for own properties. */\n\tvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n\t/**\n\t * Used to resolve the\n\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t * of values.\n\t */\n\tvar nativeObjectToString$1 = objectProto$1.toString;\n\n\t/** Built-in value references. */\n\tvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n\t/**\n\t * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n\t *\n\t * @private\n\t * @param {*} value The value to query.\n\t * @returns {string} Returns the raw `toStringTag`.\n\t */\n\tfunction getRawTag$1(value) {\n\t  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n\t      tag = value[symToStringTag$1];\n\n\t  try {\n\t    value[symToStringTag$1] = undefined;\n\t    var unmasked = true;\n\t  } catch (e) {}\n\n\t  var result = nativeObjectToString$1.call(value);\n\t  if (unmasked) {\n\t    if (isOwn) {\n\t      value[symToStringTag$1] = tag;\n\t    } else {\n\t      delete value[symToStringTag$1];\n\t    }\n\t  }\n\t  return result;\n\t}\n\n\tvar _getRawTag = getRawTag$1;\n\n\t/** Used for built-in method references. */\n\n\tvar objectProto = Object.prototype;\n\n\t/**\n\t * Used to resolve the\n\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t * of values.\n\t */\n\tvar nativeObjectToString = objectProto.toString;\n\n\t/**\n\t * Converts `value` to a string using `Object.prototype.toString`.\n\t *\n\t * @private\n\t * @param {*} value The value to convert.\n\t * @returns {string} Returns the converted string.\n\t */\n\tfunction objectToString$1(value) {\n\t  return nativeObjectToString.call(value);\n\t}\n\n\tvar _objectToString = objectToString$1;\n\n\tvar Symbol = _Symbol,\n\t    getRawTag = _getRawTag,\n\t    objectToString = _objectToString;\n\n\t/** `Object#toString` result references. */\n\tvar nullTag = '[object Null]',\n\t    undefinedTag = '[object Undefined]';\n\n\t/** Built-in value references. */\n\tvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n\t/**\n\t * The base implementation of `getTag` without fallbacks for buggy environments.\n\t *\n\t * @private\n\t * @param {*} value The value to query.\n\t * @returns {string} Returns the `toStringTag`.\n\t */\n\tfunction baseGetTag$1(value) {\n\t  if (value == null) {\n\t    return value === undefined ? undefinedTag : nullTag;\n\t  }\n\t  return (symToStringTag && symToStringTag in Object(value))\n\t    ? getRawTag(value)\n\t    : objectToString(value);\n\t}\n\n\tvar _baseGetTag = baseGetTag$1;\n\n\t/**\n\t * Checks if `value` is object-like. A value is object-like if it's not `null`\n\t * and has a `typeof` result of \"object\".\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 4.0.0\n\t * @category Lang\n\t * @param {*} value The value to check.\n\t * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n\t * @example\n\t *\n\t * _.isObjectLike({});\n\t * // => true\n\t *\n\t * _.isObjectLike([1, 2, 3]);\n\t * // => true\n\t *\n\t * _.isObjectLike(_.noop);\n\t * // => false\n\t *\n\t * _.isObjectLike(null);\n\t * // => false\n\t */\n\n\tfunction isObjectLike$1(value) {\n\t  return value != null && typeof value == 'object';\n\t}\n\n\tvar isObjectLike_1 = isObjectLike$1;\n\n\tvar baseGetTag = _baseGetTag,\n\t    isObjectLike = isObjectLike_1;\n\n\t/** `Object#toString` result references. */\n\tvar symbolTag = '[object Symbol]';\n\n\t/**\n\t * Checks if `value` is classified as a `Symbol` primitive or object.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 4.0.0\n\t * @category Lang\n\t * @param {*} value The value to check.\n\t * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n\t * @example\n\t *\n\t * _.isSymbol(Symbol.iterator);\n\t * // => true\n\t *\n\t * _.isSymbol('abc');\n\t * // => false\n\t */\n\tfunction isSymbol$1(value) {\n\t  return typeof value == 'symbol' ||\n\t    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n\t}\n\n\tvar isSymbol_1 = isSymbol$1;\n\n\tvar baseTrim = _baseTrim,\n\t    isObject$2 = isObject_1,\n\t    isSymbol = isSymbol_1;\n\n\t/** Used as references for various `Number` constants. */\n\tvar NAN = 0 / 0;\n\n\t/** Used to detect bad signed hexadecimal string values. */\n\tvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n\t/** Used to detect binary string values. */\n\tvar reIsBinary = /^0b[01]+$/i;\n\n\t/** Used to detect octal string values. */\n\tvar reIsOctal = /^0o[0-7]+$/i;\n\n\t/** Built-in method references without a dependency on `root`. */\n\tvar freeParseInt = parseInt;\n\n\t/**\n\t * Converts `value` to a number.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 4.0.0\n\t * @category Lang\n\t * @param {*} value The value to process.\n\t * @returns {number} Returns the number.\n\t * @example\n\t *\n\t * _.toNumber(3.2);\n\t * // => 3.2\n\t *\n\t * _.toNumber(Number.MIN_VALUE);\n\t * // => 5e-324\n\t *\n\t * _.toNumber(Infinity);\n\t * // => Infinity\n\t *\n\t * _.toNumber('3.2');\n\t * // => 3.2\n\t */\n\tfunction toNumber$1(value) {\n\t  if (typeof value == 'number') {\n\t    return value;\n\t  }\n\t  if (isSymbol(value)) {\n\t    return NAN;\n\t  }\n\t  if (isObject$2(value)) {\n\t    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n\t    value = isObject$2(other) ? (other + '') : other;\n\t  }\n\t  if (typeof value != 'string') {\n\t    return value === 0 ? value : +value;\n\t  }\n\t  value = baseTrim(value);\n\t  var isBinary = reIsBinary.test(value);\n\t  return (isBinary || reIsOctal.test(value))\n\t    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n\t    : (reIsBadHex.test(value) ? NAN : +value);\n\t}\n\n\tvar toNumber_1 = toNumber$1;\n\n\tvar isObject$1 = isObject_1,\n\t    now = now_1,\n\t    toNumber = toNumber_1;\n\n\t/** Error message constants. */\n\tvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n\t/* Built-in method references for those with the same name as other `lodash` methods. */\n\tvar nativeMax = Math.max,\n\t    nativeMin = Math.min;\n\n\t/**\n\t * Creates a debounced function that delays invoking `func` until after `wait`\n\t * milliseconds have elapsed since the last time the debounced function was\n\t * invoked. The debounced function comes with a `cancel` method to cancel\n\t * delayed `func` invocations and a `flush` method to immediately invoke them.\n\t * Provide `options` to indicate whether `func` should be invoked on the\n\t * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n\t * with the last arguments provided to the debounced function. Subsequent\n\t * calls to the debounced function return the result of the last `func`\n\t * invocation.\n\t *\n\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t * invoked on the trailing edge of the timeout only if the debounced function\n\t * is invoked more than once during the `wait` timeout.\n\t *\n\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t *\n\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t * for details over the differences between `_.debounce` and `_.throttle`.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 0.1.0\n\t * @category Function\n\t * @param {Function} func The function to debounce.\n\t * @param {number} [wait=0] The number of milliseconds to delay.\n\t * @param {Object} [options={}] The options object.\n\t * @param {boolean} [options.leading=false]\n\t *  Specify invoking on the leading edge of the timeout.\n\t * @param {number} [options.maxWait]\n\t *  The maximum time `func` is allowed to be delayed before it's invoked.\n\t * @param {boolean} [options.trailing=true]\n\t *  Specify invoking on the trailing edge of the timeout.\n\t * @returns {Function} Returns the new debounced function.\n\t * @example\n\t *\n\t * // Avoid costly calculations while the window size is in flux.\n\t * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n\t *\n\t * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n\t * jQuery(element).on('click', _.debounce(sendMail, 300, {\n\t *   'leading': true,\n\t *   'trailing': false\n\t * }));\n\t *\n\t * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n\t * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n\t * var source = new EventSource('/stream');\n\t * jQuery(source).on('message', debounced);\n\t *\n\t * // Cancel the trailing debounced invocation.\n\t * jQuery(window).on('popstate', debounced.cancel);\n\t */\n\tfunction debounce$1(func, wait, options) {\n\t  var lastArgs,\n\t      lastThis,\n\t      maxWait,\n\t      result,\n\t      timerId,\n\t      lastCallTime,\n\t      lastInvokeTime = 0,\n\t      leading = false,\n\t      maxing = false,\n\t      trailing = true;\n\n\t  if (typeof func != 'function') {\n\t    throw new TypeError(FUNC_ERROR_TEXT$1);\n\t  }\n\t  wait = toNumber(wait) || 0;\n\t  if (isObject$1(options)) {\n\t    leading = !!options.leading;\n\t    maxing = 'maxWait' in options;\n\t    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t  }\n\n\t  function invokeFunc(time) {\n\t    var args = lastArgs,\n\t        thisArg = lastThis;\n\n\t    lastArgs = lastThis = undefined;\n\t    lastInvokeTime = time;\n\t    result = func.apply(thisArg, args);\n\t    return result;\n\t  }\n\n\t  function leadingEdge(time) {\n\t    // Reset any `maxWait` timer.\n\t    lastInvokeTime = time;\n\t    // Start the timer for the trailing edge.\n\t    timerId = setTimeout(timerExpired, wait);\n\t    // Invoke the leading edge.\n\t    return leading ? invokeFunc(time) : result;\n\t  }\n\n\t  function remainingWait(time) {\n\t    var timeSinceLastCall = time - lastCallTime,\n\t        timeSinceLastInvoke = time - lastInvokeTime,\n\t        timeWaiting = wait - timeSinceLastCall;\n\n\t    return maxing\n\t      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n\t      : timeWaiting;\n\t  }\n\n\t  function shouldInvoke(time) {\n\t    var timeSinceLastCall = time - lastCallTime,\n\t        timeSinceLastInvoke = time - lastInvokeTime;\n\n\t    // Either this is the first call, activity has stopped and we're at the\n\t    // trailing edge, the system time has gone backwards and we're treating\n\t    // it as the trailing edge, or we've hit the `maxWait` limit.\n\t    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n\t      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n\t  }\n\n\t  function timerExpired() {\n\t    var time = now();\n\t    if (shouldInvoke(time)) {\n\t      return trailingEdge(time);\n\t    }\n\t    // Restart the timer.\n\t    timerId = setTimeout(timerExpired, remainingWait(time));\n\t  }\n\n\t  function trailingEdge(time) {\n\t    timerId = undefined;\n\n\t    // Only invoke if we have `lastArgs` which means `func` has been\n\t    // debounced at least once.\n\t    if (trailing && lastArgs) {\n\t      return invokeFunc(time);\n\t    }\n\t    lastArgs = lastThis = undefined;\n\t    return result;\n\t  }\n\n\t  function cancel() {\n\t    if (timerId !== undefined) {\n\t      clearTimeout(timerId);\n\t    }\n\t    lastInvokeTime = 0;\n\t    lastArgs = lastCallTime = lastThis = timerId = undefined;\n\t  }\n\n\t  function flush() {\n\t    return timerId === undefined ? result : trailingEdge(now());\n\t  }\n\n\t  function debounced() {\n\t    var time = now(),\n\t        isInvoking = shouldInvoke(time);\n\n\t    lastArgs = arguments;\n\t    lastThis = this;\n\t    lastCallTime = time;\n\n\t    if (isInvoking) {\n\t      if (timerId === undefined) {\n\t        return leadingEdge(lastCallTime);\n\t      }\n\t      if (maxing) {\n\t        // Handle invocations in a tight loop.\n\t        clearTimeout(timerId);\n\t        timerId = setTimeout(timerExpired, wait);\n\t        return invokeFunc(lastCallTime);\n\t      }\n\t    }\n\t    if (timerId === undefined) {\n\t      timerId = setTimeout(timerExpired, wait);\n\t    }\n\t    return result;\n\t  }\n\t  debounced.cancel = cancel;\n\t  debounced.flush = flush;\n\t  return debounced;\n\t}\n\n\tvar debounce_1 = debounce$1;\n\n\tvar debounce = debounce_1,\n\t    isObject = isObject_1;\n\n\t/** Error message constants. */\n\tvar FUNC_ERROR_TEXT = 'Expected a function';\n\n\t/**\n\t * Creates a throttled function that only invokes `func` at most once per\n\t * every `wait` milliseconds. The throttled function comes with a `cancel`\n\t * method to cancel delayed `func` invocations and a `flush` method to\n\t * immediately invoke them. Provide `options` to indicate whether `func`\n\t * should be invoked on the leading and/or trailing edge of the `wait`\n\t * timeout. The `func` is invoked with the last arguments provided to the\n\t * throttled function. Subsequent calls to the throttled function return the\n\t * result of the last `func` invocation.\n\t *\n\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t * invoked on the trailing edge of the timeout only if the throttled function\n\t * is invoked more than once during the `wait` timeout.\n\t *\n\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t *\n\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t * for details over the differences between `_.throttle` and `_.debounce`.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 0.1.0\n\t * @category Function\n\t * @param {Function} func The function to throttle.\n\t * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n\t * @param {Object} [options={}] The options object.\n\t * @param {boolean} [options.leading=true]\n\t *  Specify invoking on the leading edge of the timeout.\n\t * @param {boolean} [options.trailing=true]\n\t *  Specify invoking on the trailing edge of the timeout.\n\t * @returns {Function} Returns the new throttled function.\n\t * @example\n\t *\n\t * // Avoid excessively updating the position while scrolling.\n\t * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n\t *\n\t * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n\t * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n\t * jQuery(element).on('click', throttled);\n\t *\n\t * // Cancel the trailing throttled invocation.\n\t * jQuery(window).on('popstate', throttled.cancel);\n\t */\n\tfunction throttle(func, wait, options) {\n\t  var leading = true,\n\t      trailing = true;\n\n\t  if (typeof func != 'function') {\n\t    throw new TypeError(FUNC_ERROR_TEXT);\n\t  }\n\t  if (isObject(options)) {\n\t    leading = 'leading' in options ? !!options.leading : leading;\n\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t  }\n\t  return debounce(func, wait, {\n\t    'leading': leading,\n\t    'maxWait': wait,\n\t    'trailing': trailing\n\t  });\n\t}\n\n\tvar throttle_1 = throttle;\n\n\tvar Button = 'Button';\n\n\tvar dynamicImport = function dynamicImport() {\n\t  new Promise(function (resolve, reject) { require(['./incrementer-1d0a7381'], resolve, reject); }).then(function (_ref) {\n\t    var count = _ref.count,\n\t        increment = _ref.increment;\n\t    console.log(count);\n\t    increment();\n\t    console.log(count);\n\t  });\n\t};\n\tconsole.log(Button);\n\tvar throttleFn = throttle_1(function () {\n\t  console.log(\"throttle\");\n\t});\n\tvar rollup = rollup;\n\n\texports.dynamicImport = dynamicImport;\n\texports.rollup = rollup;\n\texports.throttleFn = throttleFn;\n\n\tObject.defineProperty(exports, '__esModule', { value: true });\n\n}));",
  "chunk": {
    "exports": [
      "dynamicImport",
      "rollup",
      "throttleFn"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/index.js",
    "isDynamicEntry": false,
    "isEntry": true,
    "isImplicitEntry": false,
    "modules": {
      "\u0000commonjsHelpers.js": {
        "code": "\tvar commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};",
        "originalLength": 1299,
        "removedExports": [
          "getDefaultExportFromCjs",
          "getDefaultExportFromNamespaceIfPresent",
          "getDefaultExportFromNamespaceIfNotNamed",
          "getAugmentedNamespace",
          "commonjsRequire"
        ],
        "renderedExports": [
          "commonjsGlobal"
        ],
        "renderedLength": 192
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js": {
        "code": "\t/**\n\t * Checks if `value` is the\n\t * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n\t * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 0.1.0\n\t * @category Lang\n\t * @param {*} value The value to check.\n\t * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n\t * @example\n\t *\n\t * _.isObject({});\n\t * // => true\n\t *\n\t * _.isObject([1, 2, 3]);\n\t * // => true\n\t *\n\t * _.isObject(_.noop);\n\t * // => true\n\t *\n\t * _.isObject(null);\n\t * // => false\n\t */\n\n\tfunction isObject$3(value) {\n\t  var type = typeof value;\n\t  return value != null && (type == 'object' || type == 'function');\n\t}\n\n\tvar isObject_1 = isObject$3;",
        "originalLength": 733,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 737
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js": {
        "code": "\t/** Detect free variable `global` from Node.js. */\n\n\tvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\n\tvar _freeGlobal = freeGlobal$1;",
        "originalLength": 173,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 210
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js": {
        "code": "\tvar freeGlobal = _freeGlobal;\n\n\t/** Detect free variable `self`. */\n\tvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n\t/** Used as a reference to the global object. */\n\tvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\n\tvar _root = root$2;",
        "originalLength": 300,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 285
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js": {
        "code": "\tvar root$1 = _root;\n\n\t/**\n\t * Gets the timestamp of the number of milliseconds that have elapsed since\n\t * the Unix epoch (1 January 1970 00:00:00 UTC).\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 2.4.0\n\t * @category Date\n\t * @returns {number} Returns the timestamp.\n\t * @example\n\t *\n\t * _.defer(function(stamp) {\n\t *   console.log(_.now() - stamp);\n\t * }, _.now());\n\t * // => Logs the number of milliseconds it took for the deferred invocation.\n\t */\n\tvar now$1 = function() {\n\t  return root$1.Date.now();\n\t};\n\n\tvar now_1 = now$1;",
        "originalLength": 520,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 509
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js": {
        "code": "\t/** Used to match a single whitespace character. */\n\n\tvar reWhitespace = /\\s/;\n\n\t/**\n\t * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n\t * character of `string`.\n\t *\n\t * @private\n\t * @param {string} string The string to inspect.\n\t * @returns {number} Returns the index of the last non-whitespace character.\n\t */\n\tfunction trimmedEndIndex$1(string) {\n\t  var index = string.length;\n\n\t  while (index-- && reWhitespace.test(string.charAt(index))) {}\n\t  return index;\n\t}\n\n\tvar _trimmedEndIndex = trimmedEndIndex$1;",
        "originalLength": 515,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 525
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js": {
        "code": "\tvar trimmedEndIndex = _trimmedEndIndex;\n\n\t/** Used to match leading whitespace. */\n\tvar reTrimStart = /^\\s+/;\n\n\t/**\n\t * The base implementation of `_.trim`.\n\t *\n\t * @private\n\t * @param {string} string The string to trim.\n\t * @returns {string} Returns the trimmed string.\n\t */\n\tfunction baseTrim$1(string) {\n\t  return string\n\t    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n\t    : string;\n\t}\n\n\tvar _baseTrim = baseTrim$1;",
        "originalLength": 444,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 433
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js": {
        "code": "\tvar root = _root;\n\n\t/** Built-in value references. */\n\tvar Symbol$2 = root.Symbol;\n\n\tvar _Symbol = Symbol$2;",
        "originalLength": 118,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 105
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js": {
        "code": "\tvar Symbol$1 = _Symbol;\n\n\t/** Used for built-in method references. */\n\tvar objectProto$1 = Object.prototype;\n\n\t/** Used to check objects for own properties. */\n\tvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n\t/**\n\t * Used to resolve the\n\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t * of values.\n\t */\n\tvar nativeObjectToString$1 = objectProto$1.toString;\n\n\t/** Built-in value references. */\n\tvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n\t/**\n\t * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n\t *\n\t * @private\n\t * @param {*} value The value to query.\n\t * @returns {string} Returns the raw `toStringTag`.\n\t */\n\tfunction getRawTag$1(value) {\n\t  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n\t      tag = value[symToStringTag$1];\n\n\t  try {\n\t    value[symToStringTag$1] = undefined;\n\t    var unmasked = true;\n\t  } catch (e) {}\n\n\t  var result = nativeObjectToString$1.call(value);\n\t  if (unmasked) {\n\t    if (isOwn) {\n\t      value[symToStringTag$1] = tag;\n\t    } else {\n\t      delete value[symToStringTag$1];\n\t    }\n\t  }\n\t  return result;\n\t}\n\n\tvar _getRawTag = getRawTag$1;",
        "originalLength": 1139,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1157
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js": {
        "code": "\t/** Used for built-in method references. */\n\n\tvar objectProto = Object.prototype;\n\n\t/**\n\t * Used to resolve the\n\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t * of values.\n\t */\n\tvar nativeObjectToString = objectProto.toString;\n\n\t/**\n\t * Converts `value` to a string using `Object.prototype.toString`.\n\t *\n\t * @private\n\t * @param {*} value The value to convert.\n\t * @returns {string} Returns the converted string.\n\t */\n\tfunction objectToString$1(value) {\n\t  return nativeObjectToString.call(value);\n\t}\n\n\tvar _objectToString = objectToString$1;",
        "originalLength": 565,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 574
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js": {
        "code": "\tvar Symbol = _Symbol,\n\t    getRawTag = _getRawTag,\n\t    objectToString = _objectToString;\n\n\t/** `Object#toString` result references. */\n\tvar nullTag = '[object Null]',\n\t    undefinedTag = '[object Undefined]';\n\n\t/** Built-in value references. */\n\tvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n\t/**\n\t * The base implementation of `getTag` without fallbacks for buggy environments.\n\t *\n\t * @private\n\t * @param {*} value The value to query.\n\t * @returns {string} Returns the `toStringTag`.\n\t */\n\tfunction baseGetTag$1(value) {\n\t  if (value == null) {\n\t    return value === undefined ? undefinedTag : nullTag;\n\t  }\n\t  return (symToStringTag && symToStringTag in Object(value))\n\t    ? getRawTag(value)\n\t    : objectToString(value);\n\t}\n\n\tvar _baseGetTag = baseGetTag$1;",
        "originalLength": 792,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 757
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js": {
        "code": "\t/**\n\t * Checks if `value` is object-like. A value is object-like if it's not `null`\n\t * and has a `typeof` result of \"object\".\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 4.0.0\n\t * @category Lang\n\t * @param {*} value The value to check.\n\t * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n\t * @example\n\t *\n\t * _.isObjectLike({});\n\t * // => true\n\t *\n\t * _.isObjectLike([1, 2, 3]);\n\t * // => true\n\t *\n\t * _.isObjectLike(_.noop);\n\t * // => false\n\t *\n\t * _.isObjectLike(null);\n\t * // => false\n\t */\n\n\tfunction isObjectLike$1(value) {\n\t  return value != null && typeof value == 'object';\n\t}\n\n\tvar isObjectLike_1 = isObjectLike$1;",
        "originalLength": 614,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 622
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js": {
        "code": "\tvar baseGetTag = _baseGetTag,\n\t    isObjectLike = isObjectLike_1;\n\n\t/** `Object#toString` result references. */\n\tvar symbolTag = '[object Symbol]';\n\n\t/**\n\t * Checks if `value` is classified as a `Symbol` primitive or object.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 4.0.0\n\t * @category Lang\n\t * @param {*} value The value to check.\n\t * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n\t * @example\n\t *\n\t * _.isSymbol(Symbol.iterator);\n\t * // => true\n\t *\n\t * _.isSymbol('abc');\n\t * // => false\n\t */\n\tfunction isSymbol$1(value) {\n\t  return typeof value == 'symbol' ||\n\t    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n\t}\n\n\tvar isSymbol_1 = isSymbol$1;",
        "originalLength": 682,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 661
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js": {
        "code": "\tvar baseTrim = _baseTrim,\n\t    isObject$2 = isObject_1,\n\t    isSymbol = isSymbol_1;\n\n\t/** Used as references for various `Number` constants. */\n\tvar NAN = 0 / 0;\n\n\t/** Used to detect bad signed hexadecimal string values. */\n\tvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n\t/** Used to detect binary string values. */\n\tvar reIsBinary = /^0b[01]+$/i;\n\n\t/** Used to detect octal string values. */\n\tvar reIsOctal = /^0o[0-7]+$/i;\n\n\t/** Built-in method references without a dependency on `root`. */\n\tvar freeParseInt = parseInt;\n\n\t/**\n\t * Converts `value` to a number.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 4.0.0\n\t * @category Lang\n\t * @param {*} value The value to process.\n\t * @returns {number} Returns the number.\n\t * @example\n\t *\n\t * _.toNumber(3.2);\n\t * // => 3.2\n\t *\n\t * _.toNumber(Number.MIN_VALUE);\n\t * // => 5e-324\n\t *\n\t * _.toNumber(Infinity);\n\t * // => Infinity\n\t *\n\t * _.toNumber('3.2');\n\t * // => 3.2\n\t */\n\tfunction toNumber$1(value) {\n\t  if (typeof value == 'number') {\n\t    return value;\n\t  }\n\t  if (isSymbol(value)) {\n\t    return NAN;\n\t  }\n\t  if (isObject$2(value)) {\n\t    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n\t    value = isObject$2(other) ? (other + '') : other;\n\t  }\n\t  if (typeof value != 'string') {\n\t    return value === 0 ? value : +value;\n\t  }\n\t  value = baseTrim(value);\n\t  var isBinary = reIsBinary.test(value);\n\t  return (isBinary || reIsOctal.test(value))\n\t    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n\t    : (reIsBadHex.test(value) ? NAN : +value);\n\t}\n\n\tvar toNumber_1 = toNumber$1;",
        "originalLength": 1519,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1493
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js": {
        "code": "\tvar isObject$1 = isObject_1,\n\t    now = now_1,\n\t    toNumber = toNumber_1;\n\n\t/** Error message constants. */\n\tvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n\t/* Built-in method references for those with the same name as other `lodash` methods. */\n\tvar nativeMax = Math.max,\n\t    nativeMin = Math.min;\n\n\t/**\n\t * Creates a debounced function that delays invoking `func` until after `wait`\n\t * milliseconds have elapsed since the last time the debounced function was\n\t * invoked. The debounced function comes with a `cancel` method to cancel\n\t * delayed `func` invocations and a `flush` method to immediately invoke them.\n\t * Provide `options` to indicate whether `func` should be invoked on the\n\t * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n\t * with the last arguments provided to the debounced function. Subsequent\n\t * calls to the debounced function return the result of the last `func`\n\t * invocation.\n\t *\n\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t * invoked on the trailing edge of the timeout only if the debounced function\n\t * is invoked more than once during the `wait` timeout.\n\t *\n\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t *\n\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t * for details over the differences between `_.debounce` and `_.throttle`.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 0.1.0\n\t * @category Function\n\t * @param {Function} func The function to debounce.\n\t * @param {number} [wait=0] The number of milliseconds to delay.\n\t * @param {Object} [options={}] The options object.\n\t * @param {boolean} [options.leading=false]\n\t *  Specify invoking on the leading edge of the timeout.\n\t * @param {number} [options.maxWait]\n\t *  The maximum time `func` is allowed to be delayed before it's invoked.\n\t * @param {boolean} [options.trailing=true]\n\t *  Specify invoking on the trailing edge of the timeout.\n\t * @returns {Function} Returns the new debounced function.\n\t * @example\n\t *\n\t * // Avoid costly calculations while the window size is in flux.\n\t * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n\t *\n\t * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n\t * jQuery(element).on('click', _.debounce(sendMail, 300, {\n\t *   'leading': true,\n\t *   'trailing': false\n\t * }));\n\t *\n\t * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n\t * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n\t * var source = new EventSource('/stream');\n\t * jQuery(source).on('message', debounced);\n\t *\n\t * // Cancel the trailing debounced invocation.\n\t * jQuery(window).on('popstate', debounced.cancel);\n\t */\n\tfunction debounce$1(func, wait, options) {\n\t  var lastArgs,\n\t      lastThis,\n\t      maxWait,\n\t      result,\n\t      timerId,\n\t      lastCallTime,\n\t      lastInvokeTime = 0,\n\t      leading = false,\n\t      maxing = false,\n\t      trailing = true;\n\n\t  if (typeof func != 'function') {\n\t    throw new TypeError(FUNC_ERROR_TEXT$1);\n\t  }\n\t  wait = toNumber(wait) || 0;\n\t  if (isObject$1(options)) {\n\t    leading = !!options.leading;\n\t    maxing = 'maxWait' in options;\n\t    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t  }\n\n\t  function invokeFunc(time) {\n\t    var args = lastArgs,\n\t        thisArg = lastThis;\n\n\t    lastArgs = lastThis = undefined;\n\t    lastInvokeTime = time;\n\t    result = func.apply(thisArg, args);\n\t    return result;\n\t  }\n\n\t  function leadingEdge(time) {\n\t    // Reset any `maxWait` timer.\n\t    lastInvokeTime = time;\n\t    // Start the timer for the trailing edge.\n\t    timerId = setTimeout(timerExpired, wait);\n\t    // Invoke the leading edge.\n\t    return leading ? invokeFunc(time) : result;\n\t  }\n\n\t  function remainingWait(time) {\n\t    var timeSinceLastCall = time - lastCallTime,\n\t        timeSinceLastInvoke = time - lastInvokeTime,\n\t        timeWaiting = wait - timeSinceLastCall;\n\n\t    return maxing\n\t      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n\t      : timeWaiting;\n\t  }\n\n\t  function shouldInvoke(time) {\n\t    var timeSinceLastCall = time - lastCallTime,\n\t        timeSinceLastInvoke = time - lastInvokeTime;\n\n\t    // Either this is the first call, activity has stopped and we're at the\n\t    // trailing edge, the system time has gone backwards and we're treating\n\t    // it as the trailing edge, or we've hit the `maxWait` limit.\n\t    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n\t      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n\t  }\n\n\t  function timerExpired() {\n\t    var time = now();\n\t    if (shouldInvoke(time)) {\n\t      return trailingEdge(time);\n\t    }\n\t    // Restart the timer.\n\t    timerId = setTimeout(timerExpired, remainingWait(time));\n\t  }\n\n\t  function trailingEdge(time) {\n\t    timerId = undefined;\n\n\t    // Only invoke if we have `lastArgs` which means `func` has been\n\t    // debounced at least once.\n\t    if (trailing && lastArgs) {\n\t      return invokeFunc(time);\n\t    }\n\t    lastArgs = lastThis = undefined;\n\t    return result;\n\t  }\n\n\t  function cancel() {\n\t    if (timerId !== undefined) {\n\t      clearTimeout(timerId);\n\t    }\n\t    lastInvokeTime = 0;\n\t    lastArgs = lastCallTime = lastThis = timerId = undefined;\n\t  }\n\n\t  function flush() {\n\t    return timerId === undefined ? result : trailingEdge(now());\n\t  }\n\n\t  function debounced() {\n\t    var time = now(),\n\t        isInvoking = shouldInvoke(time);\n\n\t    lastArgs = arguments;\n\t    lastThis = this;\n\t    lastCallTime = time;\n\n\t    if (isInvoking) {\n\t      if (timerId === undefined) {\n\t        return leadingEdge(lastCallTime);\n\t      }\n\t      if (maxing) {\n\t        // Handle invocations in a tight loop.\n\t        clearTimeout(timerId);\n\t        timerId = setTimeout(timerExpired, wait);\n\t        return invokeFunc(lastCallTime);\n\t      }\n\t    }\n\t    if (timerId === undefined) {\n\t      timerId = setTimeout(timerExpired, wait);\n\t    }\n\t    return result;\n\t  }\n\t  debounced.cancel = cancel;\n\t  debounced.flush = flush;\n\t  return debounced;\n\t}\n\n\tvar debounce_1 = debounce$1;",
        "originalLength": 6100,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 6078
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js": {
        "code": "\tvar debounce = debounce_1,\n\t    isObject = isObject_1;\n\n\t/** Error message constants. */\n\tvar FUNC_ERROR_TEXT = 'Expected a function';\n\n\t/**\n\t * Creates a throttled function that only invokes `func` at most once per\n\t * every `wait` milliseconds. The throttled function comes with a `cancel`\n\t * method to cancel delayed `func` invocations and a `flush` method to\n\t * immediately invoke them. Provide `options` to indicate whether `func`\n\t * should be invoked on the leading and/or trailing edge of the `wait`\n\t * timeout. The `func` is invoked with the last arguments provided to the\n\t * throttled function. Subsequent calls to the throttled function return the\n\t * result of the last `func` invocation.\n\t *\n\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t * invoked on the trailing edge of the timeout only if the throttled function\n\t * is invoked more than once during the `wait` timeout.\n\t *\n\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t *\n\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t * for details over the differences between `_.throttle` and `_.debounce`.\n\t *\n\t * @static\n\t * @memberOf _\n\t * @since 0.1.0\n\t * @category Function\n\t * @param {Function} func The function to throttle.\n\t * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n\t * @param {Object} [options={}] The options object.\n\t * @param {boolean} [options.leading=true]\n\t *  Specify invoking on the leading edge of the timeout.\n\t * @param {boolean} [options.trailing=true]\n\t *  Specify invoking on the trailing edge of the timeout.\n\t * @returns {Function} Returns the new throttled function.\n\t * @example\n\t *\n\t * // Avoid excessively updating the position while scrolling.\n\t * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n\t *\n\t * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n\t * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n\t * jQuery(element).on('click', throttled);\n\t *\n\t * // Cancel the trailing throttled invocation.\n\t * jQuery(window).on('popstate', throttled.cancel);\n\t */\n\tfunction throttle(func, wait, options) {\n\t  var leading = true,\n\t      trailing = true;\n\n\t  if (typeof func != 'function') {\n\t    throw new TypeError(FUNC_ERROR_TEXT);\n\t  }\n\t  if (isObject(options)) {\n\t    leading = 'leading' in options ? !!options.leading : leading;\n\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t  }\n\t  return debounce(func, wait, {\n\t    'leading': leading,\n\t    'maxWait': wait,\n\t    'trailing': trailing\n\t  });\n\t}\n\n\tvar throttle_1 = throttle;",
        "originalLength": 2709,
        "removedExports": [],
        "renderedExports": [
          "default",
          "__moduleExports"
        ],
        "renderedLength": 2686
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js": {
        "code": "\tvar Button = 'Button';",
        "originalLength": 30,
        "removedExports": [],
        "renderedExports": [
          "Button"
        ],
        "renderedLength": 22
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/index.js": {
        "code": "\tvar dynamicImport = function dynamicImport() {\n\t  new Promise(function (resolve, reject) { require(['./incrementer-1d0a7381'], resolve, reject); }).then(function (_ref) {\n\t    var count = _ref.count,\n\t        increment = _ref.increment;\n\t    console.log(count);\n\t    increment();\n\t    console.log(count);\n\t  });\n\t};\n\tconsole.log(Button);\n\tvar throttleFn = throttle_1(function () {\n\t  console.log(\"throttle\");\n\t});\n\tvar rollup = rollup;",
        "originalLength": 377,
        "removedExports": [],
        "renderedExports": [
          "dynamicImport",
          "throttleFn",
          "rollup"
        ],
        "renderedLength": 416
      }
    },
    "name": "index",
    "type": "chunk",
    "dynamicImports": [
      "incrementer-1d0a7381.js"
    ],
    "fileName": "index.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/amd",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "amd",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": false,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "define(['exports'], (function (exports) { 'use strict';\n\n\texports.count = 0;\n\tfunction increment() {\n\t  exports.count += 1;\n\t}\n\n\texports.increment = increment;\n\n}));",
  "chunk": {
    "exports": [
      "count",
      "increment"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js",
    "isDynamicEntry": true,
    "isEntry": false,
    "isImplicitEntry": false,
    "modules": {
      "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js": {
        "code": "\texports.count = 0;\n\tfunction increment() {\n\t  exports.count += 1;\n\t}",
        "originalLength": 68,
        "removedExports": [],
        "renderedExports": [
          "count",
          "increment"
        ],
        "renderedLength": 65
      }
    },
    "name": "incrementer",
    "type": "chunk",
    "dynamicImports": [],
    "fileName": "incrementer-1d0a7381.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/amd",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "amd",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": false,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "var commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};\n\n/**\n * Checks if `value` is the\n * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n * @example\n *\n * _.isObject({});\n * // => true\n *\n * _.isObject([1, 2, 3]);\n * // => true\n *\n * _.isObject(_.noop);\n * // => true\n *\n * _.isObject(null);\n * // => false\n */\n\nfunction isObject$3(value) {\n  var type = typeof value;\n  return value != null && (type == 'object' || type == 'function');\n}\n\nvar isObject_1 = isObject$3;\n\n/** Detect free variable `global` from Node.js. */\n\nvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\nvar _freeGlobal = freeGlobal$1;\n\nvar freeGlobal = _freeGlobal;\n\n/** Detect free variable `self`. */\nvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n/** Used as a reference to the global object. */\nvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\nvar _root = root$2;\n\nvar root$1 = _root;\n\n/**\n * Gets the timestamp of the number of milliseconds that have elapsed since\n * the Unix epoch (1 January 1970 00:00:00 UTC).\n *\n * @static\n * @memberOf _\n * @since 2.4.0\n * @category Date\n * @returns {number} Returns the timestamp.\n * @example\n *\n * _.defer(function(stamp) {\n *   console.log(_.now() - stamp);\n * }, _.now());\n * // => Logs the number of milliseconds it took for the deferred invocation.\n */\nvar now$1 = function() {\n  return root$1.Date.now();\n};\n\nvar now_1 = now$1;\n\n/** Used to match a single whitespace character. */\n\nvar reWhitespace = /\\s/;\n\n/**\n * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n * character of `string`.\n *\n * @private\n * @param {string} string The string to inspect.\n * @returns {number} Returns the index of the last non-whitespace character.\n */\nfunction trimmedEndIndex$1(string) {\n  var index = string.length;\n\n  while (index-- && reWhitespace.test(string.charAt(index))) {}\n  return index;\n}\n\nvar _trimmedEndIndex = trimmedEndIndex$1;\n\nvar trimmedEndIndex = _trimmedEndIndex;\n\n/** Used to match leading whitespace. */\nvar reTrimStart = /^\\s+/;\n\n/**\n * The base implementation of `_.trim`.\n *\n * @private\n * @param {string} string The string to trim.\n * @returns {string} Returns the trimmed string.\n */\nfunction baseTrim$1(string) {\n  return string\n    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n    : string;\n}\n\nvar _baseTrim = baseTrim$1;\n\nvar root = _root;\n\n/** Built-in value references. */\nvar Symbol$2 = root.Symbol;\n\nvar _Symbol = Symbol$2;\n\nvar Symbol$1 = _Symbol;\n\n/** Used for built-in method references. */\nvar objectProto$1 = Object.prototype;\n\n/** Used to check objects for own properties. */\nvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString$1 = objectProto$1.toString;\n\n/** Built-in value references. */\nvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n/**\n * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the raw `toStringTag`.\n */\nfunction getRawTag$1(value) {\n  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n      tag = value[symToStringTag$1];\n\n  try {\n    value[symToStringTag$1] = undefined;\n    var unmasked = true;\n  } catch (e) {}\n\n  var result = nativeObjectToString$1.call(value);\n  if (unmasked) {\n    if (isOwn) {\n      value[symToStringTag$1] = tag;\n    } else {\n      delete value[symToStringTag$1];\n    }\n  }\n  return result;\n}\n\nvar _getRawTag = getRawTag$1;\n\n/** Used for built-in method references. */\n\nvar objectProto = Object.prototype;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString = objectProto.toString;\n\n/**\n * Converts `value` to a string using `Object.prototype.toString`.\n *\n * @private\n * @param {*} value The value to convert.\n * @returns {string} Returns the converted string.\n */\nfunction objectToString$1(value) {\n  return nativeObjectToString.call(value);\n}\n\nvar _objectToString = objectToString$1;\n\nvar Symbol = _Symbol,\n    getRawTag = _getRawTag,\n    objectToString = _objectToString;\n\n/** `Object#toString` result references. */\nvar nullTag = '[object Null]',\n    undefinedTag = '[object Undefined]';\n\n/** Built-in value references. */\nvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n/**\n * The base implementation of `getTag` without fallbacks for buggy environments.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the `toStringTag`.\n */\nfunction baseGetTag$1(value) {\n  if (value == null) {\n    return value === undefined ? undefinedTag : nullTag;\n  }\n  return (symToStringTag && symToStringTag in Object(value))\n    ? getRawTag(value)\n    : objectToString(value);\n}\n\nvar _baseGetTag = baseGetTag$1;\n\n/**\n * Checks if `value` is object-like. A value is object-like if it's not `null`\n * and has a `typeof` result of \"object\".\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n * @example\n *\n * _.isObjectLike({});\n * // => true\n *\n * _.isObjectLike([1, 2, 3]);\n * // => true\n *\n * _.isObjectLike(_.noop);\n * // => false\n *\n * _.isObjectLike(null);\n * // => false\n */\n\nfunction isObjectLike$1(value) {\n  return value != null && typeof value == 'object';\n}\n\nvar isObjectLike_1 = isObjectLike$1;\n\nvar baseGetTag = _baseGetTag,\n    isObjectLike = isObjectLike_1;\n\n/** `Object#toString` result references. */\nvar symbolTag = '[object Symbol]';\n\n/**\n * Checks if `value` is classified as a `Symbol` primitive or object.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n * @example\n *\n * _.isSymbol(Symbol.iterator);\n * // => true\n *\n * _.isSymbol('abc');\n * // => false\n */\nfunction isSymbol$1(value) {\n  return typeof value == 'symbol' ||\n    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n}\n\nvar isSymbol_1 = isSymbol$1;\n\nvar baseTrim = _baseTrim,\n    isObject$2 = isObject_1,\n    isSymbol = isSymbol_1;\n\n/** Used as references for various `Number` constants. */\nvar NAN = 0 / 0;\n\n/** Used to detect bad signed hexadecimal string values. */\nvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n/** Used to detect binary string values. */\nvar reIsBinary = /^0b[01]+$/i;\n\n/** Used to detect octal string values. */\nvar reIsOctal = /^0o[0-7]+$/i;\n\n/** Built-in method references without a dependency on `root`. */\nvar freeParseInt = parseInt;\n\n/**\n * Converts `value` to a number.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to process.\n * @returns {number} Returns the number.\n * @example\n *\n * _.toNumber(3.2);\n * // => 3.2\n *\n * _.toNumber(Number.MIN_VALUE);\n * // => 5e-324\n *\n * _.toNumber(Infinity);\n * // => Infinity\n *\n * _.toNumber('3.2');\n * // => 3.2\n */\nfunction toNumber$1(value) {\n  if (typeof value == 'number') {\n    return value;\n  }\n  if (isSymbol(value)) {\n    return NAN;\n  }\n  if (isObject$2(value)) {\n    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n    value = isObject$2(other) ? (other + '') : other;\n  }\n  if (typeof value != 'string') {\n    return value === 0 ? value : +value;\n  }\n  value = baseTrim(value);\n  var isBinary = reIsBinary.test(value);\n  return (isBinary || reIsOctal.test(value))\n    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n    : (reIsBadHex.test(value) ? NAN : +value);\n}\n\nvar toNumber_1 = toNumber$1;\n\nvar isObject$1 = isObject_1,\n    now = now_1,\n    toNumber = toNumber_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n/* Built-in method references for those with the same name as other `lodash` methods. */\nvar nativeMax = Math.max,\n    nativeMin = Math.min;\n\n/**\n * Creates a debounced function that delays invoking `func` until after `wait`\n * milliseconds have elapsed since the last time the debounced function was\n * invoked. The debounced function comes with a `cancel` method to cancel\n * delayed `func` invocations and a `flush` method to immediately invoke them.\n * Provide `options` to indicate whether `func` should be invoked on the\n * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n * with the last arguments provided to the debounced function. Subsequent\n * calls to the debounced function return the result of the last `func`\n * invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the debounced function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.debounce` and `_.throttle`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to debounce.\n * @param {number} [wait=0] The number of milliseconds to delay.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=false]\n *  Specify invoking on the leading edge of the timeout.\n * @param {number} [options.maxWait]\n *  The maximum time `func` is allowed to be delayed before it's invoked.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new debounced function.\n * @example\n *\n * // Avoid costly calculations while the window size is in flux.\n * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n *\n * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n * jQuery(element).on('click', _.debounce(sendMail, 300, {\n *   'leading': true,\n *   'trailing': false\n * }));\n *\n * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n * var source = new EventSource('/stream');\n * jQuery(source).on('message', debounced);\n *\n * // Cancel the trailing debounced invocation.\n * jQuery(window).on('popstate', debounced.cancel);\n */\nfunction debounce$1(func, wait, options) {\n  var lastArgs,\n      lastThis,\n      maxWait,\n      result,\n      timerId,\n      lastCallTime,\n      lastInvokeTime = 0,\n      leading = false,\n      maxing = false,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT$1);\n  }\n  wait = toNumber(wait) || 0;\n  if (isObject$1(options)) {\n    leading = !!options.leading;\n    maxing = 'maxWait' in options;\n    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n\n  function invokeFunc(time) {\n    var args = lastArgs,\n        thisArg = lastThis;\n\n    lastArgs = lastThis = undefined;\n    lastInvokeTime = time;\n    result = func.apply(thisArg, args);\n    return result;\n  }\n\n  function leadingEdge(time) {\n    // Reset any `maxWait` timer.\n    lastInvokeTime = time;\n    // Start the timer for the trailing edge.\n    timerId = setTimeout(timerExpired, wait);\n    // Invoke the leading edge.\n    return leading ? invokeFunc(time) : result;\n  }\n\n  function remainingWait(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime,\n        timeWaiting = wait - timeSinceLastCall;\n\n    return maxing\n      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n      : timeWaiting;\n  }\n\n  function shouldInvoke(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime;\n\n    // Either this is the first call, activity has stopped and we're at the\n    // trailing edge, the system time has gone backwards and we're treating\n    // it as the trailing edge, or we've hit the `maxWait` limit.\n    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n  }\n\n  function timerExpired() {\n    var time = now();\n    if (shouldInvoke(time)) {\n      return trailingEdge(time);\n    }\n    // Restart the timer.\n    timerId = setTimeout(timerExpired, remainingWait(time));\n  }\n\n  function trailingEdge(time) {\n    timerId = undefined;\n\n    // Only invoke if we have `lastArgs` which means `func` has been\n    // debounced at least once.\n    if (trailing && lastArgs) {\n      return invokeFunc(time);\n    }\n    lastArgs = lastThis = undefined;\n    return result;\n  }\n\n  function cancel() {\n    if (timerId !== undefined) {\n      clearTimeout(timerId);\n    }\n    lastInvokeTime = 0;\n    lastArgs = lastCallTime = lastThis = timerId = undefined;\n  }\n\n  function flush() {\n    return timerId === undefined ? result : trailingEdge(now());\n  }\n\n  function debounced() {\n    var time = now(),\n        isInvoking = shouldInvoke(time);\n\n    lastArgs = arguments;\n    lastThis = this;\n    lastCallTime = time;\n\n    if (isInvoking) {\n      if (timerId === undefined) {\n        return leadingEdge(lastCallTime);\n      }\n      if (maxing) {\n        // Handle invocations in a tight loop.\n        clearTimeout(timerId);\n        timerId = setTimeout(timerExpired, wait);\n        return invokeFunc(lastCallTime);\n      }\n    }\n    if (timerId === undefined) {\n      timerId = setTimeout(timerExpired, wait);\n    }\n    return result;\n  }\n  debounced.cancel = cancel;\n  debounced.flush = flush;\n  return debounced;\n}\n\nvar debounce_1 = debounce$1;\n\nvar debounce = debounce_1,\n    isObject = isObject_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT = 'Expected a function';\n\n/**\n * Creates a throttled function that only invokes `func` at most once per\n * every `wait` milliseconds. The throttled function comes with a `cancel`\n * method to cancel delayed `func` invocations and a `flush` method to\n * immediately invoke them. Provide `options` to indicate whether `func`\n * should be invoked on the leading and/or trailing edge of the `wait`\n * timeout. The `func` is invoked with the last arguments provided to the\n * throttled function. Subsequent calls to the throttled function return the\n * result of the last `func` invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the throttled function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.throttle` and `_.debounce`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to throttle.\n * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=true]\n *  Specify invoking on the leading edge of the timeout.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new throttled function.\n * @example\n *\n * // Avoid excessively updating the position while scrolling.\n * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n *\n * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n * jQuery(element).on('click', throttled);\n *\n * // Cancel the trailing throttled invocation.\n * jQuery(window).on('popstate', throttled.cancel);\n */\nfunction throttle(func, wait, options) {\n  var leading = true,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT);\n  }\n  if (isObject(options)) {\n    leading = 'leading' in options ? !!options.leading : leading;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n  return debounce(func, wait, {\n    'leading': leading,\n    'maxWait': wait,\n    'trailing': trailing\n  });\n}\n\nvar throttle_1 = throttle;\n\nvar Button = 'Button';\n\nvar dynamicImport = function dynamicImport() {\n  import('./incrementer-79e85d58.js').then(function (_ref) {\n    var count = _ref.count,\n        increment = _ref.increment;\n    console.log(count);\n    increment();\n    console.log(count);\n  });\n};\nconsole.log(Button);\nvar throttleFn = throttle_1(function () {\n  console.log(\"throttle\");\n});\nvar rollup = rollup;\n\nexport { dynamicImport, rollup, throttleFn };",
  "chunk": {
    "exports": [
      "dynamicImport",
      "rollup",
      "throttleFn"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/index.js",
    "isDynamicEntry": false,
    "isEntry": true,
    "isImplicitEntry": false,
    "modules": {
      "\u0000commonjsHelpers.js": {
        "code": "var commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};",
        "originalLength": 1299,
        "removedExports": [
          "getDefaultExportFromCjs",
          "getDefaultExportFromNamespaceIfPresent",
          "getDefaultExportFromNamespaceIfNotNamed",
          "getAugmentedNamespace",
          "commonjsRequire"
        ],
        "renderedExports": [
          "commonjsGlobal"
        ],
        "renderedLength": 192
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js": {
        "code": "/**\n * Checks if `value` is the\n * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n * @example\n *\n * _.isObject({});\n * // => true\n *\n * _.isObject([1, 2, 3]);\n * // => true\n *\n * _.isObject(_.noop);\n * // => true\n *\n * _.isObject(null);\n * // => false\n */\n\nfunction isObject$3(value) {\n  var type = typeof value;\n  return value != null && (type == 'object' || type == 'function');\n}\n\nvar isObject_1 = isObject$3;",
        "originalLength": 733,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 737
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js": {
        "code": "/** Detect free variable `global` from Node.js. */\n\nvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\nvar _freeGlobal = freeGlobal$1;",
        "originalLength": 173,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 210
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js": {
        "code": "var freeGlobal = _freeGlobal;\n\n/** Detect free variable `self`. */\nvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n/** Used as a reference to the global object. */\nvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\nvar _root = root$2;",
        "originalLength": 300,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 285
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js": {
        "code": "var root$1 = _root;\n\n/**\n * Gets the timestamp of the number of milliseconds that have elapsed since\n * the Unix epoch (1 January 1970 00:00:00 UTC).\n *\n * @static\n * @memberOf _\n * @since 2.4.0\n * @category Date\n * @returns {number} Returns the timestamp.\n * @example\n *\n * _.defer(function(stamp) {\n *   console.log(_.now() - stamp);\n * }, _.now());\n * // => Logs the number of milliseconds it took for the deferred invocation.\n */\nvar now$1 = function() {\n  return root$1.Date.now();\n};\n\nvar now_1 = now$1;",
        "originalLength": 520,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 509
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js": {
        "code": "/** Used to match a single whitespace character. */\n\nvar reWhitespace = /\\s/;\n\n/**\n * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n * character of `string`.\n *\n * @private\n * @param {string} string The string to inspect.\n * @returns {number} Returns the index of the last non-whitespace character.\n */\nfunction trimmedEndIndex$1(string) {\n  var index = string.length;\n\n  while (index-- && reWhitespace.test(string.charAt(index))) {}\n  return index;\n}\n\nvar _trimmedEndIndex = trimmedEndIndex$1;",
        "originalLength": 515,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 525
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js": {
        "code": "var trimmedEndIndex = _trimmedEndIndex;\n\n/** Used to match leading whitespace. */\nvar reTrimStart = /^\\s+/;\n\n/**\n * The base implementation of `_.trim`.\n *\n * @private\n * @param {string} string The string to trim.\n * @returns {string} Returns the trimmed string.\n */\nfunction baseTrim$1(string) {\n  return string\n    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n    : string;\n}\n\nvar _baseTrim = baseTrim$1;",
        "originalLength": 444,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 433
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js": {
        "code": "var root = _root;\n\n/** Built-in value references. */\nvar Symbol$2 = root.Symbol;\n\nvar _Symbol = Symbol$2;",
        "originalLength": 118,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 105
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js": {
        "code": "var Symbol$1 = _Symbol;\n\n/** Used for built-in method references. */\nvar objectProto$1 = Object.prototype;\n\n/** Used to check objects for own properties. */\nvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString$1 = objectProto$1.toString;\n\n/** Built-in value references. */\nvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n/**\n * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the raw `toStringTag`.\n */\nfunction getRawTag$1(value) {\n  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n      tag = value[symToStringTag$1];\n\n  try {\n    value[symToStringTag$1] = undefined;\n    var unmasked = true;\n  } catch (e) {}\n\n  var result = nativeObjectToString$1.call(value);\n  if (unmasked) {\n    if (isOwn) {\n      value[symToStringTag$1] = tag;\n    } else {\n      delete value[symToStringTag$1];\n    }\n  }\n  return result;\n}\n\nvar _getRawTag = getRawTag$1;",
        "originalLength": 1139,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1157
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js": {
        "code": "/** Used for built-in method references. */\n\nvar objectProto = Object.prototype;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString = objectProto.toString;\n\n/**\n * Converts `value` to a string using `Object.prototype.toString`.\n *\n * @private\n * @param {*} value The value to convert.\n * @returns {string} Returns the converted string.\n */\nfunction objectToString$1(value) {\n  return nativeObjectToString.call(value);\n}\n\nvar _objectToString = objectToString$1;",
        "originalLength": 565,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 574
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js": {
        "code": "var Symbol = _Symbol,\n    getRawTag = _getRawTag,\n    objectToString = _objectToString;\n\n/** `Object#toString` result references. */\nvar nullTag = '[object Null]',\n    undefinedTag = '[object Undefined]';\n\n/** Built-in value references. */\nvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n/**\n * The base implementation of `getTag` without fallbacks for buggy environments.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the `toStringTag`.\n */\nfunction baseGetTag$1(value) {\n  if (value == null) {\n    return value === undefined ? undefinedTag : nullTag;\n  }\n  return (symToStringTag && symToStringTag in Object(value))\n    ? getRawTag(value)\n    : objectToString(value);\n}\n\nvar _baseGetTag = baseGetTag$1;",
        "originalLength": 792,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 757
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js": {
        "code": "/**\n * Checks if `value` is object-like. A value is object-like if it's not `null`\n * and has a `typeof` result of \"object\".\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n * @example\n *\n * _.isObjectLike({});\n * // => true\n *\n * _.isObjectLike([1, 2, 3]);\n * // => true\n *\n * _.isObjectLike(_.noop);\n * // => false\n *\n * _.isObjectLike(null);\n * // => false\n */\n\nfunction isObjectLike$1(value) {\n  return value != null && typeof value == 'object';\n}\n\nvar isObjectLike_1 = isObjectLike$1;",
        "originalLength": 614,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 622
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js": {
        "code": "var baseGetTag = _baseGetTag,\n    isObjectLike = isObjectLike_1;\n\n/** `Object#toString` result references. */\nvar symbolTag = '[object Symbol]';\n\n/**\n * Checks if `value` is classified as a `Symbol` primitive or object.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n * @example\n *\n * _.isSymbol(Symbol.iterator);\n * // => true\n *\n * _.isSymbol('abc');\n * // => false\n */\nfunction isSymbol$1(value) {\n  return typeof value == 'symbol' ||\n    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n}\n\nvar isSymbol_1 = isSymbol$1;",
        "originalLength": 682,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 661
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js": {
        "code": "var baseTrim = _baseTrim,\n    isObject$2 = isObject_1,\n    isSymbol = isSymbol_1;\n\n/** Used as references for various `Number` constants. */\nvar NAN = 0 / 0;\n\n/** Used to detect bad signed hexadecimal string values. */\nvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n/** Used to detect binary string values. */\nvar reIsBinary = /^0b[01]+$/i;\n\n/** Used to detect octal string values. */\nvar reIsOctal = /^0o[0-7]+$/i;\n\n/** Built-in method references without a dependency on `root`. */\nvar freeParseInt = parseInt;\n\n/**\n * Converts `value` to a number.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to process.\n * @returns {number} Returns the number.\n * @example\n *\n * _.toNumber(3.2);\n * // => 3.2\n *\n * _.toNumber(Number.MIN_VALUE);\n * // => 5e-324\n *\n * _.toNumber(Infinity);\n * // => Infinity\n *\n * _.toNumber('3.2');\n * // => 3.2\n */\nfunction toNumber$1(value) {\n  if (typeof value == 'number') {\n    return value;\n  }\n  if (isSymbol(value)) {\n    return NAN;\n  }\n  if (isObject$2(value)) {\n    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n    value = isObject$2(other) ? (other + '') : other;\n  }\n  if (typeof value != 'string') {\n    return value === 0 ? value : +value;\n  }\n  value = baseTrim(value);\n  var isBinary = reIsBinary.test(value);\n  return (isBinary || reIsOctal.test(value))\n    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n    : (reIsBadHex.test(value) ? NAN : +value);\n}\n\nvar toNumber_1 = toNumber$1;",
        "originalLength": 1519,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1493
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js": {
        "code": "var isObject$1 = isObject_1,\n    now = now_1,\n    toNumber = toNumber_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n/* Built-in method references for those with the same name as other `lodash` methods. */\nvar nativeMax = Math.max,\n    nativeMin = Math.min;\n\n/**\n * Creates a debounced function that delays invoking `func` until after `wait`\n * milliseconds have elapsed since the last time the debounced function was\n * invoked. The debounced function comes with a `cancel` method to cancel\n * delayed `func` invocations and a `flush` method to immediately invoke them.\n * Provide `options` to indicate whether `func` should be invoked on the\n * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n * with the last arguments provided to the debounced function. Subsequent\n * calls to the debounced function return the result of the last `func`\n * invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the debounced function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.debounce` and `_.throttle`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to debounce.\n * @param {number} [wait=0] The number of milliseconds to delay.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=false]\n *  Specify invoking on the leading edge of the timeout.\n * @param {number} [options.maxWait]\n *  The maximum time `func` is allowed to be delayed before it's invoked.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new debounced function.\n * @example\n *\n * // Avoid costly calculations while the window size is in flux.\n * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n *\n * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n * jQuery(element).on('click', _.debounce(sendMail, 300, {\n *   'leading': true,\n *   'trailing': false\n * }));\n *\n * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n * var source = new EventSource('/stream');\n * jQuery(source).on('message', debounced);\n *\n * // Cancel the trailing debounced invocation.\n * jQuery(window).on('popstate', debounced.cancel);\n */\nfunction debounce$1(func, wait, options) {\n  var lastArgs,\n      lastThis,\n      maxWait,\n      result,\n      timerId,\n      lastCallTime,\n      lastInvokeTime = 0,\n      leading = false,\n      maxing = false,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT$1);\n  }\n  wait = toNumber(wait) || 0;\n  if (isObject$1(options)) {\n    leading = !!options.leading;\n    maxing = 'maxWait' in options;\n    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n\n  function invokeFunc(time) {\n    var args = lastArgs,\n        thisArg = lastThis;\n\n    lastArgs = lastThis = undefined;\n    lastInvokeTime = time;\n    result = func.apply(thisArg, args);\n    return result;\n  }\n\n  function leadingEdge(time) {\n    // Reset any `maxWait` timer.\n    lastInvokeTime = time;\n    // Start the timer for the trailing edge.\n    timerId = setTimeout(timerExpired, wait);\n    // Invoke the leading edge.\n    return leading ? invokeFunc(time) : result;\n  }\n\n  function remainingWait(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime,\n        timeWaiting = wait - timeSinceLastCall;\n\n    return maxing\n      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n      : timeWaiting;\n  }\n\n  function shouldInvoke(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime;\n\n    // Either this is the first call, activity has stopped and we're at the\n    // trailing edge, the system time has gone backwards and we're treating\n    // it as the trailing edge, or we've hit the `maxWait` limit.\n    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n  }\n\n  function timerExpired() {\n    var time = now();\n    if (shouldInvoke(time)) {\n      return trailingEdge(time);\n    }\n    // Restart the timer.\n    timerId = setTimeout(timerExpired, remainingWait(time));\n  }\n\n  function trailingEdge(time) {\n    timerId = undefined;\n\n    // Only invoke if we have `lastArgs` which means `func` has been\n    // debounced at least once.\n    if (trailing && lastArgs) {\n      return invokeFunc(time);\n    }\n    lastArgs = lastThis = undefined;\n    return result;\n  }\n\n  function cancel() {\n    if (timerId !== undefined) {\n      clearTimeout(timerId);\n    }\n    lastInvokeTime = 0;\n    lastArgs = lastCallTime = lastThis = timerId = undefined;\n  }\n\n  function flush() {\n    return timerId === undefined ? result : trailingEdge(now());\n  }\n\n  function debounced() {\n    var time = now(),\n        isInvoking = shouldInvoke(time);\n\n    lastArgs = arguments;\n    lastThis = this;\n    lastCallTime = time;\n\n    if (isInvoking) {\n      if (timerId === undefined) {\n        return leadingEdge(lastCallTime);\n      }\n      if (maxing) {\n        // Handle invocations in a tight loop.\n        clearTimeout(timerId);\n        timerId = setTimeout(timerExpired, wait);\n        return invokeFunc(lastCallTime);\n      }\n    }\n    if (timerId === undefined) {\n      timerId = setTimeout(timerExpired, wait);\n    }\n    return result;\n  }\n  debounced.cancel = cancel;\n  debounced.flush = flush;\n  return debounced;\n}\n\nvar debounce_1 = debounce$1;",
        "originalLength": 6100,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 6078
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js": {
        "code": "var debounce = debounce_1,\n    isObject = isObject_1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT = 'Expected a function';\n\n/**\n * Creates a throttled function that only invokes `func` at most once per\n * every `wait` milliseconds. The throttled function comes with a `cancel`\n * method to cancel delayed `func` invocations and a `flush` method to\n * immediately invoke them. Provide `options` to indicate whether `func`\n * should be invoked on the leading and/or trailing edge of the `wait`\n * timeout. The `func` is invoked with the last arguments provided to the\n * throttled function. Subsequent calls to the throttled function return the\n * result of the last `func` invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the throttled function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.throttle` and `_.debounce`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to throttle.\n * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=true]\n *  Specify invoking on the leading edge of the timeout.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new throttled function.\n * @example\n *\n * // Avoid excessively updating the position while scrolling.\n * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n *\n * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n * jQuery(element).on('click', throttled);\n *\n * // Cancel the trailing throttled invocation.\n * jQuery(window).on('popstate', throttled.cancel);\n */\nfunction throttle(func, wait, options) {\n  var leading = true,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT);\n  }\n  if (isObject(options)) {\n    leading = 'leading' in options ? !!options.leading : leading;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n  return debounce(func, wait, {\n    'leading': leading,\n    'maxWait': wait,\n    'trailing': trailing\n  });\n}\n\nvar throttle_1 = throttle;",
        "originalLength": 2709,
        "removedExports": [],
        "renderedExports": [
          "default",
          "__moduleExports"
        ],
        "renderedLength": 2686
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js": {
        "code": "var Button = 'Button';",
        "originalLength": 30,
        "removedExports": [],
        "renderedExports": [
          "Button"
        ],
        "renderedLength": 22
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/index.js": {
        "code": "var dynamicImport = function dynamicImport() {\n  import('./incrementer-79e85d58.js').then(function (_ref) {\n    var count = _ref.count,\n        increment = _ref.increment;\n    console.log(count);\n    increment();\n    console.log(count);\n  });\n};\nconsole.log(Button);\nvar throttleFn = throttle_1(function () {\n  console.log(\"throttle\");\n});\nvar rollup = rollup;",
        "originalLength": 377,
        "removedExports": [],
        "renderedExports": [
          "dynamicImport",
          "throttleFn",
          "rollup"
        ],
        "renderedLength": 351
      }
    },
    "name": "index",
    "type": "chunk",
    "dynamicImports": [
      "incrementer-79e85d58.js"
    ],
    "fileName": "index.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/es",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "es",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": true,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "var count = 0;\nfunction increment() {\n  count += 1;\n}\n\nexport { count, increment };",
  "chunk": {
    "exports": [
      "count",
      "increment"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js",
    "isDynamicEntry": true,
    "isEntry": false,
    "isImplicitEntry": false,
    "modules": {
      "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js": {
        "code": "var count = 0;\nfunction increment() {\n  count += 1;\n}",
        "originalLength": 68,
        "removedExports": [],
        "renderedExports": [
          "count",
          "increment"
        ],
        "renderedLength": 53
      }
    },
    "name": "incrementer",
    "type": "chunk",
    "dynamicImports": [],
    "fileName": "incrementer-79e85d58.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/es",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "es",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": true,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "System.register([], (function (exports, module) {\n\t'use strict';\n\treturn {\n\t\texecute: (function () {\n\n\t\t\tvar commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};\n\n\t\t\t/**\n\t\t\t * Checks if `value` is the\n\t\t\t * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n\t\t\t * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 0.1.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to check.\n\t\t\t * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.isObject({});\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObject([1, 2, 3]);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObject(_.noop);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObject(null);\n\t\t\t * // => false\n\t\t\t */\n\n\t\t\tfunction isObject$3(value) {\n\t\t\t  var type = typeof value;\n\t\t\t  return value != null && (type == 'object' || type == 'function');\n\t\t\t}\n\n\t\t\tvar isObject_1 = isObject$3;\n\n\t\t\t/** Detect free variable `global` from Node.js. */\n\n\t\t\tvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\n\t\t\tvar _freeGlobal = freeGlobal$1;\n\n\t\t\tvar freeGlobal = _freeGlobal;\n\n\t\t\t/** Detect free variable `self`. */\n\t\t\tvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n\t\t\t/** Used as a reference to the global object. */\n\t\t\tvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\n\t\t\tvar _root = root$2;\n\n\t\t\tvar root$1 = _root;\n\n\t\t\t/**\n\t\t\t * Gets the timestamp of the number of milliseconds that have elapsed since\n\t\t\t * the Unix epoch (1 January 1970 00:00:00 UTC).\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 2.4.0\n\t\t\t * @category Date\n\t\t\t * @returns {number} Returns the timestamp.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.defer(function(stamp) {\n\t\t\t *   console.log(_.now() - stamp);\n\t\t\t * }, _.now());\n\t\t\t * // => Logs the number of milliseconds it took for the deferred invocation.\n\t\t\t */\n\t\t\tvar now$1 = function() {\n\t\t\t  return root$1.Date.now();\n\t\t\t};\n\n\t\t\tvar now_1 = now$1;\n\n\t\t\t/** Used to match a single whitespace character. */\n\n\t\t\tvar reWhitespace = /\\s/;\n\n\t\t\t/**\n\t\t\t * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n\t\t\t * character of `string`.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {string} string The string to inspect.\n\t\t\t * @returns {number} Returns the index of the last non-whitespace character.\n\t\t\t */\n\t\t\tfunction trimmedEndIndex$1(string) {\n\t\t\t  var index = string.length;\n\n\t\t\t  while (index-- && reWhitespace.test(string.charAt(index))) {}\n\t\t\t  return index;\n\t\t\t}\n\n\t\t\tvar _trimmedEndIndex = trimmedEndIndex$1;\n\n\t\t\tvar trimmedEndIndex = _trimmedEndIndex;\n\n\t\t\t/** Used to match leading whitespace. */\n\t\t\tvar reTrimStart = /^\\s+/;\n\n\t\t\t/**\n\t\t\t * The base implementation of `_.trim`.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {string} string The string to trim.\n\t\t\t * @returns {string} Returns the trimmed string.\n\t\t\t */\n\t\t\tfunction baseTrim$1(string) {\n\t\t\t  return string\n\t\t\t    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n\t\t\t    : string;\n\t\t\t}\n\n\t\t\tvar _baseTrim = baseTrim$1;\n\n\t\t\tvar root = _root;\n\n\t\t\t/** Built-in value references. */\n\t\t\tvar Symbol$2 = root.Symbol;\n\n\t\t\tvar _Symbol = Symbol$2;\n\n\t\t\tvar Symbol$1 = _Symbol;\n\n\t\t\t/** Used for built-in method references. */\n\t\t\tvar objectProto$1 = Object.prototype;\n\n\t\t\t/** Used to check objects for own properties. */\n\t\t\tvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n\t\t\t/**\n\t\t\t * Used to resolve the\n\t\t\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t\t\t * of values.\n\t\t\t */\n\t\t\tvar nativeObjectToString$1 = objectProto$1.toString;\n\n\t\t\t/** Built-in value references. */\n\t\t\tvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n\t\t\t/**\n\t\t\t * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {*} value The value to query.\n\t\t\t * @returns {string} Returns the raw `toStringTag`.\n\t\t\t */\n\t\t\tfunction getRawTag$1(value) {\n\t\t\t  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n\t\t\t      tag = value[symToStringTag$1];\n\n\t\t\t  try {\n\t\t\t    value[symToStringTag$1] = undefined;\n\t\t\t    var unmasked = true;\n\t\t\t  } catch (e) {}\n\n\t\t\t  var result = nativeObjectToString$1.call(value);\n\t\t\t  if (unmasked) {\n\t\t\t    if (isOwn) {\n\t\t\t      value[symToStringTag$1] = tag;\n\t\t\t    } else {\n\t\t\t      delete value[symToStringTag$1];\n\t\t\t    }\n\t\t\t  }\n\t\t\t  return result;\n\t\t\t}\n\n\t\t\tvar _getRawTag = getRawTag$1;\n\n\t\t\t/** Used for built-in method references. */\n\n\t\t\tvar objectProto = Object.prototype;\n\n\t\t\t/**\n\t\t\t * Used to resolve the\n\t\t\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t\t\t * of values.\n\t\t\t */\n\t\t\tvar nativeObjectToString = objectProto.toString;\n\n\t\t\t/**\n\t\t\t * Converts `value` to a string using `Object.prototype.toString`.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {*} value The value to convert.\n\t\t\t * @returns {string} Returns the converted string.\n\t\t\t */\n\t\t\tfunction objectToString$1(value) {\n\t\t\t  return nativeObjectToString.call(value);\n\t\t\t}\n\n\t\t\tvar _objectToString = objectToString$1;\n\n\t\t\tvar Symbol = _Symbol,\n\t\t\t    getRawTag = _getRawTag,\n\t\t\t    objectToString = _objectToString;\n\n\t\t\t/** `Object#toString` result references. */\n\t\t\tvar nullTag = '[object Null]',\n\t\t\t    undefinedTag = '[object Undefined]';\n\n\t\t\t/** Built-in value references. */\n\t\t\tvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n\t\t\t/**\n\t\t\t * The base implementation of `getTag` without fallbacks for buggy environments.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {*} value The value to query.\n\t\t\t * @returns {string} Returns the `toStringTag`.\n\t\t\t */\n\t\t\tfunction baseGetTag$1(value) {\n\t\t\t  if (value == null) {\n\t\t\t    return value === undefined ? undefinedTag : nullTag;\n\t\t\t  }\n\t\t\t  return (symToStringTag && symToStringTag in Object(value))\n\t\t\t    ? getRawTag(value)\n\t\t\t    : objectToString(value);\n\t\t\t}\n\n\t\t\tvar _baseGetTag = baseGetTag$1;\n\n\t\t\t/**\n\t\t\t * Checks if `value` is object-like. A value is object-like if it's not `null`\n\t\t\t * and has a `typeof` result of \"object\".\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 4.0.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to check.\n\t\t\t * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.isObjectLike({});\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObjectLike([1, 2, 3]);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObjectLike(_.noop);\n\t\t\t * // => false\n\t\t\t *\n\t\t\t * _.isObjectLike(null);\n\t\t\t * // => false\n\t\t\t */\n\n\t\t\tfunction isObjectLike$1(value) {\n\t\t\t  return value != null && typeof value == 'object';\n\t\t\t}\n\n\t\t\tvar isObjectLike_1 = isObjectLike$1;\n\n\t\t\tvar baseGetTag = _baseGetTag,\n\t\t\t    isObjectLike = isObjectLike_1;\n\n\t\t\t/** `Object#toString` result references. */\n\t\t\tvar symbolTag = '[object Symbol]';\n\n\t\t\t/**\n\t\t\t * Checks if `value` is classified as a `Symbol` primitive or object.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 4.0.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to check.\n\t\t\t * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.isSymbol(Symbol.iterator);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isSymbol('abc');\n\t\t\t * // => false\n\t\t\t */\n\t\t\tfunction isSymbol$1(value) {\n\t\t\t  return typeof value == 'symbol' ||\n\t\t\t    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n\t\t\t}\n\n\t\t\tvar isSymbol_1 = isSymbol$1;\n\n\t\t\tvar baseTrim = _baseTrim,\n\t\t\t    isObject$2 = isObject_1,\n\t\t\t    isSymbol = isSymbol_1;\n\n\t\t\t/** Used as references for various `Number` constants. */\n\t\t\tvar NAN = 0 / 0;\n\n\t\t\t/** Used to detect bad signed hexadecimal string values. */\n\t\t\tvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n\t\t\t/** Used to detect binary string values. */\n\t\t\tvar reIsBinary = /^0b[01]+$/i;\n\n\t\t\t/** Used to detect octal string values. */\n\t\t\tvar reIsOctal = /^0o[0-7]+$/i;\n\n\t\t\t/** Built-in method references without a dependency on `root`. */\n\t\t\tvar freeParseInt = parseInt;\n\n\t\t\t/**\n\t\t\t * Converts `value` to a number.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 4.0.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to process.\n\t\t\t * @returns {number} Returns the number.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.toNumber(3.2);\n\t\t\t * // => 3.2\n\t\t\t *\n\t\t\t * _.toNumber(Number.MIN_VALUE);\n\t\t\t * // => 5e-324\n\t\t\t *\n\t\t\t * _.toNumber(Infinity);\n\t\t\t * // => Infinity\n\t\t\t *\n\t\t\t * _.toNumber('3.2');\n\t\t\t * // => 3.2\n\t\t\t */\n\t\t\tfunction toNumber$1(value) {\n\t\t\t  if (typeof value == 'number') {\n\t\t\t    return value;\n\t\t\t  }\n\t\t\t  if (isSymbol(value)) {\n\t\t\t    return NAN;\n\t\t\t  }\n\t\t\t  if (isObject$2(value)) {\n\t\t\t    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n\t\t\t    value = isObject$2(other) ? (other + '') : other;\n\t\t\t  }\n\t\t\t  if (typeof value != 'string') {\n\t\t\t    return value === 0 ? value : +value;\n\t\t\t  }\n\t\t\t  value = baseTrim(value);\n\t\t\t  var isBinary = reIsBinary.test(value);\n\t\t\t  return (isBinary || reIsOctal.test(value))\n\t\t\t    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n\t\t\t    : (reIsBadHex.test(value) ? NAN : +value);\n\t\t\t}\n\n\t\t\tvar toNumber_1 = toNumber$1;\n\n\t\t\tvar isObject$1 = isObject_1,\n\t\t\t    now = now_1,\n\t\t\t    toNumber = toNumber_1;\n\n\t\t\t/** Error message constants. */\n\t\t\tvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n\t\t\t/* Built-in method references for those with the same name as other `lodash` methods. */\n\t\t\tvar nativeMax = Math.max,\n\t\t\t    nativeMin = Math.min;\n\n\t\t\t/**\n\t\t\t * Creates a debounced function that delays invoking `func` until after `wait`\n\t\t\t * milliseconds have elapsed since the last time the debounced function was\n\t\t\t * invoked. The debounced function comes with a `cancel` method to cancel\n\t\t\t * delayed `func` invocations and a `flush` method to immediately invoke them.\n\t\t\t * Provide `options` to indicate whether `func` should be invoked on the\n\t\t\t * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n\t\t\t * with the last arguments provided to the debounced function. Subsequent\n\t\t\t * calls to the debounced function return the result of the last `func`\n\t\t\t * invocation.\n\t\t\t *\n\t\t\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t\t\t * invoked on the trailing edge of the timeout only if the debounced function\n\t\t\t * is invoked more than once during the `wait` timeout.\n\t\t\t *\n\t\t\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t\t\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t\t\t *\n\t\t\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t\t\t * for details over the differences between `_.debounce` and `_.throttle`.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 0.1.0\n\t\t\t * @category Function\n\t\t\t * @param {Function} func The function to debounce.\n\t\t\t * @param {number} [wait=0] The number of milliseconds to delay.\n\t\t\t * @param {Object} [options={}] The options object.\n\t\t\t * @param {boolean} [options.leading=false]\n\t\t\t *  Specify invoking on the leading edge of the timeout.\n\t\t\t * @param {number} [options.maxWait]\n\t\t\t *  The maximum time `func` is allowed to be delayed before it's invoked.\n\t\t\t * @param {boolean} [options.trailing=true]\n\t\t\t *  Specify invoking on the trailing edge of the timeout.\n\t\t\t * @returns {Function} Returns the new debounced function.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * // Avoid costly calculations while the window size is in flux.\n\t\t\t * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n\t\t\t *\n\t\t\t * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n\t\t\t * jQuery(element).on('click', _.debounce(sendMail, 300, {\n\t\t\t *   'leading': true,\n\t\t\t *   'trailing': false\n\t\t\t * }));\n\t\t\t *\n\t\t\t * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n\t\t\t * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n\t\t\t * var source = new EventSource('/stream');\n\t\t\t * jQuery(source).on('message', debounced);\n\t\t\t *\n\t\t\t * // Cancel the trailing debounced invocation.\n\t\t\t * jQuery(window).on('popstate', debounced.cancel);\n\t\t\t */\n\t\t\tfunction debounce$1(func, wait, options) {\n\t\t\t  var lastArgs,\n\t\t\t      lastThis,\n\t\t\t      maxWait,\n\t\t\t      result,\n\t\t\t      timerId,\n\t\t\t      lastCallTime,\n\t\t\t      lastInvokeTime = 0,\n\t\t\t      leading = false,\n\t\t\t      maxing = false,\n\t\t\t      trailing = true;\n\n\t\t\t  if (typeof func != 'function') {\n\t\t\t    throw new TypeError(FUNC_ERROR_TEXT$1);\n\t\t\t  }\n\t\t\t  wait = toNumber(wait) || 0;\n\t\t\t  if (isObject$1(options)) {\n\t\t\t    leading = !!options.leading;\n\t\t\t    maxing = 'maxWait' in options;\n\t\t\t    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n\t\t\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t\t\t  }\n\n\t\t\t  function invokeFunc(time) {\n\t\t\t    var args = lastArgs,\n\t\t\t        thisArg = lastThis;\n\n\t\t\t    lastArgs = lastThis = undefined;\n\t\t\t    lastInvokeTime = time;\n\t\t\t    result = func.apply(thisArg, args);\n\t\t\t    return result;\n\t\t\t  }\n\n\t\t\t  function leadingEdge(time) {\n\t\t\t    // Reset any `maxWait` timer.\n\t\t\t    lastInvokeTime = time;\n\t\t\t    // Start the timer for the trailing edge.\n\t\t\t    timerId = setTimeout(timerExpired, wait);\n\t\t\t    // Invoke the leading edge.\n\t\t\t    return leading ? invokeFunc(time) : result;\n\t\t\t  }\n\n\t\t\t  function remainingWait(time) {\n\t\t\t    var timeSinceLastCall = time - lastCallTime,\n\t\t\t        timeSinceLastInvoke = time - lastInvokeTime,\n\t\t\t        timeWaiting = wait - timeSinceLastCall;\n\n\t\t\t    return maxing\n\t\t\t      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n\t\t\t      : timeWaiting;\n\t\t\t  }\n\n\t\t\t  function shouldInvoke(time) {\n\t\t\t    var timeSinceLastCall = time - lastCallTime,\n\t\t\t        timeSinceLastInvoke = time - lastInvokeTime;\n\n\t\t\t    // Either this is the first call, activity has stopped and we're at the\n\t\t\t    // trailing edge, the system time has gone backwards and we're treating\n\t\t\t    // it as the trailing edge, or we've hit the `maxWait` limit.\n\t\t\t    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n\t\t\t      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n\t\t\t  }\n\n\t\t\t  function timerExpired() {\n\t\t\t    var time = now();\n\t\t\t    if (shouldInvoke(time)) {\n\t\t\t      return trailingEdge(time);\n\t\t\t    }\n\t\t\t    // Restart the timer.\n\t\t\t    timerId = setTimeout(timerExpired, remainingWait(time));\n\t\t\t  }\n\n\t\t\t  function trailingEdge(time) {\n\t\t\t    timerId = undefined;\n\n\t\t\t    // Only invoke if we have `lastArgs` which means `func` has been\n\t\t\t    // debounced at least once.\n\t\t\t    if (trailing && lastArgs) {\n\t\t\t      return invokeFunc(time);\n\t\t\t    }\n\t\t\t    lastArgs = lastThis = undefined;\n\t\t\t    return result;\n\t\t\t  }\n\n\t\t\t  function cancel() {\n\t\t\t    if (timerId !== undefined) {\n\t\t\t      clearTimeout(timerId);\n\t\t\t    }\n\t\t\t    lastInvokeTime = 0;\n\t\t\t    lastArgs = lastCallTime = lastThis = timerId = undefined;\n\t\t\t  }\n\n\t\t\t  function flush() {\n\t\t\t    return timerId === undefined ? result : trailingEdge(now());\n\t\t\t  }\n\n\t\t\t  function debounced() {\n\t\t\t    var time = now(),\n\t\t\t        isInvoking = shouldInvoke(time);\n\n\t\t\t    lastArgs = arguments;\n\t\t\t    lastThis = this;\n\t\t\t    lastCallTime = time;\n\n\t\t\t    if (isInvoking) {\n\t\t\t      if (timerId === undefined) {\n\t\t\t        return leadingEdge(lastCallTime);\n\t\t\t      }\n\t\t\t      if (maxing) {\n\t\t\t        // Handle invocations in a tight loop.\n\t\t\t        clearTimeout(timerId);\n\t\t\t        timerId = setTimeout(timerExpired, wait);\n\t\t\t        return invokeFunc(lastCallTime);\n\t\t\t      }\n\t\t\t    }\n\t\t\t    if (timerId === undefined) {\n\t\t\t      timerId = setTimeout(timerExpired, wait);\n\t\t\t    }\n\t\t\t    return result;\n\t\t\t  }\n\t\t\t  debounced.cancel = cancel;\n\t\t\t  debounced.flush = flush;\n\t\t\t  return debounced;\n\t\t\t}\n\n\t\t\tvar debounce_1 = debounce$1;\n\n\t\t\tvar debounce = debounce_1,\n\t\t\t    isObject = isObject_1;\n\n\t\t\t/** Error message constants. */\n\t\t\tvar FUNC_ERROR_TEXT = 'Expected a function';\n\n\t\t\t/**\n\t\t\t * Creates a throttled function that only invokes `func` at most once per\n\t\t\t * every `wait` milliseconds. The throttled function comes with a `cancel`\n\t\t\t * method to cancel delayed `func` invocations and a `flush` method to\n\t\t\t * immediately invoke them. Provide `options` to indicate whether `func`\n\t\t\t * should be invoked on the leading and/or trailing edge of the `wait`\n\t\t\t * timeout. The `func` is invoked with the last arguments provided to the\n\t\t\t * throttled function. Subsequent calls to the throttled function return the\n\t\t\t * result of the last `func` invocation.\n\t\t\t *\n\t\t\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t\t\t * invoked on the trailing edge of the timeout only if the throttled function\n\t\t\t * is invoked more than once during the `wait` timeout.\n\t\t\t *\n\t\t\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t\t\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t\t\t *\n\t\t\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t\t\t * for details over the differences between `_.throttle` and `_.debounce`.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 0.1.0\n\t\t\t * @category Function\n\t\t\t * @param {Function} func The function to throttle.\n\t\t\t * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n\t\t\t * @param {Object} [options={}] The options object.\n\t\t\t * @param {boolean} [options.leading=true]\n\t\t\t *  Specify invoking on the leading edge of the timeout.\n\t\t\t * @param {boolean} [options.trailing=true]\n\t\t\t *  Specify invoking on the trailing edge of the timeout.\n\t\t\t * @returns {Function} Returns the new throttled function.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * // Avoid excessively updating the position while scrolling.\n\t\t\t * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n\t\t\t *\n\t\t\t * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n\t\t\t * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n\t\t\t * jQuery(element).on('click', throttled);\n\t\t\t *\n\t\t\t * // Cancel the trailing throttled invocation.\n\t\t\t * jQuery(window).on('popstate', throttled.cancel);\n\t\t\t */\n\t\t\tfunction throttle(func, wait, options) {\n\t\t\t  var leading = true,\n\t\t\t      trailing = true;\n\n\t\t\t  if (typeof func != 'function') {\n\t\t\t    throw new TypeError(FUNC_ERROR_TEXT);\n\t\t\t  }\n\t\t\t  if (isObject(options)) {\n\t\t\t    leading = 'leading' in options ? !!options.leading : leading;\n\t\t\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t\t\t  }\n\t\t\t  return debounce(func, wait, {\n\t\t\t    'leading': leading,\n\t\t\t    'maxWait': wait,\n\t\t\t    'trailing': trailing\n\t\t\t  });\n\t\t\t}\n\n\t\t\tvar throttle_1 = throttle;\n\n\t\t\tvar Button = 'Button';\n\n\t\t\tvar dynamicImport = exports('dynamicImport', function dynamicImport() {\n\t\t\t  module.import('./incrementer-4ef7afad.js').then(function (_ref) {\n\t\t\t    var count = _ref.count,\n\t\t\t        increment = _ref.increment;\n\t\t\t    console.log(count);\n\t\t\t    increment();\n\t\t\t    console.log(count);\n\t\t\t  });\n\t\t\t});\n\t\t\tconsole.log(Button);\n\t\t\tvar throttleFn = exports('throttleFn', throttle_1(function () {\n\t\t\t  console.log(\"throttle\");\n\t\t\t}));\n\t\t\tvar rollup = exports('rollup', rollup);\n\n\t\t})\n\t};\n}));",
  "chunk": {
    "exports": [
      "dynamicImport",
      "rollup",
      "throttleFn"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/index.js",
    "isDynamicEntry": false,
    "isEntry": true,
    "isImplicitEntry": false,
    "modules": {
      "\u0000commonjsHelpers.js": {
        "code": "\t\t\tvar commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};",
        "originalLength": 1299,
        "removedExports": [
          "getDefaultExportFromCjs",
          "getDefaultExportFromNamespaceIfPresent",
          "getDefaultExportFromNamespaceIfNotNamed",
          "getAugmentedNamespace",
          "commonjsRequire"
        ],
        "renderedExports": [
          "commonjsGlobal"
        ],
        "renderedLength": 192
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js": {
        "code": "\t\t\t/**\n\t\t\t * Checks if `value` is the\n\t\t\t * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n\t\t\t * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 0.1.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to check.\n\t\t\t * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.isObject({});\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObject([1, 2, 3]);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObject(_.noop);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObject(null);\n\t\t\t * // => false\n\t\t\t */\n\n\t\t\tfunction isObject$3(value) {\n\t\t\t  var type = typeof value;\n\t\t\t  return value != null && (type == 'object' || type == 'function');\n\t\t\t}\n\n\t\t\tvar isObject_1 = isObject$3;",
        "originalLength": 733,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 737
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js": {
        "code": "\t\t\t/** Detect free variable `global` from Node.js. */\n\n\t\t\tvar freeGlobal$1 = typeof commonjsGlobal == 'object' && commonjsGlobal && commonjsGlobal.Object === Object && commonjsGlobal;\n\n\t\t\tvar _freeGlobal = freeGlobal$1;",
        "originalLength": 173,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 210
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js": {
        "code": "\t\t\tvar freeGlobal = _freeGlobal;\n\n\t\t\t/** Detect free variable `self`. */\n\t\t\tvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n\t\t\t/** Used as a reference to the global object. */\n\t\t\tvar root$2 = freeGlobal || freeSelf || Function('return this')();\n\n\t\t\tvar _root = root$2;",
        "originalLength": 300,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 285
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js": {
        "code": "\t\t\tvar root$1 = _root;\n\n\t\t\t/**\n\t\t\t * Gets the timestamp of the number of milliseconds that have elapsed since\n\t\t\t * the Unix epoch (1 January 1970 00:00:00 UTC).\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 2.4.0\n\t\t\t * @category Date\n\t\t\t * @returns {number} Returns the timestamp.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.defer(function(stamp) {\n\t\t\t *   console.log(_.now() - stamp);\n\t\t\t * }, _.now());\n\t\t\t * // => Logs the number of milliseconds it took for the deferred invocation.\n\t\t\t */\n\t\t\tvar now$1 = function() {\n\t\t\t  return root$1.Date.now();\n\t\t\t};\n\n\t\t\tvar now_1 = now$1;",
        "originalLength": 520,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 509
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js": {
        "code": "\t\t\t/** Used to match a single whitespace character. */\n\n\t\t\tvar reWhitespace = /\\s/;\n\n\t\t\t/**\n\t\t\t * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n\t\t\t * character of `string`.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {string} string The string to inspect.\n\t\t\t * @returns {number} Returns the index of the last non-whitespace character.\n\t\t\t */\n\t\t\tfunction trimmedEndIndex$1(string) {\n\t\t\t  var index = string.length;\n\n\t\t\t  while (index-- && reWhitespace.test(string.charAt(index))) {}\n\t\t\t  return index;\n\t\t\t}\n\n\t\t\tvar _trimmedEndIndex = trimmedEndIndex$1;",
        "originalLength": 515,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 525
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js": {
        "code": "\t\t\tvar trimmedEndIndex = _trimmedEndIndex;\n\n\t\t\t/** Used to match leading whitespace. */\n\t\t\tvar reTrimStart = /^\\s+/;\n\n\t\t\t/**\n\t\t\t * The base implementation of `_.trim`.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {string} string The string to trim.\n\t\t\t * @returns {string} Returns the trimmed string.\n\t\t\t */\n\t\t\tfunction baseTrim$1(string) {\n\t\t\t  return string\n\t\t\t    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n\t\t\t    : string;\n\t\t\t}\n\n\t\t\tvar _baseTrim = baseTrim$1;",
        "originalLength": 444,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 433
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js": {
        "code": "\t\t\tvar root = _root;\n\n\t\t\t/** Built-in value references. */\n\t\t\tvar Symbol$2 = root.Symbol;\n\n\t\t\tvar _Symbol = Symbol$2;",
        "originalLength": 118,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 105
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js": {
        "code": "\t\t\tvar Symbol$1 = _Symbol;\n\n\t\t\t/** Used for built-in method references. */\n\t\t\tvar objectProto$1 = Object.prototype;\n\n\t\t\t/** Used to check objects for own properties. */\n\t\t\tvar hasOwnProperty = objectProto$1.hasOwnProperty;\n\n\t\t\t/**\n\t\t\t * Used to resolve the\n\t\t\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t\t\t * of values.\n\t\t\t */\n\t\t\tvar nativeObjectToString$1 = objectProto$1.toString;\n\n\t\t\t/** Built-in value references. */\n\t\t\tvar symToStringTag$1 = Symbol$1 ? Symbol$1.toStringTag : undefined;\n\n\t\t\t/**\n\t\t\t * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {*} value The value to query.\n\t\t\t * @returns {string} Returns the raw `toStringTag`.\n\t\t\t */\n\t\t\tfunction getRawTag$1(value) {\n\t\t\t  var isOwn = hasOwnProperty.call(value, symToStringTag$1),\n\t\t\t      tag = value[symToStringTag$1];\n\n\t\t\t  try {\n\t\t\t    value[symToStringTag$1] = undefined;\n\t\t\t    var unmasked = true;\n\t\t\t  } catch (e) {}\n\n\t\t\t  var result = nativeObjectToString$1.call(value);\n\t\t\t  if (unmasked) {\n\t\t\t    if (isOwn) {\n\t\t\t      value[symToStringTag$1] = tag;\n\t\t\t    } else {\n\t\t\t      delete value[symToStringTag$1];\n\t\t\t    }\n\t\t\t  }\n\t\t\t  return result;\n\t\t\t}\n\n\t\t\tvar _getRawTag = getRawTag$1;",
        "originalLength": 1139,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1157
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js": {
        "code": "\t\t\t/** Used for built-in method references. */\n\n\t\t\tvar objectProto = Object.prototype;\n\n\t\t\t/**\n\t\t\t * Used to resolve the\n\t\t\t * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n\t\t\t * of values.\n\t\t\t */\n\t\t\tvar nativeObjectToString = objectProto.toString;\n\n\t\t\t/**\n\t\t\t * Converts `value` to a string using `Object.prototype.toString`.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {*} value The value to convert.\n\t\t\t * @returns {string} Returns the converted string.\n\t\t\t */\n\t\t\tfunction objectToString$1(value) {\n\t\t\t  return nativeObjectToString.call(value);\n\t\t\t}\n\n\t\t\tvar _objectToString = objectToString$1;",
        "originalLength": 565,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 574
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js": {
        "code": "\t\t\tvar Symbol = _Symbol,\n\t\t\t    getRawTag = _getRawTag,\n\t\t\t    objectToString = _objectToString;\n\n\t\t\t/** `Object#toString` result references. */\n\t\t\tvar nullTag = '[object Null]',\n\t\t\t    undefinedTag = '[object Undefined]';\n\n\t\t\t/** Built-in value references. */\n\t\t\tvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n\t\t\t/**\n\t\t\t * The base implementation of `getTag` without fallbacks for buggy environments.\n\t\t\t *\n\t\t\t * @private\n\t\t\t * @param {*} value The value to query.\n\t\t\t * @returns {string} Returns the `toStringTag`.\n\t\t\t */\n\t\t\tfunction baseGetTag$1(value) {\n\t\t\t  if (value == null) {\n\t\t\t    return value === undefined ? undefinedTag : nullTag;\n\t\t\t  }\n\t\t\t  return (symToStringTag && symToStringTag in Object(value))\n\t\t\t    ? getRawTag(value)\n\t\t\t    : objectToString(value);\n\t\t\t}\n\n\t\t\tvar _baseGetTag = baseGetTag$1;",
        "originalLength": 792,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 757
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js": {
        "code": "\t\t\t/**\n\t\t\t * Checks if `value` is object-like. A value is object-like if it's not `null`\n\t\t\t * and has a `typeof` result of \"object\".\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 4.0.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to check.\n\t\t\t * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.isObjectLike({});\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObjectLike([1, 2, 3]);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isObjectLike(_.noop);\n\t\t\t * // => false\n\t\t\t *\n\t\t\t * _.isObjectLike(null);\n\t\t\t * // => false\n\t\t\t */\n\n\t\t\tfunction isObjectLike$1(value) {\n\t\t\t  return value != null && typeof value == 'object';\n\t\t\t}\n\n\t\t\tvar isObjectLike_1 = isObjectLike$1;",
        "originalLength": 614,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 622
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js": {
        "code": "\t\t\tvar baseGetTag = _baseGetTag,\n\t\t\t    isObjectLike = isObjectLike_1;\n\n\t\t\t/** `Object#toString` result references. */\n\t\t\tvar symbolTag = '[object Symbol]';\n\n\t\t\t/**\n\t\t\t * Checks if `value` is classified as a `Symbol` primitive or object.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 4.0.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to check.\n\t\t\t * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.isSymbol(Symbol.iterator);\n\t\t\t * // => true\n\t\t\t *\n\t\t\t * _.isSymbol('abc');\n\t\t\t * // => false\n\t\t\t */\n\t\t\tfunction isSymbol$1(value) {\n\t\t\t  return typeof value == 'symbol' ||\n\t\t\t    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n\t\t\t}\n\n\t\t\tvar isSymbol_1 = isSymbol$1;",
        "originalLength": 682,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 661
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js": {
        "code": "\t\t\tvar baseTrim = _baseTrim,\n\t\t\t    isObject$2 = isObject_1,\n\t\t\t    isSymbol = isSymbol_1;\n\n\t\t\t/** Used as references for various `Number` constants. */\n\t\t\tvar NAN = 0 / 0;\n\n\t\t\t/** Used to detect bad signed hexadecimal string values. */\n\t\t\tvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n\t\t\t/** Used to detect binary string values. */\n\t\t\tvar reIsBinary = /^0b[01]+$/i;\n\n\t\t\t/** Used to detect octal string values. */\n\t\t\tvar reIsOctal = /^0o[0-7]+$/i;\n\n\t\t\t/** Built-in method references without a dependency on `root`. */\n\t\t\tvar freeParseInt = parseInt;\n\n\t\t\t/**\n\t\t\t * Converts `value` to a number.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 4.0.0\n\t\t\t * @category Lang\n\t\t\t * @param {*} value The value to process.\n\t\t\t * @returns {number} Returns the number.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * _.toNumber(3.2);\n\t\t\t * // => 3.2\n\t\t\t *\n\t\t\t * _.toNumber(Number.MIN_VALUE);\n\t\t\t * // => 5e-324\n\t\t\t *\n\t\t\t * _.toNumber(Infinity);\n\t\t\t * // => Infinity\n\t\t\t *\n\t\t\t * _.toNumber('3.2');\n\t\t\t * // => 3.2\n\t\t\t */\n\t\t\tfunction toNumber$1(value) {\n\t\t\t  if (typeof value == 'number') {\n\t\t\t    return value;\n\t\t\t  }\n\t\t\t  if (isSymbol(value)) {\n\t\t\t    return NAN;\n\t\t\t  }\n\t\t\t  if (isObject$2(value)) {\n\t\t\t    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n\t\t\t    value = isObject$2(other) ? (other + '') : other;\n\t\t\t  }\n\t\t\t  if (typeof value != 'string') {\n\t\t\t    return value === 0 ? value : +value;\n\t\t\t  }\n\t\t\t  value = baseTrim(value);\n\t\t\t  var isBinary = reIsBinary.test(value);\n\t\t\t  return (isBinary || reIsOctal.test(value))\n\t\t\t    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n\t\t\t    : (reIsBadHex.test(value) ? NAN : +value);\n\t\t\t}\n\n\t\t\tvar toNumber_1 = toNumber$1;",
        "originalLength": 1519,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 1493
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js": {
        "code": "\t\t\tvar isObject$1 = isObject_1,\n\t\t\t    now = now_1,\n\t\t\t    toNumber = toNumber_1;\n\n\t\t\t/** Error message constants. */\n\t\t\tvar FUNC_ERROR_TEXT$1 = 'Expected a function';\n\n\t\t\t/* Built-in method references for those with the same name as other `lodash` methods. */\n\t\t\tvar nativeMax = Math.max,\n\t\t\t    nativeMin = Math.min;\n\n\t\t\t/**\n\t\t\t * Creates a debounced function that delays invoking `func` until after `wait`\n\t\t\t * milliseconds have elapsed since the last time the debounced function was\n\t\t\t * invoked. The debounced function comes with a `cancel` method to cancel\n\t\t\t * delayed `func` invocations and a `flush` method to immediately invoke them.\n\t\t\t * Provide `options` to indicate whether `func` should be invoked on the\n\t\t\t * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n\t\t\t * with the last arguments provided to the debounced function. Subsequent\n\t\t\t * calls to the debounced function return the result of the last `func`\n\t\t\t * invocation.\n\t\t\t *\n\t\t\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t\t\t * invoked on the trailing edge of the timeout only if the debounced function\n\t\t\t * is invoked more than once during the `wait` timeout.\n\t\t\t *\n\t\t\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t\t\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t\t\t *\n\t\t\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t\t\t * for details over the differences between `_.debounce` and `_.throttle`.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 0.1.0\n\t\t\t * @category Function\n\t\t\t * @param {Function} func The function to debounce.\n\t\t\t * @param {number} [wait=0] The number of milliseconds to delay.\n\t\t\t * @param {Object} [options={}] The options object.\n\t\t\t * @param {boolean} [options.leading=false]\n\t\t\t *  Specify invoking on the leading edge of the timeout.\n\t\t\t * @param {number} [options.maxWait]\n\t\t\t *  The maximum time `func` is allowed to be delayed before it's invoked.\n\t\t\t * @param {boolean} [options.trailing=true]\n\t\t\t *  Specify invoking on the trailing edge of the timeout.\n\t\t\t * @returns {Function} Returns the new debounced function.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * // Avoid costly calculations while the window size is in flux.\n\t\t\t * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n\t\t\t *\n\t\t\t * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n\t\t\t * jQuery(element).on('click', _.debounce(sendMail, 300, {\n\t\t\t *   'leading': true,\n\t\t\t *   'trailing': false\n\t\t\t * }));\n\t\t\t *\n\t\t\t * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n\t\t\t * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n\t\t\t * var source = new EventSource('/stream');\n\t\t\t * jQuery(source).on('message', debounced);\n\t\t\t *\n\t\t\t * // Cancel the trailing debounced invocation.\n\t\t\t * jQuery(window).on('popstate', debounced.cancel);\n\t\t\t */\n\t\t\tfunction debounce$1(func, wait, options) {\n\t\t\t  var lastArgs,\n\t\t\t      lastThis,\n\t\t\t      maxWait,\n\t\t\t      result,\n\t\t\t      timerId,\n\t\t\t      lastCallTime,\n\t\t\t      lastInvokeTime = 0,\n\t\t\t      leading = false,\n\t\t\t      maxing = false,\n\t\t\t      trailing = true;\n\n\t\t\t  if (typeof func != 'function') {\n\t\t\t    throw new TypeError(FUNC_ERROR_TEXT$1);\n\t\t\t  }\n\t\t\t  wait = toNumber(wait) || 0;\n\t\t\t  if (isObject$1(options)) {\n\t\t\t    leading = !!options.leading;\n\t\t\t    maxing = 'maxWait' in options;\n\t\t\t    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n\t\t\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t\t\t  }\n\n\t\t\t  function invokeFunc(time) {\n\t\t\t    var args = lastArgs,\n\t\t\t        thisArg = lastThis;\n\n\t\t\t    lastArgs = lastThis = undefined;\n\t\t\t    lastInvokeTime = time;\n\t\t\t    result = func.apply(thisArg, args);\n\t\t\t    return result;\n\t\t\t  }\n\n\t\t\t  function leadingEdge(time) {\n\t\t\t    // Reset any `maxWait` timer.\n\t\t\t    lastInvokeTime = time;\n\t\t\t    // Start the timer for the trailing edge.\n\t\t\t    timerId = setTimeout(timerExpired, wait);\n\t\t\t    // Invoke the leading edge.\n\t\t\t    return leading ? invokeFunc(time) : result;\n\t\t\t  }\n\n\t\t\t  function remainingWait(time) {\n\t\t\t    var timeSinceLastCall = time - lastCallTime,\n\t\t\t        timeSinceLastInvoke = time - lastInvokeTime,\n\t\t\t        timeWaiting = wait - timeSinceLastCall;\n\n\t\t\t    return maxing\n\t\t\t      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n\t\t\t      : timeWaiting;\n\t\t\t  }\n\n\t\t\t  function shouldInvoke(time) {\n\t\t\t    var timeSinceLastCall = time - lastCallTime,\n\t\t\t        timeSinceLastInvoke = time - lastInvokeTime;\n\n\t\t\t    // Either this is the first call, activity has stopped and we're at the\n\t\t\t    // trailing edge, the system time has gone backwards and we're treating\n\t\t\t    // it as the trailing edge, or we've hit the `maxWait` limit.\n\t\t\t    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n\t\t\t      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n\t\t\t  }\n\n\t\t\t  function timerExpired() {\n\t\t\t    var time = now();\n\t\t\t    if (shouldInvoke(time)) {\n\t\t\t      return trailingEdge(time);\n\t\t\t    }\n\t\t\t    // Restart the timer.\n\t\t\t    timerId = setTimeout(timerExpired, remainingWait(time));\n\t\t\t  }\n\n\t\t\t  function trailingEdge(time) {\n\t\t\t    timerId = undefined;\n\n\t\t\t    // Only invoke if we have `lastArgs` which means `func` has been\n\t\t\t    // debounced at least once.\n\t\t\t    if (trailing && lastArgs) {\n\t\t\t      return invokeFunc(time);\n\t\t\t    }\n\t\t\t    lastArgs = lastThis = undefined;\n\t\t\t    return result;\n\t\t\t  }\n\n\t\t\t  function cancel() {\n\t\t\t    if (timerId !== undefined) {\n\t\t\t      clearTimeout(timerId);\n\t\t\t    }\n\t\t\t    lastInvokeTime = 0;\n\t\t\t    lastArgs = lastCallTime = lastThis = timerId = undefined;\n\t\t\t  }\n\n\t\t\t  function flush() {\n\t\t\t    return timerId === undefined ? result : trailingEdge(now());\n\t\t\t  }\n\n\t\t\t  function debounced() {\n\t\t\t    var time = now(),\n\t\t\t        isInvoking = shouldInvoke(time);\n\n\t\t\t    lastArgs = arguments;\n\t\t\t    lastThis = this;\n\t\t\t    lastCallTime = time;\n\n\t\t\t    if (isInvoking) {\n\t\t\t      if (timerId === undefined) {\n\t\t\t        return leadingEdge(lastCallTime);\n\t\t\t      }\n\t\t\t      if (maxing) {\n\t\t\t        // Handle invocations in a tight loop.\n\t\t\t        clearTimeout(timerId);\n\t\t\t        timerId = setTimeout(timerExpired, wait);\n\t\t\t        return invokeFunc(lastCallTime);\n\t\t\t      }\n\t\t\t    }\n\t\t\t    if (timerId === undefined) {\n\t\t\t      timerId = setTimeout(timerExpired, wait);\n\t\t\t    }\n\t\t\t    return result;\n\t\t\t  }\n\t\t\t  debounced.cancel = cancel;\n\t\t\t  debounced.flush = flush;\n\t\t\t  return debounced;\n\t\t\t}\n\n\t\t\tvar debounce_1 = debounce$1;",
        "originalLength": 6100,
        "removedExports": [
          "default"
        ],
        "renderedExports": [
          "__moduleExports"
        ],
        "renderedLength": 6078
      },
      "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js": {
        "code": "\t\t\tvar debounce = debounce_1,\n\t\t\t    isObject = isObject_1;\n\n\t\t\t/** Error message constants. */\n\t\t\tvar FUNC_ERROR_TEXT = 'Expected a function';\n\n\t\t\t/**\n\t\t\t * Creates a throttled function that only invokes `func` at most once per\n\t\t\t * every `wait` milliseconds. The throttled function comes with a `cancel`\n\t\t\t * method to cancel delayed `func` invocations and a `flush` method to\n\t\t\t * immediately invoke them. Provide `options` to indicate whether `func`\n\t\t\t * should be invoked on the leading and/or trailing edge of the `wait`\n\t\t\t * timeout. The `func` is invoked with the last arguments provided to the\n\t\t\t * throttled function. Subsequent calls to the throttled function return the\n\t\t\t * result of the last `func` invocation.\n\t\t\t *\n\t\t\t * **Note:** If `leading` and `trailing` options are `true`, `func` is\n\t\t\t * invoked on the trailing edge of the timeout only if the throttled function\n\t\t\t * is invoked more than once during the `wait` timeout.\n\t\t\t *\n\t\t\t * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n\t\t\t * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n\t\t\t *\n\t\t\t * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n\t\t\t * for details over the differences between `_.throttle` and `_.debounce`.\n\t\t\t *\n\t\t\t * @static\n\t\t\t * @memberOf _\n\t\t\t * @since 0.1.0\n\t\t\t * @category Function\n\t\t\t * @param {Function} func The function to throttle.\n\t\t\t * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n\t\t\t * @param {Object} [options={}] The options object.\n\t\t\t * @param {boolean} [options.leading=true]\n\t\t\t *  Specify invoking on the leading edge of the timeout.\n\t\t\t * @param {boolean} [options.trailing=true]\n\t\t\t *  Specify invoking on the trailing edge of the timeout.\n\t\t\t * @returns {Function} Returns the new throttled function.\n\t\t\t * @example\n\t\t\t *\n\t\t\t * // Avoid excessively updating the position while scrolling.\n\t\t\t * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n\t\t\t *\n\t\t\t * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n\t\t\t * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n\t\t\t * jQuery(element).on('click', throttled);\n\t\t\t *\n\t\t\t * // Cancel the trailing throttled invocation.\n\t\t\t * jQuery(window).on('popstate', throttled.cancel);\n\t\t\t */\n\t\t\tfunction throttle(func, wait, options) {\n\t\t\t  var leading = true,\n\t\t\t      trailing = true;\n\n\t\t\t  if (typeof func != 'function') {\n\t\t\t    throw new TypeError(FUNC_ERROR_TEXT);\n\t\t\t  }\n\t\t\t  if (isObject(options)) {\n\t\t\t    leading = 'leading' in options ? !!options.leading : leading;\n\t\t\t    trailing = 'trailing' in options ? !!options.trailing : trailing;\n\t\t\t  }\n\t\t\t  return debounce(func, wait, {\n\t\t\t    'leading': leading,\n\t\t\t    'maxWait': wait,\n\t\t\t    'trailing': trailing\n\t\t\t  });\n\t\t\t}\n\n\t\t\tvar throttle_1 = throttle;",
        "originalLength": 2709,
        "removedExports": [],
        "renderedExports": [
          "default",
          "__moduleExports"
        ],
        "renderedLength": 2686
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js": {
        "code": "\t\t\tvar Button = 'Button';",
        "originalLength": 30,
        "removedExports": [],
        "renderedExports": [
          "Button"
        ],
        "renderedLength": 22
      },
      "/Users/yaohuiwang/dev/labs/rollup/src/index.js": {
        "code": "\t\t\tvar dynamicImport = exports('dynamicImport', function dynamicImport() {\n\t\t\t  module.import('./incrementer-4ef7afad.js').then(function (_ref) {\n\t\t\t    var count = _ref.count,\n\t\t\t        increment = _ref.increment;\n\t\t\t    console.log(count);\n\t\t\t    increment();\n\t\t\t    console.log(count);\n\t\t\t  });\n\t\t\t});\n\t\t\tconsole.log(Button);\n\t\t\tvar throttleFn = exports('throttleFn', throttle_1(function () {\n\t\t\t  console.log(\"throttle\");\n\t\t\t}));\n\t\t\tvar rollup = exports('rollup', rollup);",
        "originalLength": 377,
        "removedExports": [],
        "renderedExports": [
          "dynamicImport",
          "throttleFn",
          "rollup"
        ],
        "renderedLength": 426
      }
    },
    "name": "index",
    "type": "chunk",
    "dynamicImports": [
      "incrementer-4ef7afad.js"
    ],
    "fileName": "index.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/system",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "system",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": true,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

{
  "code": "System.register([], (function (exports) {\n\t'use strict';\n\treturn {\n\t\texecute: (function () {\n\n\t\t\texports('increment', increment);\n\n\t\t\tvar count = exports('count', 0);\n\t\t\tfunction increment() {\n\t\t\t  exports('count', count += 1);\n\t\t\t}\n\n\t\t})\n\t};\n}));",
  "chunk": {
    "exports": [
      "count",
      "increment"
    ],
    "facadeModuleId": "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js",
    "isDynamicEntry": true,
    "isEntry": false,
    "isImplicitEntry": false,
    "modules": {
      "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js": {
        "code": "\t\t\tvar count = exports('count', 0);\n\t\t\tfunction increment() {\n\t\t\t  exports('count', count += 1);\n\t\t\t}",
        "originalLength": 68,
        "removedExports": [],
        "renderedExports": [
          "count",
          "increment"
        ],
        "renderedLength": 89
      }
    },
    "name": "incrementer",
    "type": "chunk",
    "dynamicImports": [],
    "fileName": "incrementer-4ef7afad.js",
    "implicitlyLoadedBefore": [],
    "importedBindings": {},
    "imports": [],
    "referencedFiles": []
  },
  "options": {
    "amd": {
      "autoId": false,
      "define": "define"
    },
    "assetFileNames": "assets/[name]-[hash][extname]",
    "chunkFileNames": "[name]-[hash].js",
    "compact": false,
    "dir": "output/system",
    "entryFileNames": "[name].js",
    "esModule": true,
    "exports": "auto",
    "extend": false,
    "externalLiveBindings": true,
    "format": "system",
    "freeze": true,
    "generatedCode": {
      "arrowFunctions": false,
      "constBindings": false,
      "objectShorthand": false,
      "reservedNamesAsProps": false
    },
    "globals": {
      "lodash": "lodash"
    },
    "hoistTransitiveImports": true,
    "indent": true,
    "inlineDynamicImports": false,
    "manualChunks": {},
    "minifyInternalExports": true,
    "namespaceToStringTag": false,
    "noConflict": false,
    "paths": {},
    "plugins": [],
    "preferConst": false,
    "preserveModules": false,
    "sourcemap": false,
    "sourcemapExcludeSources": false,
    "strict": true,
    "systemNullSetters": false,
    "validate": false
  }
}

