const DEFAULT_SCRATCH_BUFFER_SIZE: usize = 1 << 16;

type DataTypeIndex = u32;

const DATA_TYPE_ORIGINATOR_ACCOUNT_ID: DataTypeIndex = 1;
const DATA_TYPE_CURRENT_ACCOUNT_ID: DataTypeIndex = 2;
const DATA_TYPE_STORAGE: DataTypeIndex = 3;
const DATA_TYPE_INPUT: DataTypeIndex = 4;
const DATA_TYPE_RESULT: DataTypeIndex = 5;
const DATA_TYPE_STORAGE_ITER: DataTypeIndex = 6;

/**
 * Represents contract storage.
 */
export class Storage {
  private _scratchBuf: Uint8Array = new Uint8Array(DEFAULT_SCRATCH_BUFFER_SIZE);

  /**
   * Internal method to fetch list of keys from the given iterator up the limit.
   */
  private _fetchIter(iterId: u32, limit: i32 = -1): string[] {
    let result: string[] = new Array<string>();
    while (limit-- != 0) {
      let key = this._internalReadString(DATA_TYPE_STORAGE_ITER, 0, iterId);
      if (key != null) {
        result.push(key);
      }
      if (!storage_iter_next(iterId)) {
        break;
      }
    }
    return result;
  }

  /**
   * Returns list of keys between the given start key and the end key. Both inclusive.
   * NOTE: Must be very careful to avoid exploding amount of compute with this method.
   * @param start The start key used as a lower bound in lexicographical order. Inclusive.
   * @param end The end key used as a upper bound in lexicographical order. Inclusive.
   * @param limit The maximum number of keys to return. Default is `-1`, means no limit.
   */
  keyRange(start: string, end: string, limit: i32 = -1): string[] {
    return this._fetchIter(
      storage_range(start.lengthUTF8 - 1, start.toUTF8(), end.lengthUTF8 - 1, end.toUTF8()),
      limit,
    );
  }

  /**
   * Returns list of keys starting with given prefix.
   * NOTE: Must be very careful to avoid exploding amount of compute with this method.
   * @param prefix The key prefix.
   * @param limit The maximum number of keys to return. Default is `-1`, means no limit.
   */
  keys(prefix: string, limit: i32 = -1): string[] {
    return this._fetchIter(
      storage_iter(prefix.lengthUTF8 - 1, prefix.toUTF8()),
      limit,
    );
  }

  /**
   * @deprecated Use setString or set<string>
   */
  setItem(key: string, value: string): void {
    this.setString(key, value);
  }

  /**
   * @deprecated Use getString or get<string>
   */
  getItem(key: string): string {
    return this.getString(key);
  }

  /**
   * Store string value under given key. Both key and value are encoded as UTF-8 strings.
   */
  setString(key: string, value: string): void {
    storage_write(key.lengthUTF8 - 1, key.toUTF8(), value.lengthUTF8 - 1, value.toUTF8());
  }

  /**
   * Get string value stored under given key. Both key and value are encoded as UTF-8 strings.
   */
  getString(key: string): string {
    return this._internalReadString(DATA_TYPE_STORAGE, key.lengthUTF8 - 1, key.toUTF8());
  }

  /**
   * Store byte array under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `domainObject.encode()`.
   */
  setBytes(key: string, value: Uint8Array): void {
    storage_write(key.lengthUTF8 - 1, key.toUTF8(), value.byteLength, <usize>value.buffer);
  }

  /**
   * Get byte array stored under given key. Key is encoded as UTF-8 strings.
   * Byte array stored as is.
   *
   * It's convenient to use this together with `DomainObject.decode()`.
   */
  getBytes(key: string): Uint8Array {
    return this._internalReadBytes(DATA_TYPE_STORAGE, key.lengthUTF8 - 1, key.toUTF8());
  }

  /**
   * Returns true if the given key is present in the storage.
   */
  contains(key: string): bool {
    return storage_has_key(key.lengthUTF8 - 1, key.toUTF8());
  }

  @inline
  hasKey(key: string): bool {
    return this.contains(key);
  }

  delete(key: string): void {
    storage_remove(key.lengthUTF8 - 1, key.toUTF8());
  }

  /**
   * @deprecated Use #delete
   */
  @inline
  remove(key: string): void {
    this.delete(key);
  }

  /**
   * @deprecated Use #delete
   */
  @inline
  removeItem(key: string): void {
    this.delete(key);
  }

  /**
   * Store 64-bit unsigned int under given key. Key is encoded as UTF-8 strings.
   * Number is encoded as decimal string.
   */
  setU64(key: string, value: u64): void {
    this.setItem(key, value.toString());
  }

  /**
   * Get 64-bit unsigned int stored under given key. Key is encoded as UTF-8 strings.
   * Number is encoded as decimal string.
   *
   * @returns int value or 0 if value is not found
   */
  getU64(key: string): u64 {
    return U64.parseInt(this.getItem(key) || "0");
  }

  /**
   * Stores given generic value under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param key A key to use for storage.
   * @param value A value to store.
   */
  set<T>(key: string, value: T): void {
    if (isString<T>()) {
      this.setString(key, value);
    } else if (isInteger<T>()) {
      this.setString(key, value.toString());
    } else {
      this.setBytes(key, value.encode());
    }
  }

  /**
   * Gets given generic value stored under the key. Key is encoded as UTF-8 strings.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param key A key to read from storage.
   * @param defaultValue The default value if the key is not available
   * @returns A value of type T stored under the given key.
   */
  get<T>(key: string, defaultValue: T = null): T {
    if (isString<T>() || isInteger<T>()) {
      return near.parseFromString<T>(this.getString(key), defaultValue);
    } else {
      return near.parseFromBytes<T>(this.getBytes(key), defaultValue);
    }
  }

