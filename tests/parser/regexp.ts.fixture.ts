/(abc)\//ig;
/(abc)\//;
var re = /(abc)\//ig;
var noRe = !/(abc)\//i;
/(abc)\//iig;
/(abc)\//iX;
false && /abc/gX.test(someString) || true;
// ERROR 1161: "Unterminated regular expression literal." in regexp.ts @ 75,76
// ERROR 1005: "'/' expected." in regexp.ts @ 74,76
// ERROR 209: "Invalid regular expression flags." in regexp.ts @ 95,98
// ERROR 209: "Invalid regular expression flags." in regexp.ts @ 111,113
// ERROR 209: "Invalid regular expression flags." in regexp.ts @ 131,133
