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
18446744073709551615;
9223372036854775807;
9223372036854775808;
18446744073709551615;
-9223372036854775807;
-9223372036854775808;
-9223372036854775807;
-9223372036854775808;
-1;
-1;
-123;
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
-9223372036854775809;
0;
-9223372036854775809;
17293822569102708735;
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
// ERROR 1109: "Expression expected." in literals.ts(97,4+1)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(98,2+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(99,2+0)
// ERROR 1109: "Expression expected." in literals.ts(100,3+1)
// ERROR 6188: "Numeric separators are not allowed here." in literals.ts(102,2+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(103,3+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(104,4+0)
// ERROR 1125: "Hexadecimal digit expected." in literals.ts(105,4+1)
// ERROR 1125: "Hexadecimal digit expected." in literals.ts(105,12+1)
// ERROR 1125: "Hexadecimal digit expected." in literals.ts(105,16+1)
// ERROR 236: "Literal '18446744073709551616' does not fit into 'i64' or 'u64' types." in literals.ts(108,1+20)
// ERROR 236: "Literal '9223372036854775809' does not fit into 'i64' or 'u64' types." in literals.ts(109,2+19)
// ERROR 236: "Literal '0x10000000000000000' does not fit into 'i64' or 'u64' types." in literals.ts(110,1+19)
// ERROR 236: "Literal '0x8000000000000001' does not fit into 'i64' or 'u64' types." in literals.ts(111,2+18)
// ERROR 236: "Literal '0xFFF000000000000FFF' does not fit into 'i64' or 'u64' types." in literals.ts(112,1+20)
// ERROR 236: "Literal '0o2000000000000000000000' does not fit into 'i64' or 'u64' types." in literals.ts(113,1+24)
// ERROR 236: "Literal '0b10000000000000000000000000000000000000000000000000000000000000000' does not fit into 'i64' or 'u64' types." in literals.ts(114,1+67)
