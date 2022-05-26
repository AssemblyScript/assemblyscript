a = fn()(1, 2);
b = fn()(1, 2);
a = fn();
// ERROR 1042: "'declare' modifier cannot be used here." in call-function-return.ts(3,1+7)
// ERROR 1005: "')' expected." in call-function-return.ts(5,13+1)
