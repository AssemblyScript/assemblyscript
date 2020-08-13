// can use externref as a parameter or return type

export declare function external(a: externref): externref;

export function internal(a: externref): externref {
  const b = external(a);
  let c = external(b);
  var d = external(c);
  return d;
}
