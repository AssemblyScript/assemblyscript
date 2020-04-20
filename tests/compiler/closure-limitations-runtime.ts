export function exportedClosureReturns(): (value: i32) => i32 {
  var $local0 = 0;
  return function inner(value: i32) {
    return $local0;
  };
}
exportedClosureReturns();
