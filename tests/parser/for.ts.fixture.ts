for (var i: i32 = 0; i < 10; ++i) {
  ;
}
for (i = 0; i < 10; ++i) {
  ;
}
for (;;) {
  ;
}
for (const i; i < 10; i++) {}
// ERROR 1155: "'const' declarations must be initialized." in for.ts(11,12+1)
