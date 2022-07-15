import { WindowExtension } from '@typings/global';

declare global {
  // eslint-disable-next-line @typescript-eslint/no-empty-interface
  interface Window extends WindowExtension {}
}
