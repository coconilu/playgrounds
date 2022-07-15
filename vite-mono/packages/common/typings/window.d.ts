import { WindowExtension } from '@typings/global';

declare global {
  // eslint-disable-next-line @typescript-eslint/no-empty-interface
  interface Window extends WindowExtension {
    microAppEntryMap: string;
    hasRegisterMicro?: boolean;
  }

  interface ImportMeta {
    env: {
      LEGACY: boolean; // 是否在 Legacy 情景下
    };
  }
}
