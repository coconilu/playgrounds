import { Button } from "./comp/Button";
import { throttle } from "lodash";

export const dynamicImport = () => {
  import("./incrementer.js").then(({ count, increment }) => {
    console.log(count);
    increment();
    console.log(count);
  });
};

console.log(Button);

export const throttleFn = throttle(() => {
  console.log("throttle");
});

export const rollup = rollup;
