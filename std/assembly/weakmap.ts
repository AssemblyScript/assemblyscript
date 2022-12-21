// @ts-ignore: decorators
@lazy let TOKEN_POOL: Token | null = null;

// @ts-ignore: decorators
@lazy const REGISTRY: FinalizationRegistry<Token> = new FinalizationRegistry<Token>(
  (token: Token) => {
    const map = token.map;
    if (map) {
      map.evict(token.ptr);
    }
    Token.recycle(token);
  }
);

class Token {
  map: BaseWeakMap | null = null;
  ptr: usize = 0;
  next: Token | null = null;

  // @ts-ignore: decorators
  @inline
  static alloc(): Token {
    const instance = TOKEN_POOL;
    if (instance === null) {
      return new Token;
    } else {
      TOKEN_POOL = instance.next;
      return instance;
    }
  }

  // @ts-ignore: decorators
  @inline
  static recycle(token: Token): void {
    token.map = null;
    token.next = TOKEN_POOL;
    TOKEN_POOL = token;
  }
}

abstract class BaseWeakMap {
  abstract evict(ptr: usize): void;
}

export class WeakMap<K, V> extends BaseWeakMap {
  private data: Map<usize, V> = new Map<usize, V>();
  private tokens: Map<usize, Token> = new Map<usize, Token>();

  constructor() {
    super();

    if(!isManaged<K>()) { ERROR("invalid key type"); }
  }

  get(key: K): V {
    return this.data.get(changetype<usize>(key));
  }

  set(key: K, value: V): void {
    const ptr = changetype<usize>(key);
    this.data.set(ptr, value);

    if (!this.tokens.has(ptr)) {
      const token = Token.alloc();
      token.map = this;
      token.ptr = ptr;

      this.tokens.set(ptr, token);
      REGISTRY.register(key, token, token);
    }
  }

  has(key: K): bool {
    return this.data.has(changetype<usize>(key));
  }

  delete(key: K): bool {
    const ptr = changetype<usize>(key);
    if (this.data.delete(ptr)) {
      const token = this.tokens.get(ptr);
      REGISTRY.unregister(token);
      this.tokens.delete(ptr);
      return true;
    } else {
      return false;
    }
  }

  evict(ptr: usize): void {
    this.data.delete(ptr);
    this.tokens.delete(ptr);
  }
}
