// with modifiers
/(abc)\//ig;

// without modifiers
/(abc)\//;

// can be assigned
var re = /(abc)\//ig;

// generally behaves like an expression
var noRe = !/(abc)\//i;

// inner line break is unterminated
/a
b/ig;

// just a comment
//ig;

// duplicate flags

/(abc)\//iig;

// invalid flags

/(abc)\//iX;

// surrounding AST remains intact

false && /abc/gX.test(someString) || true;
