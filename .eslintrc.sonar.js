module.exports = {
  root: true,
  parser: "@typescript-eslint/parser",
  plugins: ["sonarjs"],
  extends: ["plugin:sonarjs/recommended"],
  parserOptions: {
    ecmaVersion: 2020,
    sourceType: "module",
    ecmaFeatures: {},
  },
  globals: {
    BigInt64Array: "readonly",
    BigUint64Array: "readonly",
    __non_webpack_require__: "readonly",
  },

  overrides: [
    // === TypeScript rules ====================================================

    {
      files: ["**/*.ts"],
      rules: {
        "sonarjs/cognitive-complexity": ["error", 20],
        "sonarjs/no-identical-expressions": "error",
      },
    },

    // === AssemblyScript rules (extends TypeScript rules) =====================

    {
      files: ["**/assembly/**/*.ts", "src/**/*.ts", "lib/parse/src/**/*.ts"],
      rules: {},
    },

    // === Compiler rules (extends AssemblyScript rules) =======================

    {
      files: ["src/**/*.ts", "std/assembly/**/*.ts"],
      rules: {},
    },

    // === Standard Library rules (extends AssemblyScript rules) ===============

    {
      files: ["std/assembly/**/*.ts"],
      rules: {},
    },

    // === Standard Definition rules (extends TypeScript rules) ================

    {
      files: ["std/**/*.d.ts"],
      rules: {},
    },

    // === Compiler Definition rules (extends TypeScript rules) ================

    {
      files: ["./index.d.ts", "./index.release.d.ts"],
      rules: {},
    },

    // === Test rules (extends TypeScript rules) ===============================

    {
      files: [
        "./tests/compiler/**/*.ts",
        "./lib/loader/tests/assembly/**/*.ts",
      ],
      rules: {
        // Tests typically include unusual code patterns on purpose. This is
        // very likely not an extensive list, but covers what's there so far.
        "sonarjs/no-small-switch": "off",
        "sonarjs/no-redundant-boolean": "off",
        "sonarjs/no-redundant-jump": "off",
        "sonarjs/no-one-iteration-loop": "off",
        "sonarjs/no-inverted-boolean-check": "off",
        "sonarjs/no-identical-expressions": "off",
        "sonarjs/no-duplicate-string": "off",
        "sonarjs/no-identical-functions": "off",
        "sonarjs/no-use-of-empty-return-value": "off",
        "sonarjs/prefer-immediate-return": "off",
        "sonarjs/prefer-while": "off",
        "sonarjs/no-collapsible-if": "off",
        "sonarjs/no-unused-collection": "off",
        "sonarjs/cognitive-complexity": ["error", 31],
        "sonarjs/prefer-single-boolean-return": "off",
        "sonarjs/no-all-duplicated-branches": "off",
      },
    },
  ],
};
