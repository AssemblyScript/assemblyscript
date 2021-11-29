Library
=======

Additional packages provided by the main package.

| Package                            | Description
|------------------------------------|-------------------------
| [@assemblyscript/loader](./loader) | Module loader utility
| [@assemblyscript/rtrace](./rtrace) | Runtime tracing utility
| binaryen | Binaryen proxy

The Binaryen proxy herein is imported accross the code base and forwards the
`binaryen` npm package by default. It can be modified to use a custom build,
for example for testing purposes.
