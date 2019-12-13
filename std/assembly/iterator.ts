export interface Iterable<T> {
  readonly iterator: Iterator<T>;
}

export interface IteratorResult<T> {
  readonly value: T;
  readonly done: bool;
}

export interface Iterator<T> {
  next(): IteratorResult<T>;
}

export interface IterableIterator<T> extends Iterator<T> {
  readonly iterator: IterableIterator<T>;
}
