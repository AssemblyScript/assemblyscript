import "../src/glue/js";
import { Tokenizer, Token } from "../src/tokenizer";
import { Source } from "../src/reflection";
import * as fs from "fs";

const text = fs.readFileSync(__dirname + "/../src/tokenizer.ts").toString();

const tn = new Tokenizer(new Source("tokenizer.ts", text));

let token;
do {
  token = tn.next();
  let range = tn.range();
  console.log(Token[token] + " -> " + range.source.text.substring(range.start, range.end));
  if (token == Token.IDENTIFIER)
    console.log("> " + tn.readIdentifier());
  else if (token == Token.INTEGERLITERAL)
    console.log("> " + tn.readInteger());
  else if (token == Token.FLOATLITERAL)
    console.log("> " + tn.readFloat());
  else if (token == Token.STRINGLITERAL)
    console.log("> " + tn.readString());
} while (token != Token.ENDOFFILE);
