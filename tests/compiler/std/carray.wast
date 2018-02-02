(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $std/carray/arr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00s\00t\00d\00/\00c\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/array/CArray#__get" (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/array.ts:173:4
  (if
   ;;@ (lib)/array.ts:173:8
   (i32.lt_s
    (get_local $1)
    ;;@ (lib)/array.ts:173:16
    (i32.const 0)
   )
   ;;@ (lib)/array.ts:174:6
   (unreachable)
  )
  ;;@ (lib)/array.ts:175:71
  (return
   ;;@ (lib)/array.ts:175:11
   (i32.load
    ;;@ (lib)/array.ts:175:19
    (i32.add
     (get_local $0)
     ;;@ (lib)/array.ts:175:45
     (i32.mul
      (get_local $1)
      ;;@ (lib)/array.ts:175:60
      (i32.const 4)
     )
    )
   )
  )
 )
 (func "$(lib)/array/CArray#__set" (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ (lib)/array.ts:180:4
  (if
   ;;@ (lib)/array.ts:180:8
   (i32.lt_s
    (get_local $1)
    ;;@ (lib)/array.ts:180:16
    (i32.const 0)
   )
   ;;@ (lib)/array.ts:181:6
   (unreachable)
  )
  ;;@ (lib)/array.ts:182:4
  (i32.store
   ;;@ (lib)/array.ts:182:13
   (i32.add
    (get_local $0)
    ;;@ (lib)/array.ts:182:39
    (i32.mul
     (get_local $1)
     ;;@ (lib)/array.ts:182:54
     (i32.const 4)
    )
   )
   ;;@ (lib)/array.ts:182:67
   (get_local $2)
  )
 )
 (func $start (; 3 ;) (type $v)
  (local $0 i32)
  (set_global $std/carray/arr
   ;;@ std/carray.ts:6:23
   (get_global $HEAP_BASE)
  )
  ;;@ std/carray.ts:8:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:8:7
    (i32.eq
     (i32.load
      ;;@ std/carray.ts:8:17
      (get_global $HEAP_BASE)
     )
     ;;@ std/carray.ts:8:31
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:9:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:9:7
    (i32.eq
     (i32.load
      ;;@ std/carray.ts:9:17
      (i32.add
       (get_global $HEAP_BASE)
       ;;@ std/carray.ts:9:29
       (i32.const 4)
      )
     )
     ;;@ std/carray.ts:9:35
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:11:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:11:7
    (i32.eq
     (call "$(lib)/array/CArray#__get"
      (get_global $std/carray/arr)
      ;;@ std/carray.ts:11:11
      (i32.const 0)
     )
     ;;@ std/carray.ts:11:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:12:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:12:7
    (i32.eq
     (call "$(lib)/array/CArray#__get"
      (get_global $std/carray/arr)
      ;;@ std/carray.ts:12:11
      (i32.const 1)
     )
     ;;@ std/carray.ts:12:17
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:14:0
  (call "$(lib)/array/CArray#__set"
   (get_global $std/carray/arr)
   ;;@ std/carray.ts:14:4
   (i32.const 0)
   ;;@ std/carray.ts:14:9
   (i32.const 42)
  )
  ;;@ std/carray.ts:15:0
  (call "$(lib)/array/CArray#__set"
   (get_global $std/carray/arr)
   ;;@ std/carray.ts:15:4
   (i32.const 1)
   ;;@ std/carray.ts:15:9
   (i32.const 24)
  )
  ;;@ std/carray.ts:17:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:17:7
    (i32.eq
     (i32.load
      ;;@ std/carray.ts:17:17
      (get_global $HEAP_BASE)
     )
     ;;@ std/carray.ts:17:31
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:18:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:18:7
    (i32.eq
     (i32.load
      ;;@ std/carray.ts:18:17
      (i32.add
       (get_global $HEAP_BASE)
       ;;@ std/carray.ts:18:29
       (i32.const 4)
      )
     )
     ;;@ std/carray.ts:18:35
     (i32.const 24)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:20:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:20:7
    (i32.eq
     (call "$(lib)/array/CArray#__get"
      (get_global $std/carray/arr)
      ;;@ std/carray.ts:20:11
      (i32.const 0)
     )
     ;;@ std/carray.ts:20:17
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:21:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:21:7
    (i32.eq
     (call "$(lib)/array/CArray#__get"
      (get_global $std/carray/arr)
      ;;@ std/carray.ts:21:11
      (i32.const 1)
     )
     ;;@ std/carray.ts:21:17
     (i32.const 24)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:23:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:23:7
    (i32.eq
     (block (result i32)
      (call "$(lib)/array/CArray#__set"
       ;;@ std/carray.ts:23:8
       (get_global $std/carray/arr)
       ;;@ std/carray.ts:23:12
       (i32.const 3)
       (tee_local $0
        ;;@ std/carray.ts:23:17
        (i32.const 9000)
       )
      )
      (get_local $0)
     )
     ;;@ std/carray.ts:23:26
     (i32.const 9000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:25:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:25:7
    (i32.eq
     (i32.load
      ;;@ std/carray.ts:25:17
      (i32.add
       (get_global $HEAP_BASE)
       ;;@ std/carray.ts:25:29
       (i32.const 12)
      )
     )
     ;;@ std/carray.ts:25:36
     (i32.const 9000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/carray.ts:26:0
  (if
   (i32.eqz
    ;;@ std/carray.ts:26:7
    (i32.eq
     (call "$(lib)/array/CArray#__get"
      (get_global $std/carray/arr)
      ;;@ std/carray.ts:26:11
      (i32.const 3)
     )
     ;;@ std/carray.ts:26:17
     (i32.const 9000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
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
  FUNCTION_PROTOTYPE: abort
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
  CLASS_PROTOTYPE: (lib)/array/Array
  PROPERTY: (lib)/array/Array#length
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: (lib)/array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: (lib)/error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: (lib)/error/RangeError
  CLASS_PROTOTYPE: RangeError
  CLASS_PROTOTYPE: (lib)/map/Map
  PROPERTY: (lib)/map/Map#size
  CLASS_PROTOTYPE: Map
  FUNCTION_PROTOTYPE: (lib)/memory/copy_memory
  FUNCTION_PROTOTYPE: (lib)/memory/move_memory
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: (lib)/memory/set_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: (lib)/memory/compare_memory
  FUNCTION_PROTOTYPE: compare_memory
  CLASS_PROTOTYPE: (lib)/regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: (lib)/set/Set
  PROPERTY: (lib)/set/Set#size
  CLASS_PROTOTYPE: Set
  GLOBAL: (lib)/string/EMPTY
  GLOBAL: (lib)/string/HEAD
  FUNCTION_PROTOTYPE: (lib)/string/allocate
  CLASS_PROTOTYPE: (lib)/string/String
  FUNCTION_PROTOTYPE: (lib)/string/String.__concat
  FUNCTION_PROTOTYPE: (lib)/string/String.__eq
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: (lib)/string/isWhiteSpaceOrLineTerminator
  ENUM: (lib)/string/CharCode
  FUNCTION_PROTOTYPE: (lib)/string/parseInt
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: (lib)/string/parseI32
  FUNCTION_PROTOTYPE: parseI32
  FUNCTION_PROTOTYPE: (lib)/string/parseI64
  FUNCTION_PROTOTYPE: parseI64
  FUNCTION_PROTOTYPE: (lib)/string/parse
  FUNCTION_PROTOTYPE: (lib)/string/parseFloat
  FUNCTION_PROTOTYPE: parseFloat
  GLOBAL: std/carray/arr
[program.exports]
  CLASS_PROTOTYPE: (lib)/array/Array
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: (lib)/array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: (lib)/error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: (lib)/error/RangeError
  CLASS_PROTOTYPE: RangeError
  CLASS_PROTOTYPE: (lib)/map/Map
  CLASS_PROTOTYPE: Map
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: (lib)/memory/move_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: (lib)/memory/set_memory
  FUNCTION_PROTOTYPE: compare_memory
  FUNCTION_PROTOTYPE: (lib)/memory/compare_memory
  CLASS_PROTOTYPE: (lib)/regexp/RegExp
  CLASS_PROTOTYPE: RegExp
  CLASS_PROTOTYPE: (lib)/set/Set
  CLASS_PROTOTYPE: Set
  CLASS_PROTOTYPE: (lib)/string/String
  CLASS_PROTOTYPE: String
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: (lib)/string/parseInt
  FUNCTION_PROTOTYPE: parseI32
  FUNCTION_PROTOTYPE: (lib)/string/parseI32
  FUNCTION_PROTOTYPE: parseI64
  FUNCTION_PROTOTYPE: (lib)/string/parseI64
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: (lib)/string/parseFloat
;)
