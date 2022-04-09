/**
 * @fileoverview Text utility.
 * @license Apache-2.0
 */

import * as Diff from "diff";
import { stdoutColors } from "./terminal.js";

export function utf8Length(string) {
  var len = 0;
  for (var i = 0, k = string.length; i < k; ++i) {
    let c = string.charCodeAt(i);
    if (c < 128) {
      len += 1;
    } else if (c < 2048) {
      len += 2;
    } else if ((c & 0xFC00) === 0xD800 && i + 1 < k && (string.charCodeAt(i + 1) & 0xFC00) === 0xDC00) {
      ++i;
      len += 4;
    } else {
      len += 3;
    }
  }
  return len;
}

export function utf8Read(buffer, start, end) {
  var len = end - start;
  if (len < 1) return "";
  var parts = null,
      chunk = [],
      i = 0, // char offset
      t;     // temporary
  while (start < end) {
    t = buffer[start++];
    if (t < 128) {
      chunk[i++] = t;
    } else if (t > 191 && t < 224) {
      chunk[i++] = (t & 31) << 6 | buffer[start++] & 63;
    } else if (t > 239 && t < 365) {
      t = ((t & 7) << 18 | (buffer[start++] & 63) << 12 | (buffer[start++] & 63) << 6 | buffer[start++] & 63) - 0x10000;
      chunk[i++] = 0xD800 + (t >> 10);
      chunk[i++] = 0xDC00 + (t & 1023);
    } else {
      chunk[i++] = (t & 15) << 12 | (buffer[start++] & 63) << 6 | buffer[start++] & 63;
    }
    if (i >= 8192) {
      (parts || (parts = [])).push(String.fromCharCode(...chunk));
      i = 0;
    }
  }
  if (parts) {
    if (i) parts.push(String.fromCharCode(...chunk.slice(0, i)));
    return parts.join("");
  }
  return String.fromCharCode(...chunk.slice(0, i));
}

export function utf8Write(string, buffer, offset) {
  var start = offset;
  for (var i = 0, k = string.length; i < k; ++i) {
    let c1 = string.charCodeAt(i), c2;
    if (c1 < 128) {
      buffer[offset++] = c1;
    } else if (c1 < 2048) {
      buffer[offset++] = c1 >> 6 | 192;
      buffer[offset++] = c1 & 63 | 128;
    } else if ((c1 & 0xFC00) === 0xD800 && i + 1 < k && ((c2 = string.charCodeAt(i + 1)) & 0xFC00) === 0xDC00) {
      c1 = 0x10000 + ((c1 & 0x03FF) << 10) + (c2 & 0x03FF);
      ++i;
      buffer[offset++] = c1 >> 18 | 240;
      buffer[offset++] = c1 >> 12 & 63 | 128;
      buffer[offset++] = c1 >> 6 & 63 | 128;
      buffer[offset++] = c1 & 63 | 128;
    } else {
      buffer[offset++] = c1 >> 12 | 224;
      buffer[offset++] = c1 >> 6 & 63 | 128;
      buffer[offset++] = c1 & 63 | 128;
    }
  }
  return offset - start;
}

export const utf8 = {
  length: utf8Length,
  read: utf8Read,
  write: utf8Write
};

export function diff(filename, expected, actual) {
  const diff = Diff.structuredPatch(filename, filename, expected, actual, "expected", "actual", { context: 5 });
  if (!diff.hunks.length) return null;

  const out = [
    '--- ' + diff.oldHeader,
    '+++ ' + diff.newHeader
  ];
  for (const hunk of diff.hunks) {
    out.push(
      '@@ -' + hunk.oldStart + ',' + hunk.oldLines
      + ' +' + hunk.newStart + ',' + hunk.newLines
      + ' @@'
    );
    out.push(...hunk.lines.map(line =>
      line.charAt(0) === "+"
        ? stdoutColors.green(line)
        : line.charAt(0) === "-"
        ? line = stdoutColors.red(line)
        : line
    ));
  }

  return out.join('\n') + '\n';
}
