class ArrayIterator<T> implements Iterator<T> {
  private _index: i32 = -1;
  constructor(private _array: Array<T>) {}

  get done(): bool {
    return this._index >= this._array.length;
  }

  get value(): T {
    return this._array[this._index];
  }

  next(): IteratorResult<T> {
    this._index++;
    return this;
  }

}

class IterableArray<T> extends Array<T> implements Iterable<T> {
  get iterator(): Iterator<T> {
    return new ArrayIterator(this);
  }

}

const arri32: Array<i32> = [11,3,5];
const iterableArr: IterableArray<i32> = new IterableArray<i32>();
iterableArr.push(11);
iterableArr.push(3);
iterableArr.push(5);

const iter = iterableArr.iterator;
var iterres = iter.next();

var arri: i32 = 0;
while (!iterres.done) {
  assert(iterres.value == arri32[arri++]);
  iterres = iter.next();
}

const arr2: Array<i32> = Array.from<i32>(iterableArr);
// assert (arr2 != null);
assert(arr2.length == 3);
assert(arr2[0] == 11);
assert(arr2[1] == 3);

const map = new Map<string, i32>();
map.set("hello", 40);
map.set("world", 1);

const entries = map.entries();
const resEntry = entries.next();
assert(resEntry.value.key == "hello");

const entriesArr = Array.from<MapEntry<string, i32>>(map);
assert(entriesArr.length == map.size);
assert(entriesArr[0].key == "hello");

const keyIter = map.keys();
const key = keyIter.next();
assert(key.value == "hello");

const valIter = map.values();
const val = valIter.next();
assert(val.value == 40);

const strSet = new Set<string>();
strSet.add("hello");
strSet.add("world");
assert(strSet.has("hello"));

const mapArray = Array.from<string>(strSet.values());
assert(mapArray[0] == "hello");
assert(mapArray[1] == "world");

const setArray = Array.from<string>(strSet);
assert(setArray[0] == "hello");
assert(setArray[1] == "world");
