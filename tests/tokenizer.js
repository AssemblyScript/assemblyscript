import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import { Tokenizer, Token, Source, SourceKind } from "../dist/assemblyscript.js";

const dirname = path.dirname(fileURLToPath(import.meta.url));

const file = process.argv.length > 2 ? process.argv[2] : path.join(dirname, "..", "src", "tokenizer.ts");
const text = fs.readFileSync(file).toString();
const source = new Source(SourceKind.ENTRY, "tokenizer.ts", text);
const tn = new Tokenizer(source);

do {
  const token = tn.next();
  const range = tn.range();
  process.stdout.write(Token[token] + " @ " + source.lineAt(range.start) + ":" + source.columnAt());
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
