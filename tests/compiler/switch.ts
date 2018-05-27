function doSwitch(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    case 0:
    default: return 0;
    case 2:
    case 3: return 23;
  }
}
assert(doSwitch(0) == 0);
assert(doSwitch(1) == 1);
assert(doSwitch(2) == 23);
assert(doSwitch(3) == 23);
assert(doSwitch(4) == 0);

function doSwitchDefaultFirst(n: i32): i32 {
  switch (n) {
    default: return 0;
    case 1: return 1;
    case 2:
    case 3: return 23;
  }
}
assert(doSwitch(0) == 0);
assert(doSwitch(1) == 1);
assert(doSwitch(2) == 23);
assert(doSwitch(3) == 23);
assert(doSwitch(4) == 0);

function doSwitchDefaultOmitted(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    case 2:
    case 3: return 23;
  }
  return 0;
}
assert(doSwitchDefaultOmitted(0) == 0);
assert(doSwitchDefaultOmitted(1) == 1);
assert(doSwitchDefaultOmitted(2) == 23);
assert(doSwitchDefaultOmitted(3) == 23);
assert(doSwitchDefaultOmitted(4) == 0);

function doSwitchBreakCase(n: i32): i32 {
  switch (n) {
    case 1: break;
    default: return 2;
  }
  return 1;
}
assert(doSwitchBreakCase(0) == 2);
assert(doSwitchBreakCase(1) == 1);
assert(doSwitchBreakCase(2) == 2);

function doSwitchBreakDefault(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    default: break;
  }
  return 2;
}
assert(doSwitchBreakDefault(0) == 2);
assert(doSwitchBreakDefault(1) == 1);
assert(doSwitchBreakDefault(2) == 2);

function doSwitchFallThroughCase(n: i32): i32 {
  switch (n) {
    default: return 2;
    case 1:
  }
  return 1;
}
assert(doSwitchFallThroughCase(0) == 2);
assert(doSwitchFallThroughCase(1) == 1);
assert(doSwitchFallThroughCase(2) == 2);

function doSwitchFallThroughDefault(n: i32): i32 {
  switch (n) {
    case 1: return 1;
    default:
  }
  return 2;
}
assert(doSwitchFallThroughDefault(0) == 2);
assert(doSwitchFallThroughDefault(1) == 1);
assert(doSwitchFallThroughDefault(2) == 2);

function doSwitchEmpty(n: i32): i32 {
  switch (n) {} // (drop n)
  return 2;
}
assert(doSwitchEmpty(0) == 2);
assert(doSwitchEmpty(1) == 2);
assert(doSwitchEmpty(2) == 2);
