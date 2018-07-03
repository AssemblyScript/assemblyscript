Tests
=====

This directory contains the test cases for AssemblyScript's parser and compiler. A test case
consists of:

* A test file that is parsed or compiled (.ts)
* One or multiple automatically generated fixtures generated from the source file

### Creating a test:

* Run `npm run clean` to make sure that the sources are tested instead of the distribution
* Create a new test file (.ts) within the respective directory (see below) that contains your test code
* Follow the instructions below to generate the first fixture(s)
* Make sure the fixture(s) contain exactly what you'd expect

### Updating a test:

* Run `npm run clean` to make sure that the sources are tested instead of the distribution
* Make changes to the respective test file (.ts)
* Follow the instructions below to update the fixture(s)
* Make sure the fixture(s) contain exactly what you'd expect

See also: [Contribution guidelines](../CONTRIBUTING.md)

Parser
------

Directory: [tests/parser](./parser)

The test file is parsed while warnings and errors are recorded and re-serialized to a new source
afterwards. The new source with warnings and errors appended as comments is compared to the fixture.

Running all tests:

```
$> npm run test:parser
```

Running a specific test only:

```
$> npm run test:parser -- testNameWithoutTs
```

To (re-)create all fixtures:

```
$>npm run test:parser -- --create
```

To (re-)create a specific fixture only:

```
$> npm run test:parser -- testNameWithoutTs --create
```

Compiler
--------

General directory: [tests/compiler](./compiler)<br />
Standard library directory: [tests/compiler/std](./compiler/std)

The source file is parsed and compiled to a module, validated and the resulting module converted to
WebAsssembly text format.

The text format output is compared to its fixture and the module interpreted in a WebAssembly VM. To
assert for runtime conditions, the `assert` builtin can be used. Note that tree-shaking is enabled
and it might be necessary to export entry points.

Additional fixtures for the optimized module etc. are generated as well but are used for visual
confirmation only.

Running all tests:

```
$> npm run test:compiler
```

Running a specific test only:

```
$> npm run test:compiler -- testNameWithoutTs
```

To (re-)create all fixtures:

```
$> npm run test:compiler -- --create
```

To (re-)create a specific fixture only:

```
$> npm run test:compiler -- testNameWithoutTs --create
```

Other
-----

Tests in other directories are not run automatically and do not need to be updated.

* [tests/allocators](./allocators) contains the memory allocator test suite
* [tests/binaryen](./binaryen) contains various triggers for earlier Binaryen issues
* [tests/tokenizer](./tokenizer.js) is a visual test for the tokenizer tokenizing itself
* [tests/util-path](./util-path.js) is a sanity test for the path utility
