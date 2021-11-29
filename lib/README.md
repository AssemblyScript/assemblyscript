Library
=======

Additional packages provided by the main package.

| Package | Description
|---------|------------
| [loader](./loader) | Loader for AssemblyScript modules
| [rtrace](./rtrace) | Runtime tracing utility
| binaryen | Binaryen entrypoint

The `binaryen.js` package herein is imported accross the code base and proxies
the npm package by default. It can be replaced to use a custom build. Note that
unlike the npm package, which remains external, custom builds will be bundled.
