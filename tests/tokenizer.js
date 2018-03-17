const fs = require("fs");
const path = require("path");

require("ts-node").register({ project: path.join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

const { Tokenizer, Token } = require("../src/tokenizer");
const { Source, SourceKind } = require("../src/ast");

var file = process.argv.length > 2 ? process.argv[2] : path.join(__dirname, "..", "src", "tokenizer.ts");
const text = fs.readFileSync(file).toString();
const tn = new Tokenizer(new Source("compiler.ts", text, SourceKind.ENTRY));

do {
  let token = tn.next();
  let range = tn.range();
  process.stdout.write(Token[token] + " @ " + range.line + ":" + range.column);
  if (token == Token.IDENTIFIER) {
    process.stdout.write(" > " + tn.readIdentifier());
  } else if (token == Token.INTEGERLITERAL) {
    process.stdout.write(" > " + tn.readInteger());
  } else if (token == Token.FLOATLITERAL) {
    process.stdout.write(" > " + tn.readFloat());
  } else if (token == Token.STRINGLITERAL) {
    process.stdout.write(" > " + tn.readString());
  } else if (token == Token.ENDOFFILE) {
    process.stdout.write("\n");
    break;
  } else {
    process.stdout.write(" > " + range.source.text.substring(range.start, range.end));
  }
  process.stdout.write("\n");
} while (true);
