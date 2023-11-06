true < false > (true);
a < 12345 > () => {};
a < 12345 > (): void => {};
1 < 2,3,4 > (1,2,3);
{}
{}
// ERROR 1110: "Type expected." in diagnose-generic.ts(6,5+5)
// ERROR 1110: "Type expected." in diagnose-generic.ts(9,9+5)