  /**
   * @hidden
   * Reads given params into the internal scratch buffer and returns length.
   */
  private _internalBufferRead(dataType: DataTypeIndex, keyLen: usize, key: usize): usize {
    for (let i = 0; i < 2; ++i) {
      let len = data_read(
        dataType,
        keyLen,
        key,
        this._scratchBuf.byteLength,
        <usize>this._scratchBuf.buffer,
      );
      if (len <= <usize>(this._scratchBuf.byteLength)) {
        return len;
      }
      this._scratchBuf = new Uint8Array(len);
    }
    assert(false, "Internal scratch buffer was resized more than once");
    return 0;
  }

  /**
   * @hidden
   * Reads a string for the given params.
   */
  _internalReadString(dataType: DataTypeIndex, keyLen: usize, key: usize): string {
    let len = this._internalBufferRead(dataType, keyLen, key);
    if (len == 0) {
      return null;
    }
    return String.fromUTF8(<usize>this._scratchBuf.buffer, len);
  }

  /**
   * @hidden
   * Reads bytes for the given params.
   */
  _internalReadBytes(dataType: DataTypeIndex, keyLen: usize, key: usize): Uint8Array {
    let len = this._internalBufferRead(dataType, keyLen, key);
    if (len == 0) {
      return null;
    }
    let res = new Uint8Array(len);
    memory.copy(<usize>res.buffer, <usize>this._scratchBuf.buffer, len);
    return res;
  }
}

/**
 * An instance of a Storage class that is used for working with contract storage on the blockchain.
 */
export let storage: Storage = new Storage();

/**
 * A namespace with classes and functions for persistent collections on the blockchain.
 */
export namespace collections {
  const _KEY_LENGTH_SUFFIX = ":len";
  const _KEY_FRONT_INDEX_SUFFIX = ":front";
  const _KEY_BACK_INDEX_SUFFIX = ":back";
  const _KEY_ELEMENT_SUFFIX = "::";
  const _KEY_RATING_SUFFIX = ":r";
  const _RATING_OFFSET: u64 = 2147483648;

  /**
   * A vector class that implements a persistent array.
   */
  export class Vector<T> {
    private _elementPrefix: string;
    private _lengthKey: string;
    private _length: i32;

    /**
     * Creates or restores a persistent vector with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this vector.
     */
    constructor(prefix: string) {
      this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
      this._lengthKey = prefix + _KEY_LENGTH_SUFFIX;
      this._length = -1;
    }

    /**
     * @returns An interal key for a given index.
     */
    @inline
    private _key(index: i32): string {
      return this._elementPrefix + index.toString();
    }

    /**
     * Removes the content of the element from storage without changing length of the vector.
     * @param index The index of the element to remove.
     */
    delete(index: i32): void {
      assert(this.containsIndex(index), "Index out of range");
      storage.delete(this._key(index));
    }

    /**
     * @param index The index to check.
     * @returns True if the given index is within the range of the vector indices.
     */
    containsIndex(index: i32): bool {
      return index >= 0 && index < this.length;
    }

    /**
     * @returns True if the vector is empty.
     */
    get isEmpty(): bool {
      return this.length == 0;
    }

    /**
     * @returns The length of the vector.
     */
    get length(): i32 {
      if (this._length < 0) {
        this._length = storage.get<i32>(this._lengthKey, 0);
      }
      return this._length;
    }

    /**
     * Internally sets the length of the vector
     */
    private set length(value: i32) {
      this._length = value;
      storage.set<i32>(this._lengthKey, value);
    }

    /**
     * Returns the element of the vector for a given index. Asserts the given index is within the
     * range of the vector.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("[]")
    private __get(index: i32): T {
      assert(this.containsIndex(index), "Index out of range");
      return this.__unchecked_get(index);
    }

    /**
     * Returns the element of the vector for a given index without checks.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("{}")
    private __unchecked_get(index: i32): T {
      return storage.get<T>(this._key(index));
    }

    /**
     * Sets the value of an element at the given index. Asserts the given index is within the
     * range of the vector.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("[]=")
    private __set(index: i32, value: T): void {
      assert(this.containsIndex(index), "Index out of range");
      this.__unchecked_set(index, value);
    }

    /**
     * Sets the value of an element at the given index without checks.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("{}=")
    private __unchecked_set(index: i32, value: T): void {
      storage.set<T>(this._key(index), value);
    }

    /**
     * Adds a new element to the end of the vector. Increases the length of the vector.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    push(element: T): i32 {
      let index = this.length;
      this.length = index + 1;
      this.__unchecked_set(index, element);
      return index;
    }

    /**
     * Adds a new element to the end of the vector. Increases the length of the vector.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    @inline
    pushBack(element: T): i32 {
      return this.push(element);
    }

    /**
     * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
     * Decreases the length of the vector.
     * @returns The removed last element of the vector.
     */
    pop(): T {
      assert(this.length > 0, "Vector is empty");
      let index = this.length - 1;
      this.length = index;
      let result = this.__unchecked_get(index);
      storage.delete(this._key(index));
      return result;
    }

    /**
     * Removes the last element from the vector and returns it. Asserts that the vector is not empty.
     * Decreases the length of the vector.
     * @returns The removed last element of the vector.
     */
    @inline
    popBack(): T {
      return this.pop();
    }

    /**
     * @returns The last element of the vector. Asserts that the vector is not empty.
     */
    get back(): T {
      return this.__get(this.length - 1);
    }

    /**
     * @returns The last element of the vector. Asserts that the vector is not empty.
     */
    @inline
    get last(): T {
      return this.back;
    }

    /**
     * @returns The first element of the vector. Asserts that the vector is not empty.
     */
    get front(): T {
      return this.__get(0);
    }

    /**
     * @returns The first element of the vector. Asserts that the vector is not empty.
     */
    @inline
    get first(): T {
      return this.front;
    }
  }


