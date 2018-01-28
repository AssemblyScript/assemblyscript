(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (global $std/carray/arr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $std:array/CArray#__get (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (unreachable)
  )
  (return
   (i32.load
    (i32.add
     (get_local $0)
     (i32.mul
      (get_local $1)
      (i32.const 4)
     )
    )
   )
  )
 )
 (func $std:array/CArray#__set (; 1 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (unreachable)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
   (get_local $2)
  )
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (set_global $std/carray/arr
   (get_global $HEAP_BASE)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (get_global $HEAP_BASE)
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (i32.add
       (get_global $HEAP_BASE)
       (i32.const 4)
      )
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:array/CArray#__get
      (get_global $std/carray/arr)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:array/CArray#__get
      (get_global $std/carray/arr)
      (i32.const 1)
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (call $std:array/CArray#__set
   (get_global $std/carray/arr)
   (i32.const 0)
   (i32.const 42)
  )
  (call $std:array/CArray#__set
   (get_global $std/carray/arr)
   (i32.const 1)
   (i32.const 24)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (get_global $HEAP_BASE)
     )
     (i32.const 42)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (i32.add
       (get_global $HEAP_BASE)
       (i32.const 4)
      )
     )
     (i32.const 24)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:array/CArray#__get
      (get_global $std/carray/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:array/CArray#__get
      (get_global $std/carray/arr)
      (i32.const 1)
     )
     (i32.const 24)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (call $std:array/CArray#__set
       (get_global $std/carray/arr)
       (i32.const 3)
       (tee_local $0
        (i32.const 9000)
       )
      )
      (get_local $0)
     )
     (i32.const 9000)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (i32.add
       (get_global $HEAP_BASE)
       (i32.const 12)
      )
     )
     (i32.const 9000)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:array/CArray#__get
      (get_global $std/carray/arr)
      (i32.const 3)
     )
     (i32.const 9000)
    )
   )
   (unreachable)
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
  GLOBAL: std:string/cp
  GLOBAL: std:string/cn
  GLOBAL: std:string/cx
  GLOBAL: std:string/cX
  GLOBAL: std:string/c0
  GLOBAL: std:string/c9
  GLOBAL: std:string/ca
  GLOBAL: std:string/cz
  GLOBAL: std:string/cA
  GLOBAL: std:string/cZ
  GLOBAL: std:string/HEAD
  FUNCTION_PROTOTYPE: std:string/allocate
  CLASS_PROTOTYPE: std:string/String
  FUNCTION_PROTOTYPE: std:string/String.__concat
  FUNCTION_PROTOTYPE: std:string/String.__eq
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: std:string/isWhiteSpaceOrLineTerminator
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: parseFloat
  GLOBAL: std/carray/arr
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
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: std:memory/arena/allocate_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: std:memory/arena/free_memory
  FUNCTION_PROTOTYPE: clear_memory
  FUNCTION_PROTOTYPE: std:memory/arena/clear_memory
;)
