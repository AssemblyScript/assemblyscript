
export function newParser(buf: Uint8Array): Parser {
  let buffer = new Buffer(buf);
  return new Parser(buffer);
}
export function parse(p: Parser): Module {
  p.parse();
  return p.module;
}

<<<<<<< loader-memory-accessors
<<<<<<< loader-memory-accessors
=======
>>>>>>> Remove start correctly.  Now need to abstract to remove any section.
export function newParser(buf: Uint8Array): Parser {
  let buffer = new Buffer(buf);
  return new Parser(buffer);
}
export function parse(p: Parser): Module {
  p.parse();
  return p.module;
}
