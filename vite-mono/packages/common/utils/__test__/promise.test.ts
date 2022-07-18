import { expect, describe, it } from 'vitest';
import {
  makePromiseWithExecutor,
  delay,
  delayAtLeast,
  withTimeoutPromise,
} from '../promise';

describe('Promise Utils', () => {
  describe('makePromiseWithExecutor', () => {
    it('分离promise的 resolve', () => {
      const { promise, resolve } = makePromiseWithExecutor();
      promise.then((res) => {
        expect(res).toBe(100);
      });
      resolve(100);
    });
    it('分离promise的 reject', () => {
      const { promise, reject } = makePromiseWithExecutor();
      promise.catch((err: Error) => {
        expect(err.message).toBe('demo');
      });
      reject(new Error('demo'));
    });
  });

  describe('delay', async () => {
    it('延迟500ms', async () => {
      const delayTime = 400;
      const startTime = Date.now();
      await delay(delayTime);
      const endTime = Date.now();

      expect(endTime - startTime).toBeGreaterThanOrEqual(delayTime);
    });
  });

  describe('delayAtLeast', async () => {
    it('至少延迟500ms', async () => {
      const delayAtLeastTime = 500;
      const delayTime = 100;
      const startTime = Date.now();
      await delayAtLeast(delay(delayTime), delayAtLeastTime);
      const endTime = Date.now();

      expect(endTime - startTime).toBeGreaterThanOrEqual(delayAtLeastTime);
    });
  });

  describe('withTimeoutPromise', async () => {
    it.concurrent('设置超时2s, 但是仅延迟1s', async () => {
      const delay1s = delay(1000);
      const onTimePromise = withTimeoutPromise(delay1s, 2000);
      await expect(onTimePromise).resolves.toBe(undefined);
    });

    it.concurrent('设置超时2s, 但是延迟3s', async () => {
      const delay3s = delay(3000);
      const timeoutPromise = withTimeoutPromise(delay3s, 2000);
      await expect(timeoutPromise).rejects.toBe(undefined);
    });

    it.concurrent.fails('设置超时2s, 但是延迟3s, await风格', async () => {
      const delay3s = delay(3000);
      await withTimeoutPromise(delay3s, 2000);
    });
  });
});
