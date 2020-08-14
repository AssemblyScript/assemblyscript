import * as dom from "bindings/DOM";

function testString(): void {
  const str = dom.String.new("hello world");
  dom.console.log(str);
  dom.console.log(dom.Number.new(str.length));
  dom.console.log(dom.Number.new(str.repeat(2).length).toString(10));
}
testString();

function testRegExp(): void {
  const pattern = dom.String.new("b");
  const flags = dom.String.new("g");
  const re = new dom.RegExp(pattern, flags);
  const input = dom.String.new("abba");
  assert(re.test(input));
  const match = re.exec(input);
  dom.console.log(match);
}
testRegExp();
