// @ts-nocheck

assert(+0x0.0 == 0.0);
assert(+0x0.0p0 == 0.0);
assert(+0x0p1 == 0.0);

assert(+0x1P-1 == 0.5);
assert(0x1p1 == 2.0);
assert(0X1P+8 == 256.0);
assert(0x1p-6 == 0.015625);
assert(0x1.b7p-1 == 0.857421875);

assert(0X1.921FB4D12D84AP+1 == 3.1415926);
assert(0x1.999999999999ap-4 == 0.1);
assert(0x1.921fb54442d18P+2 == 6.283185307179586);
assert(0x0.0000000000001p-1022 == 5e-324);
assert(0x1p-1022 == 2.2250738585072014e-308);
assert(0x0.fffffffffffffp-1022 == 2.225073858507201e-308);
assert(0x1.fffffffffffffp+1023 == 1.7976931348623157e308);
assert(0x1.p100 == 1.2676506002282294e30);

assert(0x1.999999999999ap-4 == 0x3.3333333333334p-5);
assert(0xcc.ccccccccccdp-11 == 0x1.999999999999ap-4);

assert(-0x0p0 == -0.0 && Math.signbit(-0x0p0));
assert(-0x0.0p2 == -0.0 && Math.signbit(-0x0.0p2));
assert(-0x0.1p4 == -1.0);
assert(-0x1.1 == -1.0625);
assert(-0x0.1 == -0.0625);
assert(-0x1p-1 == -0.5);
assert(-0x1p1 == -2.0);
assert(-0x1p+8 == -256);
assert(-0x1p-6 == -0.015625);
assert(-0x1.b7p-1 == -0.857421875);
assert(-0X1.921FB4D12D84AP+1 == -3.1415926);
assert(-0x1.999999999999ap-4 == -0.1);
assert(-0x1.921fb54442d18p+2 == -6.283185307179586);
assert(-0x0.0000000000001p-1022 == -5e-324);
assert(-0x1p-1022 == -2.2250738585072014e-308);
assert(-0x0.fffffffffffffp-1022 == -2.225073858507201e-308);
assert(-0x1.fffffffffffffp+1023 == -1.7976931348623157e308);
assert(-0x1.p100 == -1.2676506002282294e30);
assert(0x1p-1074 == 5e-324);

// test separators
assert(-0x1_0.9999999_9999_9ap-4_0 == -1.509761204943061e-11);
