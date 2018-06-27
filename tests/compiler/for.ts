var i: i32;
for (i = 0; i < 10; ++i) {
  ;
}
assert(i == 10);

for (var j: i32 = 0; j < 10; ++j) {
  ;
}

for (; i > 0; --i);
assert(i == 0);

for (;; ++i) if (i == 10) break;

for (;;) if (--i == 0) break;

for (var k: i32 = 0; k < 10; ++k) continue;
assert(k == 10);

for (let i = 0; i < 10; i++) { // without continue block
  for (let j = 0; j < 10; j++) { // with continue block
    if (i === j) continue;
  }
}