  /**
   * A deque class that implements a persistent bidirectional queue.
   */
  export class Deque<T> {
    private _elementPrefix: string;
    private _frontIndexKey: string;
    private _backIndexKey: string;
    private _frontIndex: i32;
    private _backIndex: i32;

    /**
     * Creates or restores a persistent deque with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this deque.
     */
    constructor(prefix: string) {
      this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
      this._frontIndexKey = prefix + _KEY_FRONT_INDEX_SUFFIX;
      this._backIndexKey = prefix + _KEY_BACK_INDEX_SUFFIX;
      this._frontIndex = i32.MIN_VALUE;
      this._backIndex = i32.MAX_VALUE;
    }

    /**
     * @returns An interal key for a given index.
     */
    @inline
    private _key(index: i32): string {
      return this._elementPrefix + index.toString();
    }

    /**
     * @returns The index of the first/front element of the deque (inclusive).
     */
    private get frontIndex(): i32 {
      if (this._frontIndex == i32.MIN_VALUE) {
        this._frontIndex = storage.get<i32>(this._frontIndexKey, 0);
      }
      return this._frontIndex;
    }

    /**
     * Internal. Sets the index of the first/front element.
     */
    private set frontIndex(value: i32) {
      this._frontIndex = value;
      storage.set<i32>(this._frontIndexKey, value);
    }

    /**
     * @returns The index of the last/back element of the deque (inclusive).
     */
    private get backIndex(): i32 {
      if (this._backIndex == i32.MAX_VALUE) {
        this._backIndex = storage.get<i32>(this._backIndexKey, -1);
      }
      return this._backIndex;
    }

    /**
     * Internal. Sets the index of the last/back element.
     */
    private set backIndex(value: i32) {
      this._backIndex = value;
      storage.set<i32>(this._backIndexKey, value);
    }

    /**
     * @param index The index to check.
     * @returns True if the given index is within the range of the deque indices.
     */
    containsIndex(index: i32): bool {
      return index >= 0 && index < this.length;
    }

    /**
     * Removes the content of the element from storage without changing length of the deque.
     * @param index The index of the element to remove.
     */
    delete(index: i32): void {
      assert(this.containsIndex(index), "Index out of range");
      storage.delete(this._key(index + this.frontIndex));
    }

    /**
     * @returns The length of the deque.
     */
    get length(): i32 {
      return this.backIndex - this.frontIndex + 1;
    }

    /**
     * @returns True if the deque is empty.
     */
    get isEmpty(): bool {
      return this.length == 0;
    }

    /**
     * Returns the element of the deque for a given index. Asserts the given index is within the
     * range of the vector.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("[]")
    private __get(index: i32): T {
      assert(this.containsIndex(index), "Index out of range");
      return this.__unchecked_get(index);
    }

    /**
     * Returns the element of the deque for a given index without checks.
     * @param index The index of the element to return.
     * @returns The element at the given index.
     */
    @operator("{}")
    private __unchecked_get(index: i32): T {
      return storage.get<T>(this._key(index + this.frontIndex));
    }

    /**
     * Sets the new value of an element at the given index. Asserts the given index is within the
     * range of the deque.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("[]=")
    private __set(index: i32, value: T): void {
      assert(this.containsIndex(index), "Index out of range");
      this.__unchecked_set(index, value);
    }

    /**
     * Sets the new value of an element at the given index without checks.
     * @param index The index of the element.
     * @param value The new value.
     */
    @operator("{}=")
    private __unchecked_set(index: i32, value: T): void {
      storage.set<T>(this._key(index + this.frontIndex), value);
    }

    /**
     * Adds a new element in front of the deque. Increases the length of the deque.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    pushFront(element: T): i32 {
      this.frontIndex -= 1;
      this.__unchecked_set(0, element);
      return 0;
    }

    /**
     * Removes the first/front element from the deque and returns it.
     * Asserts that the deque is not empty. Decreases the length of the deque.
     * @returns The removed first element of the queue.
     */
    popFront(): T {
      assert(this.length > 0, "Deque is empty");
      let result = this.__unchecked_get(0);
      storage.delete(this._key(this.frontIndex));
      this.frontIndex += 1;
      return result;
    }

    /**
     * @returns The first/front element of the deque.
     */
    get front(): T {
      return this.__get(0);
    }

    /**
     * @returns The first/front element of the deque.
     */
    @inline
    get first(): T {
      return this.front;
    }

    /**
     * Adds a new element to the end of the deque. Increases the length of the deque.
     * @param element A new element to add.
     * @returns The index of a newly added element
     */
    pushBack(element: T): i32 {
      let index = this.length;
      this.backIndex += 1;
      this.__unchecked_set(index, element);
      return index;
    }

    /**
     * Removes the last/back element from the deque and returns it.
     * Asserts that the deque is not empty. Decreases the length of the deque.
     * @returns The removed first element of the queue.
     */
    popBack(): T {
      let index = this.length - 1;
      assert(index >= 0, "Deque is empty");
      let result = this.__unchecked_get(index);
      storage.delete(this._key(this.backIndex));
      this.backIndex -= 1;
      return result;
    }

    /**
     * @returns The last/back element of the deque.
     */
    get back(): T {
      return this.__get(this.length - 1);
    }

    /**
     * @returns The last/back element of the deque.
     */
    @inline
    get last(): T {
      return this.back;
    }
  }


  /**
   * A map class that implements a persistent unordered map.
   * NOTE: The Map doesn't store keys, so if you need to retrive them, include keys in the values.
   */
  export class Map<K, V> {
    private _elementPrefix: string;

    /**
     * Creates or restores a persistent map with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this map.
     */
    constructor(prefix: string) {
      this._elementPrefix = prefix + _KEY_ELEMENT_SUFFIX;
    }

    /**
     * @returns An interal string key for a given key of type K.
     */
    private _key(key: K): string {
      return this._elementPrefix + key.toString();
    }

