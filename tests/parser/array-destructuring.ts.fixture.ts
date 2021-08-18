const arr = [1, 2];
const a = arr[0], b = arr[1];
function func(): Array<number> {
  return arr;
}
const x = func()[0], y = func()[1];
