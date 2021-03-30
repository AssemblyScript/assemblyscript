import { encode, decode, URI_UNSAFE, URL_UNSAFE } from "./util/uri";

export function encodeURI(str: string): string {
  return changetype<string>(encode(changetype<usize>(str), str.length, URI_UNSAFE));
}

export function decodeURI(str: string): string {
  return changetype<string>(decode(changetype<usize>(str), str.length, false));
}

export function encodeURIComponent(str: string): string {
  return changetype<string>(encode(changetype<usize>(str), str.length, URL_UNSAFE));
}

export function decodeURIComponent(str: string): string {
  return changetype<string>(decode(changetype<usize>(str), str.length, true));
}
