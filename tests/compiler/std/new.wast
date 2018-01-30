(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $v (func))
 (global $std:memory/arena/ALIGN_LOG2 i32 (i32.const 3))
 (global $std:memory/arena/ALIGN_SIZE i32 (i32.const 8))
 (global $std:memory/arena/ALIGN_MASK i32 (i32.const 7))
 (global $std:memory/arena/HEAP_OFFSET (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $std:memory/arena/allocate_memory (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $1
   (get_global $std:memory/arena/HEAP_OFFSET)
  )
  (set_local $2
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (get_local $0)
     )
     (i32.const 7)
    )
    (i32.xor
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_local $3
   (i32.shl
    (current_memory)
    (i32.const 16)
   )
  )
  (if
   (i32.and
    (if (result i32)
     (i32.ne
      (i32.gt_u
       (get_local $2)
       (get_local $3)
      )
      (i32.const 0)
     )
     (i32.lt_s
      (grow_memory
       (select
        (tee_local $4
         (i32.shr_u
          (i32.sub
           (i32.and
            (i32.add
             (get_local $2)
             (i32.const 65535)
            )
            (i32.xor
             (i32.const 65535)
             (i32.const -1)
            )
           )
           (get_local $3)
          )
          (i32.const 16)
         )
        )
        (tee_local $5
         (i32.shr_u
          (get_local $3)
          (i32.const 16)
         )
        )
        (i32.gt_u
         (get_local $4)
         (get_local $5)
        )
       )
      )
      (i32.const 0)
     )
     (i32.gt_u
      (get_local $2)
      (get_local $3)
     )
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (set_global $std:memory/arena/HEAP_OFFSET
   (get_local $2)
  )
  (return
   (get_local $1)
  )
 )
 (func $std/new/AClass#constructor (; 1 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (f32.store offset=4
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (set_global $std:memory/arena/HEAP_OFFSET
   (get_global $HEAP_BASE)
  )
  (set_global $std/new/aClass
   (block (result i32)
    (set_local $0
     (call $std:memory/arena/allocate_memory
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $0)
     (i32.const 1)
    )
    (f32.store offset=4
     (get_local $0)
     (f32.const 2)
    )
    (call $std/new/AClass#constructor
     (get_local $0)
     (f32.const 3)
    )
    (get_local $0)
   )
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  CLASS_PROTOTYPE: std:array/Array
  PROPERTY: std:array/Array#length
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: RangeError
  CLASS_PROTOTYPE: std:map/Map
  PROPERTY: std:map/Map#size
  CLASS_PROTOTYPE: Map
  FUNCTION_PROTOTYPE: std:memory/copy_memory
  FUNCTION_PROTOTYPE: std:memory/move_memory
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: std:memory/set_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: std:memory/compare_memory
  FUNCTION_PROTOTYPE: compare_memory
  CLASS_PROTOTYPE: std:regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: std:set/Set
  PROPERTY: std:set/Set#size
  CLASS_PROTOTYPE: Set
  GLOBAL: std:string/EMPTY
  GLOBAL: std:string/HEAD
  FUNCTION_PROTOTYPE: std:string/allocate
  CLASS_PROTOTYPE: std:string/String
  FUNCTION_PROTOTYPE: std:string/String.__concat
  FUNCTION_PROTOTYPE: std:string/String.__eq
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: std:string/isWhiteSpaceOrLineTerminator
  ENUM: std:string/CharCode
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseI64
  FUNCTION_PROTOTYPE: parseI64
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: parseFloat
  CLASS_PROTOTYPE: std/new/AClass
  GLOBAL: std/new/AClass.aStaticField
  GLOBAL: std/new/aClass
  GLOBAL: std:memory/arena/ALIGN_LOG2
  GLOBAL: std:memory/arena/ALIGN_SIZE
  GLOBAL: std:memory/arena/ALIGN_MASK
  GLOBAL: std:memory/arena/HEAP_OFFSET
  FUNCTION_PROTOTYPE: std:memory/arena/allocate_memory
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: std:memory/arena/free_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: std:memory/arena/clear_memory
  FUNCTION_PROTOTYPE: clear_memory
[program.exports]
  CLASS_PROTOTYPE: std:array/Array
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: RangeError
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: Map
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: std:memory/move_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: std:memory/set_memory
  FUNCTION_PROTOTYPE: compare_memory
  FUNCTION_PROTOTYPE: std:memory/compare_memory
  CLASS_PROTOTYPE: std:regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: std:set/Set
  CLASS_PROTOTYPE: Set
  CLASS_PROTOTYPE: std:string/String
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseI64
  FUNCTION_PROTOTYPE: std:string/parseI64
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: std:memory/arena/allocate_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: std:memory/arena/free_memory
  FUNCTION_PROTOTYPE: clear_memory
  FUNCTION_PROTOTYPE: std:memory/arena/clear_memory
;)