    /**
     * Returns values of the map between the given start key and the end key.
     * @param start Starting from which key to include values. Default is `null`, means from the beginning.
     * @param end Up to which key include values (inclusive). Default is `null`, means to the end.
     * @param limit The maximum number of values to return. Default is `-1`, means no limit.
     * @param startInclusive Whether the start key is inclusive. Default is `true`, means include start key.
     *     It's useful to set it to false for pagination.
     */
    values(start: K = null, end: K = null, limit: i32 = -1, startInclusive: bool = true): V[] {
      let startKey = (start != null) ? this._key(start) : this._elementPrefix;
      if (!startInclusive) {
        startKey += String.fromCharCode(0);
      }
      let endKey = (end != null) ? this._key(end) : (this._elementPrefix + String.fromCharCode(255));
      let keys = storage.keyRange(startKey, endKey, limit);
      return keys.map<V>((key: string) => storage.get<V>(key));
    }

    /**
     * @param key Key to check.
     * @returns True if the given key present in the map.
     */
    contains(key: K): bool {
      return storage.contains(this._key(key));
    }

    /**
     * Removes value and the key from the map.
     * @param key Key to remove.
     */
    delete(key: K): void {
      storage.delete(this._key(key));
    }

    /**
     * @param key Key of the element.
     * @param defaultValue The default value if the key is not present.
     * @returns Value for the given key or the default value.
     */
    get(key: K, defaultValue: V = null): V {
      return storage.get<V>(this._key(key), defaultValue);
    }

    /**
     * Sets the new value for the given key.
     * @param key Key of the element.
     * @param value The new value of the element.
     */
    set(key: K, value: V): void {
      storage.set<V>(this._key(key), value);
    }
  }

  /**
   * A TopN class that can return first N keys of a type K sorted by rating. Rating is stored as i32.
   * Default sort order is descending (highest rated keys), but can be changed to ascending (lowest rated keys).
   */
  export class TopN<K> {
    // Internally, this prefix is used for storing padded ratings
    private _orderPrefix: string;
    // Whether the order is descending
    private _descending: bool;
    // Number of unique keys.
    private _length: i32;
    // The key to store length.
    private _lengthKey: string;

    // A map to store rating by key
    private _ratings: Map<K, i32>;

    /**
     * Creates or restores a persistent top N collection with a given storage prefix.
     * Always use a unique storage prefix for different collections.
     * @param prefix A prefix to use for every key of this collection.
     * @param descending Sorting order of keys for rating. Default is descending (the highest rated keys).
     */
    constructor(prefix: string, descending: bool = true) {
      this._ratings = new Map<K, i32>(prefix + _KEY_RATING_SUFFIX);
      this._orderPrefix = prefix + _KEY_ELEMENT_SUFFIX;
      this._descending = descending;
      this._lengthKey = prefix + _KEY_LENGTH_SUFFIX;
      this._length = -1;
    }

    /**
     * @returns A suffix for an internal key for a given external key of type K.
     */
    private _keySuffix(key: K): string {
      return _KEY_ELEMENT_SUFFIX + key.toString();
    }

    /**
     * @returns Converted integer rating into a padded string.
     */
    private _ratingKey(rating: i32): string {
      let r: u32 = <u32>((<i64>rating) + _RATING_OFFSET);
      if (this._descending) {
        r = u32.MAX_VALUE - r;
      }
      return r.toString().padStart(10, "0");
    }

    /**
     * Creates an internal key from a given rating and a given external key.
     */
    private _orderKey(rating: i32, key: K): string {
      return this._orderPrefix + this._ratingKey(rating) + this._keySuffix(key);
    }

    /**
     * @returns True if the TopN collection is empty.
     */
    get isEmpty(): bool {
      return this.length == 0;
    }

    /**
     * @returns The number of unique elements in the TopN collection.
     */
    get length(): i32 {
      if (this._length < 0) {
        this._length = storage.get<i32>(this._lengthKey, 0);
      }
      return this._length;
    }

    /**
     * Internally sets the length of the collection.
     */
    private set length(value: i32) {
      this._length = value;
      storage.set<i32>(this._lengthKey, value);
    }


    /**
     * @param key Key to check.
     * @returns True if the given key is present.
     */
    contains(key: K): bool {
      return this._ratings.contains(key);
    }

    /**
     * Removes rating and the key from the collection.
     * @param key Key to remove.
     */
    delete(key: K): void {
      if (this.contains(key)) {
        let rating = this._ratings.get(key);
        this._ratings.delete(key);
        storage.delete(this._orderKey(rating, key));
        this.length -= 1;
      }
    }

    /**
     * @param keys The array of keys to lookup rating.
     * @returns an array of key to rating pairs for the given keys.
     */
    keysToRatings(keys: K[]): near.MapEntry<K, i32>[] {
      let result = new Array<near.MapEntry<K, i32>>(keys.length);
      for (let index = 0; index < keys.length; ++index) {
        let key = keys[index];
        result[index] = new near.MapEntry<K, i32>(key, this._ratings.get(key));
      }
      return result;
    }

    /**
     * @param limit The maximum limit of keys to return.
     * @returns The array of top rated keys.
     */
    getTop(limit: i32): K[] {
      let orderKeys = storage.keys(this._orderPrefix, limit);
      return orderKeys.map<K>((orderKey: string) => storage.get<K>(orderKey));
    }

    /**
     * Returns a top list starting from the given key (exclusive). It's useful for pagination.
     * @param limit The maximum limit of keys to return.
     * @param fromKey The key from which return top list (exclisive).
     * @returns The array of top rated keys starting from the given key.
     */
    getTopFromKey(limit: i32, fromKey: K): K[] {
      let rating = this.getRating(fromKey, 0);
      let orderKeys = storage.keyRange(
        this._orderKey(rating, fromKey) + String.fromCharCode(0),
        this._orderPrefix + String.fromCharCode(255),
        limit);
      return orderKeys.map<K>((orderKey: string) => storage.get<K>(orderKey));
    }

