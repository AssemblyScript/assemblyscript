/(abc)\//ig;
/(abc)\//;
var re = /(abc)\//ig;
var noRe = !/(abc)\//i;
/(abc)\//iig;
/(abc)\//iX;
false && /abc/gX.test(someString) || true;
// ERROR 1161: "Unterminated regular expression literal." in regexp.ts(5,2+1)
// ERROR 1005: "'/' expected." in regexp.ts(5,1+2)
// ERROR 209: "Invalid regular expression flags." in regexp.ts(8,10+3)
// ERROR 209: "Invalid regular expression flags." in regexp.ts(9,10+2)
// ERROR 209: "Invalid regular expression flags." in regexp.ts(10,15+2)
