
declare namespace Atomic { 
  /** Atomically loads a value of the specified type from memory. Equivalent to dereferncing a pointer in other languages. */
  export function load<T>(ptr: usize, constantOffset?: usize): T;
  /** Atomically stores a value of the specified type to memory. Equivalent to dereferencing a pointer in other languages when assigning a value. */
  export function store<T>(ptr: usize, value: any, constantOffset?: usize): void;
  /** Atomically add a value of the specified type to memory.*/
  export function add<T>(ptr: usize, value: T): void;
  /** Atomically and a value of the specified type to memory.*/
  export function and<T>(ptr: usize, value: T): void;
  /** Atomically or a value of the specified type to memory.*/
  export function or<T>(ptr: usize, value: T): void;
  /** Atomically xor a value of the specified type to memory.*/
  export function xor<T>(ptr: usize, value: T): void;
  /** Atomically exchange a value of the specified type to memory.*/
  export function xchg<T>(ptr: usize, value: T): void;
  export function exchange<T>(ptr: usize, value: T): void;
  /** Atomically compare exchange a value of the specified type to memory.*/
  export function cmpxchg<T>(ptr: usize, expected:T, replacement: T): T;
  export function compareExchange<T>(ptr: usize, expected:T, replacement: T): T;
}
