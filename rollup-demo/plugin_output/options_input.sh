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
    { name: 'demo-plugin', buildStart: [Function: buildStart] },
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