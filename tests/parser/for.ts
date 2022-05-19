for (var i: i32 = 0; i < 10; ++i) {
  ;
}
for (i = 0; i < 10; ++i) {
  ;
}
for (;;) {
  ;
}
// ERROR 1155: "'const' declarations must be initialized."
for (const i; i < 10; i++) {

}
