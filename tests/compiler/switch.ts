export function doSwitch(n: i32): i32 {
  switch (n) {
    case 1:
      return 1;
    case 0:
    default:
      return 0;
    case 2:
    case 3:
      return 23;
  }
}

export function doSwitchDefaultFirst(n: i32): i32 {
  switch (n) {
    default:
      return 0;
    case 1:
      return 1;
    case 2:
    case 3:
      return 23;
  }
}

export function doSwitchDefaultOmitted(n: i32): i32 {
  switch (n) {
    case 1:
      return 1;
    case 2:
    case 3:
      return 23;
  }
  return 0;
}