    /**
     * @param limit The maximum limit of keys to return.
     * @returns The array of top rated keys with their corresponding rating.
     */
    getTopWithRating(limit: i32): near.MapEntry<K, i32>[] {
      return this.keysToRatings(this.getTop(limit));
    }

    /**
     * Returns a top list with rating starting from the given key (exclusive).
     * It's useful for pagination.
     * @param limit The maximum limit of keys to return.
     * @param fromKey The key from which return top list (exclisive).
     * @returns The array of top rated keys with their rating starting from the given key.
     */
    getTopWithRatingFromKey(limit: i32, fromKey: K): near.MapEntry<K, i32>[] {
      return this.keysToRatings(this.getTopFromKey(limit, fromKey));
    }

    /**
     * @param key Key of the element.
     * @param defaultRating The default rating to return if the key is not present.
     * @returns Value for the given key or the defaultRating.
     */
    getRating(key: K, defaultRating: i32 = 0): i32 {
      return this._ratings.get(key, defaultRating);
    }

    /**
     * Sets the new rating for the given key.
     * @param key The key to update.
     * @param rating The new rating of the key.
     */
    setRating(key: K, rating: i32): void {
      if (this.contains(key)) {
        let oldRating = this.getRating(key);
        storage.delete(this._orderKey(oldRating, key));
      } else {
        this.length += 1;
      }
      this._ratings.set(key, rating);
      storage.set<K>(this._orderKey(rating, key), key);
    }

    /**
     * Increments rating of the given key by the given increment (1 by default).
     * @param key The key to update.
     * @param increment The increment value for the rating (1 by default).
     */
    incrementRating(key: K, increment: i32 = 1): void {
      let oldRating = 0;
      if (this.contains(key)) {
        oldRating = this.getRating(key);
        storage.delete(this._orderKey(oldRating, key));
      } else {
        this.length += 1;
      }
      let rating = oldRating + increment;
      this._ratings.set(key, rating);
      storage.set<K>(this._orderKey(rating, key), key);
    }
  }

  /**
   * Creates or restores a persistent vector with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this vector.
   */
  export function vector<T>(prefix: string): Vector<T> {
    return new Vector<T>(prefix);
  }

  /**
   * Creates or restores a persistent deque with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this deque.
   */
  export function deque<T>(prefix: string): Deque<T> {
    return new Deque<T>(prefix);
  }

  /**
   * Creates or restores a persistent map with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this map.
   */
  export function map<K, V>(prefix: string): Map<K, V> {
    return new Map<K, V>(prefix);
  }

  /**
   * Creates or restores a persistent TopN with a given storage prefix.
   * Always use a unique storage prefix for different collections.
   * @param prefix A prefix to use for every key of this collection.
   * @param descending Sorting order of keys for rating. Default is descending (the highest rated keys).
   */
  export function topN<K>(prefix: string, descending: bool = true): TopN<K> {
    return new TopN<K>(prefix, descending);
  }
}

/**
 * Provides context for contract execution, including information about transaction sender, etc.
 */
class Context {
  /**
   * Account ID of transaction sender.
   */
  get sender(): string {
    return storage._internalReadString(DATA_TYPE_ORIGINATOR_ACCOUNT_ID, 0, 0);
  }

  /**
   * Account ID of contract.
   */
  get contractName(): string {
    return storage._internalReadString(DATA_TYPE_CURRENT_ACCOUNT_ID, 0, 0);
  }

  /**
   * Current block index.
   */
  get blockIndex(): u64 {
    return block_index();
  }

  /**
   * The amount of tokens received with this execution call.
   */
  get receivedAmount(): u64 {
    return received_amount();
  }

  /**
   * The amount of tokens that are locked in the account. Storage usage fee is deducted from this balance.
   */
  get frozenBalance(): u64 {
    return frozen_balance();
  }

  /**
   * The amount of tokens that can be used for running wasm, creating transactions, and sending to other contracts
   * through cross-contract calls.
   */
  get liquidBalance(): u64 {
      return liquid_balance();
  }

  /**
   * The current storage usage in bytes.
   */
  get storageUsage(): u64 {
    return storage_usage();
  }

  /**
   * Moves assets from liquid balance to frozen balance.
   * If there is enough liquid balance will deposit the maximum amount. Otherwise will deposit as much as possible.
   * Will fail if there is less than minimum amount on the liquid balance. Returns the deposited amount.
   */
  deposit(minAmount: u64, maxAmount: u64): u64 {
    deposit(minAmount, maxAmount)
  }

   /**
   * Moves assets from frozen balance to liquid balance.
   * If there is enough frozen balance will withdraw the maximum amount. Otherwise will withdraw as much as possible.
   * Will fail if there is less than minimum amount on the frozen balance. Returns the withdrawn amount.
   */
  withdraw(minAmount: u64, maxAmount: u64): u64 {
    withdraw(minAmount, maxAmount)
  }
}

export let context: Context = new Context();

export namespace near {

  /**
   * Parses the given string to return a value of the given generic type.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param s String to parse.
   * @param defaultValue The default value if the string is null
   * @returns A parsed value of type T.
   */
  export function parseFromString<T>(s: string, defaultValue: T = null): T {
    if (s == null) {
      return defaultValue;
    }
    if (isString<T>()) {
      return s;
    } else if (isInteger<T>()) {
      if (defaultValue instanceof bool) {
        return <T>(s == "true");
      } else if (isSigned<T>()) {
        return <T>I64.parseInt(s);
      } else {
        return <T>U64.parseInt(s);
      }
    } else {
      let v = instantiate<T>();
      return v.decode(stringToBytes(s));
    }
  }

