import * as path from "./path.js";

function encodePathChars(filepath) {
  return filepath
    .replace(/%/g, "%25")
    .replace(/\\/g, "%5C")
    .replace(/\n/g, "%0A")
    .replace(/\r/g, "%0D")
    .replace(/\t/g, "%09");
}

export function pathToFileURL(filepath) {
  let resolved = path.resolve(filepath);
  if (
    filepath.charCodeAt(filepath.length - 1) === /* SLASH */ 47 &&
    resolved[resolved.length - 1] !== path.sep
  ) {
    resolved += "/";
  }
  const url = new URL("file://");
  url.pathname = encodePathChars(resolved);
  return url;
}
