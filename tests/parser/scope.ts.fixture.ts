function foo(a: i32): void /* {a,b,d,f,g,j,l,m,p,r,t,v} */ {/* {a,b,d,f,g,j,l,m,p,r,t,v,c} */
  var b = 0;
  let c = 0;
  {/* {a,b,d,c,e} */
    var d = 0;
    let e = 0;
  }
  for (var f = 0; f < 10; ++f) /* {a,b,d,f,g,c} */ {/* {a,b,d,f,g,c,h} */
    var g = 0;
    let h = 0;
  }
  for (let i = 0; i < 10; ++i) /* {a,b,d,f,g,j,c,i} */ {/* {a,b,d,f,g,j,c,i,k} */
    var j = 0;
    let k = 0;
  }
  for (var l of something) /* {a,b,d,f,g,j,l,m,c} */ {/* {a,b,d,f,g,j,l,m,c,n} */
    var m = 0;
    let n = 0;
  }
  for (let o of something) /* {a,b,d,f,g,j,l,m,p,c,o} */ {/* {a,b,d,f,g,j,l,m,p,c,o,q} */
    var p = 0;
    let q = 0;
  }
  switch (something) /* {a,b,d,f,g,j,l,m,p,r,t,c,s} */ {
    case 0:
      var r = 0;
    case 1:
      let s = 0;
    case 2:
      {/* {a,b,d,f,g,j,l,m,p,r,t,c,s,u} */
        var t = 0;
        let u = 0;
      }
  }
  function v(): void /* {w} */ {/* {w,x} */
    var w = 0;
    let x = 0;
  };
  var a = 1;
  let a = 1;
  {/* {a,b,d,f,g,j,l,m,p,r,t,v,c} */
    var a = 1;
  }
  var b = 1;
  let b = 1;
  {/* {a,b,d,f,g,j,l,m,p,r,t,v,c} */
    var b = 1;
  }
  var c = 1;
  let c = 1;
  {/* {a,b,d,f,g,j,l,m,p,r,t,v,c} */
    var c = 1;
  }
  var v = 1;
  let v = 1;
  {/* {a,b,d,f,g,j,l,m,p,r,t,v,c} */
    var v = 1;
  }
}
// ERROR 2300: "Duplicate identifier 'a'." in scope.ts:38:7
// ERROR 2300: "Duplicate identifier 'a'." in scope.ts:39:7
// ERROR 2300: "Duplicate identifier 'a'." in scope.ts:41:9
// ERROR 2300: "Duplicate identifier 'b'." in scope.ts:43:7
// ERROR 2300: "Duplicate identifier 'b'." in scope.ts:44:7
// ERROR 2300: "Duplicate identifier 'b'." in scope.ts:46:9
// ERROR 2300: "Duplicate identifier 'c'." in scope.ts:48:7
// ERROR 2300: "Duplicate identifier 'c'." in scope.ts:49:7
// ERROR 2300: "Duplicate identifier 'c'." in scope.ts:51:9
// ERROR 2300: "Duplicate identifier 'v'." in scope.ts:53:7
// ERROR 2300: "Duplicate identifier 'v'." in scope.ts:54:7
// ERROR 2300: "Duplicate identifier 'v'." in scope.ts:56:9
