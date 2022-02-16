export function createRequire() {
  return function require(path) {
    // TODO obliterate CJS
    throw new Error(`Cannot find module: '${path}' (not implemented in browser)`);
  };
}
