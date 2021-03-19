import { encode, URI_SAFE, URL_SAFE } from "./util/uri";

export function encodeURI(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  encode(result, changetype<usize>(str), len, URI_SAFE);
  return changetype<string>(result);
}

export function encodeURIComponent(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  encode(result, changetype<usize>(str), len, URL_SAFE);
  return changetype<string>(result);
}
