function foo(a: i32): void {
  var b = 0;
  let c = 0;
  {
    var d = 0;
    let e = 0;
  }
  for (var f = 0; f < 10; ++f) {
    var g = 0;
    let h = 0;
  }
  for (let i = 0; i < 10; ++i) {
    var j = 0;
    let k = 0;
  }
  for (var l of something) {
    var m = 0;
    let n = 0;
  }
  for (let o of something) {
    var p = 0;
    let q = 0;
  }
  switch (something) {
    case 0: var r = 0;
    case 1: let s = 0;
    case 2: {
      var t = 0;
      let u = 0;
    }
  }
  function v(): void {
    var w = 0;
    let x = 0;
  }
}
