const voidFn = (): void => {};

// TS1345: An expression of type 'void' cannot be tested for truthiness.
voidFn() ? 1 : 0;

// TS1345: An expression of type 'void' cannot be tested for truthiness.
if (voidFn()) {}

// TS1345: An expression of type 'void' cannot be tested for truthiness.
!voidFn();

store<void>(8, voidFn());
load<void>(8);
load<externref>(8);
load<anyref>(8);

ERROR("EOF");
