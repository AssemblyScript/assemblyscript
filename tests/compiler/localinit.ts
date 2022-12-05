function initInIf(): void {
  let a: i32;
  if ((a = 1) > 0) {
    a;
  }
  a;
}
initInIf();

function initInIfElse(): void {
  let a: i32;
  if ((a = 1) > 0) {
    a;
  } else {
    a;
  }
  a;
}
initInIfElse();

function initInIfAnd(cond: bool): void {
  let a: i32;
  let b: i32;
  if (cond && (a = 0) && (b = 0)) {
    a;
    b;
  }
}
initInIfAnd(true);

function initInIfOr(cond: bool): void {
  let a: i32;
  let b: i32;
  if (cond || (a = 0) || (b = 0)) {
    return;
  }
  a;
  b;
}
initInIfOr(true);

function initInDo(cond: bool): void {
  let a: i32;
  do a = 1;
  while (cond);
  a;
}
initInDo(false);

function initInWhile(): void {
  let a: i32;
  while (a = 1) {
    a;
    break;
  }
  a;
}
initInWhile();

function initInWhileAnd(cond: bool): void {
  let a: i32;
  while (cond && (a = 0)) {
    a;
  }
}
initInWhileAnd(true);

function initInWhileOr(cond: bool): void {
  let a: i32;
  let b: i32;
  while (cond || (a = 1) || (b = 1)) {
    return;
  }
  a;
  b;
}
initInWhileOr(true);
