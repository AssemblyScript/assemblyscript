export function createRequire() {
  return function require(path) {
    throw new Error(`Cannot find module: '${path}'`);
  };
}
