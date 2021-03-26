import { encode, URI_UNSAFE, URL_UNSAFE } from "./util/uri";

export function encodeURI(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  result = encode(result, changetype<usize>(str), len, URI_UNSAFE);
  return changetype<string>(result);
}

export function encodeURIComponent(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  result = encode(result, changetype<usize>(str), len, URL_UNSAFE);
  return changetype<string>(result);
}
