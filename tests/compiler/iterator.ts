import {Iterator, Iterable} from "iterator";


class ArrayIterator<T> implements Iterator<T> {
  private _index: i32 = -1;
  constructor(private _array: Array<T>){}

  get done(): bool{
    return this._index >= this._array.length;
  }
  
  get value(): T {
    if (!this.done){
      return this._array[this._index];
    }
    unreachable();
    return changetype<T>(this);
  }
  next(): Iterator<T> {
    this._index++;
    return this;
  }


}

class IterableArray<T> extends Array<T> implements Iterable<T> {
  private _index: i32;

  get iterator(): Iterator<T> {
    return new ArrayIterator(this);
  }

}

let arr: Array<i32> = [1,3,5];
let iterableArr = <IterableArray<i32>> arr;

let iter = iterableArr.iterator;
let res = iter.next();
let i: i32 = 0;
while (!res.done){
  assert(res.value == arr[i++]);
  res = iter.next()
}



let arr2: Array<i32> = Array.from<i32>(iterableArr.iterator);
// assert (arr2 != null);
assert(arr.length == 3);
assert(arr2[0]== 1)
assert(arr2[1]== 3)