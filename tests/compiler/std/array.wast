(module
 (type $v (func))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $Array.test (; 0 ;) (type $v)
 )
 (func $start (; 1 ;) (type $v)
  (call $Array.test)
 )
)
(;
[program.elements]
  NaN
  Infinity
  isNaN
  isFinite
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  max
  min
  ceil
  floor
  copysign
  nearest
  reinterpret
  sqrt
  trunc
  load
  store
  sizeof
  select
  unreachable
  current_memory
  grow_memory
  parseInt
  parseFloat
  changetype
  assert
  i8
  i16
  i32
  i64
  u8
  u16
  u32
  u64
  bool
  f32
  f64
  isize
  usize
  HEAP_START
  Array
  Array.fromPtr
  Array.test
  heap/ALIGN_LOG2
  heap/ALIGN_SIZE
  heap/ALIGN_MASK
  heap/HEAP_OFFSET
  Heap
  Heap.allocate
  Heap.dispose
  Heap.get_used
  Heap.get_free
  Heap.get_size
  Heap.copy
[program.exports]
  
;)
