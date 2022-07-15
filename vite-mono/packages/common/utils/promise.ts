export const makePromiseWithExecutor = <T = any>() => {
  let resolve: (value?: T) => void = null;
  let reject: (reason?: any) => void = null;
  const promise = new Promise<T>((res, rej) => {
    resolve = res;
    reject = rej;
  });
  return { promise, resolve, reject };
};

export const delay = (delayTime: number) =>
  new Promise<unknown>((r) => setTimeout(r, delayTime));

export const delayAtLeast = async <T = any>(
  promise: Promise<T>,
  delayTime: number,
) => {
  const delayPromise = delay(delayTime);
  await Promise.all([promise, delayPromise]);
  return promise;
};

export const withTimeoutPromise = (promise: Promise<any>, timeout = 4000) =>
  Promise.race([
    promise,
    new Promise((_, reject) => setTimeout(reject, timeout)),
  ]);
