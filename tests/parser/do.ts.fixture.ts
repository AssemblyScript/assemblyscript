do {
  ;
} while (a != b);
do b;
while (a);
// ERROR 1005: "'(' expected." in do.ts(7,6+5)