  /**
   * Parses the given bytes array to return a value of the given generic type.
   * Supported types: bool, integer, string and data objects defined in model.ts.
   *
   * @param bytes Bytes to parse.
   * @param defaultValue The default value if the bytes are null
   * @returns A parsed value of type T.
   */
  export function parseFromBytes<T>(bytes: Uint8Array, defaultValue: T = null): T {
    if (bytes == null) {
      return defaultValue;
    }
    if (isString<T>() || isInteger<T>()) {
      return parseFromString<T>(bytesToString(bytes), defaultValue);
    } else {
      let v = instantiate<T>();
      return v.decode(bytes);
    }
  }

  export function bytesToString(bytes: Uint8Array): string {
    return String.fromUTF8(bytes.buffer.data + bytes.byteOffset, bytes.byteLength)
  }

  export function stringToBytes(s: string): Uint8Array {
    let len = s.lengthUTF8 - 1;
    let bytes = new Uint8Array(len);
    memory.copy(bytes.buffer.data, s.toUTF8(), len);
    return bytes;
  }

  /**
   * Helper class to store key->value pairs.
   */
  export class MapEntry<K, V> {
    key: K;
    value: V;

    constructor(key: K, value: V) {
      this.key = key;
      this.value = value;
    }
  }

  /**
   * Hash given data. Returns hash as 32-byte array.
   * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
   */
  export function hash<T>(data: T): Uint8Array {
    let result = new Uint8Array(32);
    if (data instanceof Uint8Array) {
      _near_hash(data.byteLength, data.buffer.data, result.buffer.data);
    } else {
      let str = data.toString();
      _near_hash(str.lengthUTF8 - 1, str.toUTF8(), result.buffer.data);
    }
    return result;
  }

  /**
   * Hash given data. Returns hash as 32-bit integer.
   * @param data data can be passed as either Uint8Array or anything with .toString (hashed as UTF-8 string).
   */
  export function hash32<T>(data: T): u32 {
    let dataToHash : Uint8Array;
    if (data instanceof Uint8Array) {
      return _near_hash32(data.byteLength, data.buffer.data);
    } else {
      let str = data.toString();
      return _near_hash32(str.lengthUTF8 - 1, str.toUTF8());
    }
  }

  /**
   * Returns random byte buffer of given length.
   */
  export function randomBuffer(len: u32): Uint8Array {
    let result = new Uint8Array(len);
    _near_random_buf(len, result.buffer.data);
    return result;
  }

  /**
   * Returns random 32-bit integer.
   */
  export function random32(): u32 {
    return random32();
  }

  export function log(msg: string): void {
    _near_log(<usize>msg);
  }

  export function str<T>(value: T): string {
    let arr: Array<T> = [value];
    return arr.toString();
  }

  export function base58(source: Uint8Array): string {
    // Code converted from:
    // https://github.com/cryptocoinjs/base-x/blob/master/index.js
    const iFACTOR = 2; // TODO: Calculate precise value to avoid overallocating
    const ALPHABET = '123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz';
    let BASE = ALPHABET.length;
    let LEADER = ALPHABET.charAt(0);

    // Skip & count leading zeroes.
    let zeroes = 0
    let length = 0
    let pbegin = 0
    let pend = source.length

    while (pbegin !== pend && source[pbegin] === 0) {
      pbegin++
      zeroes++
    }

    // Allocate enough space in big-endian base58 representation.
    let size = ((pend - pbegin) * iFACTOR + 1) >>> 0
    let b58 = new Uint8Array(size)

    // Process the bytes.
    while (pbegin !== pend) {
      let carry = i32(source[pbegin])

      // Apply "b58 = b58 * 256 + ch".
      let i = 0
      for (let it = size - 1; (carry !== 0 || i < length) && (it !== -1); it--, i++) {
        carry += (256 * b58[it]) >>> 0
        b58[it] = (carry % BASE) >>> 0
        carry = (carry / BASE) >>> 0
      }

      assert(carry == 0, 'Non-zero carry');
      length = i
      pbegin++
    }

    // Skip leading zeroes in base58 result.
    let it = size - length
    while (it !== size && b58[it] === 0) {
      it++
    }

    // Translate the result into a string.
    let str = LEADER.repeat(zeroes)
    for (; it < size; ++it) str += ALPHABET.charAt(b58[it])

    return str
  }
}

/**
 * Class to make asynchronous calls to other contracts and receive callbacks.
 * Here is an example on how to create a new async call with the callback.
 * ```
 * export function callMetaNear(): void {
 *   let itemArgs: AddItemArgs = {
 *     accountId: "alice.near",
 *     itemId: "Sword +9000",s
 *   };
 *   let promise = ContractPromise.create(
 *     "metanear",
 *     "addItem",
 *     itemArgs.encode(),
 *     0,
 *   );
 *   // Setting up args for the callback
 *   let requestArgs: OnItemAddedArgs = {
 *     "itemAddedRequestId": "UNIQUE_REQUEST_ID",
 *   };
 *   let callbackPromise = promise.then(
 *      "_onItemAdded",
 *      requestArgs.encode(),
 *      2,  // Attaching 2 additional requests, in case we need to do another call
 *   );
 *   callbackPromise.returnAsResult();
 * }
 * ```
 * See docs on used methods for more details.
 */
export class ContractPromise {
  // Session-based unique promise ID. Don't preserve it longer than this execution.
  id: i32;

