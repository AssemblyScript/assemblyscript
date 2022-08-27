// TS1345: An expression of type 'void' cannot be tested for truthiness.
((): void => {})() ? 1 : 0;

// TS1345: An expression of type 'void' cannot be tested for truthiness.
if (((): void => {})()) {}

// TS1345: An expression of type 'void' cannot be tested for truthiness.
!((): void => {})();

store<void>(8, ((): void => {})());
load<void>(8);

ERROR("EOF");
