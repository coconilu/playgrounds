{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 67,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 21,
        "declaration": {
          "type": "VariableDeclaration",
          "start": 7,
          "end": 21,
          "declarations": [
            {
              "type": "VariableDeclarator",
              "start": 11,
              "end": 20,
              "id": {
                "type": "Identifier",
                "start": 11,
                "end": 16,
                "name": "count"
              },
              "init": {
                "type": "Literal",
                "start": 19,
                "end": 20,
                "value": 0,
                "raw": "0"
              }
            }
          ],
          "kind": "var"
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 22,
        "end": 67,
        "declaration": {
          "type": "FunctionDeclaration",
          "start": 29,
          "end": 67,
          "id": {
            "type": "Identifier",
            "start": 38,
            "end": 47,
            "name": "increment"
          },
          "expression": false,
          "generator": false,
          "async": false,
          "params": [],
          "body": {
            "type": "BlockStatement",
            "start": 50,
            "end": 67,
            "body": [
              {
                "type": "ExpressionStatement",
                "start": 54,
                "end": 65,
                "expression": {
                  "type": "AssignmentExpression",
                  "start": 54,
                  "end": 64,
                  "operator": "+=",
                  "left": {
                    "type": "Identifier",
                    "start": 54,
                    "end": 59,
                    "name": "count"
                  },
                  "right": {
                    "type": "Literal",
                    "start": 63,
                    "end": 64,
                    "value": 1,
                    "raw": "1"
                  }
                }
              }
            ]
          }
        },
        "specifiers": [],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "export var count = 0;\nexport function increment() {\n  count += 1;\n}",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": false,
  "id": "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [],
  "importedIds": [],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": false
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 29,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 29,
        "declaration": {
          "type": "VariableDeclaration",
          "start": 7,
          "end": 29,
          "declarations": [
            {
              "type": "VariableDeclarator",
              "start": 11,
              "end": 28,
              "id": {
                "type": "Identifier",
                "start": 11,
                "end": 17,
                "name": "Button"
              },
              "init": {
                "type": "Literal",
                "start": 20,
                "end": 28,
                "value": "Button",
                "raw": "'Button'"
              }
            }
          ],
          "kind": "var"
        },
        "specifiers": [],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "export var Button = 'Button';",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": false,
  "id": "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [],
  "importedIds": [],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": false
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 452,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 40,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 7,
            "end": 16,
            "local": {
              "type": "Identifier",
              "start": 7,
              "end": 16,
              "name": "_throttle"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 22,
          "end": 39,
          "value": "lodash/throttle",
          "raw": "\"lodash/throttle\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 41,
        "end": 80,
        "specifiers": [
          {
            "type": "ImportSpecifier",
            "start": 50,
            "end": 56,
            "imported": {
              "type": "Identifier",
              "start": 50,
              "end": 56,
              "name": "Button"
            },
            "local": {
              "type": "Identifier",
              "start": 50,
              "end": 56,
              "name": "Button"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 64,
          "end": 79,
          "value": "./comp/Button",
          "raw": "\"./comp/Button\""
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 81,
        "end": 324,
        "declaration": {
          "type": "VariableDeclaration",
          "start": 88,
          "end": 324,
          "declarations": [
            {
              "type": "VariableDeclarator",
              "start": 92,
              "end": 323,
              "id": {
                "type": "Identifier",
                "start": 92,
                "end": 105,
                "name": "dynamicImport"
              },
              "init": {
                "type": "FunctionExpression",
                "start": 108,
                "end": 323,
                "id": {
                  "type": "Identifier",
                  "start": 117,
                  "end": 130,
                  "name": "dynamicImport"
                },
                "expression": false,
                "generator": false,
                "async": false,
                "params": [],
                "body": {
                  "type": "BlockStatement",
                  "start": 133,
                  "end": 323,
                  "body": [
                    {
                      "type": "ExpressionStatement",
                      "start": 137,
                      "end": 321,
                      "expression": {
                        "type": "CallExpression",
                        "start": 137,
                        "end": 320,
                        "callee": {
                          "type": "MemberExpression",
                          "start": 137,
                          "end": 168,
                          "object": {
                            "type": "ImportExpression",
                            "start": 137,
                            "end": 163,
                            "source": {
                              "type": "Literal",
                              "start": 144,
                              "end": 162,
                              "value": "./incrementer.js",
                              "raw": "\"./incrementer.js\""
                            }
                          },
                          "property": {
                            "type": "Identifier",
                            "start": 164,
                            "end": 168,
                            "name": "then"
                          },
                          "computed": false,
                          "optional": false
                        },
                        "arguments": [
                          {
                            "type": "FunctionExpression",
                            "start": 169,
                            "end": 319,
                            "id": null,
                            "expression": false,
                            "generator": false,
                            "async": false,
                            "params": [
                              {
                                "type": "Identifier",
                                "start": 179,
                                "end": 183,
                                "name": "_ref"
                              }
                            ],
                            "body": {
                              "type": "BlockStatement",
                              "start": 185,
                              "end": 319,
                              "body": [
                                {
                                  "type": "VariableDeclaration",
                                  "start": 191,
                                  "end": 250,
                                  "declarations": [
                                    {
                                      "type": "VariableDeclarator",
                                      "start": 195,
                                      "end": 213,
                                      "id": {
                                        "type": "Identifier",
                                        "start": 195,
                                        "end": 200,
                                        "name": "count"
                                      },
                                      "init": {
                                        "type": "MemberExpression",
                                        "start": 203,
                                        "end": 213,
                                        "object": {
                                          "type": "Identifier",
                                          "start": 203,
                                          "end": 207,
                                          "name": "_ref"
                                        },
                                        "property": {
                                          "type": "Identifier",
                                          "start": 208,
                                          "end": 213,
                                          "name": "count"
                                        },
                                        "computed": false,
                                        "optional": false
                                      }
                                    },
                                    {
                                      "type": "VariableDeclarator",
                                      "start": 223,
                                      "end": 249,
                                      "id": {
                                        "type": "Identifier",
                                        "start": 223,
                                        "end": 232,
                                        "name": "increment"
                                      },
                                      "init": {
                                        "type": "MemberExpression",
                                        "start": 235,
                                        "end": 249,
                                        "object": {
                                          "type": "Identifier",
                                          "start": 235,
                                          "end": 239,
                                          "name": "_ref"
                                        },
                                        "property": {
                                          "type": "Identifier",
                                          "start": 240,
                                          "end": 249,
                                          "name": "increment"
                                        },
                                        "computed": false,
                                        "optional": false
                                      }
                                    }
                                  ],
                                  "kind": "var"
                                },
                                {
                                  "type": "ExpressionStatement",
                                  "start": 255,
                                  "end": 274,
                                  "expression": {
                                    "type": "CallExpression",
                                    "start": 255,
                                    "end": 273,
                                    "callee": {
                                      "type": "MemberExpression",
                                      "start": 255,
                                      "end": 266,
                                      "object": {
                                        "type": "Identifier",
                                        "start": 255,
                                        "end": 262,
                                        "name": "console"
                                      },
                                      "property": {
                                        "type": "Identifier",
                                        "start": 263,
                                        "end": 266,
                                        "name": "log"
                                      },
                                      "computed": false,
                                      "optional": false
                                    },
                                    "arguments": [
                                      {
                                        "type": "Identifier",
                                        "start": 267,
                                        "end": 272,
                                        "name": "count"
                                      }
                                    ],
                                    "optional": false
                                  }
                                },
                                {
                                  "type": "ExpressionStatement",
                                  "start": 279,
                                  "end": 291,
                                  "expression": {
                                    "type": "CallExpression",
                                    "start": 279,
                                    "end": 290,
                                    "callee": {
                                      "type": "Identifier",
                                      "start": 279,
                                      "end": 288,
                                      "name": "increment"
                                    },
                                    "arguments": [],
                                    "optional": false
                                  }
                                },
                                {
                                  "type": "ExpressionStatement",
                                  "start": 296,
                                  "end": 315,
                                  "expression": {
                                    "type": "CallExpression",
                                    "start": 296,
                                    "end": 314,
                                    "callee": {
                                      "type": "MemberExpression",
                                      "start": 296,
                                      "end": 307,
                                      "object": {
                                        "type": "Identifier",
                                        "start": 296,
                                        "end": 303,
                                        "name": "console"
                                      },
                                      "property": {
                                        "type": "Identifier",
                                        "start": 304,
                                        "end": 307,
                                        "name": "log"
                                      },
                                      "computed": false,
                                      "optional": false
                                    },
                                    "arguments": [
                                      {
                                        "type": "Identifier",
                                        "start": 308,
                                        "end": 313,
                                        "name": "count"
                                      }
                                    ],
                                    "optional": false
                                  }
                                }
                              ]
                            }
                          }
                        ],
                        "optional": false
                      }
                    }
                  ]
                }
              }
            }
          ],
          "kind": "var"
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExpressionStatement",
        "start": 325,
        "end": 345,
        "expression": {
          "type": "CallExpression",
          "start": 325,
          "end": 344,
          "callee": {
            "type": "MemberExpression",
            "start": 325,
            "end": 336,
            "object": {
              "type": "Identifier",
              "start": 325,
              "end": 332,
              "name": "console"
            },
            "property": {
              "type": "Identifier",
              "start": 333,
              "end": 336,
              "name": "log"
            },
            "computed": false,
            "optional": false
          },
          "arguments": [
            {
              "type": "Identifier",
              "start": 337,
              "end": 343,
              "name": "Button"
            }
          ],
          "optional": false
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 346,
        "end": 424,
        "declaration": {
          "type": "VariableDeclaration",
          "start": 353,
          "end": 424,
          "declarations": [
            {
              "type": "VariableDeclarator",
              "start": 357,
              "end": 423,
              "id": {
                "type": "Identifier",
                "start": 357,
                "end": 367,
                "name": "throttleFn"
              },
              "init": {
                "type": "CallExpression",
                "start": 370,
                "end": 423,
                "callee": {
                  "type": "Identifier",
                  "start": 370,
                  "end": 379,
                  "name": "_throttle"
                },
                "arguments": [
                  {
                    "type": "FunctionExpression",
                    "start": 380,
                    "end": 422,
                    "id": null,
                    "expression": false,
                    "generator": false,
                    "async": false,
                    "params": [],
                    "body": {
                      "type": "BlockStatement",
                      "start": 392,
                      "end": 422,
                      "body": [
                        {
                          "type": "ExpressionStatement",
                          "start": 396,
                          "end": 420,
                          "expression": {
                            "type": "CallExpression",
                            "start": 396,
                            "end": 419,
                            "callee": {
                              "type": "MemberExpression",
                              "start": 396,
                              "end": 407,
                              "object": {
                                "type": "Identifier",
                                "start": 396,
                                "end": 403,
                                "name": "console"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 404,
                                "end": 407,
                                "name": "log"
                              },
                              "computed": false,
                              "optional": false
                            },
                            "arguments": [
                              {
                                "type": "Literal",
                                "start": 408,
                                "end": 418,
                                "value": "throttle",
                                "raw": "\"throttle\""
                              }
                            ],
                            "optional": false
                          }
                        }
                      ]
                    }
                  }
                ],
                "optional": false
              }
            }
          ],
          "kind": "var"
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 425,
        "end": 452,
        "declaration": {
          "type": "VariableDeclaration",
          "start": 432,
          "end": 452,
          "declarations": [
            {
              "type": "VariableDeclarator",
              "start": 436,
              "end": 451,
              "id": {
                "type": "Identifier",
                "start": 436,
                "end": 442,
                "name": "rollup"
              },
              "init": {
                "type": "Identifier",
                "start": 445,
                "end": 451,
                "name": "rollup"
              }
            }
          ],
          "kind": "var"
        },
        "specifiers": [],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import _throttle from \"lodash/throttle\";\nimport { Button } from \"./comp/Button\";\nexport var dynamicImport = function dynamicImport() {\n  import(\"./incrementer.js\").then(function (_ref) {\n    var count = _ref.count,\n        increment = _ref.increment;\n    console.log(count);\n    increment();\n    console.log(count);\n  });\n};\nconsole.log(Button);\nexport var throttleFn = _throttle(function () {\n  console.log(\"throttle\");\n});\nexport var rollup = rollup;",
  "dynamicallyImportedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "dynamicallyImportedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/src/incrementer.js"
  ],
  "dynamicImporters": [],
  "hasDefaultExport": false,
  "id": "/Users/yaohuiwang/dev/labs/rollup/src/index.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js",
    "/Users/yaohuiwang/dev/labs/rollup/src/comp/Button.js"
  ],
  "importers": [],
  "isEntry": true,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": false
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 1299,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 1,
        "end": 200,
        "declaration": {
          "type": "VariableDeclaration",
          "start": 8,
          "end": 200,
          "declarations": [
            {
              "type": "VariableDeclarator",
              "start": 12,
              "end": 199,
              "id": {
                "type": "Identifier",
                "start": 12,
                "end": 26,
                "name": "commonjsGlobal"
              },
              "init": {
                "type": "ConditionalExpression",
                "start": 29,
                "end": 199,
                "test": {
                  "type": "BinaryExpression",
                  "start": 29,
                  "end": 62,
                  "left": {
                    "type": "UnaryExpression",
                    "start": 29,
                    "end": 46,
                    "operator": "typeof",
                    "prefix": true,
                    "argument": {
                      "type": "Identifier",
                      "start": 36,
                      "end": 46,
                      "name": "globalThis"
                    }
                  },
                  "operator": "!==",
                  "right": {
                    "type": "Literal",
                    "start": 51,
                    "end": 62,
                    "value": "undefined",
                    "raw": "'undefined'"
                  }
                },
                "consequent": {
                  "type": "Identifier",
                  "start": 65,
                  "end": 75,
                  "name": "globalThis"
                },
                "alternate": {
                  "type": "ConditionalExpression",
                  "start": 78,
                  "end": 199,
                  "test": {
                    "type": "BinaryExpression",
                    "start": 78,
                    "end": 107,
                    "left": {
                      "type": "UnaryExpression",
                      "start": 78,
                      "end": 91,
                      "operator": "typeof",
                      "prefix": true,
                      "argument": {
                        "type": "Identifier",
                        "start": 85,
                        "end": 91,
                        "name": "window"
                      }
                    },
                    "operator": "!==",
                    "right": {
                      "type": "Literal",
                      "start": 96,
                      "end": 107,
                      "value": "undefined",
                      "raw": "'undefined'"
                    }
                  },
                  "consequent": {
                    "type": "Identifier",
                    "start": 110,
                    "end": 116,
                    "name": "window"
                  },
                  "alternate": {
                    "type": "ConditionalExpression",
                    "start": 119,
                    "end": 199,
                    "test": {
                      "type": "BinaryExpression",
                      "start": 119,
                      "end": 148,
                      "left": {
                        "type": "UnaryExpression",
                        "start": 119,
                        "end": 132,
                        "operator": "typeof",
                        "prefix": true,
                        "argument": {
                          "type": "Identifier",
                          "start": 126,
                          "end": 132,
                          "name": "global"
                        }
                      },
                      "operator": "!==",
                      "right": {
                        "type": "Literal",
                        "start": 137,
                        "end": 148,
                        "value": "undefined",
                        "raw": "'undefined'"
                      }
                    },
                    "consequent": {
                      "type": "Identifier",
                      "start": 151,
                      "end": 157,
                      "name": "global"
                    },
                    "alternate": {
                      "type": "ConditionalExpression",
                      "start": 160,
                      "end": 199,
                      "test": {
                        "type": "BinaryExpression",
                        "start": 160,
                        "end": 187,
                        "left": {
                          "type": "UnaryExpression",
                          "start": 160,
                          "end": 171,
                          "operator": "typeof",
                          "prefix": true,
                          "argument": {
                            "type": "Identifier",
                            "start": 167,
                            "end": 171,
                            "name": "self"
                          }
                        },
                        "operator": "!==",
                        "right": {
                          "type": "Literal",
                          "start": 176,
                          "end": 187,
                          "value": "undefined",
                          "raw": "'undefined'"
                        }
                      },
                      "consequent": {
                        "type": "Identifier",
                        "start": 190,
                        "end": 194,
                        "name": "self"
                      },
                      "alternate": {
                        "type": "ObjectExpression",
                        "start": 197,
                        "end": 199,
                        "properties": []
                      }
                    }
                  }
                }
              }
            }
          ],
          "kind": "var"
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 202,
        "end": 349,
        "declaration": {
          "type": "FunctionDeclaration",
          "start": 209,
          "end": 349,
          "id": {
            "type": "Identifier",
            "start": 218,
            "end": 241,
            "name": "getDefaultExportFromCjs"
          },
          "expression": false,
          "generator": false,
          "async": false,
          "params": [
            {
              "type": "Identifier",
              "start": 243,
              "end": 244,
              "name": "x"
            }
          ],
          "body": {
            "type": "BlockStatement",
            "start": 246,
            "end": 349,
            "body": [
              {
                "type": "ReturnStatement",
                "start": 249,
                "end": 347,
                "argument": {
                  "type": "ConditionalExpression",
                  "start": 256,
                  "end": 346,
                  "test": {
                    "type": "LogicalExpression",
                    "start": 256,
                    "end": 327,
                    "left": {
                      "type": "LogicalExpression",
                      "start": 256,
                      "end": 273,
                      "left": {
                        "type": "Identifier",
                        "start": 256,
                        "end": 257,
                        "name": "x"
                      },
                      "operator": "&&",
                      "right": {
                        "type": "MemberExpression",
                        "start": 261,
                        "end": 273,
                        "object": {
                          "type": "Identifier",
                          "start": 261,
                          "end": 262,
                          "name": "x"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 263,
                          "end": 273,
                          "name": "__esModule"
                        },
                        "computed": false,
                        "optional": false
                      }
                    },
                    "operator": "&&",
                    "right": {
                      "type": "CallExpression",
                      "start": 277,
                      "end": 327,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 277,
                        "end": 313,
                        "object": {
                          "type": "MemberExpression",
                          "start": 277,
                          "end": 308,
                          "object": {
                            "type": "MemberExpression",
                            "start": 277,
                            "end": 293,
                            "object": {
                              "type": "Identifier",
                              "start": 277,
                              "end": 283,
                              "name": "Object"
                            },
                            "property": {
                              "type": "Identifier",
                              "start": 284,
                              "end": 293,
                              "name": "prototype"
                            },
                            "computed": false,
                            "optional": false
                          },
                          "property": {
                            "type": "Identifier",
                            "start": 294,
                            "end": 308,
                            "name": "hasOwnProperty"
                          },
                          "computed": false,
                          "optional": false
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 309,
                          "end": 313,
                          "name": "call"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 314,
                          "end": 315,
                          "name": "x"
                        },
                        {
                          "type": "Literal",
                          "start": 317,
                          "end": 326,
                          "value": "default",
                          "raw": "'default'"
                        }
                      ],
                      "optional": false
                    }
                  },
                  "consequent": {
                    "type": "MemberExpression",
                    "start": 330,
                    "end": 342,
                    "object": {
                      "type": "Identifier",
                      "start": 330,
                      "end": 331,
                      "name": "x"
                    },
                    "property": {
                      "type": "Literal",
                      "start": 332,
                      "end": 341,
                      "value": "default",
                      "raw": "'default'"
                    },
                    "computed": true,
                    "optional": false
                  },
                  "alternate": {
                    "type": "Identifier",
                    "start": 345,
                    "end": 346,
                    "name": "x"
                  }
                }
              }
            ]
          }
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 351,
        "end": 497,
        "declaration": {
          "type": "FunctionDeclaration",
          "start": 358,
          "end": 497,
          "id": {
            "type": "Identifier",
            "start": 367,
            "end": 405,
            "name": "getDefaultExportFromNamespaceIfPresent"
          },
          "expression": false,
          "generator": false,
          "async": false,
          "params": [
            {
              "type": "Identifier",
              "start": 407,
              "end": 408,
              "name": "n"
            }
          ],
          "body": {
            "type": "BlockStatement",
            "start": 410,
            "end": 497,
            "body": [
              {
                "type": "ReturnStatement",
                "start": 413,
                "end": 495,
                "argument": {
                  "type": "ConditionalExpression",
                  "start": 420,
                  "end": 494,
                  "test": {
                    "type": "LogicalExpression",
                    "start": 420,
                    "end": 475,
                    "left": {
                      "type": "Identifier",
                      "start": 420,
                      "end": 421,
                      "name": "n"
                    },
                    "operator": "&&",
                    "right": {
                      "type": "CallExpression",
                      "start": 425,
                      "end": 475,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 425,
                        "end": 461,
                        "object": {
                          "type": "MemberExpression",
                          "start": 425,
                          "end": 456,
                          "object": {
                            "type": "MemberExpression",
                            "start": 425,
                            "end": 441,
                            "object": {
                              "type": "Identifier",
                              "start": 425,
                              "end": 431,
                              "name": "Object"
                            },
                            "property": {
                              "type": "Identifier",
                              "start": 432,
                              "end": 441,
                              "name": "prototype"
                            },
                            "computed": false,
                            "optional": false
                          },
                          "property": {
                            "type": "Identifier",
                            "start": 442,
                            "end": 456,
                            "name": "hasOwnProperty"
                          },
                          "computed": false,
                          "optional": false
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 457,
                          "end": 461,
                          "name": "call"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 462,
                          "end": 463,
                          "name": "n"
                        },
                        {
                          "type": "Literal",
                          "start": 465,
                          "end": 474,
                          "value": "default",
                          "raw": "'default'"
                        }
                      ],
                      "optional": false
                    }
                  },
                  "consequent": {
                    "type": "MemberExpression",
                    "start": 478,
                    "end": 490,
                    "object": {
                      "type": "Identifier",
                      "start": 478,
                      "end": 479,
                      "name": "n"
                    },
                    "property": {
                      "type": "Literal",
                      "start": 480,
                      "end": 489,
                      "value": "default",
                      "raw": "'default'"
                    },
                    "computed": true,
                    "optional": false
                  },
                  "alternate": {
                    "type": "Identifier",
                    "start": 493,
                    "end": 494,
                    "name": "n"
                  }
                }
              }
            ]
          }
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 499,
        "end": 677,
        "declaration": {
          "type": "FunctionDeclaration",
          "start": 506,
          "end": 677,
          "id": {
            "type": "Identifier",
            "start": 515,
            "end": 554,
            "name": "getDefaultExportFromNamespaceIfNotNamed"
          },
          "expression": false,
          "generator": false,
          "async": false,
          "params": [
            {
              "type": "Identifier",
              "start": 556,
              "end": 557,
              "name": "n"
            }
          ],
          "body": {
            "type": "BlockStatement",
            "start": 559,
            "end": 677,
            "body": [
              {
                "type": "ReturnStatement",
                "start": 562,
                "end": 675,
                "argument": {
                  "type": "ConditionalExpression",
                  "start": 569,
                  "end": 674,
                  "test": {
                    "type": "LogicalExpression",
                    "start": 569,
                    "end": 655,
                    "left": {
                      "type": "LogicalExpression",
                      "start": 569,
                      "end": 624,
                      "left": {
                        "type": "Identifier",
                        "start": 569,
                        "end": 570,
                        "name": "n"
                      },
                      "operator": "&&",
                      "right": {
                        "type": "CallExpression",
                        "start": 574,
                        "end": 624,
                        "callee": {
                          "type": "MemberExpression",
                          "start": 574,
                          "end": 610,
                          "object": {
                            "type": "MemberExpression",
                            "start": 574,
                            "end": 605,
                            "object": {
                              "type": "MemberExpression",
                              "start": 574,
                              "end": 590,
                              "object": {
                                "type": "Identifier",
                                "start": 574,
                                "end": 580,
                                "name": "Object"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 581,
                                "end": 590,
                                "name": "prototype"
                              },
                              "computed": false,
                              "optional": false
                            },
                            "property": {
                              "type": "Identifier",
                              "start": 591,
                              "end": 605,
                              "name": "hasOwnProperty"
                            },
                            "computed": false,
                            "optional": false
                          },
                          "property": {
                            "type": "Identifier",
                            "start": 606,
                            "end": 610,
                            "name": "call"
                          },
                          "computed": false,
                          "optional": false
                        },
                        "arguments": [
                          {
                            "type": "Identifier",
                            "start": 611,
                            "end": 612,
                            "name": "n"
                          },
                          {
                            "type": "Literal",
                            "start": 614,
                            "end": 623,
                            "value": "default",
                            "raw": "'default'"
                          }
                        ],
                        "optional": false
                      }
                    },
                    "operator": "&&",
                    "right": {
                      "type": "BinaryExpression",
                      "start": 628,
                      "end": 655,
                      "left": {
                        "type": "MemberExpression",
                        "start": 628,
                        "end": 649,
                        "object": {
                          "type": "CallExpression",
                          "start": 628,
                          "end": 642,
                          "callee": {
                            "type": "MemberExpression",
                            "start": 628,
                            "end": 639,
                            "object": {
                              "type": "Identifier",
                              "start": 628,
                              "end": 634,
                              "name": "Object"
                            },
                            "property": {
                              "type": "Identifier",
                              "start": 635,
                              "end": 639,
                              "name": "keys"
                            },
                            "computed": false,
                            "optional": false
                          },
                          "arguments": [
                            {
                              "type": "Identifier",
                              "start": 640,
                              "end": 641,
                              "name": "n"
                            }
                          ],
                          "optional": false
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 643,
                          "end": 649,
                          "name": "length"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "operator": "===",
                      "right": {
                        "type": "Literal",
                        "start": 654,
                        "end": 655,
                        "value": 1,
                        "raw": "1"
                      }
                    }
                  },
                  "consequent": {
                    "type": "MemberExpression",
                    "start": 658,
                    "end": 670,
                    "object": {
                      "type": "Identifier",
                      "start": 658,
                      "end": 659,
                      "name": "n"
                    },
                    "property": {
                      "type": "Literal",
                      "start": 660,
                      "end": 669,
                      "value": "default",
                      "raw": "'default'"
                    },
                    "computed": true,
                    "optional": false
                  },
                  "alternate": {
                    "type": "Identifier",
                    "start": 673,
                    "end": 674,
                    "name": "n"
                  }
                }
              }
            ]
          }
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 679,
        "end": 1036,
        "declaration": {
          "type": "FunctionDeclaration",
          "start": 686,
          "end": 1036,
          "id": {
            "type": "Identifier",
            "start": 695,
            "end": 716,
            "name": "getAugmentedNamespace"
          },
          "expression": false,
          "generator": false,
          "async": false,
          "params": [
            {
              "type": "Identifier",
              "start": 717,
              "end": 718,
              "name": "n"
            }
          ],
          "body": {
            "type": "BlockStatement",
            "start": 720,
            "end": 1036,
            "body": [
              {
                "type": "IfStatement",
                "start": 723,
                "end": 750,
                "test": {
                  "type": "MemberExpression",
                  "start": 727,
                  "end": 739,
                  "object": {
                    "type": "Identifier",
                    "start": 727,
                    "end": 728,
                    "name": "n"
                  },
                  "property": {
                    "type": "Identifier",
                    "start": 729,
                    "end": 739,
                    "name": "__esModule"
                  },
                  "computed": false,
                  "optional": false
                },
                "consequent": {
                  "type": "ReturnStatement",
                  "start": 741,
                  "end": 750,
                  "argument": {
                    "type": "Identifier",
                    "start": 748,
                    "end": 749,
                    "name": "n"
                  }
                },
                "alternate": null
              },
              {
                "type": "VariableDeclaration",
                "start": 752,
                "end": 815,
                "declarations": [
                  {
                    "type": "VariableDeclarator",
                    "start": 756,
                    "end": 814,
                    "id": {
                      "type": "Identifier",
                      "start": 756,
                      "end": 757,
                      "name": "a"
                    },
                    "init": {
                      "type": "CallExpression",
                      "start": 760,
                      "end": 814,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 760,
                        "end": 781,
                        "object": {
                          "type": "Identifier",
                          "start": 760,
                          "end": 766,
                          "name": "Object"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 767,
                          "end": 781,
                          "name": "defineProperty"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "ObjectExpression",
                          "start": 782,
                          "end": 784,
                          "properties": []
                        },
                        {
                          "type": "Literal",
                          "start": 786,
                          "end": 798,
                          "value": "__esModule",
                          "raw": "'__esModule'"
                        },
                        {
                          "type": "ObjectExpression",
                          "start": 800,
                          "end": 813,
                          "properties": [
                            {
                              "type": "Property",
                              "start": 801,
                              "end": 812,
                              "method": false,
                              "shorthand": false,
                              "computed": false,
                              "key": {
                                "type": "Identifier",
                                "start": 801,
                                "end": 806,
                                "name": "value"
                              },
                              "value": {
                                "type": "Literal",
                                "start": 808,
                                "end": 812,
                                "value": true,
                                "raw": "true"
                              },
                              "kind": "init"
                            }
                          ]
                        }
                      ],
                      "optional": false
                    }
                  }
                ],
                "kind": "var"
              },
              {
                "type": "ExpressionStatement",
                "start": 817,
                "end": 1023,
                "expression": {
                  "type": "CallExpression",
                  "start": 817,
                  "end": 1022,
                  "callee": {
                    "type": "MemberExpression",
                    "start": 817,
                    "end": 839,
                    "object": {
                      "type": "CallExpression",
                      "start": 817,
                      "end": 831,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 817,
                        "end": 828,
                        "object": {
                          "type": "Identifier",
                          "start": 817,
                          "end": 823,
                          "name": "Object"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 824,
                          "end": 828,
                          "name": "keys"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 829,
                          "end": 830,
                          "name": "n"
                        }
                      ],
                      "optional": false
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 832,
                      "end": 839,
                      "name": "forEach"
                    },
                    "computed": false,
                    "optional": false
                  },
                  "arguments": [
                    {
                      "type": "FunctionExpression",
                      "start": 840,
                      "end": 1021,
                      "id": null,
                      "expression": false,
                      "generator": false,
                      "async": false,
                      "params": [
                        {
                          "type": "Identifier",
                          "start": 850,
                          "end": 851,
                          "name": "k"
                        }
                      ],
                      "body": {
                        "type": "BlockStatement",
                        "start": 853,
                        "end": 1021,
                        "body": [
                          {
                            "type": "VariableDeclaration",
                            "start": 857,
                            "end": 903,
                            "declarations": [
                              {
                                "type": "VariableDeclarator",
                                "start": 861,
                                "end": 902,
                                "id": {
                                  "type": "Identifier",
                                  "start": 861,
                                  "end": 862,
                                  "name": "d"
                                },
                                "init": {
                                  "type": "CallExpression",
                                  "start": 865,
                                  "end": 902,
                                  "callee": {
                                    "type": "MemberExpression",
                                    "start": 865,
                                    "end": 896,
                                    "object": {
                                      "type": "Identifier",
                                      "start": 865,
                                      "end": 871,
                                      "name": "Object"
                                    },
                                    "property": {
                                      "type": "Identifier",
                                      "start": 872,
                                      "end": 896,
                                      "name": "getOwnPropertyDescriptor"
                                    },
                                    "computed": false,
                                    "optional": false
                                  },
                                  "arguments": [
                                    {
                                      "type": "Identifier",
                                      "start": 897,
                                      "end": 898,
                                      "name": "n"
                                    },
                                    {
                                      "type": "Identifier",
                                      "start": 900,
                                      "end": 901,
                                      "name": "k"
                                    }
                                  ],
                                  "optional": false
                                }
                              }
                            ],
                            "kind": "var"
                          },
                          {
                            "type": "ExpressionStatement",
                            "start": 906,
                            "end": 1018,
                            "expression": {
                              "type": "CallExpression",
                              "start": 906,
                              "end": 1017,
                              "callee": {
                                "type": "MemberExpression",
                                "start": 906,
                                "end": 927,
                                "object": {
                                  "type": "Identifier",
                                  "start": 906,
                                  "end": 912,
                                  "name": "Object"
                                },
                                "property": {
                                  "type": "Identifier",
                                  "start": 913,
                                  "end": 927,
                                  "name": "defineProperty"
                                },
                                "computed": false,
                                "optional": false
                              },
                              "arguments": [
                                {
                                  "type": "Identifier",
                                  "start": 928,
                                  "end": 929,
                                  "name": "a"
                                },
                                {
                                  "type": "Identifier",
                                  "start": 931,
                                  "end": 932,
                                  "name": "k"
                                },
                                {
                                  "type": "ConditionalExpression",
                                  "start": 934,
                                  "end": 1016,
                                  "test": {
                                    "type": "MemberExpression",
                                    "start": 934,
                                    "end": 939,
                                    "object": {
                                      "type": "Identifier",
                                      "start": 934,
                                      "end": 935,
                                      "name": "d"
                                    },
                                    "property": {
                                      "type": "Identifier",
                                      "start": 936,
                                      "end": 939,
                                      "name": "get"
                                    },
                                    "computed": false,
                                    "optional": false
                                  },
                                  "consequent": {
                                    "type": "Identifier",
                                    "start": 942,
                                    "end": 943,
                                    "name": "d"
                                  },
                                  "alternate": {
                                    "type": "ObjectExpression",
                                    "start": 946,
                                    "end": 1016,
                                    "properties": [
                                      {
                                        "type": "Property",
                                        "start": 951,
                                        "end": 967,
                                        "method": false,
                                        "shorthand": false,
                                        "computed": false,
                                        "key": {
                                          "type": "Identifier",
                                          "start": 951,
                                          "end": 961,
                                          "name": "enumerable"
                                        },
                                        "value": {
                                          "type": "Literal",
                                          "start": 963,
                                          "end": 967,
                                          "value": true,
                                          "raw": "true"
                                        },
                                        "kind": "init"
                                      },
                                      {
                                        "type": "Property",
                                        "start": 972,
                                        "end": 1012,
                                        "method": false,
                                        "shorthand": false,
                                        "computed": false,
                                        "key": {
                                          "type": "Identifier",
                                          "start": 972,
                                          "end": 975,
                                          "name": "get"
                                        },
                                        "value": {
                                          "type": "FunctionExpression",
                                          "start": 977,
                                          "end": 1012,
                                          "id": null,
                                          "expression": false,
                                          "generator": false,
                                          "async": false,
                                          "params": [],
                                          "body": {
                                            "type": "BlockStatement",
                                            "start": 989,
                                            "end": 1012,
                                            "body": [
                                              {
                                                "type": "ReturnStatement",
                                                "start": 995,
                                                "end": 1007,
                                                "argument": {
                                                  "type": "MemberExpression",
                                                  "start": 1002,
                                                  "end": 1006,
                                                  "object": {
                                                    "type": "Identifier",
                                                    "start": 1002,
                                                    "end": 1003,
                                                    "name": "n"
                                                  },
                                                  "property": {
                                                    "type": "Identifier",
                                                    "start": 1004,
                                                    "end": 1005,
                                                    "name": "k"
                                                  },
                                                  "computed": true,
                                                  "optional": false
                                                }
                                              }
                                            ]
                                          }
                                        },
                                        "kind": "init"
                                      }
                                    ]
                                  }
                                }
                              ],
                              "optional": false
                            }
                          }
                        ]
                      }
                    }
                  ],
                  "optional": false
                }
              },
              {
                "type": "ReturnStatement",
                "start": 1025,
                "end": 1034,
                "argument": {
                  "type": "Identifier",
                  "start": 1032,
                  "end": 1033,
                  "name": "a"
                }
              }
            ]
          }
        },
        "specifiers": [],
        "source": null
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 1038,
        "end": 1298,
        "declaration": {
          "type": "FunctionDeclaration",
          "start": 1045,
          "end": 1298,
          "id": {
            "type": "Identifier",
            "start": 1054,
            "end": 1069,
            "name": "commonjsRequire"
          },
          "expression": false,
          "generator": false,
          "async": false,
          "params": [
            {
              "type": "Identifier",
              "start": 1071,
              "end": 1075,
              "name": "path"
            }
          ],
          "body": {
            "type": "BlockStatement",
            "start": 1077,
            "end": 1298,
            "body": [
              {
                "type": "ThrowStatement",
                "start": 1080,
                "end": 1296,
                "argument": {
                  "type": "NewExpression",
                  "start": 1086,
                  "end": 1295,
                  "callee": {
                    "type": "Identifier",
                    "start": 1090,
                    "end": 1095,
                    "name": "Error"
                  },
                  "arguments": [
                    {
                      "type": "BinaryExpression",
                      "start": 1096,
                      "end": 1294,
                      "left": {
                        "type": "BinaryExpression",
                        "start": 1096,
                        "end": 1136,
                        "left": {
                          "type": "Literal",
                          "start": 1096,
                          "end": 1129,
                          "value": "Could not dynamically require \"",
                          "raw": "'Could not dynamically require \"'"
                        },
                        "operator": "+",
                        "right": {
                          "type": "Identifier",
                          "start": 1132,
                          "end": 1136,
                          "name": "path"
                        }
                      },
                      "operator": "+",
                      "right": {
                        "type": "Literal",
                        "start": 1139,
                        "end": 1294,
                        "value": "\". Please configure the dynamicRequireTargets or/and ignoreDynamicRequires option of @rollup/plugin-commonjs appropriately for this require call to work.",
                        "raw": "'\". Please configure the dynamicRequireTargets or/and ignoreDynamicRequires option of @rollup/plugin-commonjs appropriately for this require call to work.'"
                      }
                    }
                  ]
                }
              }
            ]
          }
        },
        "specifiers": [],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "\nexport var commonjsGlobal = typeof globalThis !== 'undefined' ? globalThis : typeof window !== 'undefined' ? window : typeof global !== 'undefined' ? global : typeof self !== 'undefined' ? self : {};\n\nexport function getDefaultExportFromCjs (x) {\n\treturn x && x.__esModule && Object.prototype.hasOwnProperty.call(x, 'default') ? x['default'] : x;\n}\n\nexport function getDefaultExportFromNamespaceIfPresent (n) {\n\treturn n && Object.prototype.hasOwnProperty.call(n, 'default') ? n['default'] : n;\n}\n\nexport function getDefaultExportFromNamespaceIfNotNamed (n) {\n\treturn n && Object.prototype.hasOwnProperty.call(n, 'default') && Object.keys(n).length === 1 ? n['default'] : n;\n}\n\nexport function getAugmentedNamespace(n) {\n\tif (n.__esModule) return n;\n\tvar a = Object.defineProperty({}, '__esModule', {value: true});\n\tObject.keys(n).forEach(function (k) {\n\t\tvar d = Object.getOwnPropertyDescriptor(n, k);\n\t\tObject.defineProperty(a, k, d.get ? d : {\n\t\t\tenumerable: true,\n\t\t\tget: function () {\n\t\t\t\treturn n[k];\n\t\t\t}\n\t\t});\n\t});\n\treturn a;\n}\n\nexport function commonjsRequire (path) {\n\tthrow new Error('Could not dynamically require \"' + path + '\". Please configure the dynamicRequireTargets or/and ignoreDynamicRequires option of @rollup/plugin-commonjs appropriately for this require call to work.');\n}\n",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": false,
  "id": "\u0000commonjsHelpers.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [],
  "importedIds": [],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 3017,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 99,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 98,
          "value": "\u0000./debounce?commonjs-require",
          "raw": "\"\\u0000./debounce?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 100,
        "end": 157,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 107,
            "end": 117,
            "local": {
              "type": "Identifier",
              "start": 107,
              "end": 117,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 123,
          "end": 156,
          "value": "\u0000./debounce?commonjs-proxy",
          "raw": "\"\\u0000./debounce?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 158,
        "end": 201,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 165,
          "end": 200,
          "value": "\u0000./isObject?commonjs-require",
          "raw": "\"\\u0000./isObject?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 202,
        "end": 259,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 209,
            "end": 219,
            "local": {
              "type": "Identifier",
              "start": 209,
              "end": 219,
              "name": "require$$1"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 225,
          "end": 258,
          "value": "\u0000./isObject?commonjs-proxy",
          "raw": "\"\\u0000./isObject?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 261,
        "end": 314,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 265,
            "end": 286,
            "id": {
              "type": "Identifier",
              "start": 265,
              "end": 273,
              "name": "debounce"
            },
            "init": {
              "type": "Identifier",
              "start": 276,
              "end": 286,
              "name": "require$$0"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 292,
            "end": 313,
            "id": {
              "type": "Identifier",
              "start": 292,
              "end": 300,
              "name": "isObject"
            },
            "init": {
              "type": "Identifier",
              "start": 303,
              "end": 313,
              "name": "require$$1"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 348,
        "end": 392,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 352,
            "end": 391,
            "id": {
              "type": "Identifier",
              "start": 352,
              "end": 367,
              "name": "FUNC_ERROR_TEXT"
            },
            "init": {
              "type": "Literal",
              "start": 370,
              "end": 391,
              "value": "Expected a function",
              "raw": "'Expected a function'"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 2475,
        "end": 2919,
        "id": {
          "type": "Identifier",
          "start": 2484,
          "end": 2492,
          "name": "throttle"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 2493,
            "end": 2497,
            "name": "func"
          },
          {
            "type": "Identifier",
            "start": 2499,
            "end": 2503,
            "name": "wait"
          },
          {
            "type": "Identifier",
            "start": 2505,
            "end": 2512,
            "name": "options"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 2514,
          "end": 2919,
          "body": [
            {
              "type": "VariableDeclaration",
              "start": 2518,
              "end": 2560,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 2522,
                  "end": 2536,
                  "id": {
                    "type": "Identifier",
                    "start": 2522,
                    "end": 2529,
                    "name": "leading"
                  },
                  "init": {
                    "type": "Literal",
                    "start": 2532,
                    "end": 2536,
                    "value": true,
                    "raw": "true"
                  }
                },
                {
                  "type": "VariableDeclarator",
                  "start": 2544,
                  "end": 2559,
                  "id": {
                    "type": "Identifier",
                    "start": 2544,
                    "end": 2552,
                    "name": "trailing"
                  },
                  "init": {
                    "type": "Literal",
                    "start": 2555,
                    "end": 2559,
                    "value": true,
                    "raw": "true"
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "IfStatement",
              "start": 2564,
              "end": 2642,
              "test": {
                "type": "BinaryExpression",
                "start": 2568,
                "end": 2593,
                "left": {
                  "type": "UnaryExpression",
                  "start": 2568,
                  "end": 2579,
                  "operator": "typeof",
                  "prefix": true,
                  "argument": {
                    "type": "Identifier",
                    "start": 2575,
                    "end": 2579,
                    "name": "func"
                  }
                },
                "operator": "!=",
                "right": {
                  "type": "Literal",
                  "start": 2583,
                  "end": 2593,
                  "value": "function",
                  "raw": "'function'"
                }
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 2595,
                "end": 2642,
                "body": [
                  {
                    "type": "ThrowStatement",
                    "start": 2601,
                    "end": 2638,
                    "argument": {
                      "type": "NewExpression",
                      "start": 2607,
                      "end": 2637,
                      "callee": {
                        "type": "Identifier",
                        "start": 2611,
                        "end": 2620,
                        "name": "TypeError"
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 2621,
                          "end": 2636,
                          "name": "FUNC_ERROR_TEXT"
                        }
                      ]
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "IfStatement",
              "start": 2645,
              "end": 2809,
              "test": {
                "type": "CallExpression",
                "start": 2649,
                "end": 2666,
                "callee": {
                  "type": "Identifier",
                  "start": 2649,
                  "end": 2657,
                  "name": "isObject"
                },
                "arguments": [
                  {
                    "type": "Identifier",
                    "start": 2658,
                    "end": 2665,
                    "name": "options"
                  }
                ],
                "optional": false
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 2668,
                "end": 2809,
                "body": [
                  {
                    "type": "ExpressionStatement",
                    "start": 2674,
                    "end": 2735,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 2674,
                      "end": 2734,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 2674,
                        "end": 2681,
                        "name": "leading"
                      },
                      "right": {
                        "type": "ConditionalExpression",
                        "start": 2684,
                        "end": 2734,
                        "test": {
                          "type": "BinaryExpression",
                          "start": 2684,
                          "end": 2704,
                          "left": {
                            "type": "Literal",
                            "start": 2684,
                            "end": 2693,
                            "value": "leading",
                            "raw": "'leading'"
                          },
                          "operator": "in",
                          "right": {
                            "type": "Identifier",
                            "start": 2697,
                            "end": 2704,
                            "name": "options"
                          }
                        },
                        "consequent": {
                          "type": "UnaryExpression",
                          "start": 2707,
                          "end": 2724,
                          "operator": "!",
                          "prefix": true,
                          "argument": {
                            "type": "UnaryExpression",
                            "start": 2708,
                            "end": 2724,
                            "operator": "!",
                            "prefix": true,
                            "argument": {
                              "type": "MemberExpression",
                              "start": 2709,
                              "end": 2724,
                              "object": {
                                "type": "Identifier",
                                "start": 2709,
                                "end": 2716,
                                "name": "options"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 2717,
                                "end": 2724,
                                "name": "leading"
                              },
                              "computed": false,
                              "optional": false
                            }
                          }
                        },
                        "alternate": {
                          "type": "Identifier",
                          "start": 2727,
                          "end": 2734,
                          "name": "leading"
                        }
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 2740,
                    "end": 2805,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 2740,
                      "end": 2804,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 2740,
                        "end": 2748,
                        "name": "trailing"
                      },
                      "right": {
                        "type": "ConditionalExpression",
                        "start": 2751,
                        "end": 2804,
                        "test": {
                          "type": "BinaryExpression",
                          "start": 2751,
                          "end": 2772,
                          "left": {
                            "type": "Literal",
                            "start": 2751,
                            "end": 2761,
                            "value": "trailing",
                            "raw": "'trailing'"
                          },
                          "operator": "in",
                          "right": {
                            "type": "Identifier",
                            "start": 2765,
                            "end": 2772,
                            "name": "options"
                          }
                        },
                        "consequent": {
                          "type": "UnaryExpression",
                          "start": 2775,
                          "end": 2793,
                          "operator": "!",
                          "prefix": true,
                          "argument": {
                            "type": "UnaryExpression",
                            "start": 2776,
                            "end": 2793,
                            "operator": "!",
                            "prefix": true,
                            "argument": {
                              "type": "MemberExpression",
                              "start": 2777,
                              "end": 2793,
                              "object": {
                                "type": "Identifier",
                                "start": 2777,
                                "end": 2784,
                                "name": "options"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 2785,
                                "end": 2793,
                                "name": "trailing"
                              },
                              "computed": false,
                              "optional": false
                            }
                          }
                        },
                        "alternate": {
                          "type": "Identifier",
                          "start": 2796,
                          "end": 2804,
                          "name": "trailing"
                        }
                      }
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "ReturnStatement",
              "start": 2812,
              "end": 2917,
              "argument": {
                "type": "CallExpression",
                "start": 2819,
                "end": 2916,
                "callee": {
                  "type": "Identifier",
                  "start": 2819,
                  "end": 2827,
                  "name": "debounce"
                },
                "arguments": [
                  {
                    "type": "Identifier",
                    "start": 2828,
                    "end": 2832,
                    "name": "func"
                  },
                  {
                    "type": "Identifier",
                    "start": 2834,
                    "end": 2838,
                    "name": "wait"
                  },
                  {
                    "type": "ObjectExpression",
                    "start": 2840,
                    "end": 2915,
                    "properties": [
                      {
                        "type": "Property",
                        "start": 2846,
                        "end": 2864,
                        "method": false,
                        "shorthand": false,
                        "computed": false,
                        "key": {
                          "type": "Literal",
                          "start": 2846,
                          "end": 2855,
                          "value": "leading",
                          "raw": "'leading'"
                        },
                        "value": {
                          "type": "Identifier",
                          "start": 2857,
                          "end": 2864,
                          "name": "leading"
                        },
                        "kind": "init"
                      },
                      {
                        "type": "Property",
                        "start": 2870,
                        "end": 2885,
                        "method": false,
                        "shorthand": false,
                        "computed": false,
                        "key": {
                          "type": "Literal",
                          "start": 2870,
                          "end": 2879,
                          "value": "maxWait",
                          "raw": "'maxWait'"
                        },
                        "value": {
                          "type": "Identifier",
                          "start": 2881,
                          "end": 2885,
                          "name": "wait"
                        },
                        "kind": "init"
                      },
                      {
                        "type": "Property",
                        "start": 2891,
                        "end": 2911,
                        "method": false,
                        "shorthand": false,
                        "computed": false,
                        "key": {
                          "type": "Literal",
                          "start": 2891,
                          "end": 2901,
                          "value": "trailing",
                          "raw": "'trailing'"
                        },
                        "value": {
                          "type": "Identifier",
                          "start": 2903,
                          "end": 2911,
                          "name": "trailing"
                        },
                        "kind": "init"
                      }
                    ]
                  }
                ],
                "optional": false
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 2921,
        "end": 2947,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 2925,
            "end": 2946,
            "id": {
              "type": "Identifier",
              "start": 2925,
              "end": 2935,
              "name": "throttle_1"
            },
            "init": {
              "type": "Identifier",
              "start": 2938,
              "end": 2946,
              "name": "throttle"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 2949,
        "end": 2975,
        "declaration": {
          "type": "Identifier",
          "start": 2964,
          "end": 2974,
          "name": "throttle_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 2976,
        "end": 3017,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 2985,
            "end": 3014,
            "local": {
              "type": "Identifier",
              "start": 2985,
              "end": 2995,
              "name": "throttle_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 2999,
              "end": 3014,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./debounce?commonjs-require\";\nimport require$$0 from \"\\u0000./debounce?commonjs-proxy\";\nimport \"\\u0000./isObject?commonjs-require\";\nimport require$$1 from \"\\u0000./isObject?commonjs-proxy\";\n\nvar debounce = require$$0,\n    isObject = require$$1;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT = 'Expected a function';\n\n/**\n * Creates a throttled function that only invokes `func` at most once per\n * every `wait` milliseconds. The throttled function comes with a `cancel`\n * method to cancel delayed `func` invocations and a `flush` method to\n * immediately invoke them. Provide `options` to indicate whether `func`\n * should be invoked on the leading and/or trailing edge of the `wait`\n * timeout. The `func` is invoked with the last arguments provided to the\n * throttled function. Subsequent calls to the throttled function return the\n * result of the last `func` invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the throttled function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.throttle` and `_.debounce`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to throttle.\n * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=true]\n *  Specify invoking on the leading edge of the timeout.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new throttled function.\n * @example\n *\n * // Avoid excessively updating the position while scrolling.\n * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\n *\n * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\n * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\n * jQuery(element).on('click', throttled);\n *\n * // Cancel the trailing throttled invocation.\n * jQuery(window).on('popstate', throttled.cancel);\n */\nfunction throttle(func, wait, options) {\n  var leading = true,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT);\n  }\n  if (isObject(options)) {\n    leading = 'leading' in options ? !!options.leading : leading;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n  return debounce(func, wait, {\n    'leading': leading,\n    'maxWait': wait,\n    'trailing': trailing\n  });\n}\n\nvar throttle_1 = throttle;\n\nexport default throttle_1;\nexport { throttle_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/throttle.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 859,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 581,
        "end": 636,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 588,
            "end": 608,
            "local": {
              "type": "Identifier",
              "start": 593,
              "end": 608,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 614,
          "end": 635,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "FunctionDeclaration",
        "start": 638,
        "end": 761,
        "id": {
          "type": "Identifier",
          "start": 647,
          "end": 655,
          "name": "isObject"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 656,
            "end": 661,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 663,
          "end": 761,
          "body": [
            {
              "type": "VariableDeclaration",
              "start": 667,
              "end": 691,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 671,
                  "end": 690,
                  "id": {
                    "type": "Identifier",
                    "start": 671,
                    "end": 675,
                    "name": "type"
                  },
                  "init": {
                    "type": "UnaryExpression",
                    "start": 678,
                    "end": 690,
                    "operator": "typeof",
                    "prefix": true,
                    "argument": {
                      "type": "Identifier",
                      "start": 685,
                      "end": 690,
                      "name": "value"
                    }
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "ReturnStatement",
              "start": 694,
              "end": 759,
              "argument": {
                "type": "LogicalExpression",
                "start": 701,
                "end": 758,
                "left": {
                  "type": "BinaryExpression",
                  "start": 701,
                  "end": 714,
                  "left": {
                    "type": "Identifier",
                    "start": 701,
                    "end": 706,
                    "name": "value"
                  },
                  "operator": "!=",
                  "right": {
                    "type": "Literal",
                    "start": 710,
                    "end": 714,
                    "value": null,
                    "raw": "null"
                  }
                },
                "operator": "&&",
                "right": {
                  "type": "LogicalExpression",
                  "start": 719,
                  "end": 757,
                  "left": {
                    "type": "BinaryExpression",
                    "start": 719,
                    "end": 735,
                    "left": {
                      "type": "Identifier",
                      "start": 719,
                      "end": 723,
                      "name": "type"
                    },
                    "operator": "==",
                    "right": {
                      "type": "Literal",
                      "start": 727,
                      "end": 735,
                      "value": "object",
                      "raw": "'object'"
                    }
                  },
                  "operator": "||",
                  "right": {
                    "type": "BinaryExpression",
                    "start": 739,
                    "end": 757,
                    "left": {
                      "type": "Identifier",
                      "start": 739,
                      "end": 743,
                      "name": "type"
                    },
                    "operator": "==",
                    "right": {
                      "type": "Literal",
                      "start": 747,
                      "end": 757,
                      "value": "function",
                      "raw": "'function'"
                    }
                  }
                }
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 763,
        "end": 789,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 767,
            "end": 788,
            "id": {
              "type": "Identifier",
              "start": 767,
              "end": 777,
              "name": "isObject_1"
            },
            "init": {
              "type": "Identifier",
              "start": 780,
              "end": 788,
              "name": "isObject"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 791,
        "end": 817,
        "declaration": {
          "type": "Identifier",
          "start": 806,
          "end": 816,
          "name": "isObject_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 818,
        "end": 859,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 827,
            "end": 856,
            "local": {
              "type": "Identifier",
              "start": 827,
              "end": 837,
              "name": "isObject_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 841,
              "end": 856,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "/**\n * Checks if `value` is the\n * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\n * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is an object, else `false`.\n * @example\n *\n * _.isObject({});\n * // => true\n *\n * _.isObject([1, 2, 3]);\n * // => true\n *\n * _.isObject(_.noop);\n * // => true\n *\n * _.isObject(null);\n * // => false\n */\nimport * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\n\nfunction isObject(value) {\n  var type = typeof value;\n  return value != null && (type == 'object' || type == 'function');\n}\n\nvar isObject_1 = isObject;\n\nexport default isObject_1;\nexport { isObject_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 145,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 145,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 144,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 6494,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 99,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 98,
          "value": "\u0000./isObject?commonjs-require",
          "raw": "\"\\u0000./isObject?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 100,
        "end": 157,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 107,
            "end": 117,
            "local": {
              "type": "Identifier",
              "start": 107,
              "end": 117,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 123,
          "end": 156,
          "value": "\u0000./isObject?commonjs-proxy",
          "raw": "\"\\u0000./isObject?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 158,
        "end": 196,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 165,
          "end": 195,
          "value": "\u0000./now?commonjs-require",
          "raw": "\"\\u0000./now?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 197,
        "end": 249,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 204,
            "end": 214,
            "local": {
              "type": "Identifier",
              "start": 204,
              "end": 214,
              "name": "require$$1"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 220,
          "end": 248,
          "value": "\u0000./now?commonjs-proxy",
          "raw": "\"\\u0000./now?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 250,
        "end": 293,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 257,
          "end": 292,
          "value": "\u0000./toNumber?commonjs-require",
          "raw": "\"\\u0000./toNumber?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 294,
        "end": 351,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 301,
            "end": 311,
            "local": {
              "type": "Identifier",
              "start": 301,
              "end": 311,
              "name": "require$$2"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 317,
          "end": 350,
          "value": "\u0000./toNumber?commonjs-proxy",
          "raw": "\"\\u0000./toNumber?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 353,
        "end": 428,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 357,
            "end": 378,
            "id": {
              "type": "Identifier",
              "start": 357,
              "end": 365,
              "name": "isObject"
            },
            "init": {
              "type": "Identifier",
              "start": 368,
              "end": 378,
              "name": "require$$0"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 384,
            "end": 400,
            "id": {
              "type": "Identifier",
              "start": 384,
              "end": 387,
              "name": "now"
            },
            "init": {
              "type": "Identifier",
              "start": 390,
              "end": 400,
              "name": "require$$1"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 406,
            "end": 427,
            "id": {
              "type": "Identifier",
              "start": 406,
              "end": 414,
              "name": "toNumber"
            },
            "init": {
              "type": "Identifier",
              "start": 417,
              "end": 427,
              "name": "require$$2"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 462,
        "end": 506,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 466,
            "end": 505,
            "id": {
              "type": "Identifier",
              "start": 466,
              "end": 481,
              "name": "FUNC_ERROR_TEXT"
            },
            "init": {
              "type": "Literal",
              "start": 484,
              "end": 505,
              "value": "Expected a function",
              "raw": "'Expected a function'"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 597,
        "end": 648,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 601,
            "end": 621,
            "id": {
              "type": "Identifier",
              "start": 601,
              "end": 610,
              "name": "nativeMax"
            },
            "init": {
              "type": "MemberExpression",
              "start": 613,
              "end": 621,
              "object": {
                "type": "Identifier",
                "start": 613,
                "end": 617,
                "name": "Math"
              },
              "property": {
                "type": "Identifier",
                "start": 618,
                "end": 621,
                "name": "max"
              },
              "computed": false,
              "optional": false
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 627,
            "end": 647,
            "id": {
              "type": "Identifier",
              "start": 627,
              "end": 636,
              "name": "nativeMin"
            },
            "init": {
              "type": "MemberExpression",
              "start": 639,
              "end": 647,
              "object": {
                "type": "Identifier",
                "start": 639,
                "end": 643,
                "name": "Math"
              },
              "property": {
                "type": "Identifier",
                "start": 644,
                "end": 647,
                "name": "min"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 3090,
        "end": 6396,
        "id": {
          "type": "Identifier",
          "start": 3099,
          "end": 3107,
          "name": "debounce"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 3108,
            "end": 3112,
            "name": "func"
          },
          {
            "type": "Identifier",
            "start": 3114,
            "end": 3118,
            "name": "wait"
          },
          {
            "type": "Identifier",
            "start": 3120,
            "end": 3127,
            "name": "options"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 3129,
          "end": 6396,
          "body": [
            {
              "type": "VariableDeclaration",
              "start": 3133,
              "end": 3320,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 3137,
                  "end": 3145,
                  "id": {
                    "type": "Identifier",
                    "start": 3137,
                    "end": 3145,
                    "name": "lastArgs"
                  },
                  "init": null
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3153,
                  "end": 3161,
                  "id": {
                    "type": "Identifier",
                    "start": 3153,
                    "end": 3161,
                    "name": "lastThis"
                  },
                  "init": null
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3169,
                  "end": 3176,
                  "id": {
                    "type": "Identifier",
                    "start": 3169,
                    "end": 3176,
                    "name": "maxWait"
                  },
                  "init": null
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3184,
                  "end": 3190,
                  "id": {
                    "type": "Identifier",
                    "start": 3184,
                    "end": 3190,
                    "name": "result"
                  },
                  "init": null
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3198,
                  "end": 3205,
                  "id": {
                    "type": "Identifier",
                    "start": 3198,
                    "end": 3205,
                    "name": "timerId"
                  },
                  "init": null
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3213,
                  "end": 3225,
                  "id": {
                    "type": "Identifier",
                    "start": 3213,
                    "end": 3225,
                    "name": "lastCallTime"
                  },
                  "init": null
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3233,
                  "end": 3251,
                  "id": {
                    "type": "Identifier",
                    "start": 3233,
                    "end": 3247,
                    "name": "lastInvokeTime"
                  },
                  "init": {
                    "type": "Literal",
                    "start": 3250,
                    "end": 3251,
                    "value": 0,
                    "raw": "0"
                  }
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3259,
                  "end": 3274,
                  "id": {
                    "type": "Identifier",
                    "start": 3259,
                    "end": 3266,
                    "name": "leading"
                  },
                  "init": {
                    "type": "Literal",
                    "start": 3269,
                    "end": 3274,
                    "value": false,
                    "raw": "false"
                  }
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3282,
                  "end": 3296,
                  "id": {
                    "type": "Identifier",
                    "start": 3282,
                    "end": 3288,
                    "name": "maxing"
                  },
                  "init": {
                    "type": "Literal",
                    "start": 3291,
                    "end": 3296,
                    "value": false,
                    "raw": "false"
                  }
                },
                {
                  "type": "VariableDeclarator",
                  "start": 3304,
                  "end": 3319,
                  "id": {
                    "type": "Identifier",
                    "start": 3304,
                    "end": 3312,
                    "name": "trailing"
                  },
                  "init": {
                    "type": "Literal",
                    "start": 3315,
                    "end": 3319,
                    "value": true,
                    "raw": "true"
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "IfStatement",
              "start": 3324,
              "end": 3402,
              "test": {
                "type": "BinaryExpression",
                "start": 3328,
                "end": 3353,
                "left": {
                  "type": "UnaryExpression",
                  "start": 3328,
                  "end": 3339,
                  "operator": "typeof",
                  "prefix": true,
                  "argument": {
                    "type": "Identifier",
                    "start": 3335,
                    "end": 3339,
                    "name": "func"
                  }
                },
                "operator": "!=",
                "right": {
                  "type": "Literal",
                  "start": 3343,
                  "end": 3353,
                  "value": "function",
                  "raw": "'function'"
                }
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 3355,
                "end": 3402,
                "body": [
                  {
                    "type": "ThrowStatement",
                    "start": 3361,
                    "end": 3398,
                    "argument": {
                      "type": "NewExpression",
                      "start": 3367,
                      "end": 3397,
                      "callee": {
                        "type": "Identifier",
                        "start": 3371,
                        "end": 3380,
                        "name": "TypeError"
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 3381,
                          "end": 3396,
                          "name": "FUNC_ERROR_TEXT"
                        }
                      ]
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "ExpressionStatement",
              "start": 3405,
              "end": 3432,
              "expression": {
                "type": "AssignmentExpression",
                "start": 3405,
                "end": 3431,
                "operator": "=",
                "left": {
                  "type": "Identifier",
                  "start": 3405,
                  "end": 3409,
                  "name": "wait"
                },
                "right": {
                  "type": "LogicalExpression",
                  "start": 3412,
                  "end": 3431,
                  "left": {
                    "type": "CallExpression",
                    "start": 3412,
                    "end": 3426,
                    "callee": {
                      "type": "Identifier",
                      "start": 3412,
                      "end": 3420,
                      "name": "toNumber"
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 3421,
                        "end": 3425,
                        "name": "wait"
                      }
                    ],
                    "optional": false
                  },
                  "operator": "||",
                  "right": {
                    "type": "Literal",
                    "start": 3430,
                    "end": 3431,
                    "value": 0,
                    "raw": "0"
                  }
                }
              }
            },
            {
              "type": "IfStatement",
              "start": 3435,
              "end": 3683,
              "test": {
                "type": "CallExpression",
                "start": 3439,
                "end": 3456,
                "callee": {
                  "type": "Identifier",
                  "start": 3439,
                  "end": 3447,
                  "name": "isObject"
                },
                "arguments": [
                  {
                    "type": "Identifier",
                    "start": 3448,
                    "end": 3455,
                    "name": "options"
                  }
                ],
                "optional": false
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 3458,
                "end": 3683,
                "body": [
                  {
                    "type": "ExpressionStatement",
                    "start": 3464,
                    "end": 3492,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3464,
                      "end": 3491,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3464,
                        "end": 3471,
                        "name": "leading"
                      },
                      "right": {
                        "type": "UnaryExpression",
                        "start": 3474,
                        "end": 3491,
                        "operator": "!",
                        "prefix": true,
                        "argument": {
                          "type": "UnaryExpression",
                          "start": 3475,
                          "end": 3491,
                          "operator": "!",
                          "prefix": true,
                          "argument": {
                            "type": "MemberExpression",
                            "start": 3476,
                            "end": 3491,
                            "object": {
                              "type": "Identifier",
                              "start": 3476,
                              "end": 3483,
                              "name": "options"
                            },
                            "property": {
                              "type": "Identifier",
                              "start": 3484,
                              "end": 3491,
                              "name": "leading"
                            },
                            "computed": false,
                            "optional": false
                          }
                        }
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 3497,
                    "end": 3527,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3497,
                      "end": 3526,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3497,
                        "end": 3503,
                        "name": "maxing"
                      },
                      "right": {
                        "type": "BinaryExpression",
                        "start": 3506,
                        "end": 3526,
                        "left": {
                          "type": "Literal",
                          "start": 3506,
                          "end": 3515,
                          "value": "maxWait",
                          "raw": "'maxWait'"
                        },
                        "operator": "in",
                        "right": {
                          "type": "Identifier",
                          "start": 3519,
                          "end": 3526,
                          "name": "options"
                        }
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 3532,
                    "end": 3609,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3532,
                      "end": 3608,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3532,
                        "end": 3539,
                        "name": "maxWait"
                      },
                      "right": {
                        "type": "ConditionalExpression",
                        "start": 3542,
                        "end": 3608,
                        "test": {
                          "type": "Identifier",
                          "start": 3542,
                          "end": 3548,
                          "name": "maxing"
                        },
                        "consequent": {
                          "type": "CallExpression",
                          "start": 3551,
                          "end": 3598,
                          "callee": {
                            "type": "Identifier",
                            "start": 3551,
                            "end": 3560,
                            "name": "nativeMax"
                          },
                          "arguments": [
                            {
                              "type": "LogicalExpression",
                              "start": 3561,
                              "end": 3591,
                              "left": {
                                "type": "CallExpression",
                                "start": 3561,
                                "end": 3586,
                                "callee": {
                                  "type": "Identifier",
                                  "start": 3561,
                                  "end": 3569,
                                  "name": "toNumber"
                                },
                                "arguments": [
                                  {
                                    "type": "MemberExpression",
                                    "start": 3570,
                                    "end": 3585,
                                    "object": {
                                      "type": "Identifier",
                                      "start": 3570,
                                      "end": 3577,
                                      "name": "options"
                                    },
                                    "property": {
                                      "type": "Identifier",
                                      "start": 3578,
                                      "end": 3585,
                                      "name": "maxWait"
                                    },
                                    "computed": false,
                                    "optional": false
                                  }
                                ],
                                "optional": false
                              },
                              "operator": "||",
                              "right": {
                                "type": "Literal",
                                "start": 3590,
                                "end": 3591,
                                "value": 0,
                                "raw": "0"
                              }
                            },
                            {
                              "type": "Identifier",
                              "start": 3593,
                              "end": 3597,
                              "name": "wait"
                            }
                          ],
                          "optional": false
                        },
                        "alternate": {
                          "type": "Identifier",
                          "start": 3601,
                          "end": 3608,
                          "name": "maxWait"
                        }
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 3614,
                    "end": 3679,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3614,
                      "end": 3678,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3614,
                        "end": 3622,
                        "name": "trailing"
                      },
                      "right": {
                        "type": "ConditionalExpression",
                        "start": 3625,
                        "end": 3678,
                        "test": {
                          "type": "BinaryExpression",
                          "start": 3625,
                          "end": 3646,
                          "left": {
                            "type": "Literal",
                            "start": 3625,
                            "end": 3635,
                            "value": "trailing",
                            "raw": "'trailing'"
                          },
                          "operator": "in",
                          "right": {
                            "type": "Identifier",
                            "start": 3639,
                            "end": 3646,
                            "name": "options"
                          }
                        },
                        "consequent": {
                          "type": "UnaryExpression",
                          "start": 3649,
                          "end": 3667,
                          "operator": "!",
                          "prefix": true,
                          "argument": {
                            "type": "UnaryExpression",
                            "start": 3650,
                            "end": 3667,
                            "operator": "!",
                            "prefix": true,
                            "argument": {
                              "type": "MemberExpression",
                              "start": 3651,
                              "end": 3667,
                              "object": {
                                "type": "Identifier",
                                "start": 3651,
                                "end": 3658,
                                "name": "options"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 3659,
                                "end": 3667,
                                "name": "trailing"
                              },
                              "computed": false,
                              "optional": false
                            }
                          }
                        },
                        "alternate": {
                          "type": "Identifier",
                          "start": 3670,
                          "end": 3678,
                          "name": "trailing"
                        }
                      }
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "FunctionDeclaration",
              "start": 3687,
              "end": 3895,
              "id": {
                "type": "Identifier",
                "start": 3696,
                "end": 3706,
                "name": "invokeFunc"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [
                {
                  "type": "Identifier",
                  "start": 3707,
                  "end": 3711,
                  "name": "time"
                }
              ],
              "body": {
                "type": "BlockStatement",
                "start": 3713,
                "end": 3895,
                "body": [
                  {
                    "type": "VariableDeclaration",
                    "start": 3719,
                    "end": 3767,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 3723,
                        "end": 3738,
                        "id": {
                          "type": "Identifier",
                          "start": 3723,
                          "end": 3727,
                          "name": "args"
                        },
                        "init": {
                          "type": "Identifier",
                          "start": 3730,
                          "end": 3738,
                          "name": "lastArgs"
                        }
                      },
                      {
                        "type": "VariableDeclarator",
                        "start": 3748,
                        "end": 3766,
                        "id": {
                          "type": "Identifier",
                          "start": 3748,
                          "end": 3755,
                          "name": "thisArg"
                        },
                        "init": {
                          "type": "Identifier",
                          "start": 3758,
                          "end": 3766,
                          "name": "lastThis"
                        }
                      }
                    ],
                    "kind": "var"
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 3773,
                    "end": 3805,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3773,
                      "end": 3804,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3773,
                        "end": 3781,
                        "name": "lastArgs"
                      },
                      "right": {
                        "type": "AssignmentExpression",
                        "start": 3784,
                        "end": 3804,
                        "operator": "=",
                        "left": {
                          "type": "Identifier",
                          "start": 3784,
                          "end": 3792,
                          "name": "lastThis"
                        },
                        "right": {
                          "type": "Identifier",
                          "start": 3795,
                          "end": 3804,
                          "name": "undefined"
                        }
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 3810,
                    "end": 3832,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3810,
                      "end": 3831,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3810,
                        "end": 3824,
                        "name": "lastInvokeTime"
                      },
                      "right": {
                        "type": "Identifier",
                        "start": 3827,
                        "end": 3831,
                        "name": "time"
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 3837,
                    "end": 3872,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3837,
                      "end": 3871,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3837,
                        "end": 3843,
                        "name": "result"
                      },
                      "right": {
                        "type": "CallExpression",
                        "start": 3846,
                        "end": 3871,
                        "callee": {
                          "type": "MemberExpression",
                          "start": 3846,
                          "end": 3856,
                          "object": {
                            "type": "Identifier",
                            "start": 3846,
                            "end": 3850,
                            "name": "func"
                          },
                          "property": {
                            "type": "Identifier",
                            "start": 3851,
                            "end": 3856,
                            "name": "apply"
                          },
                          "computed": false,
                          "optional": false
                        },
                        "arguments": [
                          {
                            "type": "Identifier",
                            "start": 3857,
                            "end": 3864,
                            "name": "thisArg"
                          },
                          {
                            "type": "Identifier",
                            "start": 3866,
                            "end": 3870,
                            "name": "args"
                          }
                        ],
                        "optional": false
                      }
                    }
                  },
                  {
                    "type": "ReturnStatement",
                    "start": 3877,
                    "end": 3891,
                    "argument": {
                      "type": "Identifier",
                      "start": 3884,
                      "end": 3890,
                      "name": "result"
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 3899,
              "end": 4164,
              "id": {
                "type": "Identifier",
                "start": 3908,
                "end": 3919,
                "name": "leadingEdge"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [
                {
                  "type": "Identifier",
                  "start": 3920,
                  "end": 3924,
                  "name": "time"
                }
              ],
              "body": {
                "type": "BlockStatement",
                "start": 3926,
                "end": 4164,
                "body": [
                  {
                    "type": "ExpressionStatement",
                    "start": 3966,
                    "end": 3988,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 3966,
                      "end": 3987,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 3966,
                        "end": 3980,
                        "name": "lastInvokeTime"
                      },
                      "right": {
                        "type": "Identifier",
                        "start": 3983,
                        "end": 3987,
                        "name": "time"
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 4039,
                    "end": 4080,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 4039,
                      "end": 4079,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 4039,
                        "end": 4046,
                        "name": "timerId"
                      },
                      "right": {
                        "type": "CallExpression",
                        "start": 4049,
                        "end": 4079,
                        "callee": {
                          "type": "Identifier",
                          "start": 4049,
                          "end": 4059,
                          "name": "setTimeout"
                        },
                        "arguments": [
                          {
                            "type": "Identifier",
                            "start": 4060,
                            "end": 4072,
                            "name": "timerExpired"
                          },
                          {
                            "type": "Identifier",
                            "start": 4074,
                            "end": 4078,
                            "name": "wait"
                          }
                        ],
                        "optional": false
                      }
                    }
                  },
                  {
                    "type": "ReturnStatement",
                    "start": 4117,
                    "end": 4160,
                    "argument": {
                      "type": "ConditionalExpression",
                      "start": 4124,
                      "end": 4159,
                      "test": {
                        "type": "Identifier",
                        "start": 4124,
                        "end": 4131,
                        "name": "leading"
                      },
                      "consequent": {
                        "type": "CallExpression",
                        "start": 4134,
                        "end": 4150,
                        "callee": {
                          "type": "Identifier",
                          "start": 4134,
                          "end": 4144,
                          "name": "invokeFunc"
                        },
                        "arguments": [
                          {
                            "type": "Identifier",
                            "start": 4145,
                            "end": 4149,
                            "name": "time"
                          }
                        ],
                        "optional": false
                      },
                      "alternate": {
                        "type": "Identifier",
                        "start": 4153,
                        "end": 4159,
                        "name": "result"
                      }
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 4168,
              "end": 4454,
              "id": {
                "type": "Identifier",
                "start": 4177,
                "end": 4190,
                "name": "remainingWait"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [
                {
                  "type": "Identifier",
                  "start": 4191,
                  "end": 4195,
                  "name": "time"
                }
              ],
              "body": {
                "type": "BlockStatement",
                "start": 4197,
                "end": 4454,
                "body": [
                  {
                    "type": "VariableDeclaration",
                    "start": 4203,
                    "end": 4348,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 4207,
                        "end": 4246,
                        "id": {
                          "type": "Identifier",
                          "start": 4207,
                          "end": 4224,
                          "name": "timeSinceLastCall"
                        },
                        "init": {
                          "type": "BinaryExpression",
                          "start": 4227,
                          "end": 4246,
                          "left": {
                            "type": "Identifier",
                            "start": 4227,
                            "end": 4231,
                            "name": "time"
                          },
                          "operator": "-",
                          "right": {
                            "type": "Identifier",
                            "start": 4234,
                            "end": 4246,
                            "name": "lastCallTime"
                          }
                        }
                      },
                      {
                        "type": "VariableDeclarator",
                        "start": 4256,
                        "end": 4299,
                        "id": {
                          "type": "Identifier",
                          "start": 4256,
                          "end": 4275,
                          "name": "timeSinceLastInvoke"
                        },
                        "init": {
                          "type": "BinaryExpression",
                          "start": 4278,
                          "end": 4299,
                          "left": {
                            "type": "Identifier",
                            "start": 4278,
                            "end": 4282,
                            "name": "time"
                          },
                          "operator": "-",
                          "right": {
                            "type": "Identifier",
                            "start": 4285,
                            "end": 4299,
                            "name": "lastInvokeTime"
                          }
                        }
                      },
                      {
                        "type": "VariableDeclarator",
                        "start": 4309,
                        "end": 4347,
                        "id": {
                          "type": "Identifier",
                          "start": 4309,
                          "end": 4320,
                          "name": "timeWaiting"
                        },
                        "init": {
                          "type": "BinaryExpression",
                          "start": 4323,
                          "end": 4347,
                          "left": {
                            "type": "Identifier",
                            "start": 4323,
                            "end": 4327,
                            "name": "wait"
                          },
                          "operator": "-",
                          "right": {
                            "type": "Identifier",
                            "start": 4330,
                            "end": 4347,
                            "name": "timeSinceLastCall"
                          }
                        }
                      }
                    ],
                    "kind": "var"
                  },
                  {
                    "type": "ReturnStatement",
                    "start": 4354,
                    "end": 4450,
                    "argument": {
                      "type": "ConditionalExpression",
                      "start": 4361,
                      "end": 4449,
                      "test": {
                        "type": "Identifier",
                        "start": 4361,
                        "end": 4367,
                        "name": "maxing"
                      },
                      "consequent": {
                        "type": "CallExpression",
                        "start": 4376,
                        "end": 4429,
                        "callee": {
                          "type": "Identifier",
                          "start": 4376,
                          "end": 4385,
                          "name": "nativeMin"
                        },
                        "arguments": [
                          {
                            "type": "Identifier",
                            "start": 4386,
                            "end": 4397,
                            "name": "timeWaiting"
                          },
                          {
                            "type": "BinaryExpression",
                            "start": 4399,
                            "end": 4428,
                            "left": {
                              "type": "Identifier",
                              "start": 4399,
                              "end": 4406,
                              "name": "maxWait"
                            },
                            "operator": "-",
                            "right": {
                              "type": "Identifier",
                              "start": 4409,
                              "end": 4428,
                              "name": "timeSinceLastInvoke"
                            }
                          }
                        ],
                        "optional": false
                      },
                      "alternate": {
                        "type": "Identifier",
                        "start": 4438,
                        "end": 4449,
                        "name": "timeWaiting"
                      }
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 4458,
              "end": 4963,
              "id": {
                "type": "Identifier",
                "start": 4467,
                "end": 4479,
                "name": "shouldInvoke"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [
                {
                  "type": "Identifier",
                  "start": 4480,
                  "end": 4484,
                  "name": "time"
                }
              ],
              "body": {
                "type": "BlockStatement",
                "start": 4486,
                "end": 4963,
                "body": [
                  {
                    "type": "VariableDeclaration",
                    "start": 4492,
                    "end": 4589,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 4496,
                        "end": 4535,
                        "id": {
                          "type": "Identifier",
                          "start": 4496,
                          "end": 4513,
                          "name": "timeSinceLastCall"
                        },
                        "init": {
                          "type": "BinaryExpression",
                          "start": 4516,
                          "end": 4535,
                          "left": {
                            "type": "Identifier",
                            "start": 4516,
                            "end": 4520,
                            "name": "time"
                          },
                          "operator": "-",
                          "right": {
                            "type": "Identifier",
                            "start": 4523,
                            "end": 4535,
                            "name": "lastCallTime"
                          }
                        }
                      },
                      {
                        "type": "VariableDeclarator",
                        "start": 4545,
                        "end": 4588,
                        "id": {
                          "type": "Identifier",
                          "start": 4545,
                          "end": 4564,
                          "name": "timeSinceLastInvoke"
                        },
                        "init": {
                          "type": "BinaryExpression",
                          "start": 4567,
                          "end": 4588,
                          "left": {
                            "type": "Identifier",
                            "start": 4567,
                            "end": 4571,
                            "name": "time"
                          },
                          "operator": "-",
                          "right": {
                            "type": "Identifier",
                            "start": 4574,
                            "end": 4588,
                            "name": "lastInvokeTime"
                          }
                        }
                      }
                    ],
                    "kind": "var"
                  },
                  {
                    "type": "ReturnStatement",
                    "start": 4813,
                    "end": 4959,
                    "argument": {
                      "type": "LogicalExpression",
                      "start": 4821,
                      "end": 4957,
                      "left": {
                        "type": "LogicalExpression",
                        "start": 4821,
                        "end": 4911,
                        "left": {
                          "type": "LogicalExpression",
                          "start": 4821,
                          "end": 4878,
                          "left": {
                            "type": "BinaryExpression",
                            "start": 4821,
                            "end": 4847,
                            "left": {
                              "type": "Identifier",
                              "start": 4821,
                              "end": 4833,
                              "name": "lastCallTime"
                            },
                            "operator": "===",
                            "right": {
                              "type": "Identifier",
                              "start": 4838,
                              "end": 4847,
                              "name": "undefined"
                            }
                          },
                          "operator": "||",
                          "right": {
                            "type": "BinaryExpression",
                            "start": 4852,
                            "end": 4877,
                            "left": {
                              "type": "Identifier",
                              "start": 4852,
                              "end": 4869,
                              "name": "timeSinceLastCall"
                            },
                            "operator": ">=",
                            "right": {
                              "type": "Identifier",
                              "start": 4873,
                              "end": 4877,
                              "name": "wait"
                            }
                          }
                        },
                        "operator": "||",
                        "right": {
                          "type": "BinaryExpression",
                          "start": 4889,
                          "end": 4910,
                          "left": {
                            "type": "Identifier",
                            "start": 4889,
                            "end": 4906,
                            "name": "timeSinceLastCall"
                          },
                          "operator": "<",
                          "right": {
                            "type": "Literal",
                            "start": 4909,
                            "end": 4910,
                            "value": 0,
                            "raw": "0"
                          }
                        }
                      },
                      "operator": "||",
                      "right": {
                        "type": "LogicalExpression",
                        "start": 4916,
                        "end": 4956,
                        "left": {
                          "type": "Identifier",
                          "start": 4916,
                          "end": 4922,
                          "name": "maxing"
                        },
                        "operator": "&&",
                        "right": {
                          "type": "BinaryExpression",
                          "start": 4926,
                          "end": 4956,
                          "left": {
                            "type": "Identifier",
                            "start": 4926,
                            "end": 4945,
                            "name": "timeSinceLastInvoke"
                          },
                          "operator": ">=",
                          "right": {
                            "type": "Identifier",
                            "start": 4949,
                            "end": 4956,
                            "name": "maxWait"
                          }
                        }
                      }
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 4967,
              "end": 5174,
              "id": {
                "type": "Identifier",
                "start": 4976,
                "end": 4988,
                "name": "timerExpired"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [],
              "body": {
                "type": "BlockStatement",
                "start": 4991,
                "end": 5174,
                "body": [
                  {
                    "type": "VariableDeclaration",
                    "start": 4997,
                    "end": 5014,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 5001,
                        "end": 5013,
                        "id": {
                          "type": "Identifier",
                          "start": 5001,
                          "end": 5005,
                          "name": "time"
                        },
                        "init": {
                          "type": "CallExpression",
                          "start": 5008,
                          "end": 5013,
                          "callee": {
                            "type": "Identifier",
                            "start": 5008,
                            "end": 5011,
                            "name": "now"
                          },
                          "arguments": [],
                          "optional": false
                        }
                      }
                    ],
                    "kind": "var"
                  },
                  {
                    "type": "IfStatement",
                    "start": 5019,
                    "end": 5083,
                    "test": {
                      "type": "CallExpression",
                      "start": 5023,
                      "end": 5041,
                      "callee": {
                        "type": "Identifier",
                        "start": 5023,
                        "end": 5035,
                        "name": "shouldInvoke"
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 5036,
                          "end": 5040,
                          "name": "time"
                        }
                      ],
                      "optional": false
                    },
                    "consequent": {
                      "type": "BlockStatement",
                      "start": 5043,
                      "end": 5083,
                      "body": [
                        {
                          "type": "ReturnStatement",
                          "start": 5051,
                          "end": 5077,
                          "argument": {
                            "type": "CallExpression",
                            "start": 5058,
                            "end": 5076,
                            "callee": {
                              "type": "Identifier",
                              "start": 5058,
                              "end": 5070,
                              "name": "trailingEdge"
                            },
                            "arguments": [
                              {
                                "type": "Identifier",
                                "start": 5071,
                                "end": 5075,
                                "name": "time"
                              }
                            ],
                            "optional": false
                          }
                        }
                      ]
                    },
                    "alternate": null
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5114,
                    "end": 5170,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5114,
                      "end": 5169,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5114,
                        "end": 5121,
                        "name": "timerId"
                      },
                      "right": {
                        "type": "CallExpression",
                        "start": 5124,
                        "end": 5169,
                        "callee": {
                          "type": "Identifier",
                          "start": 5124,
                          "end": 5134,
                          "name": "setTimeout"
                        },
                        "arguments": [
                          {
                            "type": "Identifier",
                            "start": 5135,
                            "end": 5147,
                            "name": "timerExpired"
                          },
                          {
                            "type": "CallExpression",
                            "start": 5149,
                            "end": 5168,
                            "callee": {
                              "type": "Identifier",
                              "start": 5149,
                              "end": 5162,
                              "name": "remainingWait"
                            },
                            "arguments": [
                              {
                                "type": "Identifier",
                                "start": 5163,
                                "end": 5167,
                                "name": "time"
                              }
                            ],
                            "optional": false
                          }
                        ],
                        "optional": false
                      }
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 5178,
              "end": 5463,
              "id": {
                "type": "Identifier",
                "start": 5187,
                "end": 5199,
                "name": "trailingEdge"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [
                {
                  "type": "Identifier",
                  "start": 5200,
                  "end": 5204,
                  "name": "time"
                }
              ],
              "body": {
                "type": "BlockStatement",
                "start": 5206,
                "end": 5463,
                "body": [
                  {
                    "type": "ExpressionStatement",
                    "start": 5212,
                    "end": 5232,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5212,
                      "end": 5231,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5212,
                        "end": 5219,
                        "name": "timerId"
                      },
                      "right": {
                        "type": "Identifier",
                        "start": 5222,
                        "end": 5231,
                        "name": "undefined"
                      }
                    }
                  },
                  {
                    "type": "IfStatement",
                    "start": 5339,
                    "end": 5403,
                    "test": {
                      "type": "LogicalExpression",
                      "start": 5343,
                      "end": 5363,
                      "left": {
                        "type": "Identifier",
                        "start": 5343,
                        "end": 5351,
                        "name": "trailing"
                      },
                      "operator": "&&",
                      "right": {
                        "type": "Identifier",
                        "start": 5355,
                        "end": 5363,
                        "name": "lastArgs"
                      }
                    },
                    "consequent": {
                      "type": "BlockStatement",
                      "start": 5365,
                      "end": 5403,
                      "body": [
                        {
                          "type": "ReturnStatement",
                          "start": 5373,
                          "end": 5397,
                          "argument": {
                            "type": "CallExpression",
                            "start": 5380,
                            "end": 5396,
                            "callee": {
                              "type": "Identifier",
                              "start": 5380,
                              "end": 5390,
                              "name": "invokeFunc"
                            },
                            "arguments": [
                              {
                                "type": "Identifier",
                                "start": 5391,
                                "end": 5395,
                                "name": "time"
                              }
                            ],
                            "optional": false
                          }
                        }
                      ]
                    },
                    "alternate": null
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5408,
                    "end": 5440,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5408,
                      "end": 5439,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5408,
                        "end": 5416,
                        "name": "lastArgs"
                      },
                      "right": {
                        "type": "AssignmentExpression",
                        "start": 5419,
                        "end": 5439,
                        "operator": "=",
                        "left": {
                          "type": "Identifier",
                          "start": 5419,
                          "end": 5427,
                          "name": "lastThis"
                        },
                        "right": {
                          "type": "Identifier",
                          "start": 5430,
                          "end": 5439,
                          "name": "undefined"
                        }
                      }
                    }
                  },
                  {
                    "type": "ReturnStatement",
                    "start": 5445,
                    "end": 5459,
                    "argument": {
                      "type": "Identifier",
                      "start": 5452,
                      "end": 5458,
                      "name": "result"
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 5467,
              "end": 5644,
              "id": {
                "type": "Identifier",
                "start": 5476,
                "end": 5482,
                "name": "cancel"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [],
              "body": {
                "type": "BlockStatement",
                "start": 5485,
                "end": 5644,
                "body": [
                  {
                    "type": "IfStatement",
                    "start": 5491,
                    "end": 5554,
                    "test": {
                      "type": "BinaryExpression",
                      "start": 5495,
                      "end": 5516,
                      "left": {
                        "type": "Identifier",
                        "start": 5495,
                        "end": 5502,
                        "name": "timerId"
                      },
                      "operator": "!==",
                      "right": {
                        "type": "Identifier",
                        "start": 5507,
                        "end": 5516,
                        "name": "undefined"
                      }
                    },
                    "consequent": {
                      "type": "BlockStatement",
                      "start": 5518,
                      "end": 5554,
                      "body": [
                        {
                          "type": "ExpressionStatement",
                          "start": 5526,
                          "end": 5548,
                          "expression": {
                            "type": "CallExpression",
                            "start": 5526,
                            "end": 5547,
                            "callee": {
                              "type": "Identifier",
                              "start": 5526,
                              "end": 5538,
                              "name": "clearTimeout"
                            },
                            "arguments": [
                              {
                                "type": "Identifier",
                                "start": 5539,
                                "end": 5546,
                                "name": "timerId"
                              }
                            ],
                            "optional": false
                          }
                        }
                      ]
                    },
                    "alternate": null
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5559,
                    "end": 5578,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5559,
                      "end": 5577,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5559,
                        "end": 5573,
                        "name": "lastInvokeTime"
                      },
                      "right": {
                        "type": "Literal",
                        "start": 5576,
                        "end": 5577,
                        "value": 0,
                        "raw": "0"
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5583,
                    "end": 5640,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5583,
                      "end": 5639,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5583,
                        "end": 5591,
                        "name": "lastArgs"
                      },
                      "right": {
                        "type": "AssignmentExpression",
                        "start": 5594,
                        "end": 5639,
                        "operator": "=",
                        "left": {
                          "type": "Identifier",
                          "start": 5594,
                          "end": 5606,
                          "name": "lastCallTime"
                        },
                        "right": {
                          "type": "AssignmentExpression",
                          "start": 5609,
                          "end": 5639,
                          "operator": "=",
                          "left": {
                            "type": "Identifier",
                            "start": 5609,
                            "end": 5617,
                            "name": "lastThis"
                          },
                          "right": {
                            "type": "AssignmentExpression",
                            "start": 5620,
                            "end": 5639,
                            "operator": "=",
                            "left": {
                              "type": "Identifier",
                              "start": 5620,
                              "end": 5627,
                              "name": "timerId"
                            },
                            "right": {
                              "type": "Identifier",
                              "start": 5630,
                              "end": 5639,
                              "name": "undefined"
                            }
                          }
                        }
                      }
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 5648,
              "end": 5735,
              "id": {
                "type": "Identifier",
                "start": 5657,
                "end": 5662,
                "name": "flush"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [],
              "body": {
                "type": "BlockStatement",
                "start": 5665,
                "end": 5735,
                "body": [
                  {
                    "type": "ReturnStatement",
                    "start": 5671,
                    "end": 5731,
                    "argument": {
                      "type": "ConditionalExpression",
                      "start": 5678,
                      "end": 5730,
                      "test": {
                        "type": "BinaryExpression",
                        "start": 5678,
                        "end": 5699,
                        "left": {
                          "type": "Identifier",
                          "start": 5678,
                          "end": 5685,
                          "name": "timerId"
                        },
                        "operator": "===",
                        "right": {
                          "type": "Identifier",
                          "start": 5690,
                          "end": 5699,
                          "name": "undefined"
                        }
                      },
                      "consequent": {
                        "type": "Identifier",
                        "start": 5702,
                        "end": 5708,
                        "name": "result"
                      },
                      "alternate": {
                        "type": "CallExpression",
                        "start": 5711,
                        "end": 5730,
                        "callee": {
                          "type": "Identifier",
                          "start": 5711,
                          "end": 5723,
                          "name": "trailingEdge"
                        },
                        "arguments": [
                          {
                            "type": "CallExpression",
                            "start": 5724,
                            "end": 5729,
                            "callee": {
                              "type": "Identifier",
                              "start": 5724,
                              "end": 5727,
                              "name": "now"
                            },
                            "arguments": [],
                            "optional": false
                          }
                        ],
                        "optional": false
                      }
                    }
                  }
                ]
              }
            },
            {
              "type": "FunctionDeclaration",
              "start": 5739,
              "end": 6318,
              "id": {
                "type": "Identifier",
                "start": 5748,
                "end": 5757,
                "name": "debounced"
              },
              "expression": false,
              "generator": false,
              "async": false,
              "params": [],
              "body": {
                "type": "BlockStatement",
                "start": 5760,
                "end": 6318,
                "body": [
                  {
                    "type": "VariableDeclaration",
                    "start": 5766,
                    "end": 5824,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 5770,
                        "end": 5782,
                        "id": {
                          "type": "Identifier",
                          "start": 5770,
                          "end": 5774,
                          "name": "time"
                        },
                        "init": {
                          "type": "CallExpression",
                          "start": 5777,
                          "end": 5782,
                          "callee": {
                            "type": "Identifier",
                            "start": 5777,
                            "end": 5780,
                            "name": "now"
                          },
                          "arguments": [],
                          "optional": false
                        }
                      },
                      {
                        "type": "VariableDeclarator",
                        "start": 5792,
                        "end": 5823,
                        "id": {
                          "type": "Identifier",
                          "start": 5792,
                          "end": 5802,
                          "name": "isInvoking"
                        },
                        "init": {
                          "type": "CallExpression",
                          "start": 5805,
                          "end": 5823,
                          "callee": {
                            "type": "Identifier",
                            "start": 5805,
                            "end": 5817,
                            "name": "shouldInvoke"
                          },
                          "arguments": [
                            {
                              "type": "Identifier",
                              "start": 5818,
                              "end": 5822,
                              "name": "time"
                            }
                          ],
                          "optional": false
                        }
                      }
                    ],
                    "kind": "var"
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5830,
                    "end": 5851,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5830,
                      "end": 5850,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5830,
                        "end": 5838,
                        "name": "lastArgs"
                      },
                      "right": {
                        "type": "Identifier",
                        "start": 5841,
                        "end": 5850,
                        "name": "arguments"
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5856,
                    "end": 5872,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5856,
                      "end": 5871,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5856,
                        "end": 5864,
                        "name": "lastThis"
                      },
                      "right": {
                        "type": "ThisExpression",
                        "start": 5867,
                        "end": 5871
                      }
                    }
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 5877,
                    "end": 5897,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 5877,
                      "end": 5896,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 5877,
                        "end": 5889,
                        "name": "lastCallTime"
                      },
                      "right": {
                        "type": "Identifier",
                        "start": 5892,
                        "end": 5896,
                        "name": "time"
                      }
                    }
                  },
                  {
                    "type": "IfStatement",
                    "start": 5903,
                    "end": 6208,
                    "test": {
                      "type": "Identifier",
                      "start": 5907,
                      "end": 5917,
                      "name": "isInvoking"
                    },
                    "consequent": {
                      "type": "BlockStatement",
                      "start": 5919,
                      "end": 6208,
                      "body": [
                        {
                          "type": "IfStatement",
                          "start": 5927,
                          "end": 6005,
                          "test": {
                            "type": "BinaryExpression",
                            "start": 5931,
                            "end": 5952,
                            "left": {
                              "type": "Identifier",
                              "start": 5931,
                              "end": 5938,
                              "name": "timerId"
                            },
                            "operator": "===",
                            "right": {
                              "type": "Identifier",
                              "start": 5943,
                              "end": 5952,
                              "name": "undefined"
                            }
                          },
                          "consequent": {
                            "type": "BlockStatement",
                            "start": 5954,
                            "end": 6005,
                            "body": [
                              {
                                "type": "ReturnStatement",
                                "start": 5964,
                                "end": 5997,
                                "argument": {
                                  "type": "CallExpression",
                                  "start": 5971,
                                  "end": 5996,
                                  "callee": {
                                    "type": "Identifier",
                                    "start": 5971,
                                    "end": 5982,
                                    "name": "leadingEdge"
                                  },
                                  "arguments": [
                                    {
                                      "type": "Identifier",
                                      "start": 5983,
                                      "end": 5995,
                                      "name": "lastCallTime"
                                    }
                                  ],
                                  "optional": false
                                }
                              }
                            ]
                          },
                          "alternate": null
                        },
                        {
                          "type": "IfStatement",
                          "start": 6012,
                          "end": 6202,
                          "test": {
                            "type": "Identifier",
                            "start": 6016,
                            "end": 6022,
                            "name": "maxing"
                          },
                          "consequent": {
                            "type": "BlockStatement",
                            "start": 6024,
                            "end": 6202,
                            "body": [
                              {
                                "type": "ExpressionStatement",
                                "start": 6081,
                                "end": 6103,
                                "expression": {
                                  "type": "CallExpression",
                                  "start": 6081,
                                  "end": 6102,
                                  "callee": {
                                    "type": "Identifier",
                                    "start": 6081,
                                    "end": 6093,
                                    "name": "clearTimeout"
                                  },
                                  "arguments": [
                                    {
                                      "type": "Identifier",
                                      "start": 6094,
                                      "end": 6101,
                                      "name": "timerId"
                                    }
                                  ],
                                  "optional": false
                                }
                              },
                              {
                                "type": "ExpressionStatement",
                                "start": 6112,
                                "end": 6153,
                                "expression": {
                                  "type": "AssignmentExpression",
                                  "start": 6112,
                                  "end": 6152,
                                  "operator": "=",
                                  "left": {
                                    "type": "Identifier",
                                    "start": 6112,
                                    "end": 6119,
                                    "name": "timerId"
                                  },
                                  "right": {
                                    "type": "CallExpression",
                                    "start": 6122,
                                    "end": 6152,
                                    "callee": {
                                      "type": "Identifier",
                                      "start": 6122,
                                      "end": 6132,
                                      "name": "setTimeout"
                                    },
                                    "arguments": [
                                      {
                                        "type": "Identifier",
                                        "start": 6133,
                                        "end": 6145,
                                        "name": "timerExpired"
                                      },
                                      {
                                        "type": "Identifier",
                                        "start": 6147,
                                        "end": 6151,
                                        "name": "wait"
                                      }
                                    ],
                                    "optional": false
                                  }
                                }
                              },
                              {
                                "type": "ReturnStatement",
                                "start": 6162,
                                "end": 6194,
                                "argument": {
                                  "type": "CallExpression",
                                  "start": 6169,
                                  "end": 6193,
                                  "callee": {
                                    "type": "Identifier",
                                    "start": 6169,
                                    "end": 6179,
                                    "name": "invokeFunc"
                                  },
                                  "arguments": [
                                    {
                                      "type": "Identifier",
                                      "start": 6180,
                                      "end": 6192,
                                      "name": "lastCallTime"
                                    }
                                  ],
                                  "optional": false
                                }
                              }
                            ]
                          },
                          "alternate": null
                        }
                      ]
                    },
                    "alternate": null
                  },
                  {
                    "type": "IfStatement",
                    "start": 6213,
                    "end": 6295,
                    "test": {
                      "type": "BinaryExpression",
                      "start": 6217,
                      "end": 6238,
                      "left": {
                        "type": "Identifier",
                        "start": 6217,
                        "end": 6224,
                        "name": "timerId"
                      },
                      "operator": "===",
                      "right": {
                        "type": "Identifier",
                        "start": 6229,
                        "end": 6238,
                        "name": "undefined"
                      }
                    },
                    "consequent": {
                      "type": "BlockStatement",
                      "start": 6240,
                      "end": 6295,
                      "body": [
                        {
                          "type": "ExpressionStatement",
                          "start": 6248,
                          "end": 6289,
                          "expression": {
                            "type": "AssignmentExpression",
                            "start": 6248,
                            "end": 6288,
                            "operator": "=",
                            "left": {
                              "type": "Identifier",
                              "start": 6248,
                              "end": 6255,
                              "name": "timerId"
                            },
                            "right": {
                              "type": "CallExpression",
                              "start": 6258,
                              "end": 6288,
                              "callee": {
                                "type": "Identifier",
                                "start": 6258,
                                "end": 6268,
                                "name": "setTimeout"
                              },
                              "arguments": [
                                {
                                  "type": "Identifier",
                                  "start": 6269,
                                  "end": 6281,
                                  "name": "timerExpired"
                                },
                                {
                                  "type": "Identifier",
                                  "start": 6283,
                                  "end": 6287,
                                  "name": "wait"
                                }
                              ],
                              "optional": false
                            }
                          }
                        }
                      ]
                    },
                    "alternate": null
                  },
                  {
                    "type": "ReturnStatement",
                    "start": 6300,
                    "end": 6314,
                    "argument": {
                      "type": "Identifier",
                      "start": 6307,
                      "end": 6313,
                      "name": "result"
                    }
                  }
                ]
              }
            },
            {
              "type": "ExpressionStatement",
              "start": 6321,
              "end": 6347,
              "expression": {
                "type": "AssignmentExpression",
                "start": 6321,
                "end": 6346,
                "operator": "=",
                "left": {
                  "type": "MemberExpression",
                  "start": 6321,
                  "end": 6337,
                  "object": {
                    "type": "Identifier",
                    "start": 6321,
                    "end": 6330,
                    "name": "debounced"
                  },
                  "property": {
                    "type": "Identifier",
                    "start": 6331,
                    "end": 6337,
                    "name": "cancel"
                  },
                  "computed": false,
                  "optional": false
                },
                "right": {
                  "type": "Identifier",
                  "start": 6340,
                  "end": 6346,
                  "name": "cancel"
                }
              }
            },
            {
              "type": "ExpressionStatement",
              "start": 6350,
              "end": 6374,
              "expression": {
                "type": "AssignmentExpression",
                "start": 6350,
                "end": 6373,
                "operator": "=",
                "left": {
                  "type": "MemberExpression",
                  "start": 6350,
                  "end": 6365,
                  "object": {
                    "type": "Identifier",
                    "start": 6350,
                    "end": 6359,
                    "name": "debounced"
                  },
                  "property": {
                    "type": "Identifier",
                    "start": 6360,
                    "end": 6365,
                    "name": "flush"
                  },
                  "computed": false,
                  "optional": false
                },
                "right": {
                  "type": "Identifier",
                  "start": 6368,
                  "end": 6373,
                  "name": "flush"
                }
              }
            },
            {
              "type": "ReturnStatement",
              "start": 6377,
              "end": 6394,
              "argument": {
                "type": "Identifier",
                "start": 6384,
                "end": 6393,
                "name": "debounced"
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 6398,
        "end": 6424,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 6402,
            "end": 6423,
            "id": {
              "type": "Identifier",
              "start": 6402,
              "end": 6412,
              "name": "debounce_1"
            },
            "init": {
              "type": "Identifier",
              "start": 6415,
              "end": 6423,
              "name": "debounce"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 6426,
        "end": 6452,
        "declaration": {
          "type": "Identifier",
          "start": 6441,
          "end": 6451,
          "name": "debounce_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 6453,
        "end": 6494,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 6462,
            "end": 6491,
            "local": {
              "type": "Identifier",
              "start": 6462,
              "end": 6472,
              "name": "debounce_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 6476,
              "end": 6491,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./isObject?commonjs-require\";\nimport require$$0 from \"\\u0000./isObject?commonjs-proxy\";\nimport \"\\u0000./now?commonjs-require\";\nimport require$$1 from \"\\u0000./now?commonjs-proxy\";\nimport \"\\u0000./toNumber?commonjs-require\";\nimport require$$2 from \"\\u0000./toNumber?commonjs-proxy\";\n\nvar isObject = require$$0,\n    now = require$$1,\n    toNumber = require$$2;\n\n/** Error message constants. */\nvar FUNC_ERROR_TEXT = 'Expected a function';\n\n/* Built-in method references for those with the same name as other `lodash` methods. */\nvar nativeMax = Math.max,\n    nativeMin = Math.min;\n\n/**\n * Creates a debounced function that delays invoking `func` until after `wait`\n * milliseconds have elapsed since the last time the debounced function was\n * invoked. The debounced function comes with a `cancel` method to cancel\n * delayed `func` invocations and a `flush` method to immediately invoke them.\n * Provide `options` to indicate whether `func` should be invoked on the\n * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\n * with the last arguments provided to the debounced function. Subsequent\n * calls to the debounced function return the result of the last `func`\n * invocation.\n *\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\n * invoked on the trailing edge of the timeout only if the debounced function\n * is invoked more than once during the `wait` timeout.\n *\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\n *\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\n * for details over the differences between `_.debounce` and `_.throttle`.\n *\n * @static\n * @memberOf _\n * @since 0.1.0\n * @category Function\n * @param {Function} func The function to debounce.\n * @param {number} [wait=0] The number of milliseconds to delay.\n * @param {Object} [options={}] The options object.\n * @param {boolean} [options.leading=false]\n *  Specify invoking on the leading edge of the timeout.\n * @param {number} [options.maxWait]\n *  The maximum time `func` is allowed to be delayed before it's invoked.\n * @param {boolean} [options.trailing=true]\n *  Specify invoking on the trailing edge of the timeout.\n * @returns {Function} Returns the new debounced function.\n * @example\n *\n * // Avoid costly calculations while the window size is in flux.\n * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\n *\n * // Invoke `sendMail` when clicked, debouncing subsequent calls.\n * jQuery(element).on('click', _.debounce(sendMail, 300, {\n *   'leading': true,\n *   'trailing': false\n * }));\n *\n * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\n * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\n * var source = new EventSource('/stream');\n * jQuery(source).on('message', debounced);\n *\n * // Cancel the trailing debounced invocation.\n * jQuery(window).on('popstate', debounced.cancel);\n */\nfunction debounce(func, wait, options) {\n  var lastArgs,\n      lastThis,\n      maxWait,\n      result,\n      timerId,\n      lastCallTime,\n      lastInvokeTime = 0,\n      leading = false,\n      maxing = false,\n      trailing = true;\n\n  if (typeof func != 'function') {\n    throw new TypeError(FUNC_ERROR_TEXT);\n  }\n  wait = toNumber(wait) || 0;\n  if (isObject(options)) {\n    leading = !!options.leading;\n    maxing = 'maxWait' in options;\n    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\n  }\n\n  function invokeFunc(time) {\n    var args = lastArgs,\n        thisArg = lastThis;\n\n    lastArgs = lastThis = undefined;\n    lastInvokeTime = time;\n    result = func.apply(thisArg, args);\n    return result;\n  }\n\n  function leadingEdge(time) {\n    // Reset any `maxWait` timer.\n    lastInvokeTime = time;\n    // Start the timer for the trailing edge.\n    timerId = setTimeout(timerExpired, wait);\n    // Invoke the leading edge.\n    return leading ? invokeFunc(time) : result;\n  }\n\n  function remainingWait(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime,\n        timeWaiting = wait - timeSinceLastCall;\n\n    return maxing\n      ? nativeMin(timeWaiting, maxWait - timeSinceLastInvoke)\n      : timeWaiting;\n  }\n\n  function shouldInvoke(time) {\n    var timeSinceLastCall = time - lastCallTime,\n        timeSinceLastInvoke = time - lastInvokeTime;\n\n    // Either this is the first call, activity has stopped and we're at the\n    // trailing edge, the system time has gone backwards and we're treating\n    // it as the trailing edge, or we've hit the `maxWait` limit.\n    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\n      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\n  }\n\n  function timerExpired() {\n    var time = now();\n    if (shouldInvoke(time)) {\n      return trailingEdge(time);\n    }\n    // Restart the timer.\n    timerId = setTimeout(timerExpired, remainingWait(time));\n  }\n\n  function trailingEdge(time) {\n    timerId = undefined;\n\n    // Only invoke if we have `lastArgs` which means `func` has been\n    // debounced at least once.\n    if (trailing && lastArgs) {\n      return invokeFunc(time);\n    }\n    lastArgs = lastThis = undefined;\n    return result;\n  }\n\n  function cancel() {\n    if (timerId !== undefined) {\n      clearTimeout(timerId);\n    }\n    lastInvokeTime = 0;\n    lastArgs = lastCallTime = lastThis = timerId = undefined;\n  }\n\n  function flush() {\n    return timerId === undefined ? result : trailingEdge(now());\n  }\n\n  function debounced() {\n    var time = now(),\n        isInvoking = shouldInvoke(time);\n\n    lastArgs = arguments;\n    lastThis = this;\n    lastCallTime = time;\n\n    if (isInvoking) {\n      if (timerId === undefined) {\n        return leadingEdge(lastCallTime);\n      }\n      if (maxing) {\n        // Handle invocations in a tight loop.\n        clearTimeout(timerId);\n        timerId = setTimeout(timerExpired, wait);\n        return invokeFunc(lastCallTime);\n      }\n    }\n    if (timerId === undefined) {\n      timerId = setTimeout(timerExpired, wait);\n    }\n    return result;\n  }\n  debounced.cancel = cancel;\n  debounced.flush = flush;\n  return debounced;\n}\n\nvar debounce_1 = debounce;\n\nexport default debounce_1;\nexport { debounce_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 145,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 145,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 144,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/debounce.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 1919,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 100,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 99,
          "value": "\u0000./_baseTrim?commonjs-require",
          "raw": "\"\\u0000./_baseTrim?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 101,
        "end": 159,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 108,
            "end": 118,
            "local": {
              "type": "Identifier",
              "start": 108,
              "end": 118,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 124,
          "end": 158,
          "value": "\u0000./_baseTrim?commonjs-proxy",
          "raw": "\"\\u0000./_baseTrim?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 160,
        "end": 203,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 167,
          "end": 202,
          "value": "\u0000./isObject?commonjs-require",
          "raw": "\"\\u0000./isObject?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 204,
        "end": 261,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 211,
            "end": 221,
            "local": {
              "type": "Identifier",
              "start": 211,
              "end": 221,
              "name": "require$$1"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 227,
          "end": 260,
          "value": "\u0000./isObject?commonjs-proxy",
          "raw": "\"\\u0000./isObject?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 262,
        "end": 305,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 269,
          "end": 304,
          "value": "\u0000./isSymbol?commonjs-require",
          "raw": "\"\\u0000./isSymbol?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 306,
        "end": 363,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 313,
            "end": 323,
            "local": {
              "type": "Identifier",
              "start": 313,
              "end": 323,
              "name": "require$$2"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 329,
          "end": 362,
          "value": "\u0000./isSymbol?commonjs-proxy",
          "raw": "\"\\u0000./isSymbol?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 365,
        "end": 445,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 369,
            "end": 390,
            "id": {
              "type": "Identifier",
              "start": 369,
              "end": 377,
              "name": "baseTrim"
            },
            "init": {
              "type": "Identifier",
              "start": 380,
              "end": 390,
              "name": "require$$0"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 396,
            "end": 417,
            "id": {
              "type": "Identifier",
              "start": 396,
              "end": 404,
              "name": "isObject"
            },
            "init": {
              "type": "Identifier",
              "start": 407,
              "end": 417,
              "name": "require$$1"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 423,
            "end": 444,
            "id": {
              "type": "Identifier",
              "start": 423,
              "end": 431,
              "name": "isSymbol"
            },
            "init": {
              "type": "Identifier",
              "start": 434,
              "end": 444,
              "name": "require$$2"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 505,
        "end": 521,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 509,
            "end": 520,
            "id": {
              "type": "Identifier",
              "start": 509,
              "end": 512,
              "name": "NAN"
            },
            "init": {
              "type": "BinaryExpression",
              "start": 515,
              "end": 520,
              "left": {
                "type": "Literal",
                "start": 515,
                "end": 516,
                "value": 0,
                "raw": "0"
              },
              "operator": "/",
              "right": {
                "type": "Literal",
                "start": 519,
                "end": 520,
                "value": 0,
                "raw": "0"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 583,
        "end": 621,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 587,
            "end": 620,
            "id": {
              "type": "Identifier",
              "start": 587,
              "end": 597,
              "name": "reIsBadHex"
            },
            "init": {
              "type": "Literal",
              "start": 600,
              "end": 620,
              "value": {},
              "raw": "/^[-+]0x[0-9a-f]+$/i",
              "regex": {
                "pattern": "^[-+]0x[0-9a-f]+$",
                "flags": "i"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 667,
        "end": 697,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 671,
            "end": 696,
            "id": {
              "type": "Identifier",
              "start": 671,
              "end": 681,
              "name": "reIsBinary"
            },
            "init": {
              "type": "Literal",
              "start": 684,
              "end": 696,
              "value": {},
              "raw": "/^0b[01]+$/i",
              "regex": {
                "pattern": "^0b[01]+$",
                "flags": "i"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 742,
        "end": 772,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 746,
            "end": 771,
            "id": {
              "type": "Identifier",
              "start": 746,
              "end": 755,
              "name": "reIsOctal"
            },
            "init": {
              "type": "Literal",
              "start": 758,
              "end": 771,
              "value": {},
              "raw": "/^0o[0-7]+$/i",
              "regex": {
                "pattern": "^0o[0-7]+$",
                "flags": "i"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 840,
        "end": 868,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 844,
            "end": 867,
            "id": {
              "type": "Identifier",
              "start": 844,
              "end": 856,
              "name": "freeParseInt"
            },
            "init": {
              "type": "Identifier",
              "start": 859,
              "end": 867,
              "name": "parseInt"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 1241,
        "end": 1821,
        "id": {
          "type": "Identifier",
          "start": 1250,
          "end": 1258,
          "name": "toNumber"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 1259,
            "end": 1264,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 1266,
          "end": 1821,
          "body": [
            {
              "type": "IfStatement",
              "start": 1270,
              "end": 1323,
              "test": {
                "type": "BinaryExpression",
                "start": 1274,
                "end": 1298,
                "left": {
                  "type": "UnaryExpression",
                  "start": 1274,
                  "end": 1286,
                  "operator": "typeof",
                  "prefix": true,
                  "argument": {
                    "type": "Identifier",
                    "start": 1281,
                    "end": 1286,
                    "name": "value"
                  }
                },
                "operator": "==",
                "right": {
                  "type": "Literal",
                  "start": 1290,
                  "end": 1298,
                  "value": "number",
                  "raw": "'number'"
                }
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 1300,
                "end": 1323,
                "body": [
                  {
                    "type": "ReturnStatement",
                    "start": 1306,
                    "end": 1319,
                    "argument": {
                      "type": "Identifier",
                      "start": 1313,
                      "end": 1318,
                      "name": "value"
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "IfStatement",
              "start": 1326,
              "end": 1368,
              "test": {
                "type": "CallExpression",
                "start": 1330,
                "end": 1345,
                "callee": {
                  "type": "Identifier",
                  "start": 1330,
                  "end": 1338,
                  "name": "isSymbol"
                },
                "arguments": [
                  {
                    "type": "Identifier",
                    "start": 1339,
                    "end": 1344,
                    "name": "value"
                  }
                ],
                "optional": false
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 1347,
                "end": 1368,
                "body": [
                  {
                    "type": "ReturnStatement",
                    "start": 1353,
                    "end": 1364,
                    "argument": {
                      "type": "Identifier",
                      "start": 1360,
                      "end": 1363,
                      "name": "NAN"
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "IfStatement",
              "start": 1371,
              "end": 1527,
              "test": {
                "type": "CallExpression",
                "start": 1375,
                "end": 1390,
                "callee": {
                  "type": "Identifier",
                  "start": 1375,
                  "end": 1383,
                  "name": "isObject"
                },
                "arguments": [
                  {
                    "type": "Identifier",
                    "start": 1384,
                    "end": 1389,
                    "name": "value"
                  }
                ],
                "optional": false
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 1392,
                "end": 1527,
                "body": [
                  {
                    "type": "VariableDeclaration",
                    "start": 1398,
                    "end": 1471,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 1402,
                        "end": 1470,
                        "id": {
                          "type": "Identifier",
                          "start": 1402,
                          "end": 1407,
                          "name": "other"
                        },
                        "init": {
                          "type": "ConditionalExpression",
                          "start": 1410,
                          "end": 1470,
                          "test": {
                            "type": "BinaryExpression",
                            "start": 1410,
                            "end": 1444,
                            "left": {
                              "type": "UnaryExpression",
                              "start": 1410,
                              "end": 1430,
                              "operator": "typeof",
                              "prefix": true,
                              "argument": {
                                "type": "MemberExpression",
                                "start": 1417,
                                "end": 1430,
                                "object": {
                                  "type": "Identifier",
                                  "start": 1417,
                                  "end": 1422,
                                  "name": "value"
                                },
                                "property": {
                                  "type": "Identifier",
                                  "start": 1423,
                                  "end": 1430,
                                  "name": "valueOf"
                                },
                                "computed": false,
                                "optional": false
                              }
                            },
                            "operator": "==",
                            "right": {
                              "type": "Literal",
                              "start": 1434,
                              "end": 1444,
                              "value": "function",
                              "raw": "'function'"
                            }
                          },
                          "consequent": {
                            "type": "CallExpression",
                            "start": 1447,
                            "end": 1462,
                            "callee": {
                              "type": "MemberExpression",
                              "start": 1447,
                              "end": 1460,
                              "object": {
                                "type": "Identifier",
                                "start": 1447,
                                "end": 1452,
                                "name": "value"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 1453,
                                "end": 1460,
                                "name": "valueOf"
                              },
                              "computed": false,
                              "optional": false
                            },
                            "arguments": [],
                            "optional": false
                          },
                          "alternate": {
                            "type": "Identifier",
                            "start": 1465,
                            "end": 1470,
                            "name": "value"
                          }
                        }
                      }
                    ],
                    "kind": "var"
                  },
                  {
                    "type": "ExpressionStatement",
                    "start": 1476,
                    "end": 1523,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 1476,
                      "end": 1522,
                      "operator": "=",
                      "left": {
                        "type": "Identifier",
                        "start": 1476,
                        "end": 1481,
                        "name": "value"
                      },
                      "right": {
                        "type": "ConditionalExpression",
                        "start": 1484,
                        "end": 1522,
                        "test": {
                          "type": "CallExpression",
                          "start": 1484,
                          "end": 1499,
                          "callee": {
                            "type": "Identifier",
                            "start": 1484,
                            "end": 1492,
                            "name": "isObject"
                          },
                          "arguments": [
                            {
                              "type": "Identifier",
                              "start": 1493,
                              "end": 1498,
                              "name": "other"
                            }
                          ],
                          "optional": false
                        },
                        "consequent": {
                          "type": "BinaryExpression",
                          "start": 1503,
                          "end": 1513,
                          "left": {
                            "type": "Identifier",
                            "start": 1503,
                            "end": 1508,
                            "name": "other"
                          },
                          "operator": "+",
                          "right": {
                            "type": "Literal",
                            "start": 1511,
                            "end": 1513,
                            "value": "",
                            "raw": "''"
                          }
                        },
                        "alternate": {
                          "type": "Identifier",
                          "start": 1517,
                          "end": 1522,
                          "name": "other"
                        }
                      }
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "IfStatement",
              "start": 1530,
              "end": 1606,
              "test": {
                "type": "BinaryExpression",
                "start": 1534,
                "end": 1558,
                "left": {
                  "type": "UnaryExpression",
                  "start": 1534,
                  "end": 1546,
                  "operator": "typeof",
                  "prefix": true,
                  "argument": {
                    "type": "Identifier",
                    "start": 1541,
                    "end": 1546,
                    "name": "value"
                  }
                },
                "operator": "!=",
                "right": {
                  "type": "Literal",
                  "start": 1550,
                  "end": 1558,
                  "value": "string",
                  "raw": "'string'"
                }
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 1560,
                "end": 1606,
                "body": [
                  {
                    "type": "ReturnStatement",
                    "start": 1566,
                    "end": 1602,
                    "argument": {
                      "type": "ConditionalExpression",
                      "start": 1573,
                      "end": 1601,
                      "test": {
                        "type": "BinaryExpression",
                        "start": 1573,
                        "end": 1584,
                        "left": {
                          "type": "Identifier",
                          "start": 1573,
                          "end": 1578,
                          "name": "value"
                        },
                        "operator": "===",
                        "right": {
                          "type": "Literal",
                          "start": 1583,
                          "end": 1584,
                          "value": 0,
                          "raw": "0"
                        }
                      },
                      "consequent": {
                        "type": "Identifier",
                        "start": 1587,
                        "end": 1592,
                        "name": "value"
                      },
                      "alternate": {
                        "type": "UnaryExpression",
                        "start": 1595,
                        "end": 1601,
                        "operator": "+",
                        "prefix": true,
                        "argument": {
                          "type": "Identifier",
                          "start": 1596,
                          "end": 1601,
                          "name": "value"
                        }
                      }
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "ExpressionStatement",
              "start": 1609,
              "end": 1633,
              "expression": {
                "type": "AssignmentExpression",
                "start": 1609,
                "end": 1632,
                "operator": "=",
                "left": {
                  "type": "Identifier",
                  "start": 1609,
                  "end": 1614,
                  "name": "value"
                },
                "right": {
                  "type": "CallExpression",
                  "start": 1617,
                  "end": 1632,
                  "callee": {
                    "type": "Identifier",
                    "start": 1617,
                    "end": 1625,
                    "name": "baseTrim"
                  },
                  "arguments": [
                    {
                      "type": "Identifier",
                      "start": 1626,
                      "end": 1631,
                      "name": "value"
                    }
                  ],
                  "optional": false
                }
              }
            },
            {
              "type": "VariableDeclaration",
              "start": 1636,
              "end": 1674,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 1640,
                  "end": 1673,
                  "id": {
                    "type": "Identifier",
                    "start": 1640,
                    "end": 1648,
                    "name": "isBinary"
                  },
                  "init": {
                    "type": "CallExpression",
                    "start": 1651,
                    "end": 1673,
                    "callee": {
                      "type": "MemberExpression",
                      "start": 1651,
                      "end": 1666,
                      "object": {
                        "type": "Identifier",
                        "start": 1651,
                        "end": 1661,
                        "name": "reIsBinary"
                      },
                      "property": {
                        "type": "Identifier",
                        "start": 1662,
                        "end": 1666,
                        "name": "test"
                      },
                      "computed": false,
                      "optional": false
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 1667,
                        "end": 1672,
                        "name": "value"
                      }
                    ],
                    "optional": false
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "ReturnStatement",
              "start": 1677,
              "end": 1819,
              "argument": {
                "type": "ConditionalExpression",
                "start": 1684,
                "end": 1818,
                "test": {
                  "type": "LogicalExpression",
                  "start": 1685,
                  "end": 1718,
                  "left": {
                    "type": "Identifier",
                    "start": 1685,
                    "end": 1693,
                    "name": "isBinary"
                  },
                  "operator": "||",
                  "right": {
                    "type": "CallExpression",
                    "start": 1697,
                    "end": 1718,
                    "callee": {
                      "type": "MemberExpression",
                      "start": 1697,
                      "end": 1711,
                      "object": {
                        "type": "Identifier",
                        "start": 1697,
                        "end": 1706,
                        "name": "reIsOctal"
                      },
                      "property": {
                        "type": "Identifier",
                        "start": 1707,
                        "end": 1711,
                        "name": "test"
                      },
                      "computed": false,
                      "optional": false
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 1712,
                        "end": 1717,
                        "name": "value"
                      }
                    ],
                    "optional": false
                  }
                },
                "consequent": {
                  "type": "CallExpression",
                  "start": 1726,
                  "end": 1772,
                  "callee": {
                    "type": "Identifier",
                    "start": 1726,
                    "end": 1738,
                    "name": "freeParseInt"
                  },
                  "arguments": [
                    {
                      "type": "CallExpression",
                      "start": 1739,
                      "end": 1753,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 1739,
                        "end": 1750,
                        "object": {
                          "type": "Identifier",
                          "start": 1739,
                          "end": 1744,
                          "name": "value"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 1745,
                          "end": 1750,
                          "name": "slice"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "Literal",
                          "start": 1751,
                          "end": 1752,
                          "value": 2,
                          "raw": "2"
                        }
                      ],
                      "optional": false
                    },
                    {
                      "type": "ConditionalExpression",
                      "start": 1755,
                      "end": 1771,
                      "test": {
                        "type": "Identifier",
                        "start": 1755,
                        "end": 1763,
                        "name": "isBinary"
                      },
                      "consequent": {
                        "type": "Literal",
                        "start": 1766,
                        "end": 1767,
                        "value": 2,
                        "raw": "2"
                      },
                      "alternate": {
                        "type": "Literal",
                        "start": 1770,
                        "end": 1771,
                        "value": 8,
                        "raw": "8"
                      }
                    }
                  ],
                  "optional": false
                },
                "alternate": {
                  "type": "ConditionalExpression",
                  "start": 1780,
                  "end": 1817,
                  "test": {
                    "type": "CallExpression",
                    "start": 1780,
                    "end": 1802,
                    "callee": {
                      "type": "MemberExpression",
                      "start": 1780,
                      "end": 1795,
                      "object": {
                        "type": "Identifier",
                        "start": 1780,
                        "end": 1790,
                        "name": "reIsBadHex"
                      },
                      "property": {
                        "type": "Identifier",
                        "start": 1791,
                        "end": 1795,
                        "name": "test"
                      },
                      "computed": false,
                      "optional": false
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 1796,
                        "end": 1801,
                        "name": "value"
                      }
                    ],
                    "optional": false
                  },
                  "consequent": {
                    "type": "Identifier",
                    "start": 1805,
                    "end": 1808,
                    "name": "NAN"
                  },
                  "alternate": {
                    "type": "UnaryExpression",
                    "start": 1811,
                    "end": 1817,
                    "operator": "+",
                    "prefix": true,
                    "argument": {
                      "type": "Identifier",
                      "start": 1812,
                      "end": 1817,
                      "name": "value"
                    }
                  }
                }
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 1823,
        "end": 1849,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 1827,
            "end": 1848,
            "id": {
              "type": "Identifier",
              "start": 1827,
              "end": 1837,
              "name": "toNumber_1"
            },
            "init": {
              "type": "Identifier",
              "start": 1840,
              "end": 1848,
              "name": "toNumber"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 1851,
        "end": 1877,
        "declaration": {
          "type": "Identifier",
          "start": 1866,
          "end": 1876,
          "name": "toNumber_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 1878,
        "end": 1919,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 1887,
            "end": 1916,
            "local": {
              "type": "Identifier",
              "start": 1887,
              "end": 1897,
              "name": "toNumber_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 1901,
              "end": 1916,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_baseTrim?commonjs-require\";\nimport require$$0 from \"\\u0000./_baseTrim?commonjs-proxy\";\nimport \"\\u0000./isObject?commonjs-require\";\nimport require$$1 from \"\\u0000./isObject?commonjs-proxy\";\nimport \"\\u0000./isSymbol?commonjs-require\";\nimport require$$2 from \"\\u0000./isSymbol?commonjs-proxy\";\n\nvar baseTrim = require$$0,\n    isObject = require$$1,\n    isSymbol = require$$2;\n\n/** Used as references for various `Number` constants. */\nvar NAN = 0 / 0;\n\n/** Used to detect bad signed hexadecimal string values. */\nvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\n\n/** Used to detect binary string values. */\nvar reIsBinary = /^0b[01]+$/i;\n\n/** Used to detect octal string values. */\nvar reIsOctal = /^0o[0-7]+$/i;\n\n/** Built-in method references without a dependency on `root`. */\nvar freeParseInt = parseInt;\n\n/**\n * Converts `value` to a number.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to process.\n * @returns {number} Returns the number.\n * @example\n *\n * _.toNumber(3.2);\n * // => 3.2\n *\n * _.toNumber(Number.MIN_VALUE);\n * // => 5e-324\n *\n * _.toNumber(Infinity);\n * // => Infinity\n *\n * _.toNumber('3.2');\n * // => 3.2\n */\nfunction toNumber(value) {\n  if (typeof value == 'number') {\n    return value;\n  }\n  if (isSymbol(value)) {\n    return NAN;\n  }\n  if (isObject(value)) {\n    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\n    value = isObject(other) ? (other + '') : other;\n  }\n  if (typeof value != 'string') {\n    return value === 0 ? value : +value;\n  }\n  value = baseTrim(value);\n  var isBinary = reIsBinary.test(value);\n  return (isBinary || reIsOctal.test(value))\n    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\n    : (reIsBadHex.test(value) ? NAN : +value);\n}\n\nvar toNumber_1 = toNumber;\n\nexport default toNumber_1;\nexport { toNumber_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObject.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 719,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 96,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 95,
          "value": "\u0000./_root?commonjs-require",
          "raw": "\"\\u0000./_root?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 97,
        "end": 151,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 104,
            "end": 114,
            "local": {
              "type": "Identifier",
              "start": 104,
              "end": 114,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 120,
          "end": 150,
          "value": "\u0000./_root?commonjs-proxy",
          "raw": "\"\\u0000./_root?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 153,
        "end": 175,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 157,
            "end": 174,
            "id": {
              "type": "Identifier",
              "start": 157,
              "end": 161,
              "name": "root"
            },
            "init": {
              "type": "Identifier",
              "start": 164,
              "end": 174,
              "name": "require$$0"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 590,
        "end": 641,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 594,
            "end": 640,
            "id": {
              "type": "Identifier",
              "start": 594,
              "end": 597,
              "name": "now"
            },
            "init": {
              "type": "FunctionExpression",
              "start": 600,
              "end": 640,
              "id": null,
              "expression": false,
              "generator": false,
              "async": false,
              "params": [],
              "body": {
                "type": "BlockStatement",
                "start": 611,
                "end": 640,
                "body": [
                  {
                    "type": "ReturnStatement",
                    "start": 615,
                    "end": 638,
                    "argument": {
                      "type": "CallExpression",
                      "start": 622,
                      "end": 637,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 622,
                        "end": 635,
                        "object": {
                          "type": "MemberExpression",
                          "start": 622,
                          "end": 631,
                          "object": {
                            "type": "Identifier",
                            "start": 622,
                            "end": 626,
                            "name": "root"
                          },
                          "property": {
                            "type": "Identifier",
                            "start": 627,
                            "end": 631,
                            "name": "Date"
                          },
                          "computed": false,
                          "optional": false
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 632,
                          "end": 635,
                          "name": "now"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [],
                      "optional": false
                    }
                  }
                ]
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 643,
        "end": 659,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 647,
            "end": 658,
            "id": {
              "type": "Identifier",
              "start": 647,
              "end": 652,
              "name": "now_1"
            },
            "init": {
              "type": "Identifier",
              "start": 655,
              "end": 658,
              "name": "now"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 661,
        "end": 682,
        "declaration": {
          "type": "Identifier",
          "start": 676,
          "end": 681,
          "name": "now_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 683,
        "end": 719,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 692,
            "end": 716,
            "local": {
              "type": "Identifier",
              "start": 692,
              "end": 697,
              "name": "now_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 701,
              "end": 716,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_root?commonjs-require\";\nimport require$$0 from \"\\u0000./_root?commonjs-proxy\";\n\nvar root = require$$0;\n\n/**\n * Gets the timestamp of the number of milliseconds that have elapsed since\n * the Unix epoch (1 January 1970 00:00:00 UTC).\n *\n * @static\n * @memberOf _\n * @since 2.4.0\n * @category Date\n * @returns {number} Returns the timestamp.\n * @example\n *\n * _.defer(function(stamp) {\n *   console.log(_.now() - stamp);\n * }, _.now());\n * // => Logs the number of milliseconds it took for the deferred invocation.\n */\nvar now = function() {\n  return root.Date.now();\n};\n\nvar now_1 = now;\n\nexport default now_1;\nexport { now_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 145,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 145,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 144,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/toNumber.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 140,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 140,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 139,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/now.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 666,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 107,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 106,
          "value": "\u0000./_trimmedEndIndex?commonjs-require",
          "raw": "\"\\u0000./_trimmedEndIndex?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 108,
        "end": 173,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 115,
            "end": 125,
            "local": {
              "type": "Identifier",
              "start": 115,
              "end": 125,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 131,
          "end": 172,
          "value": "\u0000./_trimmedEndIndex?commonjs-proxy",
          "raw": "\"\\u0000./_trimmedEndIndex?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 175,
        "end": 208,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 179,
            "end": 207,
            "id": {
              "type": "Identifier",
              "start": 179,
              "end": 194,
              "name": "trimmedEndIndex"
            },
            "init": {
              "type": "Identifier",
              "start": 197,
              "end": 207,
              "name": "require$$0"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 251,
        "end": 276,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 255,
            "end": 275,
            "id": {
              "type": "Identifier",
              "start": 255,
              "end": 266,
              "name": "reTrimStart"
            },
            "init": {
              "type": "Literal",
              "start": 269,
              "end": 275,
              "value": {},
              "raw": "/^\\s+/",
              "regex": {
                "pattern": "^\\s+",
                "flags": ""
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 436,
        "end": 571,
        "id": {
          "type": "Identifier",
          "start": 445,
          "end": 453,
          "name": "baseTrim"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 454,
            "end": 460,
            "name": "string"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 462,
          "end": 571,
          "body": [
            {
              "type": "ReturnStatement",
              "start": 466,
              "end": 569,
              "argument": {
                "type": "ConditionalExpression",
                "start": 473,
                "end": 568,
                "test": {
                  "type": "Identifier",
                  "start": 473,
                  "end": 479,
                  "name": "string"
                },
                "consequent": {
                  "type": "CallExpression",
                  "start": 486,
                  "end": 555,
                  "callee": {
                    "type": "MemberExpression",
                    "start": 486,
                    "end": 538,
                    "object": {
                      "type": "CallExpression",
                      "start": 486,
                      "end": 530,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 486,
                        "end": 498,
                        "object": {
                          "type": "Identifier",
                          "start": 486,
                          "end": 492,
                          "name": "string"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 493,
                          "end": 498,
                          "name": "slice"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "Literal",
                          "start": 499,
                          "end": 500,
                          "value": 0,
                          "raw": "0"
                        },
                        {
                          "type": "BinaryExpression",
                          "start": 502,
                          "end": 529,
                          "left": {
                            "type": "CallExpression",
                            "start": 502,
                            "end": 525,
                            "callee": {
                              "type": "Identifier",
                              "start": 502,
                              "end": 517,
                              "name": "trimmedEndIndex"
                            },
                            "arguments": [
                              {
                                "type": "Identifier",
                                "start": 518,
                                "end": 524,
                                "name": "string"
                              }
                            ],
                            "optional": false
                          },
                          "operator": "+",
                          "right": {
                            "type": "Literal",
                            "start": 528,
                            "end": 529,
                            "value": 1,
                            "raw": "1"
                          }
                        }
                      ],
                      "optional": false
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 531,
                      "end": 538,
                      "name": "replace"
                    },
                    "computed": false,
                    "optional": false
                  },
                  "arguments": [
                    {
                      "type": "Identifier",
                      "start": 539,
                      "end": 550,
                      "name": "reTrimStart"
                    },
                    {
                      "type": "Literal",
                      "start": 552,
                      "end": 554,
                      "value": "",
                      "raw": "''"
                    }
                  ],
                  "optional": false
                },
                "alternate": {
                  "type": "Identifier",
                  "start": 562,
                  "end": 568,
                  "name": "string"
                }
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 573,
        "end": 598,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 577,
            "end": 597,
            "id": {
              "type": "Identifier",
              "start": 577,
              "end": 586,
              "name": "_baseTrim"
            },
            "init": {
              "type": "Identifier",
              "start": 589,
              "end": 597,
              "name": "baseTrim"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 600,
        "end": 625,
        "declaration": {
          "type": "Identifier",
          "start": 615,
          "end": 624,
          "name": "_baseTrim"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 626,
        "end": 666,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 635,
            "end": 663,
            "local": {
              "type": "Identifier",
              "start": 635,
              "end": 644,
              "name": "_baseTrim"
            },
            "exported": {
              "type": "Identifier",
              "start": 648,
              "end": 663,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_trimmedEndIndex?commonjs-require\";\nimport require$$0 from \"\\u0000./_trimmedEndIndex?commonjs-proxy\";\n\nvar trimmedEndIndex = require$$0;\n\n/** Used to match leading whitespace. */\nvar reTrimStart = /^\\s+/;\n\n/**\n * The base implementation of `_.trim`.\n *\n * @private\n * @param {string} string The string to trim.\n * @returns {string} Returns the trimmed string.\n */\nfunction baseTrim(string) {\n  return string\n    ? string.slice(0, trimmedEndIndex(string) + 1).replace(reTrimStart, '')\n    : string;\n}\n\nvar _baseTrim = baseTrim;\n\nexport default _baseTrim;\nexport { _baseTrim as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 997,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 102,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 101,
          "value": "\u0000./_baseGetTag?commonjs-require",
          "raw": "\"\\u0000./_baseGetTag?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 103,
        "end": 163,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 110,
            "end": 120,
            "local": {
              "type": "Identifier",
              "start": 110,
              "end": 120,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 126,
          "end": 162,
          "value": "\u0000./_baseGetTag?commonjs-proxy",
          "raw": "\"\\u0000./_baseGetTag?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 164,
        "end": 211,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 171,
          "end": 210,
          "value": "\u0000./isObjectLike?commonjs-require",
          "raw": "\"\\u0000./isObjectLike?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 212,
        "end": 273,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 219,
            "end": 229,
            "local": {
              "type": "Identifier",
              "start": 219,
              "end": 229,
              "name": "require$$1"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 235,
          "end": 272,
          "value": "\u0000./isObjectLike?commonjs-proxy",
          "raw": "\"\\u0000./isObjectLike?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 275,
        "end": 334,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 279,
            "end": 302,
            "id": {
              "type": "Identifier",
              "start": 279,
              "end": 289,
              "name": "baseGetTag"
            },
            "init": {
              "type": "Identifier",
              "start": 292,
              "end": 302,
              "name": "require$$0"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 308,
            "end": 333,
            "id": {
              "type": "Identifier",
              "start": 308,
              "end": 320,
              "name": "isObjectLike"
            },
            "init": {
              "type": "Identifier",
              "start": 323,
              "end": 333,
              "name": "require$$1"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 380,
        "end": 414,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 384,
            "end": 413,
            "id": {
              "type": "Identifier",
              "start": 384,
              "end": 393,
              "name": "symbolTag"
            },
            "init": {
              "type": "Literal",
              "start": 396,
              "end": 413,
              "value": "[object Symbol]",
              "raw": "'[object Symbol]'"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 773,
        "end": 899,
        "id": {
          "type": "Identifier",
          "start": 782,
          "end": 790,
          "name": "isSymbol"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 791,
            "end": 796,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 798,
          "end": 899,
          "body": [
            {
              "type": "ReturnStatement",
              "start": 802,
              "end": 897,
              "argument": {
                "type": "LogicalExpression",
                "start": 809,
                "end": 896,
                "left": {
                  "type": "BinaryExpression",
                  "start": 809,
                  "end": 833,
                  "left": {
                    "type": "UnaryExpression",
                    "start": 809,
                    "end": 821,
                    "operator": "typeof",
                    "prefix": true,
                    "argument": {
                      "type": "Identifier",
                      "start": 816,
                      "end": 821,
                      "name": "value"
                    }
                  },
                  "operator": "==",
                  "right": {
                    "type": "Literal",
                    "start": 825,
                    "end": 833,
                    "value": "symbol",
                    "raw": "'symbol'"
                  }
                },
                "operator": "||",
                "right": {
                  "type": "LogicalExpression",
                  "start": 842,
                  "end": 895,
                  "left": {
                    "type": "CallExpression",
                    "start": 842,
                    "end": 861,
                    "callee": {
                      "type": "Identifier",
                      "start": 842,
                      "end": 854,
                      "name": "isObjectLike"
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 855,
                        "end": 860,
                        "name": "value"
                      }
                    ],
                    "optional": false
                  },
                  "operator": "&&",
                  "right": {
                    "type": "BinaryExpression",
                    "start": 865,
                    "end": 895,
                    "left": {
                      "type": "CallExpression",
                      "start": 865,
                      "end": 882,
                      "callee": {
                        "type": "Identifier",
                        "start": 865,
                        "end": 875,
                        "name": "baseGetTag"
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 876,
                          "end": 881,
                          "name": "value"
                        }
                      ],
                      "optional": false
                    },
                    "operator": "==",
                    "right": {
                      "type": "Identifier",
                      "start": 886,
                      "end": 895,
                      "name": "symbolTag"
                    }
                  }
                }
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 901,
        "end": 927,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 905,
            "end": 926,
            "id": {
              "type": "Identifier",
              "start": 905,
              "end": 915,
              "name": "isSymbol_1"
            },
            "init": {
              "type": "Identifier",
              "start": 918,
              "end": 926,
              "name": "isSymbol"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 929,
        "end": 955,
        "declaration": {
          "type": "Identifier",
          "start": 944,
          "end": 954,
          "name": "isSymbol_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 956,
        "end": 997,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 965,
            "end": 994,
            "local": {
              "type": "Identifier",
              "start": 965,
              "end": 975,
              "name": "isSymbol_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 979,
              "end": 994,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_baseGetTag?commonjs-require\";\nimport require$$0 from \"\\u0000./_baseGetTag?commonjs-proxy\";\nimport \"\\u0000./isObjectLike?commonjs-require\";\nimport require$$1 from \"\\u0000./isObjectLike?commonjs-proxy\";\n\nvar baseGetTag = require$$0,\n    isObjectLike = require$$1;\n\n/** `Object#toString` result references. */\nvar symbolTag = '[object Symbol]';\n\n/**\n * Checks if `value` is classified as a `Symbol` primitive or object.\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\n * @example\n *\n * _.isSymbol(Symbol.iterator);\n * // => true\n *\n * _.isSymbol('abc');\n * // => false\n */\nfunction isSymbol(value) {\n  return typeof value == 'symbol' ||\n    (isObjectLike(value) && baseGetTag(value) == symbolTag);\n}\n\nvar isSymbol_1 = isSymbol;\n\nexport default isSymbol_1;\nexport { isSymbol_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 505,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 102,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 101,
          "value": "\u0000./_freeGlobal?commonjs-require",
          "raw": "\"\\u0000./_freeGlobal?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 103,
        "end": 163,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 110,
            "end": 120,
            "local": {
              "type": "Identifier",
              "start": 110,
              "end": 120,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 126,
          "end": 162,
          "value": "\u0000./_freeGlobal?commonjs-proxy",
          "raw": "\"\\u0000./_freeGlobal?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 165,
        "end": 193,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 169,
            "end": 192,
            "id": {
              "type": "Identifier",
              "start": 169,
              "end": 179,
              "name": "freeGlobal"
            },
            "init": {
              "type": "Identifier",
              "start": 182,
              "end": 192,
              "name": "require$$0"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 231,
        "end": 312,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 235,
            "end": 311,
            "id": {
              "type": "Identifier",
              "start": 235,
              "end": 243,
              "name": "freeSelf"
            },
            "init": {
              "type": "LogicalExpression",
              "start": 246,
              "end": 311,
              "left": {
                "type": "LogicalExpression",
                "start": 246,
                "end": 303,
                "left": {
                  "type": "LogicalExpression",
                  "start": 246,
                  "end": 277,
                  "left": {
                    "type": "BinaryExpression",
                    "start": 246,
                    "end": 269,
                    "left": {
                      "type": "UnaryExpression",
                      "start": 246,
                      "end": 257,
                      "operator": "typeof",
                      "prefix": true,
                      "argument": {
                        "type": "Identifier",
                        "start": 253,
                        "end": 257,
                        "name": "self"
                      }
                    },
                    "operator": "==",
                    "right": {
                      "type": "Literal",
                      "start": 261,
                      "end": 269,
                      "value": "object",
                      "raw": "'object'"
                    }
                  },
                  "operator": "&&",
                  "right": {
                    "type": "Identifier",
                    "start": 273,
                    "end": 277,
                    "name": "self"
                  }
                },
                "operator": "&&",
                "right": {
                  "type": "BinaryExpression",
                  "start": 281,
                  "end": 303,
                  "left": {
                    "type": "MemberExpression",
                    "start": 281,
                    "end": 292,
                    "object": {
                      "type": "Identifier",
                      "start": 281,
                      "end": 285,
                      "name": "self"
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 286,
                      "end": 292,
                      "name": "Object"
                    },
                    "computed": false,
                    "optional": false
                  },
                  "operator": "===",
                  "right": {
                    "type": "Identifier",
                    "start": 297,
                    "end": 303,
                    "name": "Object"
                  }
                }
              },
              "operator": "&&",
              "right": {
                "type": "Identifier",
                "start": 307,
                "end": 311,
                "name": "self"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 363,
        "end": 426,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 367,
            "end": 425,
            "id": {
              "type": "Identifier",
              "start": 367,
              "end": 371,
              "name": "root"
            },
            "init": {
              "type": "LogicalExpression",
              "start": 374,
              "end": 425,
              "left": {
                "type": "LogicalExpression",
                "start": 374,
                "end": 396,
                "left": {
                  "type": "Identifier",
                  "start": 374,
                  "end": 384,
                  "name": "freeGlobal"
                },
                "operator": "||",
                "right": {
                  "type": "Identifier",
                  "start": 388,
                  "end": 396,
                  "name": "freeSelf"
                }
              },
              "operator": "||",
              "right": {
                "type": "CallExpression",
                "start": 400,
                "end": 425,
                "callee": {
                  "type": "CallExpression",
                  "start": 400,
                  "end": 423,
                  "callee": {
                    "type": "Identifier",
                    "start": 400,
                    "end": 408,
                    "name": "Function"
                  },
                  "arguments": [
                    {
                      "type": "Literal",
                      "start": 409,
                      "end": 422,
                      "value": "return this",
                      "raw": "'return this'"
                    }
                  ],
                  "optional": false
                },
                "arguments": [],
                "optional": false
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 428,
        "end": 445,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 432,
            "end": 444,
            "id": {
              "type": "Identifier",
              "start": 432,
              "end": 437,
              "name": "_root"
            },
            "init": {
              "type": "Identifier",
              "start": 440,
              "end": 444,
              "name": "root"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 447,
        "end": 468,
        "declaration": {
          "type": "Identifier",
          "start": 462,
          "end": 467,
          "name": "_root"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 469,
        "end": 505,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 478,
            "end": 502,
            "local": {
              "type": "Identifier",
              "start": 478,
              "end": 483,
              "name": "_root"
            },
            "exported": {
              "type": "Identifier",
              "start": 487,
              "end": 502,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_freeGlobal?commonjs-require\";\nimport require$$0 from \"\\u0000./_freeGlobal?commonjs-proxy\";\n\nvar freeGlobal = require$$0;\n\n/** Detect free variable `self`. */\nvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\n\n/** Used as a reference to the global object. */\nvar root = freeGlobal || freeSelf || Function('return this')();\n\nvar _root = root;\n\nexport default _root;\nexport { _root as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 659,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 52,
        "end": 107,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 59,
            "end": 79,
            "local": {
              "type": "Identifier",
              "start": 64,
              "end": 79,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 85,
          "end": 106,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 109,
        "end": 133,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 113,
            "end": 132,
            "id": {
              "type": "Identifier",
              "start": 113,
              "end": 125,
              "name": "reWhitespace"
            },
            "init": {
              "type": "Literal",
              "start": 128,
              "end": 132,
              "value": {},
              "raw": "/\\s/",
              "regex": {
                "pattern": "\\s",
                "flags": ""
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 390,
        "end": 536,
        "id": {
          "type": "Identifier",
          "start": 399,
          "end": 414,
          "name": "trimmedEndIndex"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 415,
            "end": 421,
            "name": "string"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 423,
          "end": 536,
          "body": [
            {
              "type": "VariableDeclaration",
              "start": 427,
              "end": 453,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 431,
                  "end": 452,
                  "id": {
                    "type": "Identifier",
                    "start": 431,
                    "end": 436,
                    "name": "index"
                  },
                  "init": {
                    "type": "MemberExpression",
                    "start": 439,
                    "end": 452,
                    "object": {
                      "type": "Identifier",
                      "start": 439,
                      "end": 445,
                      "name": "string"
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 446,
                      "end": 452,
                      "name": "length"
                    },
                    "computed": false,
                    "optional": false
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "WhileStatement",
              "start": 457,
              "end": 518,
              "test": {
                "type": "LogicalExpression",
                "start": 464,
                "end": 514,
                "left": {
                  "type": "UpdateExpression",
                  "start": 464,
                  "end": 471,
                  "operator": "--",
                  "prefix": false,
                  "argument": {
                    "type": "Identifier",
                    "start": 464,
                    "end": 469,
                    "name": "index"
                  }
                },
                "operator": "&&",
                "right": {
                  "type": "CallExpression",
                  "start": 475,
                  "end": 514,
                  "callee": {
                    "type": "MemberExpression",
                    "start": 475,
                    "end": 492,
                    "object": {
                      "type": "Identifier",
                      "start": 475,
                      "end": 487,
                      "name": "reWhitespace"
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 488,
                      "end": 492,
                      "name": "test"
                    },
                    "computed": false,
                    "optional": false
                  },
                  "arguments": [
                    {
                      "type": "CallExpression",
                      "start": 493,
                      "end": 513,
                      "callee": {
                        "type": "MemberExpression",
                        "start": 493,
                        "end": 506,
                        "object": {
                          "type": "Identifier",
                          "start": 493,
                          "end": 499,
                          "name": "string"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 500,
                          "end": 506,
                          "name": "charAt"
                        },
                        "computed": false,
                        "optional": false
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 507,
                          "end": 512,
                          "name": "index"
                        }
                      ],
                      "optional": false
                    }
                  ],
                  "optional": false
                }
              },
              "body": {
                "type": "BlockStatement",
                "start": 516,
                "end": 518,
                "body": []
              }
            },
            {
              "type": "ReturnStatement",
              "start": 521,
              "end": 534,
              "argument": {
                "type": "Identifier",
                "start": 528,
                "end": 533,
                "name": "index"
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 538,
        "end": 577,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 542,
            "end": 576,
            "id": {
              "type": "Identifier",
              "start": 542,
              "end": 558,
              "name": "_trimmedEndIndex"
            },
            "init": {
              "type": "Identifier",
              "start": 561,
              "end": 576,
              "name": "trimmedEndIndex"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 579,
        "end": 611,
        "declaration": {
          "type": "Identifier",
          "start": 594,
          "end": 610,
          "name": "_trimmedEndIndex"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 612,
        "end": 659,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 621,
            "end": 656,
            "local": {
              "type": "Identifier",
              "start": 621,
              "end": 637,
              "name": "_trimmedEndIndex"
            },
            "exported": {
              "type": "Identifier",
              "start": 641,
              "end": 656,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "/** Used to match a single whitespace character. */\nimport * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\n\nvar reWhitespace = /\\s/;\n\n/**\n * Used by `_.trim` and `_.trimEnd` to get the index of the last non-whitespace\n * character of `string`.\n *\n * @private\n * @param {string} string The string to inspect.\n * @returns {number} Returns the index of the last non-whitespace character.\n */\nfunction trimmedEndIndex(string) {\n  var index = string.length;\n\n  while (index-- && reWhitespace.test(string.charAt(index))) {}\n  return index;\n}\n\nvar _trimmedEndIndex = trimmedEndIndex;\n\nexport default _trimmedEndIndex;\nexport { _trimmedEndIndex as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 752,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 497,
        "end": 552,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 504,
            "end": 524,
            "local": {
              "type": "Identifier",
              "start": 509,
              "end": 524,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 530,
          "end": 551,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "FunctionDeclaration",
        "start": 554,
        "end": 638,
        "id": {
          "type": "Identifier",
          "start": 563,
          "end": 575,
          "name": "isObjectLike"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 576,
            "end": 581,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 583,
          "end": 638,
          "body": [
            {
              "type": "ReturnStatement",
              "start": 587,
              "end": 636,
              "argument": {
                "type": "LogicalExpression",
                "start": 594,
                "end": 635,
                "left": {
                  "type": "BinaryExpression",
                  "start": 594,
                  "end": 607,
                  "left": {
                    "type": "Identifier",
                    "start": 594,
                    "end": 599,
                    "name": "value"
                  },
                  "operator": "!=",
                  "right": {
                    "type": "Literal",
                    "start": 603,
                    "end": 607,
                    "value": null,
                    "raw": "null"
                  }
                },
                "operator": "&&",
                "right": {
                  "type": "BinaryExpression",
                  "start": 611,
                  "end": 635,
                  "left": {
                    "type": "UnaryExpression",
                    "start": 611,
                    "end": 623,
                    "operator": "typeof",
                    "prefix": true,
                    "argument": {
                      "type": "Identifier",
                      "start": 618,
                      "end": 623,
                      "name": "value"
                    }
                  },
                  "operator": "==",
                  "right": {
                    "type": "Literal",
                    "start": 627,
                    "end": 635,
                    "value": "object",
                    "raw": "'object'"
                  }
                }
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 640,
        "end": 674,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 644,
            "end": 673,
            "id": {
              "type": "Identifier",
              "start": 644,
              "end": 658,
              "name": "isObjectLike_1"
            },
            "init": {
              "type": "Identifier",
              "start": 661,
              "end": 673,
              "name": "isObjectLike"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 676,
        "end": 706,
        "declaration": {
          "type": "Identifier",
          "start": 691,
          "end": 705,
          "name": "isObjectLike_1"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 707,
        "end": 752,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 716,
            "end": 749,
            "local": {
              "type": "Identifier",
              "start": 716,
              "end": 730,
              "name": "isObjectLike_1"
            },
            "exported": {
              "type": "Identifier",
              "start": 734,
              "end": 749,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "/**\n * Checks if `value` is object-like. A value is object-like if it's not `null`\n * and has a `typeof` result of \"object\".\n *\n * @static\n * @memberOf _\n * @since 4.0.0\n * @category Lang\n * @param {*} value The value to check.\n * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\n * @example\n *\n * _.isObjectLike({});\n * // => true\n *\n * _.isObjectLike([1, 2, 3]);\n * // => true\n *\n * _.isObjectLike(_.noop);\n * // => false\n *\n * _.isObjectLike(null);\n * // => false\n */\nimport * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\n\nfunction isObjectLike(value) {\n  return value != null && typeof value == 'object';\n}\n\nvar isObjectLike_1 = isObjectLike;\n\nexport default isObjectLike_1;\nexport { isObjectLike_1 as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 398,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 51,
        "end": 106,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 58,
            "end": 78,
            "local": {
              "type": "Identifier",
              "start": 63,
              "end": 78,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 84,
          "end": 105,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 108,
        "end": 295,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 112,
            "end": 294,
            "id": {
              "type": "Identifier",
              "start": 112,
              "end": 122,
              "name": "freeGlobal"
            },
            "init": {
              "type": "LogicalExpression",
              "start": 125,
              "end": 294,
              "left": {
                "type": "LogicalExpression",
                "start": 125,
                "end": 260,
                "left": {
                  "type": "LogicalExpression",
                  "start": 125,
                  "end": 208,
                  "left": {
                    "type": "BinaryExpression",
                    "start": 125,
                    "end": 174,
                    "left": {
                      "type": "UnaryExpression",
                      "start": 125,
                      "end": 162,
                      "operator": "typeof",
                      "prefix": true,
                      "argument": {
                        "type": "MemberExpression",
                        "start": 132,
                        "end": 162,
                        "object": {
                          "type": "Identifier",
                          "start": 132,
                          "end": 147,
                          "name": "commonjsHelpers"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 148,
                          "end": 162,
                          "name": "commonjsGlobal"
                        },
                        "computed": false,
                        "optional": false
                      }
                    },
                    "operator": "==",
                    "right": {
                      "type": "Literal",
                      "start": 166,
                      "end": 174,
                      "value": "object",
                      "raw": "'object'"
                    }
                  },
                  "operator": "&&",
                  "right": {
                    "type": "MemberExpression",
                    "start": 178,
                    "end": 208,
                    "object": {
                      "type": "Identifier",
                      "start": 178,
                      "end": 193,
                      "name": "commonjsHelpers"
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 194,
                      "end": 208,
                      "name": "commonjsGlobal"
                    },
                    "computed": false,
                    "optional": false
                  }
                },
                "operator": "&&",
                "right": {
                  "type": "BinaryExpression",
                  "start": 212,
                  "end": 260,
                  "left": {
                    "type": "MemberExpression",
                    "start": 212,
                    "end": 249,
                    "object": {
                      "type": "MemberExpression",
                      "start": 212,
                      "end": 242,
                      "object": {
                        "type": "Identifier",
                        "start": 212,
                        "end": 227,
                        "name": "commonjsHelpers"
                      },
                      "property": {
                        "type": "Identifier",
                        "start": 228,
                        "end": 242,
                        "name": "commonjsGlobal"
                      },
                      "computed": false,
                      "optional": false
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 243,
                      "end": 249,
                      "name": "Object"
                    },
                    "computed": false,
                    "optional": false
                  },
                  "operator": "===",
                  "right": {
                    "type": "Identifier",
                    "start": 254,
                    "end": 260,
                    "name": "Object"
                  }
                }
              },
              "operator": "&&",
              "right": {
                "type": "MemberExpression",
                "start": 264,
                "end": 294,
                "object": {
                  "type": "Identifier",
                  "start": 264,
                  "end": 279,
                  "name": "commonjsHelpers"
                },
                "property": {
                  "type": "Identifier",
                  "start": 280,
                  "end": 294,
                  "name": "commonjsGlobal"
                },
                "computed": false,
                "optional": false
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 297,
        "end": 326,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 301,
            "end": 325,
            "id": {
              "type": "Identifier",
              "start": 301,
              "end": 312,
              "name": "_freeGlobal"
            },
            "init": {
              "type": "Identifier",
              "start": 315,
              "end": 325,
              "name": "freeGlobal"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 328,
        "end": 355,
        "declaration": {
          "type": "Identifier",
          "start": 343,
          "end": 354,
          "name": "_freeGlobal"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 356,
        "end": 398,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 365,
            "end": 395,
            "local": {
              "type": "Identifier",
              "start": 365,
              "end": 376,
              "name": "_freeGlobal"
            },
            "exported": {
              "type": "Identifier",
              "start": 380,
              "end": 395,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "/** Detect free variable `global` from Node.js. */\nimport * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\n\nvar freeGlobal = typeof commonjsHelpers.commonjsGlobal == 'object' && commonjsHelpers.commonjsGlobal && commonjsHelpers.commonjsGlobal.Object === Object && commonjsHelpers.commonjsGlobal;\n\nvar _freeGlobal = freeGlobal;\n\nexport default _freeGlobal;\nexport { _freeGlobal as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 146,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 146,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 145,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseTrim.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 145,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 145,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 144,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isSymbol.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 142,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 142,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 141,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 153,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 153,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 152,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_trimmedEndIndex.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 149,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 149,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 148,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/isObjectLike.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 148,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 148,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 147,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_freeGlobal.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 1202,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 98,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 97,
          "value": "\u0000./_Symbol?commonjs-require",
          "raw": "\"\\u0000./_Symbol?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 99,
        "end": 155,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 106,
            "end": 116,
            "local": {
              "type": "Identifier",
              "start": 106,
              "end": 116,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 122,
          "end": 154,
          "value": "\u0000./_Symbol?commonjs-proxy",
          "raw": "\"\\u0000./_Symbol?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 156,
        "end": 201,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 163,
          "end": 200,
          "value": "\u0000./_getRawTag?commonjs-require",
          "raw": "\"\\u0000./_getRawTag?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 202,
        "end": 261,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 209,
            "end": 219,
            "local": {
              "type": "Identifier",
              "start": 209,
              "end": 219,
              "name": "require$$1"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 225,
          "end": 260,
          "value": "\u0000./_getRawTag?commonjs-proxy",
          "raw": "\"\\u0000./_getRawTag?commonjs-proxy\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 262,
        "end": 312,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 269,
          "end": 311,
          "value": "\u0000./_objectToString?commonjs-require",
          "raw": "\"\\u0000./_objectToString?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 313,
        "end": 377,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 320,
            "end": 330,
            "local": {
              "type": "Identifier",
              "start": 320,
              "end": 330,
              "name": "require$$2"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 336,
          "end": 376,
          "value": "\u0000./_objectToString?commonjs-proxy",
          "raw": "\"\\u0000./_objectToString?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 379,
        "end": 464,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 383,
            "end": 402,
            "id": {
              "type": "Identifier",
              "start": 383,
              "end": 389,
              "name": "Symbol"
            },
            "init": {
              "type": "Identifier",
              "start": 392,
              "end": 402,
              "name": "require$$0"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 408,
            "end": 430,
            "id": {
              "type": "Identifier",
              "start": 408,
              "end": 417,
              "name": "getRawTag"
            },
            "init": {
              "type": "Identifier",
              "start": 420,
              "end": 430,
              "name": "require$$1"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 436,
            "end": 463,
            "id": {
              "type": "Identifier",
              "start": 436,
              "end": 450,
              "name": "objectToString"
            },
            "init": {
              "type": "Identifier",
              "start": 453,
              "end": 463,
              "name": "require$$2"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 510,
        "end": 581,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 514,
            "end": 539,
            "id": {
              "type": "Identifier",
              "start": 514,
              "end": 521,
              "name": "nullTag"
            },
            "init": {
              "type": "Literal",
              "start": 524,
              "end": 539,
              "value": "[object Null]",
              "raw": "'[object Null]'"
            }
          },
          {
            "type": "VariableDeclarator",
            "start": 545,
            "end": 580,
            "id": {
              "type": "Identifier",
              "start": 545,
              "end": 557,
              "name": "undefinedTag"
            },
            "init": {
              "type": "Literal",
              "start": 560,
              "end": 580,
              "value": "[object Undefined]",
              "raw": "'[object Undefined]'"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 617,
        "end": 678,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 621,
            "end": 677,
            "id": {
              "type": "Identifier",
              "start": 621,
              "end": 635,
              "name": "symToStringTag"
            },
            "init": {
              "type": "ConditionalExpression",
              "start": 638,
              "end": 677,
              "test": {
                "type": "Identifier",
                "start": 638,
                "end": 644,
                "name": "Symbol"
              },
              "consequent": {
                "type": "MemberExpression",
                "start": 647,
                "end": 665,
                "object": {
                  "type": "Identifier",
                  "start": 647,
                  "end": 653,
                  "name": "Symbol"
                },
                "property": {
                  "type": "Identifier",
                  "start": 654,
                  "end": 665,
                  "name": "toStringTag"
                },
                "computed": false,
                "optional": false
              },
              "alternate": {
                "type": "Identifier",
                "start": 668,
                "end": 677,
                "name": "undefined"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 872,
        "end": 1099,
        "id": {
          "type": "Identifier",
          "start": 881,
          "end": 891,
          "name": "baseGetTag"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 892,
            "end": 897,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 899,
          "end": 1099,
          "body": [
            {
              "type": "IfStatement",
              "start": 903,
              "end": 984,
              "test": {
                "type": "BinaryExpression",
                "start": 907,
                "end": 920,
                "left": {
                  "type": "Identifier",
                  "start": 907,
                  "end": 912,
                  "name": "value"
                },
                "operator": "==",
                "right": {
                  "type": "Literal",
                  "start": 916,
                  "end": 920,
                  "value": null,
                  "raw": "null"
                }
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 922,
                "end": 984,
                "body": [
                  {
                    "type": "ReturnStatement",
                    "start": 928,
                    "end": 980,
                    "argument": {
                      "type": "ConditionalExpression",
                      "start": 935,
                      "end": 979,
                      "test": {
                        "type": "BinaryExpression",
                        "start": 935,
                        "end": 954,
                        "left": {
                          "type": "Identifier",
                          "start": 935,
                          "end": 940,
                          "name": "value"
                        },
                        "operator": "===",
                        "right": {
                          "type": "Identifier",
                          "start": 945,
                          "end": 954,
                          "name": "undefined"
                        }
                      },
                      "consequent": {
                        "type": "Identifier",
                        "start": 957,
                        "end": 969,
                        "name": "undefinedTag"
                      },
                      "alternate": {
                        "type": "Identifier",
                        "start": 972,
                        "end": 979,
                        "name": "nullTag"
                      }
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "ReturnStatement",
              "start": 987,
              "end": 1097,
              "argument": {
                "type": "ConditionalExpression",
                "start": 994,
                "end": 1096,
                "test": {
                  "type": "LogicalExpression",
                  "start": 995,
                  "end": 1044,
                  "left": {
                    "type": "Identifier",
                    "start": 995,
                    "end": 1009,
                    "name": "symToStringTag"
                  },
                  "operator": "&&",
                  "right": {
                    "type": "BinaryExpression",
                    "start": 1013,
                    "end": 1044,
                    "left": {
                      "type": "Identifier",
                      "start": 1013,
                      "end": 1027,
                      "name": "symToStringTag"
                    },
                    "operator": "in",
                    "right": {
                      "type": "CallExpression",
                      "start": 1031,
                      "end": 1044,
                      "callee": {
                        "type": "Identifier",
                        "start": 1031,
                        "end": 1037,
                        "name": "Object"
                      },
                      "arguments": [
                        {
                          "type": "Identifier",
                          "start": 1038,
                          "end": 1043,
                          "name": "value"
                        }
                      ],
                      "optional": false
                    }
                  }
                },
                "consequent": {
                  "type": "CallExpression",
                  "start": 1052,
                  "end": 1068,
                  "callee": {
                    "type": "Identifier",
                    "start": 1052,
                    "end": 1061,
                    "name": "getRawTag"
                  },
                  "arguments": [
                    {
                      "type": "Identifier",
                      "start": 1062,
                      "end": 1067,
                      "name": "value"
                    }
                  ],
                  "optional": false
                },
                "alternate": {
                  "type": "CallExpression",
                  "start": 1075,
                  "end": 1096,
                  "callee": {
                    "type": "Identifier",
                    "start": 1075,
                    "end": 1089,
                    "name": "objectToString"
                  },
                  "arguments": [
                    {
                      "type": "Identifier",
                      "start": 1090,
                      "end": 1095,
                      "name": "value"
                    }
                  ],
                  "optional": false
                }
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 1101,
        "end": 1130,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 1105,
            "end": 1129,
            "id": {
              "type": "Identifier",
              "start": 1105,
              "end": 1116,
              "name": "_baseGetTag"
            },
            "init": {
              "type": "Identifier",
              "start": 1119,
              "end": 1129,
              "name": "baseGetTag"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 1132,
        "end": 1159,
        "declaration": {
          "type": "Identifier",
          "start": 1147,
          "end": 1158,
          "name": "_baseGetTag"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 1160,
        "end": 1202,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 1169,
            "end": 1199,
            "local": {
              "type": "Identifier",
              "start": 1169,
              "end": 1180,
              "name": "_baseGetTag"
            },
            "exported": {
              "type": "Identifier",
              "start": 1184,
              "end": 1199,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_Symbol?commonjs-require\";\nimport require$$0 from \"\\u0000./_Symbol?commonjs-proxy\";\nimport \"\\u0000./_getRawTag?commonjs-require\";\nimport require$$1 from \"\\u0000./_getRawTag?commonjs-proxy\";\nimport \"\\u0000./_objectToString?commonjs-require\";\nimport require$$2 from \"\\u0000./_objectToString?commonjs-proxy\";\n\nvar Symbol = require$$0,\n    getRawTag = require$$1,\n    objectToString = require$$2;\n\n/** `Object#toString` result references. */\nvar nullTag = '[object Null]',\n    undefinedTag = '[object Undefined]';\n\n/** Built-in value references. */\nvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n/**\n * The base implementation of `getTag` without fallbacks for buggy environments.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the `toStringTag`.\n */\nfunction baseGetTag(value) {\n  if (value == null) {\n    return value === undefined ? undefinedTag : nullTag;\n  }\n  return (symToStringTag && symToStringTag in Object(value))\n    ? getRawTag(value)\n    : objectToString(value);\n}\n\nvar _baseGetTag = baseGetTag;\n\nexport default _baseGetTag;\nexport { _baseGetTag as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js?commonjs-proxy",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 706,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 44,
        "end": 99,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 51,
            "end": 71,
            "local": {
              "type": "Identifier",
              "start": 56,
              "end": 71,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 77,
          "end": 98,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 101,
        "end": 136,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 105,
            "end": 135,
            "id": {
              "type": "Identifier",
              "start": 105,
              "end": 116,
              "name": "objectProto"
            },
            "init": {
              "type": "MemberExpression",
              "start": 119,
              "end": 135,
              "object": {
                "type": "Identifier",
                "start": 119,
                "end": 125,
                "name": "Object"
              },
              "property": {
                "type": "Identifier",
                "start": 126,
                "end": 135,
                "name": "prototype"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 277,
        "end": 325,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 281,
            "end": 324,
            "id": {
              "type": "Identifier",
              "start": 281,
              "end": 301,
              "name": "nativeObjectToString"
            },
            "init": {
              "type": "MemberExpression",
              "start": 304,
              "end": 324,
              "object": {
                "type": "Identifier",
                "start": 304,
                "end": 315,
                "name": "objectProto"
              },
              "property": {
                "type": "Identifier",
                "start": 316,
                "end": 324,
                "name": "toString"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 510,
        "end": 587,
        "id": {
          "type": "Identifier",
          "start": 519,
          "end": 533,
          "name": "objectToString"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 534,
            "end": 539,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 541,
          "end": 587,
          "body": [
            {
              "type": "ReturnStatement",
              "start": 545,
              "end": 585,
              "argument": {
                "type": "CallExpression",
                "start": 552,
                "end": 584,
                "callee": {
                  "type": "MemberExpression",
                  "start": 552,
                  "end": 577,
                  "object": {
                    "type": "Identifier",
                    "start": 552,
                    "end": 572,
                    "name": "nativeObjectToString"
                  },
                  "property": {
                    "type": "Identifier",
                    "start": 573,
                    "end": 577,
                    "name": "call"
                  },
                  "computed": false,
                  "optional": false
                },
                "arguments": [
                  {
                    "type": "Identifier",
                    "start": 578,
                    "end": 583,
                    "name": "value"
                  }
                ],
                "optional": false
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 589,
        "end": 626,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 593,
            "end": 625,
            "id": {
              "type": "Identifier",
              "start": 593,
              "end": 608,
              "name": "_objectToString"
            },
            "init": {
              "type": "Identifier",
              "start": 611,
              "end": 625,
              "name": "objectToString"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 628,
        "end": 659,
        "declaration": {
          "type": "Identifier",
          "start": 643,
          "end": 658,
          "name": "_objectToString"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 660,
        "end": 706,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 669,
            "end": 703,
            "local": {
              "type": "Identifier",
              "start": 669,
              "end": 684,
              "name": "_objectToString"
            },
            "exported": {
              "type": "Identifier",
              "start": 688,
              "end": 703,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "/** Used for built-in method references. */\nimport * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\n\nvar objectProto = Object.prototype;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString = objectProto.toString;\n\n/**\n * Converts `value` to a string using `Object.prototype.toString`.\n *\n * @private\n * @param {*} value The value to convert.\n * @returns {string} Returns the converted string.\n */\nfunction objectToString(value) {\n  return nativeObjectToString.call(value);\n}\n\nvar _objectToString = objectToString;\n\nexport default _objectToString;\nexport { _objectToString as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 148,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 148,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 147,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_baseGetTag.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 323,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 96,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 95,
          "value": "\u0000./_root?commonjs-require",
          "raw": "\"\\u0000./_root?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 97,
        "end": 151,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 104,
            "end": 114,
            "local": {
              "type": "Identifier",
              "start": 104,
              "end": 114,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 120,
          "end": 150,
          "value": "\u0000./_root?commonjs-proxy",
          "raw": "\"\\u0000./_root?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 153,
        "end": 175,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 157,
            "end": 174,
            "id": {
              "type": "Identifier",
              "start": 157,
              "end": 161,
              "name": "root"
            },
            "init": {
              "type": "Identifier",
              "start": 164,
              "end": 174,
              "name": "require$$0"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 211,
        "end": 236,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 215,
            "end": 235,
            "id": {
              "type": "Identifier",
              "start": 215,
              "end": 221,
              "name": "Symbol"
            },
            "init": {
              "type": "MemberExpression",
              "start": 224,
              "end": 235,
              "object": {
                "type": "Identifier",
                "start": 224,
                "end": 228,
                "name": "root"
              },
              "property": {
                "type": "Identifier",
                "start": 229,
                "end": 235,
                "name": "Symbol"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 238,
        "end": 259,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 242,
            "end": 258,
            "id": {
              "type": "Identifier",
              "start": 242,
              "end": 249,
              "name": "_Symbol"
            },
            "init": {
              "type": "Identifier",
              "start": 252,
              "end": 258,
              "name": "Symbol"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 261,
        "end": 284,
        "declaration": {
          "type": "Identifier",
          "start": 276,
          "end": 283,
          "name": "_Symbol"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 285,
        "end": 323,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 294,
            "end": 320,
            "local": {
              "type": "Identifier",
              "start": 294,
              "end": 301,
              "name": "_Symbol"
            },
            "exported": {
              "type": "Identifier",
              "start": 305,
              "end": 320,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_root?commonjs-require\";\nimport require$$0 from \"\\u0000./_root?commonjs-proxy\";\n\nvar root = require$$0;\n\n/** Built-in value references. */\nvar Symbol = root.Symbol;\n\nvar _Symbol = Symbol;\n\nexport default _Symbol;\nexport { _Symbol as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_root.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 1355,
    "body": [
      {
        "type": "ImportDeclaration",
        "start": 0,
        "end": 55,
        "specifiers": [
          {
            "type": "ImportNamespaceSpecifier",
            "start": 7,
            "end": 27,
            "local": {
              "type": "Identifier",
              "start": 12,
              "end": 27,
              "name": "commonjsHelpers"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 33,
          "end": 54,
          "value": "\u0000commonjsHelpers.js",
          "raw": "\"\u0000commonjsHelpers.js\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 56,
        "end": 98,
        "specifiers": [],
        "source": {
          "type": "Literal",
          "start": 63,
          "end": 97,
          "value": "\u0000./_Symbol?commonjs-require",
          "raw": "\"\\u0000./_Symbol?commonjs-require\""
        }
      },
      {
        "type": "ImportDeclaration",
        "start": 99,
        "end": 155,
        "specifiers": [
          {
            "type": "ImportDefaultSpecifier",
            "start": 106,
            "end": 116,
            "local": {
              "type": "Identifier",
              "start": 106,
              "end": 116,
              "name": "require$$0"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 122,
          "end": 154,
          "value": "\u0000./_Symbol?commonjs-proxy",
          "raw": "\"\\u0000./_Symbol?commonjs-proxy\""
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 157,
        "end": 181,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 161,
            "end": 180,
            "id": {
              "type": "Identifier",
              "start": 161,
              "end": 167,
              "name": "Symbol"
            },
            "init": {
              "type": "Identifier",
              "start": 170,
              "end": 180,
              "name": "require$$0"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 227,
        "end": 262,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 231,
            "end": 261,
            "id": {
              "type": "Identifier",
              "start": 231,
              "end": 242,
              "name": "objectProto"
            },
            "init": {
              "type": "MemberExpression",
              "start": 245,
              "end": 261,
              "object": {
                "type": "Identifier",
                "start": 245,
                "end": 251,
                "name": "Object"
              },
              "property": {
                "type": "Identifier",
                "start": 252,
                "end": 261,
                "name": "prototype"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 313,
        "end": 361,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 317,
            "end": 360,
            "id": {
              "type": "Identifier",
              "start": 317,
              "end": 331,
              "name": "hasOwnProperty"
            },
            "init": {
              "type": "MemberExpression",
              "start": 334,
              "end": 360,
              "object": {
                "type": "Identifier",
                "start": 334,
                "end": 345,
                "name": "objectProto"
              },
              "property": {
                "type": "Identifier",
                "start": 346,
                "end": 360,
                "name": "hasOwnProperty"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 502,
        "end": 550,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 506,
            "end": 549,
            "id": {
              "type": "Identifier",
              "start": 506,
              "end": 526,
              "name": "nativeObjectToString"
            },
            "init": {
              "type": "MemberExpression",
              "start": 529,
              "end": 549,
              "object": {
                "type": "Identifier",
                "start": 529,
                "end": 540,
                "name": "objectProto"
              },
              "property": {
                "type": "Identifier",
                "start": 541,
                "end": 549,
                "name": "toString"
              },
              "computed": false,
              "optional": false
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "VariableDeclaration",
        "start": 586,
        "end": 647,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 590,
            "end": 646,
            "id": {
              "type": "Identifier",
              "start": 590,
              "end": 604,
              "name": "symToStringTag"
            },
            "init": {
              "type": "ConditionalExpression",
              "start": 607,
              "end": 646,
              "test": {
                "type": "Identifier",
                "start": 607,
                "end": 613,
                "name": "Symbol"
              },
              "consequent": {
                "type": "MemberExpression",
                "start": 616,
                "end": 634,
                "object": {
                  "type": "Identifier",
                  "start": 616,
                  "end": 622,
                  "name": "Symbol"
                },
                "property": {
                  "type": "Identifier",
                  "start": 623,
                  "end": 634,
                  "name": "toStringTag"
                },
                "computed": false,
                "optional": false
              },
              "alternate": {
                "type": "Identifier",
                "start": 637,
                "end": 646,
                "name": "undefined"
              }
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "FunctionDeclaration",
        "start": 848,
        "end": 1256,
        "id": {
          "type": "Identifier",
          "start": 857,
          "end": 866,
          "name": "getRawTag"
        },
        "expression": false,
        "generator": false,
        "async": false,
        "params": [
          {
            "type": "Identifier",
            "start": 867,
            "end": 872,
            "name": "value"
          }
        ],
        "body": {
          "type": "BlockStatement",
          "start": 874,
          "end": 1256,
          "body": [
            {
              "type": "VariableDeclaration",
              "start": 878,
              "end": 968,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 882,
                  "end": 932,
                  "id": {
                    "type": "Identifier",
                    "start": 882,
                    "end": 887,
                    "name": "isOwn"
                  },
                  "init": {
                    "type": "CallExpression",
                    "start": 890,
                    "end": 932,
                    "callee": {
                      "type": "MemberExpression",
                      "start": 890,
                      "end": 909,
                      "object": {
                        "type": "Identifier",
                        "start": 890,
                        "end": 904,
                        "name": "hasOwnProperty"
                      },
                      "property": {
                        "type": "Identifier",
                        "start": 905,
                        "end": 909,
                        "name": "call"
                      },
                      "computed": false,
                      "optional": false
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 910,
                        "end": 915,
                        "name": "value"
                      },
                      {
                        "type": "Identifier",
                        "start": 917,
                        "end": 931,
                        "name": "symToStringTag"
                      }
                    ],
                    "optional": false
                  }
                },
                {
                  "type": "VariableDeclarator",
                  "start": 940,
                  "end": 967,
                  "id": {
                    "type": "Identifier",
                    "start": 940,
                    "end": 943,
                    "name": "tag"
                  },
                  "init": {
                    "type": "MemberExpression",
                    "start": 946,
                    "end": 967,
                    "object": {
                      "type": "Identifier",
                      "start": 946,
                      "end": 951,
                      "name": "value"
                    },
                    "property": {
                      "type": "Identifier",
                      "start": 952,
                      "end": 966,
                      "name": "symToStringTag"
                    },
                    "computed": true,
                    "optional": false
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "TryStatement",
              "start": 972,
              "end": 1058,
              "block": {
                "type": "BlockStatement",
                "start": 976,
                "end": 1045,
                "body": [
                  {
                    "type": "ExpressionStatement",
                    "start": 982,
                    "end": 1016,
                    "expression": {
                      "type": "AssignmentExpression",
                      "start": 982,
                      "end": 1015,
                      "operator": "=",
                      "left": {
                        "type": "MemberExpression",
                        "start": 982,
                        "end": 1003,
                        "object": {
                          "type": "Identifier",
                          "start": 982,
                          "end": 987,
                          "name": "value"
                        },
                        "property": {
                          "type": "Identifier",
                          "start": 988,
                          "end": 1002,
                          "name": "symToStringTag"
                        },
                        "computed": true,
                        "optional": false
                      },
                      "right": {
                        "type": "Identifier",
                        "start": 1006,
                        "end": 1015,
                        "name": "undefined"
                      }
                    }
                  },
                  {
                    "type": "VariableDeclaration",
                    "start": 1021,
                    "end": 1041,
                    "declarations": [
                      {
                        "type": "VariableDeclarator",
                        "start": 1025,
                        "end": 1040,
                        "id": {
                          "type": "Identifier",
                          "start": 1025,
                          "end": 1033,
                          "name": "unmasked"
                        },
                        "init": {
                          "type": "Literal",
                          "start": 1036,
                          "end": 1040,
                          "value": true,
                          "raw": "true"
                        }
                      }
                    ],
                    "kind": "var"
                  }
                ]
              },
              "handler": {
                "type": "CatchClause",
                "start": 1046,
                "end": 1058,
                "param": {
                  "type": "Identifier",
                  "start": 1053,
                  "end": 1054,
                  "name": "e"
                },
                "body": {
                  "type": "BlockStatement",
                  "start": 1056,
                  "end": 1058,
                  "body": []
                }
              },
              "finalizer": null
            },
            {
              "type": "VariableDeclaration",
              "start": 1062,
              "end": 1108,
              "declarations": [
                {
                  "type": "VariableDeclarator",
                  "start": 1066,
                  "end": 1107,
                  "id": {
                    "type": "Identifier",
                    "start": 1066,
                    "end": 1072,
                    "name": "result"
                  },
                  "init": {
                    "type": "CallExpression",
                    "start": 1075,
                    "end": 1107,
                    "callee": {
                      "type": "MemberExpression",
                      "start": 1075,
                      "end": 1100,
                      "object": {
                        "type": "Identifier",
                        "start": 1075,
                        "end": 1095,
                        "name": "nativeObjectToString"
                      },
                      "property": {
                        "type": "Identifier",
                        "start": 1096,
                        "end": 1100,
                        "name": "call"
                      },
                      "computed": false,
                      "optional": false
                    },
                    "arguments": [
                      {
                        "type": "Identifier",
                        "start": 1101,
                        "end": 1106,
                        "name": "value"
                      }
                    ],
                    "optional": false
                  }
                }
              ],
              "kind": "var"
            },
            {
              "type": "IfStatement",
              "start": 1111,
              "end": 1237,
              "test": {
                "type": "Identifier",
                "start": 1115,
                "end": 1123,
                "name": "unmasked"
              },
              "consequent": {
                "type": "BlockStatement",
                "start": 1125,
                "end": 1237,
                "body": [
                  {
                    "type": "IfStatement",
                    "start": 1131,
                    "end": 1233,
                    "test": {
                      "type": "Identifier",
                      "start": 1135,
                      "end": 1140,
                      "name": "isOwn"
                    },
                    "consequent": {
                      "type": "BlockStatement",
                      "start": 1142,
                      "end": 1184,
                      "body": [
                        {
                          "type": "ExpressionStatement",
                          "start": 1150,
                          "end": 1178,
                          "expression": {
                            "type": "AssignmentExpression",
                            "start": 1150,
                            "end": 1177,
                            "operator": "=",
                            "left": {
                              "type": "MemberExpression",
                              "start": 1150,
                              "end": 1171,
                              "object": {
                                "type": "Identifier",
                                "start": 1150,
                                "end": 1155,
                                "name": "value"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 1156,
                                "end": 1170,
                                "name": "symToStringTag"
                              },
                              "computed": true,
                              "optional": false
                            },
                            "right": {
                              "type": "Identifier",
                              "start": 1174,
                              "end": 1177,
                              "name": "tag"
                            }
                          }
                        }
                      ]
                    },
                    "alternate": {
                      "type": "BlockStatement",
                      "start": 1190,
                      "end": 1233,
                      "body": [
                        {
                          "type": "ExpressionStatement",
                          "start": 1198,
                          "end": 1227,
                          "expression": {
                            "type": "UnaryExpression",
                            "start": 1198,
                            "end": 1226,
                            "operator": "delete",
                            "prefix": true,
                            "argument": {
                              "type": "MemberExpression",
                              "start": 1205,
                              "end": 1226,
                              "object": {
                                "type": "Identifier",
                                "start": 1205,
                                "end": 1210,
                                "name": "value"
                              },
                              "property": {
                                "type": "Identifier",
                                "start": 1211,
                                "end": 1225,
                                "name": "symToStringTag"
                              },
                              "computed": true,
                              "optional": false
                            }
                          }
                        }
                      ]
                    }
                  }
                ]
              },
              "alternate": null
            },
            {
              "type": "ReturnStatement",
              "start": 1240,
              "end": 1254,
              "argument": {
                "type": "Identifier",
                "start": 1247,
                "end": 1253,
                "name": "result"
              }
            }
          ]
        }
      },
      {
        "type": "VariableDeclaration",
        "start": 1258,
        "end": 1285,
        "declarations": [
          {
            "type": "VariableDeclarator",
            "start": 1262,
            "end": 1284,
            "id": {
              "type": "Identifier",
              "start": 1262,
              "end": 1272,
              "name": "_getRawTag"
            },
            "init": {
              "type": "Identifier",
              "start": 1275,
              "end": 1284,
              "name": "getRawTag"
            }
          }
        ],
        "kind": "var"
      },
      {
        "type": "ExportDefaultDeclaration",
        "start": 1287,
        "end": 1313,
        "declaration": {
          "type": "Identifier",
          "start": 1302,
          "end": 1312,
          "name": "_getRawTag"
        }
      },
      {
        "type": "ExportNamedDeclaration",
        "start": 1314,
        "end": 1355,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 1323,
            "end": 1352,
            "local": {
              "type": "Identifier",
              "start": 1323,
              "end": 1333,
              "name": "_getRawTag"
            },
            "exported": {
              "type": "Identifier",
              "start": 1337,
              "end": 1352,
              "name": "__moduleExports"
            }
          }
        ],
        "source": null
      }
    ],
    "sourceType": "module"
  },
  "code": "import * as commonjsHelpers from \"\u0000commonjsHelpers.js\";\nimport \"\\u0000./_Symbol?commonjs-require\";\nimport require$$0 from \"\\u0000./_Symbol?commonjs-proxy\";\n\nvar Symbol = require$$0;\n\n/** Used for built-in method references. */\nvar objectProto = Object.prototype;\n\n/** Used to check objects for own properties. */\nvar hasOwnProperty = objectProto.hasOwnProperty;\n\n/**\n * Used to resolve the\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\n * of values.\n */\nvar nativeObjectToString = objectProto.toString;\n\n/** Built-in value references. */\nvar symToStringTag = Symbol ? Symbol.toStringTag : undefined;\n\n/**\n * A specialized version of `baseGetTag` which ignores `Symbol.toStringTag` values.\n *\n * @private\n * @param {*} value The value to query.\n * @returns {string} Returns the raw `toStringTag`.\n */\nfunction getRawTag(value) {\n  var isOwn = hasOwnProperty.call(value, symToStringTag),\n      tag = value[symToStringTag];\n\n  try {\n    value[symToStringTag] = undefined;\n    var unmasked = true;\n  } catch (e) {}\n\n  var result = nativeObjectToString.call(value);\n  if (unmasked) {\n    if (isOwn) {\n      value[symToStringTag] = tag;\n    } else {\n      delete value[symToStringTag];\n    }\n  }\n  return result;\n}\n\nvar _getRawTag = getRawTag;\n\nexport default _getRawTag;\nexport { _getRawTag as __moduleExports };",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "\u0000commonjsHelpers.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    },
    {
      "external": false,
      "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js?commonjs-proxy",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "\u0000commonjsHelpers.js",
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
    "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js?commonjs-proxy"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {
    "commonjs": {
      "isCommonJS": true
    }
  },
  "moduleSideEffects": true,
  "syntheticNamedExports": "__moduleExports"
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 152,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 152,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 151,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_objectToString.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 147,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 147,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 146,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js"
  ],
  "importers": [],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

{
  "ast": {
    "type": "Program",
    "start": 0,
    "end": 144,
    "body": [
      {
        "type": "ExportNamedDeclaration",
        "start": 0,
        "end": 144,
        "declaration": null,
        "specifiers": [
          {
            "type": "ExportSpecifier",
            "start": 9,
            "end": 35,
            "local": {
              "type": "Identifier",
              "start": 9,
              "end": 24,
              "name": "__moduleExports"
            },
            "exported": {
              "type": "Identifier",
              "start": 28,
              "end": 35,
              "name": "default"
            }
          }
        ],
        "source": {
          "type": "Literal",
          "start": 43,
          "end": 143,
          "value": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
          "raw": "\"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js\""
        }
      }
    ],
    "sourceType": "module"
  },
  "code": "export { __moduleExports as default } from \"/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js\";",
  "dynamicallyImportedIdResolutions": [],
  "dynamicallyImportedIds": [],
  "dynamicImporters": [],
  "hasDefaultExport": true,
  "id": "\u0000/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js?commonjs-proxy",
  "implicitlyLoadedAfterOneOf": [],
  "implicitlyLoadedBefore": [],
  "importedIdResolutions": [
    {
      "external": false,
      "id": "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js",
      "meta": {},
      "moduleSideEffects": true,
      "syntheticNamedExports": false
    }
  ],
  "importedIds": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_Symbol.js"
  ],
  "importers": [
    "/Users/yaohuiwang/dev/labs/rollup/node_modules/.pnpm/lodash@4.17.21/node_modules/lodash/_getRawTag.js"
  ],
  "isEntry": false,
  "isExternal": false,
  "isIncluded": null,
  "meta": {},
  "moduleSideEffects": true,
  "syntheticNamedExports": false
}

