import { defineConfig } from "rollup";
import commonjs from "@rollup/plugin-commonjs";
import nodeResolve from "@rollup/plugin-node-resolve";
import babel from "@rollup/plugin-babel";
import fs from "fs";

export default defineConfig({
  input: "src/index.js",
  external: ["lodash"],
  plugins: [
    // nodeResolve(),
    // commonjs(),
    babel({ babelHelpers: "bundled", exclude: "node_modules/**" }),
    {
      name: "demo-plugin",
      // buildStart: (inputOptions) => {
      //   console.log(inputOptions);
      // },
      // resolveId: (source, importer, options) => {
      //   console.log(source, importer);
      // },
      // load: (id) => {
      //   console.log("🚀 ~ file: rollup.config.js ~ line 22 ~ id", id);
      // },
      // transform: (code, id) => {
      //   console.log(
      //     "🚀 ~ file: rollup.config.js ~ line 25 ~ (code, id)\n",
      //     code
      //   );
      // },
      // shouldTransformCachedModule: ({
      //   id,
      //   code,
      //   ast,
      //   meta,
      //   moduleSideEffects,
      //   syntheticNamedExports,
      // }) => {
      //   console.log("**", {
      //     id,
      //     code,
      //     ast,
      //     meta,
      //     moduleSideEffects,
      //     syntheticNamedExports,
      //   });
      // },
      // moduleParsed: (info) => {
      //   const { code, ...otherInfo } = info;
      //   console.warn("**module parsed info**", otherInfo);
      //   fs.appendFileSync(
      //     "plugin_output/moduleParsed.sh",
      //     JSON.stringify(info, null, 2) + "\n\n"
      //   );
      // },
      // resolveDynamicImport: (specifier, importer) => {
      //   console.log(
      //     "🚀 ~ file: rollup.config.js ~ line 57 ~ specifier, importer",
      //     specifier,
      //     importer
      //   );
      // },
      // buildEnd: (error) => {
      //   console.log("🚀 ~ file: rollup.config.js ~ line 64 ~ error", error);
      // },
      // outputOptions: () => {},
      // renderStart: (outputOptions, inputOptions) => {
      //   console.log(
      //     "🚀 ~ file: rollup.config.js ~ line 68 ~ outputOptions, inputOptions",
      //     outputOptions,
      //     inputOptions
      //   );
      // },
      // banner: () => {
      //   return "// this is banner";
      // },
      // footer: () => {
      //   return "// this is footer";
      // },
      // intro: () => {
      //   return "// this is intro";
      // },
      // outro: () => {
      //   return "// this is outro";
      // },
      // renderDynamicImport: ({
      //   format,
      //   moduleId,
      //   targetModuleId,
      //   customResolution,
      // }) => {
      //   console.log(
      //     "🚀 ~ file: rollup.config.js ~ line 87 ~ format, moduleId, targetModuleId, customResolution",
      //     format,
      //     moduleId,
      //     targetModuleId,
      //     customResolution
      //   );
      // },
      // augmentChunkHash: (chunkInfo) => {
      //   fs.appendFileSync(
      //     "plugin_output/augmentChunkHash_chunkInfo.sh",
      //     JSON.stringify(chunkInfo, null, 2) + "\n\n"
      //   );
      // },
      // resolveFileUrl: ({
      //   chunkId,
      //   fileName,
      //   format,
      //   moduleId,
      //   referenceId,
      //   relativePath,
      // }) => {
      //   console.log(
      //     "🚀 ~ file: rollup.config.js ~ line 94 ~ chunkId, fileName, format, moduleId, referenceId, relativePath",
      //     chunkId,
      //     fileName,
      //     format,
      //     moduleId,
      //     referenceId,
      //     relativePath
      //   );
      //   return null;
      // },
      // resolveImportMeta: (property, { chunkId, moduleId, format }) => {
      //   console.log(
      //     "🚀 ~ file: rollup.config.js ~ line 113 ~ chunkId, moduleId, format",
      //     property,
      //     chunkId,
      //     moduleId,
      //     format
      //   );
      // },
      // renderChunk: (code, chunk, options) => {
      //   fs.appendFileSync(
      //     "plugin_output/render_chunk.sh",
      //     JSON.stringify({ code, chunk, options }, null, 2) + "\n\n"
      //   );
      // },
      // generateBundle: (options, bundle, isWrite) => {
      //   fs.appendFileSync(
      //     "plugin_output/generate_bundle.sh",
      //     JSON.stringify({ options, bundle, isWrite }, null, 2) + "\n\n"
      //   );
      // },
      // writeBundle: (options, bundle) => {
      //   fs.appendFileSync(
      //     "plugin_output/write_bundle.sh",
      //     JSON.stringify({ options, bundle }, null, 2) + "\n\n"
      //   );
      // },
      renderError: () => {},
      closeBundle: () => {
        console.log('closeBundle')
      },
    },
  ],
  output: [
    // {
    //   format: "cjs",
    // },
    // {
    //   format: "amd",
    // },
    // {
    //   file: "output/bundle.umd.js",
    //   format: "umd",
    //   name: "umd",
    // },
    // {
    //   file: "output/bundle.iife.js",
    //   format: "iife",
    //   name: "iife",
    // },
    {
      format: "es",
    },
    // {
    //   format: "system",
    // },
  ].map((out) => {
    return {
      ...out,
      // globals: {
      //   lodash: "lodash",
      // },
      dir: `output/${out.format}`,
    };
  }),
});
