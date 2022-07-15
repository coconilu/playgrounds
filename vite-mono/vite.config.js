// import legacy from "@vitejs/plugin-legacy";
import react from "@vitejs/plugin-react";
import { resolve } from "path";
import postcssPresetEnv from "postcss-preset-env";
import px2rem from "postcss-pxtorem";
import { defineConfig, splitVendorChunkPlugin } from "vite";
import remainExports from "vite-plugin-remain-exports";
import tsconfigPaths from "vite-tsconfig-paths";
import injectMicroAppMap from "./plugins/vite/injectMicroAppMap";
import injectReactDevtools from "./plugins/vite/injectReactDevtools";
import virtualHtml from "./plugins/vite/virtualHtml";
import { getDevHost, getHttpsHost } from "./scripts/devServerHelpers";
import { getMicroApps } from "./scripts/microApps";

const ENV = process.env.ENV || "test";
const envPackage = process.env.package || ""; // 独立部署指定构建的package
const envNotMicro = process.env.notMicro; // 是否使用微前端方案

const micros = getMicroApps();

const toBuildPackage = ["base", ...micros].includes(envPackage)
  ? envPackage
  : "";

const isIndependentDeploy = !!toBuildPackage; // 是否是独立部署
const isNotMicroDeploy = envNotMicro === "1"; // 是否不使用微前端部署
// const isSupportLegacy = true; // 是否支持降级到 SystemJS

if (isIndependentDeploy && isNotMicroDeploy) {
  throw new Error("目前不支持在不使用微前端方案情况下使用独立部署");
}

const px2remConfig = {
  rootValue: 14,
  propList: ["*", "!border*"],
  unitPrecision: 5,
  replace: true,
  mediaQuery: false,
  minPixelValue: 0,
};

const browsersListTarget = ["defaults", "not IE 11", "Android 4.4", "iOS 7.1"];

const autoprefixerConfig = {
  overrideBrowserslist: browsersListTarget,
  grid: true,
};

// https://vitejs.dev/config/
/**
 * command: build | server
 * mode: --mode 传进来的字符串
 */
export default defineConfig(async ({ command, mode }) => {

  const BasePath = '';

  const host = getDevHost();
  const httpsHost = getHttpsHost();

  console.log("🚀 ~ command: ", command);
  console.log("🚀 ~ mode: ", mode);
  console.log("🚀 ~ host: ", host);
  console.log("🚀 ~ httpsHost: ", httpsHost);
  console.log("🚀 ~ ENV: ", ENV);
  console.log("🚀 ~ micros: ", micros);
  console.log(
    "🚀 ~ build type: ",
    isNotMicroDeploy
      ? "build without micro"
      : isIndependentDeploy
      ? "independent build"
      : "build all"
  );
  if (isIndependentDeploy) {
    console.log("🚀 ~ to build package: ", toBuildPackage);
  }

  return {
    root: "",
    publicDir: "public",
    plugins: [
      splitVendorChunkPlugin(),
      virtualHtml({
        packages: isNotMicroDeploy
          ? ["index"] // 在非微前端部署方案中，仅需要构建输出一个 index.html
          : isIndependentDeploy
          ? [toBuildPackage === "base" ? "index" : toBuildPackage] // 独立部署方案中，仅需要构建出指定的模块
          : ["index", ...micros],
        rootPath: __dirname,
      }),
      tsconfigPaths({
        projects: [
          "packages/base",
          "packages/common",
          ...micros.map((micro) => {
            return `packages/${micro}`;
          }),
        ],
      }),
      react(),
      remainExports(),
      // isSupportLegacy // 在非微前端部署方案中，需要支持降级到 SystemJS
      //   ? legacy({
      //       targets: browsersListTarget,
      //       modernPolyfills: true,
      //     })
      //   : null,
      injectReactDevtools(),
      injectMicroAppMap({ rootPath: __dirname }),
    ],
    base: BasePath + "/",
    define: {
      __ENV__: JSON.stringify(ENV),
      __HOST__: JSON.stringify(host),
      __HTTPS_HOST__: JSON.stringify(httpsHost),
      __MODE__: JSON.stringify(mode),
      __COMMAND__: JSON.stringify(command),
      __MICROS__: JSON.stringify(micros),
      __BASE_PATH__: JSON.stringify(BasePath),
    },
    css: {
      modules: {
        localsConvention: "camelCaseOnly",
      },
      preprocessorOptions: {
        less: {
          modifyVars: {
            hack: `true; @import "${resolve(
              __dirname,
              "./packages/common/styles/_vars.less"
            )}";@import "${resolve(
              __dirname,
              "./packages/common/styles/_mixin.less"
            )}";`,
          },
          javascriptEnabled: true,
        },
      },
      postcss: {
        plugins: [
          px2rem(px2remConfig),
          postcssPresetEnv({ autoprefixer: autoprefixerConfig }),
        ],
      },
    },
    server: {
      // host: host,
      port: 20871,
      open: BasePath + "/",
      // proxy: {
      //   "/api": {
      //     target: httpsHost,
      //     changeOrigin: true,
      //   },
      // },
    },
    preview: {
      // host: host,
      port: 20872,
      open: BasePath + "/",
    },
    build: {
      minify: true,
      manifest: true,
      emptyOutDir: true,
      outDir: "dist/demo",
      sourcemap: true,
    },
    optimizeDeps: {
      entries: `packages/(base|${micros.join("|")})/index.html`,
    },
    test: {
      include: ["**/packages/**/*.test.{js,ts,jsx,tsx}"],
    },
  };
});
