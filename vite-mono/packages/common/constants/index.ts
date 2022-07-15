declare const __ENV__: "staging" | "test" | "uat" | "live";
declare const __HOST__: string;
declare const __HTTPS_HOST__: string;
declare const __MODE__: string;
declare const __COMMAND__: "serve" | "build";
declare const __MICROS__: string[];
declare const __BASE_PATH__: string;

export const env = __ENV__;
export const host = __HOST__;
export const httpsHost = __HTTPS_HOST__;
export const mode = __MODE__;
export const micros = __MICROS__;
export const LIVE_ENV = "live";
export const basePath = __BASE_PATH__;
export const isDevelopment = __COMMAND__ === "serve";

export const isLive = env === LIVE_ENV;
