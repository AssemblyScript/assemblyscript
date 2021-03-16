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
"123";
"1\"23";
"1\"2\\3";
"\0\n\\n\r";
4;
b;
7;
1;
a;
2;
b;
"123";
3;
4;
5;
c;
6.7;
d;
a;
b;
// ERROR 1109: "Expression expected." in literals.ts(65,4+1)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(66,2+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(67,2+0)
// ERROR 1109: "Expression expected." in literals.ts(68,3+1)
// ERROR 6188: "Numeric separators are not allowed here." in literals.ts(70,2+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(71,3+0)
// ERROR 1351: "An identifier or keyword cannot immediately follow a numeric literal." in literals.ts(72,4+0)
// WARNING 100: "Not implemented: Template Literals can only be used for multi-line strings. Interpolation is not supported." in literals.ts(73,1+102)
