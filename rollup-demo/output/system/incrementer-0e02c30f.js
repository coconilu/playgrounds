
// this is banner
System.register([], (function (exports) {
	'use strict';
	return {
		execute: (function () {

			

			// this is intro

			exports('increment', increment);

			var count = exports('count', 0);
			function increment() {
			  exports('count', count += 1);
			}



			// this is outro

		})
	};
}));

// this is footer
