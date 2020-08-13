import * as dom from "bindings/DOM";

function test(): void {
  const str = dom.newString("hello world");
  dom.console.log(str);
  dom.console.log(dom.newNumber(str.length));
  dom.console.log(dom.newNumber(str.repeat(2).length).toString());
}
test();
