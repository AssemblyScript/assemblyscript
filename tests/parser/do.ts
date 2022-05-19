do {
  ;
} while (a != b);
do b;
while (a);
// ERROR 1005: "'(' expected."
do{} while;
