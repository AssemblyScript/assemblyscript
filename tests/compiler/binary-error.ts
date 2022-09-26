class A { }
let b: A | null;
let c: i8 = 1;
b < c; // TS2365: Operator '<' cannot be applied to types 'binary-error/A | null' and 'i8'.
b > c; // TS2365: Operator '>' cannot be applied to types 'binary-error/A | null' and 'i8'.
b <= c; // TS2365: Operator '<=' cannot be applied to types 'binary-error/A | null' and 'i8'.
b >= c; // TS2365: Operator '>=' cannot be applied to types 'binary-error/A | null' and 'i8'.
b == c; // TS2365: Operator '==' cannot be applied to types 'binary-error/A | null' and 'i8'.
b != c; // TS2365: Operator '!=' cannot be applied to types 'binary-error/A | null' and 'i8'.
let d: () => void = (): void => { };
c + d; // TS2365: Operator '+' cannot be applied to types 'i8' and '() => void'.
c - d; // TS2365: Operator '-' cannot be applied to types 'i8' and '() => void'.
c * d; // TS2365: Operator '*' cannot be applied to types 'i8' and '() => void'.
c ** d; // TS2365: Operator '**' cannot be applied to types 'i8' and '() => void'.
c / d; // TS2365: Operator '/' cannot be applied to types 'i8' and '() => void'.
c % d; // TS2365: Operator '%' cannot be applied to types 'i8' and '() => void'.
d >> 1; // TS2469: The '>>' operator cannot be applied to type '() => void'.
d << 1; // TS2469: The '<<' operator cannot be applied to type '() => void'.
d >>> 1; // TS2469: The '>>>' operator cannot be applied to type '() => void'.
d & 1; // TS2469: The '&' operator cannot be applied to type '() => void'.
d | 1; // TS2469: The '|' operator cannot be applied to type '() => void'.
d ^ 1; // TS2469: The '^' operator cannot be applied to type '() => void'.
