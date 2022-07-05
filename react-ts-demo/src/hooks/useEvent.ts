import { useCallback, useRef } from "react";

export const useEvent = <T extends (...args: any[]) => any>(func: T) => {
  const funcRef = useRef<T>(func);
  funcRef.current = func;

  const stableCallback = useCallback((...args: any[]) => {
    return funcRef.current?.(...args);
  }, []);

  return stableCallback;
};
