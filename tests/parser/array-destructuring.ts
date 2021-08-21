function test1(): void {
  const [, a, b] = c;
  const {d, e} = f;
  const [] = g;
  const [,] = h;

  const [,,  ,
    ,] = k;

  let [
  ] = n;

  var [,_,] = j;
  var [,,  ,a,, f ,
    , g,  g,        ] = s;
  var [n, a, a, a,v,
    ,h,h,h,h,h,,r
    ,,r,,h
    ,y, ] = b;
  let {aaa , a} = g;
  var {f,,,,,,,,,,,,} = e
  const {fff} = q;
}