var s64 = new Array(123);
for (var i = 0; i < 64;) s64[i < 26 ? i + 65 : i < 52 ? i + 71 : i < 62 ? i - 4 : i - 59 | 43] = i++;

module.exports = function decode(string) {
  var length = string.length;
  if (length) {
    var n = 0, p = length;
    while (--p % 4 > 1 && string.charCodeAt(p) === 61) ++n;
    length = Math.ceil(length * 3) / 4 - n;
  }
  var buffer = new Uint8Array(length);
  var j = 0, o = 0, t;
  for (var i = 0, k = string.length; i < k;) {
    var c = string.charCodeAt(i++);
    if (c === 61 && j > 1) break;
    if ((c = s64[c]) === undefined) throw Error();
    switch (j) {
      case 0: t = c; j = 1; break;
      case 1: buffer[o++] = t << 2 | (c & 48) >> 4; t = c; j = 2; break;
      case 2: buffer[o++] = (t & 15) << 4 | (c & 60) >> 2; t = c; j = 3; break;
      case 3: buffer[o++] = (t & 3) << 6 | c; j = 0; break;
    }
  }
  if (j === 1) throw Error();
  return buffer;
};
