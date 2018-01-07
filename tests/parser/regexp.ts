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
