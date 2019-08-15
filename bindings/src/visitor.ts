
export type Collection<T> = T | T[] | Map<string, T | T[] | Iterable<T>> | Iterable<T>;
// export type Collection<T> = NonNullCollection<T>| null;

const isIterable = (object: object): boolean =>
  //@ts-ignore
  object != null && typeof object[Symbol.iterator] === "function";

export interface Writer<T> {
  writeString(x: Collection<T> | string): void;
  writeNode(x: Collection<T>): void;
}

export class DefaultWriter<T> implements Writer<T> {
  writeString(s: string): void { }
  writeNode(node: Collection<T>): void {}

}

export abstract class AbstractVisitor<T> {

  constructor(protected writer: Writer<T> = new DefaultWriter<T>()) {}

  writeString(str: string): string {
    return this.writeString(str);
  }

  writeNode(item: Collection<T> ): void {
    this.writer.writeNode(item);
  }

  visit(node: Collection<T> | null): void {
    if (node == null) return;
    if (node instanceof Array) {
      node.map((node: T): void => { this.visit(node); });
    } else if (node instanceof Map) {
      for (let [key, _node] of node.entries()) {
        this.visit(_node);
      }
      //@ts-ignore Need a better way to test type
    } else if (isIterable(node)) {
        //TODO: Find better way to test if iterable
      for (let _node of node) {
          this.visit(_node);
      }
    } else {
      //@ts-ignore Node is not iterable.
      this._visit(node);
    }
  }
  protected abstract _visit(node: T): void;

}
