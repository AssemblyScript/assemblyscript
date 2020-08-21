import "wasi";

trace("the message");
trace("the message", 1, 1.5);
trace("the message", 5, -2.00001, 3, NaN, Infinity, -Infinity);
