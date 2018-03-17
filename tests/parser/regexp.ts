/(abc)\//ig; // with modifiers
/(abc)\//; // without modifiers
var re = /(abc)\//ig; // can be assigned
var noRe = !/(abc)\//i; // generally behaves like an expression
/a
b/ig; // inner line break is unterminated
//ig;
/(abc)\//iig; // duplicate flags
/(abc)\//iX; // invalid flags
false && /abc/gX.test(someString) || true; // surrounding AST remains intact
