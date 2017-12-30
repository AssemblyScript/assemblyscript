0 ? unreachable() : 1;
1 ? 1 : unreachable();
(0 ? unreachable() : 1) ? 1 : unreachable();

var a: i32;

a = 0 ? unreachable() : 1;
a = 1 ? 1 : unreachable();
a = (0 ? unreachable() : 1) ? 1 : unreachable();
