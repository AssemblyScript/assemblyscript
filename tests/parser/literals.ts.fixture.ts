0;
1;
2;
3;
4;
5;
6;
7;
8;
9;
2147483647;
0;
1;
2;
3;
4;
5;
6;
7;
8;
9;
10;
11;
12;
13;
14;
15;
2147483647;
10;
11;
12;
13;
14;
15;
2147483647;
0;
1;
2;
3;
4;
5;
6;
7;
2147483647;
0;
1;
2147483647;
-1;
0;
0.123;
0;
0.123;
12.34;
10;
10;
10;
10;
0.1;
0.1;
"";
"\"";
"123";
"1\"23";
"1\"2\\3";
"\0\n\\n\r";
``;
`123`;
`123${a}`;
`123${a}456`;
`123${a}456${b}`;
`123${a}456${b}789`;
`${a}`;
`${a}456`;
`${a}456${b}`;
`${a}456${b}789`;
`${a}${b}`;
`${a}456${b}`;
`123${a}${b}`;
`${a}${b}789`;
`\``;
`\`${a}\`${b}\``;
tag`123`;
ns.tag`123`;
tag`\\unicode\\xGG\\u\\x`;
4;
b;
7;
1;
a;
2;
b;
`icodeGx`;
0;
-1152921504606842881;
0;
0;
3;
4;
5;
c;
6.7;
d;
a;
b;
// ERROR 1109: "Expression expected." in literals.ts(87,4+1)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(88,2+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(89,2+0)
// ERROR 1109: "Expression expected." in literals.ts(90,3+1)
// ERROR 6188: "Numeric separators are not allowed here." in literals.ts(92,2+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(93,3+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(94,4+0)
// ERROR 1125: "Hexadecimal digit expected." in literals.ts(95,4+1)
// ERROR 1125: "Hexadecimal digit expected." in literals.ts(95,12+1)
// ERROR 1125: "Hexadecimal digit expected." in literals.ts(95,16+1)
// ERROR 236: "Literal '0x10000000000000000' does not fit into 'i64' or 'u64' types." in literals.ts(98,3+17)
// ERROR 236: "Literal '0xFFF000000000000FFF' does not fit into 'i64' or 'u64' types." in literals.ts(99,3+18)
// ERROR 236: "Literal '0o2000000000000000000000' does not fit into 'i64' or 'u64' types." in literals.ts(100,3+22)
// ERROR 236: "Literal '0b10000000000000000000000000000000000000000000000000000000000000000' does not fit into 'i64' or 'u64' types." in literals.ts(101,3+65)
