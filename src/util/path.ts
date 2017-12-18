import { CharCode } from "./charcode";

/** Normalizes the specified path, removing interior placeholders. Expects a posix-formatted string / not Windows compatible. */
export function normalize(path: string, trimExtension: bool = false, separator: CharCode = CharCode.SLASH): string {
  // expects a relative path

  let pos: i32 = 0;
  let len: i32 = path.length;

  // trim leading './'
  while (pos + 1 < len && path.charCodeAt(pos) == CharCode.DOT && path.charCodeAt(pos + 1) == separator)
    pos += 2;

  // trim extension if requested
  if (trimExtension && len > pos + 3 && path.charCodeAt(len - 3) == CharCode.DOT && (path.charCodeAt(len - 2) == CharCode.t || path.charCodeAt(len - 2) == CharCode.a) && path.charCodeAt(len - 1) == CharCode.s)
    len = len - 3;

  if (pos > 0 || len < path.length) {
    path = path.substring(pos, len);
    len -= pos;
    pos = 0;
  }

  let atEnd: bool;
  while (pos + 1 < len) {
    atEnd = false;

    // we are only interested in '/.' sequences ...
    if (path.charCodeAt(pos) == separator && path.charCodeAt(pos + 1) == CharCode.DOT) {

      // '/.' ( '/' | $ )
      if (
        (atEnd = pos + 2 == len)
        ||
        pos + 2 < len && path.charCodeAt(pos + 2) == separator
      ) {
        path = atEnd
          ? path.substring(0, pos)
          : path.substring(0, pos) + path.substring(pos + 2);
        len -= 2;
        continue;
      }

      // '/.' ( './' | '.' $ )
      if (
        (atEnd = pos + 3 == len) && path.charCodeAt(pos + 2) == CharCode.DOT
        ||
        pos + 3 < len && path.charCodeAt(pos + 2) == CharCode.DOT && path.charCodeAt(pos + 3) == separator
      ) {

        // find preceeding '/'
        let ipos: i32 = pos;
        while (--ipos >= 0) {
          if (path.charCodeAt(ipos) == separator) {
            if (pos - ipos != 3 || path.charCodeAt(ipos + 1) != CharCode.DOT || path.charCodeAt(ipos + 2) != CharCode.DOT) { // exclude '..' itself
              path = atEnd
                ? path.substring(0, ipos)
                : path.substring(0, ipos) + path.substring(pos + 3);
              len -= pos + 3 - ipos;
              pos = ipos - 1; // incremented again at end of loop
            }
            break;
          }
        }

        // if there's no preceeding '/', trim start if non-empty
        if (ipos < 0 && pos > 0) {
          if (pos != 2 || path.charCodeAt(0) != CharCode.DOT || path.charCodeAt(1) != CharCode.DOT) { // exclude '..' itself
            path = path.substring(pos + 4);
            len = path.length;
            continue;
          }
        }
      }
    }
    pos++;
  }
  return len > 0 ? path : ".";
}

/** Resolves the specified path to a normalized path relative to the specified origin. */
export function resolve(normalizedPath: string, normalizedOrigin: string, separator: CharCode = CharCode.SLASH): string {
  return normalize(dirname(normalizedOrigin, separator) + String.fromCharCode(separator) + normalizedPath);
}

/** Obtains the directory portion of a normalized path. */
export function dirname(normalizedPath: string, separator: CharCode = CharCode.SLASH): string {
  let pos: i32 = normalizedPath.length;
  while (--pos > 0)
    if (normalizedPath.charCodeAt(pos) == separator)
      return normalizedPath.substring(0, pos);
  return ".";
}
