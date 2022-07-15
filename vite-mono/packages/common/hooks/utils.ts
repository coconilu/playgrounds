import { makePromiseWithExecutor } from "@/utils/promise";
import { DependencyList, useCallback, useMemo, useRef } from "react";

export const usePromiseWithExecutor = <T = any>(deps?: DependencyList) => {
  const dependents = Array.isArray(deps) ? deps : [];
  const usePromiseWithExecutor = useMemo(
    () => makePromiseWithExecutor<T>(),
    // eslint-disable-next-line react-hooks/exhaustive-deps
    dependents
  );

  return usePromiseWithExecutor;
};

/**
 * reference: https://github.com/reactjs/rfcs/blob/useevent/text/0000-useevent.md
 * @param optional func need to be stable and outer readable
 * @returns stableFunction
 */
export const useEvent = <T extends (...args: any[]) => any>(func?: T) => {
  const funcRef = useRef<T>(func);
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
