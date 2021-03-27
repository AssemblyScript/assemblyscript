import { encode, decode, URI_UNSAFE, URL_UNSAFE } from "./util/uri";

export function encodeURI(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  return changetype<string>(encode(result, changetype<usize>(str), len, URI_UNSAFE));
}

export function decodeURI(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  return changetype<string>(decode(result, changetype<usize>(str), len, false));
}

export function encodeURIComponent(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  return changetype<string>(encode(result, changetype<usize>(str), len, URL_UNSAFE));
}

export function decodeURIComponent(str: string): string {
  var len = str.length;
  if (!len) return str;
  var result = __new(len << 1, idof<String>());
  return changetype<string>(decode(result, changetype<usize>(str), len, true));
}
