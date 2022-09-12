define(['exports'], (function (exports) { 'use strict';

	exports.count = 0;
	function increment() {
	  exports.count += 1;
	}

	exports.increment = increment;

}));
