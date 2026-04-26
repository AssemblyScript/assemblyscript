import { defineConfig, globalIgnores } from "eslint/config";

import js from "@eslint/js";
import tseslint from "typescript-eslint";
import globals from "globals";

export default defineConfig([
  globalIgnores([
    "**/*.d.ts",

    "dist/**",
    "lib/binaryen.js",
    "lib/parse/index.js",
    "build/**",
    "raw/**",

    // Exclude AS sources with non-standard decorators
    "src/glue/wasm/**/*.ts",
    "std/assembly/**/*.ts",

    "tests/parser/**",
    "tests/compiler/**",
    "tests/asconfig/**",
    "lib/loader/tests/**",

    // FIXME: Tagged template literal tests with invalid escapes
    "tests/compiler/templateliteral.ts",
  ]),

  js.configs.recommended,
  ...tseslint.configs.recommended,

  {
    files: ["**/*.{js,ts}"],

    languageOptions: {
      parser: tseslint.parser,
      ecmaVersion: 2024,
      sourceType: "module",
      globals: {
        ...globals.es2024,
        globalThis: "readonly",
        BigInt64Array: "readonly",
        BigUint64Array: "readonly",
        WebAssembly: "readonly",
        FinalizationRegistry: "readonly",
        fetch: "readonly",
        URL: "readonly",
        console: "readonly",
      },
    },

    plugins: {
      "@typescript-eslint": tseslint.plugin,
    },

    rules: {
      semi: "error",

      indent: ["error", 2, {
        SwitchCase: 1,
        VariableDeclarator: "first",
        offsetTernaryExpressions: true,
        ignoredNodes: [
          "ConditionalExpression > *",
          "ConditionalExpression > * > *",
          "ConditionalExpression > * > * > *",
        ],
      }],

      "spaced-comment": ["error", "always", {
        markers: ["/"],
        exceptions: ["/"],
      }],

      "prefer-const": "off",
      "no-var": "off",
      "no-fallthrough": "off",

      "no-constant-condition": ["error", { checkLoops: false }],
      "no-inner-declarations": "off",

      "no-loss-of-precision": "off",
      "no-unused-vars": "off",
      "no-useless-assignment": "off",

      "@typescript-eslint/no-this-alias": "off",
      "@typescript-eslint/no-unused-vars": "off",
    },
  },

  // === JavaScript ===
  {
    files: ["**/*.js", "bin/*"],

    languageOptions: {
      globals: {
        ...globals.browser,
        ...globals.amd,
        ...globals.node,
        ...globals.es6,
      },
    },

    rules: {
      "@typescript-eslint/no-var-requires": "off",
      "@typescript-eslint/explicit-module-boundary-types": "off",

      "no-unused-vars": ["warn", {
        vars: "local",
        args: "none",
        ignoreRestSiblings: false,
      }],

      "@typescript-eslint/no-loss-of-precision": "error",
    },
  },

  // === TypeScript ===
  {
    files: ["**/*.ts"],

    rules: {
      "@typescript-eslint/no-unused-vars": ["warn", {
        vars: "local",
        varsIgnorePattern: "^[A-Z](?:From|To)?$",
        args: "none",
        ignoreRestSiblings: false,
      }],
    },
  },

  // === AssemblyScript ===
  {
    files: [
      "**/assembly/**/*.ts",
      "src/**/*.ts",
      "lib/parse/src/**/*.ts",
    ],

    rules: {
      "@typescript-eslint/no-namespace": "off",
      "@typescript-eslint/no-array-constructor": "off",
      "@typescript-eslint/ban-ts-comment": "off",
      "@typescript-eslint/no-non-null-assertion": "off",
    },
  },

  // === Compiler ===
  {
    files: [
      "src/**/*.ts",
      "std/assembly/**/*.ts",
    ],

    rules: {
      "no-cond-assign": "off",
      "@typescript-eslint/no-inferrable-types": "off",
      "@typescript-eslint/triple-slash-reference": "off",
      "no-shadow-restricted-names": "off",
      "@typescript-eslint/ban-types": "off",
    },
  },

  // === Standard Library ===
  {
    files: ["std/assembly/**/*.ts"],

    rules: {
      "no-shadow-restricted-names": "off",
      "@typescript-eslint/ban-types": "off",
    },
  },

  // === Definition files ===
  {
    files: ["std/**/*.d.ts"],

    rules: {
      "@typescript-eslint/no-explicit-any": "off",
      "@typescript-eslint/no-empty-interface": "off",
      "@typescript-eslint/ban-types": "off",
    },
  },

  // === Dist definitions ===
  {
    files: ["./dist/*.d.ts"],

    rules: {
      "@typescript-eslint/no-namespace": "off",
      "@typescript-eslint/triple-slash-reference": "off",
    },
  },

  // === Tests ===
  {
    files: [
      "./tests/compiler/**/*.ts",
      "./lib/loader/tests/assembly/**/*.ts",
    ],

    rules: {
      "no-empty": "off",
      "no-cond-assign": "off",
      "no-compare-neg-zero": "off",
      "no-inner-declarations": "off",
      "no-constant-condition": "off",
      "use-isnan": "off",

      "@typescript-eslint/no-namespace": "off",
      "@typescript-eslint/no-unused-vars": "off",
      "@typescript-eslint/no-empty-function": "off",
      "@typescript-eslint/no-non-null-assertion": "off",
      "@typescript-eslint/no-extra-semi": "off",
      "@typescript-eslint/no-inferrable-types": "off",
      "@typescript-eslint/ban-types": "off",
      "@typescript-eslint/triple-slash-reference": "off",
      "@typescript-eslint/ban-ts-comment": "off",
      "@typescript-eslint/no-extra-non-null-assertion": "off",
      "@typescript-eslint/no-empty-interface": "off",
    },
  },

  {
    files: ["tests/transform/cjs/**/*.js"],
    rules: {
      "@typescript-eslint/no-require-imports": "off",
    },
  },
]);
