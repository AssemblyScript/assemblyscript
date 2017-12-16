(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $heap/HEAP_OFFSET (mut i32) (i32.const 0))
 (global $heap/ALIGN_LOG2 i32 (i32.const 3))
 (global $heap/ALIGN_SIZE i32 (i32.const 8))
 (global $heap/ALIGN_MASK i32 (i32.const 7))
 (global $std/heap/ptr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $Heap.allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (block
   (set_local $1
    (current_memory)
   )
  )
  (if
   (i32.gt_u
    (i32.add
     (get_global $heap/HEAP_OFFSET)
     (get_local $0)
    )
    (i32.shl
     (get_local $1)
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (tee_local $2
        (i32.trunc_s/f64
         (f64.ceil
          (f64.div
           (f64.convert_u/i32
            (get_local $0)
           )
           (f64.const 65536)
          )
         )
        )
       )
       (tee_local $3
        (i32.sub
         (i32.mul
          (get_local $1)
          (i32.const 2)
         )
         (get_local $1)
        )
       )
       (i32.gt_s
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block
   (set_local $4
    (get_global $heap/HEAP_OFFSET)
   )
  )
  (if
   (i32.and
    (block (result i32)
     (set_global $heap/HEAP_OFFSET
      (i32.add
       (get_global $heap/HEAP_OFFSET)
       (get_local $0)
      )
     )
     (get_global $heap/HEAP_OFFSET)
    )
    (i32.const 7)
   )
   (set_global $heap/HEAP_OFFSET
    (i32.add
     (i32.or
      (get_global $heap/HEAP_OFFSET)
      (i32.const 7)
     )
     (i32.const 1)
    )
   )
  )
  (return
   (get_local $4)
  )
 )
 (func $Heap.dispose (; 1 ;) (type $iv) (param $0 i32)
 )
 (func $start (; 2 ;) (type $v)
  (set_global $heap/HEAP_OFFSET
   (get_global $HEAP_BASE)
  )
  (set_global $std/heap/ptr
   (call $Heap.allocate
    (i32.const 10)
   )
  )
  (call $Heap.dispose
   (get_global $std/heap/ptr)
  )
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
  HEAP_BASE
  Array
  Error
  RangeError
  heap/ALIGN_LOG2
  heap/ALIGN_SIZE
  heap/ALIGN_MASK
  heap/HEAP_OFFSET
  Heap
  Heap.get_used
  Heap.get_free
  Heap.get_size
  Heap.allocate
  Heap.dispose
  Heap.copy
  Map
  Set
  String
  std/heap/ptr
[program.exports]
  Array
  Error
  RangeError
  Heap
  Map
  Set
  String
;)
