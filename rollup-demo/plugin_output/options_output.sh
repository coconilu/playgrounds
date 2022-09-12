# output
{
  amd: { autoId: false, define: 'define', id: undefined },
  assetFileNames: 'assets/[name]-[hash][extname]',
  banner: [Function (anonymous)],
  chunkFileNames: '[name]-[hash].js',
  compact: false,
  dir: 'output/system',
  dynamicImportFunction: undefined,
  entryFileNames: '[name].js',
  esModule: true,
  exports: 'auto',
  extend: false,
  externalLiveBindings: true,
  file: undefined,
  footer: [Function (anonymous)],
  format: 'system',
  freeze: true,
  generatedCode: {
    arrowFunctions: false,
    constBindings: false,
    objectShorthand: false,
    reservedNamesAsProps: false
  },
  globals: { lodash: 'lodash' },
  hoistTransitiveImports: true,
  indent: true,
  inlineDynamicImports: false,
  interop: [Function (anonymous)],
  intro: [Function (anonymous)],
  manualChunks: {},
  minifyInternalExports: true,
  name: undefined,
  namespaceToStringTag: false,
  noConflict: false,
  outro: [Function (anonymous)],
  paths: {},
  plugins: [],
  preferConst: false,
  preserveModules: false,
  preserveModulesRoot: undefined,
  sanitizeFileName: [Function: sanitizeFileName],
  sourcemap: false,
  sourcemapExcludeSources: false,
  sourcemapFile: undefined,
  sourcemapPathTransform: undefined,
  strict: true,
  systemNullSetters: false,
  validate: false
}

# input
{
  acorn: {
    allowAwaitOutsideFunction: true,
    ecmaVersion: 'latest',
    preserveParens: false,
    sourceType: 'module'
  },
  acornInjectPlugins: [],
  context: 'undefined',
  experimentalCacheExpiry: 10,
  external: [Function (anonymous)],
  inlineDynamicImports: undefined,
  input: [ 'src/index.js' ],
  makeAbsoluteExternalsRelative: true,
  manualChunks: undefined,
  maxParallelFileReads: 20,
  moduleContext: [Function (anonymous)],
  onwarn: [Function (anonymous)],
  perf: false,
  plugins: [
    {
      name: 'node-resolve',
      version: '13.1.3',
      buildStart: [Function: buildStart],
      generateBundle: [Function: generateBundle],
      resolveId: [AsyncFunction: resolveId],
      load: [Function: load],
      getPackageInfoForId: [Function: getPackageInfoForId]
    },
    {
      name: 'commonjs',
      buildStart: [Function: buildStart],
      resolveId: [Function: resolveId],
      load: [Function: load],
      transform: [Function: transform],
      moduleParsed: [Function: moduleParsed]
    },
    {
      name: 'babel',
      options: [Function: options],
      resolveId: [Function: resolveId],
      load: [Function: load],
      transform: [Function: transform]
    },
    {
      name: 'demo-plugin',
      outputOptions: [Function: outputOptions],
      renderStart: [Function: renderStart],
      banner: [Function: banner],
      footer: [Function: footer],
      intro: [Function: intro],
      outro: [Function: outro],
      renderDynamicImport: [Function: renderDynamicImport],
      augmentChunkHash: [Function: augmentChunkHash],
      resolveFileUrl: [Function: resolveFileUrl],
      resolveImportMeta: [Function: resolveImportMeta],
      renderChunk: [Function: renderChunk],
      generateBundle: [Function: generateBundle],
      writeBundle: [Function: writeBundle],
      renderError: [Function: renderError],
      closeBundle: [Function: closeBundle]
    },
    {
      load: [Function: load],
      name: 'stdin',
      resolveId: [Function: resolveId]
    }
  ],
  preserveEntrySignatures: 'strict',
  preserveModules: undefined,
  preserveSymlinks: false,
  shimMissingExports: false,
  strictDeprecations: false,
  treeshake: {
    annotations: true,
    correctVarValueBeforeDeclaration: false,
    moduleSideEffects: [Function (anonymous)],
    propertyReadSideEffects: true,
    tryCatchDeoptimization: true,
    unknownGlobalSideEffects: true
  }
}