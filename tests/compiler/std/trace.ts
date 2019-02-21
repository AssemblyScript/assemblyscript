trace("zero_implicit");
trace("zero_explicit", 0);
trace("one_int", 1, 1);
trace("two_int", 2, 1, 2);
trace("three_int", 3, 1, 2, 3);
trace("four_int", 4, 1, 2, 3, 4);
trace("five_int", 5, 1, 2, 3, 4, 5);
trace("five_dbl", 5, 1.1, 2.2, 3.3, 4.4, 5.5);

@start
export function main(): void {}
