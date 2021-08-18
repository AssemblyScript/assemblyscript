// Destructuring directly from an array
const arr = [1, 2];
const [a, b] = arr;

// Destructuring directly from a callable
function func(): number[] { return arr; }
const [x, y] = func();

// Throw an error for having duplicate names _func
// const [_func] = func();

