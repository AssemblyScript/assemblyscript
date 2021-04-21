const arr = [1, 2];
const a = arr[0], b = arr[1];
function func(): Array<number> {
  return arr;
}
const _func = func(), x = _func[0], y = _func[1];
