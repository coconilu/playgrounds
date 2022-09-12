System.register([], (function (exports) {
	'use strict';
	return {
		execute: (function () {

			exports('increment', increment);

			var count = exports('count', 0);
			function increment() {
			  exports('count', count += 1);
			}

		})
	};
}));
