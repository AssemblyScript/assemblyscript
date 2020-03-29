function foo(a: i32): void /* {a,b,d,f,g,j,l,m,p,r,t,v} */ {/* {c} */
  var b = 0;
  let c = 0;
  {/* {e} */
    var d = 0;
    let e = 0;
  }
  for (var f = 0; f < 10; ++f) {/* {h} */
    var g = 0;
    let h = 0;
  }
  for (let i = 0; i < 10; ++i) /* {i} */ {/* {k} */
    var j = 0;
    let k = 0;
  }
  for (var l of something) {/* {n} */
    var m = 0;
    let n = 0;
  }
  for (let o of something) /* {o} */ {/* {q} */
    var p = 0;
    let q = 0;
  }
  switch (something) /* {s} */ {
    case 0:
      var r = 0;
    case 1:
      let s = 0;
    case 2:
      {/* {u} */
        var t = 0;
        let u = 0;
      }
  }
  function v(): void /* {w} */ {/* {x} */
    var w = 0;
    let x = 0;
  };
}
