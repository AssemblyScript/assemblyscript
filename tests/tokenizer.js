const fs = require("fs");
const path = require("path");

require("ts-node").register({ project: path.join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

const { Tokenizer, Token } = require("../src/tokenizer");
const { Source, SourceKind } = require("../src/ast");

const text = fs.readFileSync(__dirname + "/../src/tokenizer.ts").toString();
const tn = new Tokenizer(new Source("compiler.ts", text, SourceKind.ENTRY));

do {
  let token = tn.next();
  if (token == Token.IDENTIFIER) {
    console.log(Token[token] + " > " + tn.readIdentifier());
  } else if (token == Token.INTEGERLITERAL) {
    console.log(Token[token] + " > " + tn.readInteger());
  } else if (token == Token.FLOATLITERAL) {
    console.log(Token[token] + " > " + tn.readFloat());
  } else if (token == Token.STRINGLITERAL) {
    console.log(Token[token] + " > " + tn.readString());
  } else if (token == Token.ENDOFFILE) {
    console.log(Token[token]);
    break;
  } else {
    let range = tn.range();
    console.log(Token[token] + " > " + range.source.text.substring(range.start, range.end));
  }
} while (true);
