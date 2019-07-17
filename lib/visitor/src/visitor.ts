export interface Visitor<T> {
  visit(t: Collection<T>): void;
}

interface Visit<T> {
    visit(visitor: any): void;
}
export type Collection<T> = T | T[] | Map<string, T> | Iterable<T> | null;

export class AbstractVisitor<T extends Visit<T>> {
  visit(node: Collection<T>): void {
    if (node) {
      if (node instanceof Array) {
        node.map(node => this.visit(node));
      } else if (node instanceof Map) {
        this.visit(node.values());
      } else if ((<any>node).next) { 
          //TODO: Find better way to test if iterable
        for (let n of node) {
            this.visit(n);
          }
      }else {
        (<T>node).visit(this);
      }
    }
  }
}

interface NodeVisitor extends Visit<testNode> {
    visitNode(t: testNode):void
}

class testNode implements Visit<testNode> {
  constructor(private name: string) {}

  visit(visitor: NodeVisitor): void {
    // console.log("in" + this.name);
    debugger;
    visitor.visitNode(this)
  }
}


class Base extends AbstractVisitor<testNode> implements NodeVisitor {
    visitNode(t: testNode): void {
        console.log("in super")
    }
}

class Sub extends Base implements NodeVisitor {
    visitNode(t: testNode): void {
        console.log("in child");
        super.visitNode(t);
    }
}


let test = new Sub();
let node = new testNode("one");
let node2 = new testNode("two");
let node3 = new testNode("three");

let map = new Map([["one", node], ["two", node2], ["three", node3]]);
let values = map.values();
debugger;
test.visit([node, node2, node3]);
test.visit(map);
test.visit(values);
