
export type Collection<T> = T | T[] | Map<string, T | T[] | Iterable<T>> | Iterable<T>;

const isIterable = (object: object): boolean =>
  //@ts-ignore
  object != null && typeof object[Symbol.iterator] === "function";

  /**
   * Top level visitor that will expect an implemented _visit function to visit
   * a single node and then provides a generic function for collections of nodes
   * and will visit each member of the collection.
   */
export abstract class AbstractVisitor<T> {
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