  /**
   * Creates a new async call promise. Returns an instance of `ContractPromise`.
   * The call would be scheduled if the this current execution of the contract succeeds
   * without errors or failed asserts.
   * @param contractName Account ID of the remote contract to call. E.g. `metanear`.
   * @param methodName Method name on the remote contract to call. E.g. `addItem`.
   * @param args Serialized arguments to pass into the method. To get them create a new model
   *     specific for the method you calling, e.g. `AddItemArgs`. Then create an instance of it
   *     and populate arguments. After this, serialize it into bytes. E.g.
   *     ```
   *     let itemArgs: AddItemArgs = {
   *       accountId: "alice.near",
   *       itemId: "Sword +9000",
   *     };
   *     // Serialize args
   *     let args = itemArgs.encode();
   *     ```
   * @param amount The amount of tokens from your contract to be sent to the remote contract with this call.
   */
  static create(
      contractName: string,
      methodName: string,
      args: Uint8Array,
      amount: u64 = 0
  ): ContractPromise {
    return {
      id: promise_create(
        contractName.lengthUTF8 - 1, contractName.toUTF8(),
        methodName.lengthUTF8 - 1, methodName.toUTF8(),
        args.byteLength, args.buffer.data,
        amount)
    };
  }

  /**
   * Creating a callback for the AsyncCall Promise created with `create` method.
   * @param methodName Method name on your contract to be called to receive the callback.
   *     NOTE: Your callback method name can start with `_`, which would prevent other
   *     contracts from calling it directly. Only callbacks can call methods with `_` prefix.
   * @param args Serialized arguments on your callback method, see `create` for details.
   * @param amount The amount of tokens from the called contract to be sent to the current contract with this call.
   */
  then(
      methodName: string,
      args: Uint8Array,
      amount: u64
  ): ContractPromise {
    return {
      id: promise_then(
        this.id,
        methodName.lengthUTF8 - 1, methodName.toUTF8(),
        args.byteLength, args.buffer.data,
        amount)
    };
  }

  /**
   * Returns the promise as a result of your function. Don't return any other results from the function.
   * Your current function should be `void` and shouldn't return anything else. E.g.
   * ```
   * export function callMetaNear(): void {
   *   let itemArgs: AddItemArgs = {
   *     accountId: "alice.near",
   *     itemId: "Sword +9000",
   *   };
   *   let promise = ContractPromise.create(
   *     "metanear",
   *     "addItem",
   *     itemArgs.encode(),
   *     0,
   *     0,
   *   );
   *   promise.returnAsResult();
   * }
   * ```
   *
   * Now when you call `callMetaNear` method, it creates new promise to `metanear` contract.
   * And saying that the result of the current execution depends on the result `addItem`.
   * Even though this contract is not going to be called with a callback, the contract which
   * calling `callMetaNear` would receive the result from `addItem`. This call essentially acts
   * as a proxy.
   *
   * You can also attach a callback on top of the promise before returning it, e.g.
   *
   * ```
   *   ...
   *   let promise = ContractPromise.create(
   *      ...
   *   );
   *   // Setting up args for the callback
   *   let requestArgs: OnItemAddedArgs = {
   *     "itemAddedRequestId": "UNIQUE_REQUEST_ID",
   *   };
   *   let callbackPromise = promise.then(
   *      "_onItemAdded",
   *      requestArgs.encode(),
   *      2,  // Attaching 2 additional requests, in case we need to do another call
   *   );
   *   callbackPromise.returnAsResult();
   * }
   * ```
   */
  returnAsResult(): void {
    return_promise(this.id);
  }

  /**
   * Joins multiple async call promises into one, to aggregate results before the callback.
   * NOTE: Given promises can only be new async calls and can't be callbacks.
   * Joined promise can't be returned as a result
   * @param promises List of async call promises to join.
   */
  static all(promises: ContractPromise[]): ContractPromise {
    assert(promises.length > 0);
    let id = promises[0].id;
    for (let i = 1; i < promises.length; i++) {
      id = promise_and(id, promises[i].id);
    }
    return { id };
  }

  /**
   * Method to receive async (one or multiple) results from the remote contract in the callback.
   * Example of using it.
   * ```
   * // This function is prefixed with `_`, so other contracts or people can't call it directly.
   * export function _onItemAdded(itemAddedRequestId: string): bool {
   *   // Get all results
   *   let results = ContractPromise.getResults();
   *   let addItemResult = results[0];
   *   // Verifying the remote contract call succeeded.
   *   if (addItemResult.success) {
   *     // Decoding data from the bytes buffer into the local object.
   *     let data = AddItemResult.decode(addItemResult.buffer);
   *     if (data.itemPower > 9000) {
   *       return true;
   *     }
   *   }
   *   return false;
   * }
   * ```
   * @returns An array of results based on the number of promises the callback was created on.
   *     If the callback using `then` was scheduled only on one result, then one result will be returned.
   */
  static getResults() : ContractPromiseResult[] {
    let count = <i32>result_count();
    let results = new Array<ContractPromiseResult>(count);
    for (let i = 0; i < count; i++) {
      let isOk = result_is_ok(i);
      if (!isOk) {
        results[i] = { success: false }
        continue;
      }
      let buffer = storage._internalReadBytes(DATA_TYPE_RESULT, 0, i);
      results[i] = { success: isOk, buffer: buffer };
    }
    return results;
  }
}

/**
 * Class to store results of the async calls on the remote contracts.
 */
export class ContractPromiseResult {
  // Whether the execution of the remote call succeeded.
  success: bool;
  // Bytes data returned by the remote contract. Can be empty or null, if the remote
  // method returns `void`.
  buffer: Uint8Array;
}

@external("env", "storage_write")
declare function storage_write(key_len: usize, key_ptr: usize, value_len: usize, value_ptr: usize): void;
@external("env", "storage_remove")
declare function storage_remove(key_len: usize, key_ptr: usize): void;
@external("env", "storage_has_key")
declare function storage_has_key(key_len: usize, key_ptr: usize): bool;
@external("env", "storage_iter")
declare function storage_iter(prefix_len: usize, prefix_ptr: usize): u32;
@external("env", "storage_range")
declare function storage_range(start_len: usize, start_ptr: usize, end_len: usize, end_ptr: usize): u32;
@external("env", "storage_iter_next")
declare function storage_iter_next(id: u32): u32;

@external("env", "result_count")
declare function result_count(): u32;
@external("env", "result_is_ok")
declare function result_is_ok(index: u32): bool;

