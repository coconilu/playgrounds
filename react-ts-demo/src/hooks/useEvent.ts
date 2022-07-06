import { useCallback, useMemo, useRef } from "react";

export const useEvent = <T extends (...args: any[]) => any>(func?: T) => {
  const funcRef = useRef<T | undefined>(func);
  // why not write `fnRef.current = fn`?
  // https://github.com/alibaba/hooks/issues/728
  funcRef.current = useMemo(() => func, [func]);

  const stableCallback = useCallback<(...args: Parameters<T>) => ReturnType<T>>(
    (...args) => {
      return funcRef.current?.(...args);
    },
    []
  );

  return stableCallback;
};