@external("env", "return_value")
declare function return_value(value_len: usize, value_ptr: usize): void;
@external("env", "return_promise")
declare function return_promise(promise_index: u32): void;

@external("env", "data_read")
declare function data_read(type_index: u32, key_len: usize, key: usize, max_buf_len: usize, buf_ptr: usize): usize;

@external("env", "promise_create")
declare function promise_create(
    account_id_len: usize, account_id_ptr: usize,
    method_name_len: usize, method_name_ptr: usize,
    args_len: usize, args_ptr: usize,
    amount: u64): u32;

@external("env", "promise_then")
declare function promise_then(
    promise_index: u32,
    method_name_len: usize, method_name_ptr: usize,
    args_len: usize, args_ptr: usize,
    amount: u64): u32;

@external("env", "promise_and")
declare function promise_and(promise_index1: u32, promise_index2: u32): u32;

/**
 * @hidden
 * Hash buffer is 32 bytes
 */
@external("env", "hash")
declare function _near_hash(value_len: usize, value_ptr: usize, buf_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "hash32")
declare function _near_hash32(value_len: usize, value_ptr: usize): u32;

/**
 * @hidden
 * Fills given buffer with random u8.
 */
@external("env", "random_buf")
declare function _near_random_buf(buf_len: u32, buf_ptr: usize): void

/**
 * @hidden
 */
@external("env", "random32")
declare function random32(): u32;

/**
 * @hidden
 */
@external("env", "log")
declare function _near_log(msg_ptr: usize): void;

/**
 * @hidden
 */
@external("env", "frozen_balance")
declare function frozen_balance(): u64;

/**
 * @hidden
 */
@external("env", "liquid_balance")
declare function liquid_balance(): u64;

/**
 * @hidden
 */
@external("env", "storage_usage")
declare function storage_usage(): u64;

/**
 * @hidden
 */
@external("env", "deposit")
declare function deposit(min_amount: u64, max_amount: u64): u64;

/**
 * @hidden
 */
@external("env", "withdraw")
declare function withdraw(min_amount: u64, max_amount: u64): u64;

/**
 * @hidden
 */
@external("env", "received_amount")
declare function received_amount(): u64;

/**
 * @hidden
 */
@external("env", "block_index")
declare function block_index(): u64;

// adapted from https://gist.github.com/Juszczak/63e6d9e01decc850de03
/**
 * base64 encoding/decoding
 */
export namespace base64 {
  const PADCHAR: string = '=';
  const ALPHA: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

  function getByte64(s: string, i: u32): u32 {
    return this.ALPHA.indexOf(s.charAt(i));
  }

  /**
   * Decode base64-encoded string and return a Uint8Array.
   * @param s Base64 encoded string.
   */
  export function decode (s: string): Uint8Array {
    let i: u32, b10: u32;
    let pads = 0,
        imax = s.length as u32;

    if (imax == 0) {
      return new Uint8Array(0);
    }

    if (s.charAt(imax - 1) == this.PADCHAR) {
      pads = 1;
      if (s.charAt(imax - 2) == this.PADCHAR) {
        pads = 2;
      }
      imax -= 4;
    }

    let main_chunk = imax % 4 == 0 ? imax / 4 * 3 : (imax / 4 + 1) * 3;
    let pad_size = pads > 0 ? 3 - pads : 0;
    let size = main_chunk + pad_size;

    let x = new Uint8Array(size),
        index = 0;

    for (i = 0; i < imax; i += 4) {
      b10 = (this.getByte64(s, i) << 18) | (this.getByte64(s, i + 1) << 12) | (this.getByte64(s, i + 2) << 6) | this.getByte64(s, i + 3);
      x[index++] = b10 >> 16;
      x[index++] = (b10 >> 8) & 255;
      x[index++] = b10 & 255;
    }
    switch (pads) {
      case 1:
        b10 = (this.getByte64(s, i) << 18) | (this.getByte64(s, i + 1) << 12) | (this.getByte64(s, i + 2) << 6);
        x[index++] = b10 >> 16;
        x[index++] = (b10 >> 8) & 255;
        break;
      case 2:
        b10 = (this.getByte64(s, i) << 18) | (this.getByte64(s, i + 1) << 12);
        x[index++] = b10 >> 16;
        break;
    }

    return x;
  }

  /**
   * Encode Uint8Array in base64.
   * @param bytes Byte array of type Uint8Array.
   */
  export function encode(bytes: Uint8Array): string {
    let i: i32, b10: u32;
    let x = new Array<string>(),
        imax = bytes.length - bytes.length % 3;

    if (bytes.length == 0) {
      return "";
    }

    for (i = 0; i < imax; i += 3) {
      b10 = (bytes[i] as u32 << 16) | (bytes[i+1] as u32 << 8) | bytes[i+2] as u32;
      x.push(this.ALPHA.charAt(b10 >> 18));
      x.push(this.ALPHA.charAt((b10 >> 12) & 63));
      x.push(this.ALPHA.charAt((b10 >> 6) & 63));
      x.push(this.ALPHA.charAt(b10 & 63));
    }

    switch (bytes.length - imax) {
      case 1:
        b10 = bytes[i] as u32 << 16;
        x.push(this.ALPHA.charAt(b10 >> 18));
        x.push(this.ALPHA.charAt((b10 >> 12) & 63));
        x.push(this.PADCHAR);
        x.push(this.PADCHAR);
        break;
      case 2:
        b10 = (bytes[i] as u32 << 16) | (bytes[i+1] as u32 << 8);
        x.push(this.ALPHA.charAt(b10 >> 18));
        x.push(this.ALPHA.charAt((b10 >> 12) & 63));
        x.push(this.ALPHA.charAt((b10 >> 6) & 63));
        x.push(this.PADCHAR);
        break;
    }

    return x.join('');
  }
}
