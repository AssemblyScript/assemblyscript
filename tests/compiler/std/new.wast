(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $v (func))
 (global "$(lib)/allocator/arena/ALIGN_LOG2" i32 (i32.const 3))
 (global "$(lib)/allocator/arena/ALIGN_SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/arena/ALIGN_MASK" i32 (i32.const 7))
 (global "$(lib)/allocator/arena/HEAP_OFFSET" (mut i32) (i32.const 0))
 (global $std/new/aClass (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/allocator/arena.ts:14:2
  (if
   ;;@ (lib)/allocator/arena.ts:14:6
   (i32.eqz
    ;;@ (lib)/allocator/arena.ts:14:7
    (get_local $0)
   )
   ;;@ (lib)/allocator/arena.ts:14:20
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/allocator/arena.ts:15:2
  (set_local $1
   ;;@ (lib)/allocator/arena.ts:15:12
   (get_global "$(lib)/allocator/arena/HEAP_OFFSET")
  )
  ;;@ (lib)/allocator/arena.ts:16:2
  (set_local $2
   ;;@ (lib)/allocator/arena.ts:16:12
   (i32.and
    (i32.add
     ;;@ (lib)/allocator/arena.ts:16:13
     (i32.add
      (get_local $1)
      ;;@ (lib)/allocator/arena.ts:16:19
      (get_local $0)
     )
     ;;@ (lib)/allocator/arena.ts:16:26
     (i32.const 7)
    )
    ;;@ (lib)/allocator/arena.ts:16:40
    (i32.xor
     ;;@ (lib)/allocator/arena.ts:16:41
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  ;;@ (lib)/allocator/arena.ts:17:2
  (set_local $3
   ;;@ (lib)/allocator/arena.ts:17:14
   (i32.shl
    (current_memory)
    ;;@ (lib)/allocator/arena.ts:17:41
    (i32.const 16)
   )
  )
  ;;@ (lib)/allocator/arena.ts:18:2
  (if
   ;;@ (lib)/allocator/arena.ts:18:6
   (i32.and
    (if (result i32)
     (i32.ne
      (tee_local $4
       (i32.gt_u
        (get_local $2)
        ;;@ (lib)/allocator/arena.ts:18:12
        (get_local $3)
       )
      )
      (i32.const 0)
     )
     ;;@ (lib)/allocator/arena.ts:18:21
     (i32.lt_s
      (grow_memory
       ;;@ (lib)/allocator/arena.ts:19:4
       (select
        (tee_local $4
         ;;@ (lib)/allocator/arena.ts:20:6
         (i32.shr_u
          (i32.sub
           ;;@ (lib)/allocator/arena.ts:20:7
           (i32.and
            ;;@ (lib)/allocator/arena.ts:20:8
            (i32.add
             ;;@ (lib)/allocator/arena.ts:20:9
             (get_local $2)
             ;;@ (lib)/allocator/arena.ts:20:15
             (i32.const 65535)
            )
            ;;@ (lib)/allocator/arena.ts:20:25
            (i32.xor
             ;;@ (lib)/allocator/arena.ts:20:26
             (i32.const 65535)
             (i32.const -1)
            )
           )
           ;;@ (lib)/allocator/arena.ts:20:36
           (get_local $3)
          )
          ;;@ (lib)/allocator/arena.ts:20:46
          (i32.const 16)
         )
        )
        (tee_local $5
         ;;@ (lib)/allocator/arena.ts:21:6
         (i32.shr_u
          (get_local $3)
          ;;@ (lib)/allocator/arena.ts:21:46
          (i32.const 16)
         )
        )
        (i32.gt_u
         (get_local $4)
         (get_local $5)
        )
       )
      )
      ;;@ (lib)/allocator/arena.ts:23:6
      (i32.const 0)
     )
     (get_local $4)
    )
    (i32.const 1)
   )
   ;;@ (lib)/allocator/arena.ts:23:9
   (unreachable)
  )
  ;;@ (lib)/allocator/arena.ts:24:2
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:24:16
   (get_local $2)
  )
  ;;@ (lib)/allocator/arena.ts:25:9
  (return
   (get_local $1)
  )
 )
 (func $std/new/AClass#constructor (; 1 ;) (type $ifv) (param $0 i32) (param $1 f32)
  ;;@ std/new.ts:8:4
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    ;;@ std/new.ts:8:19
    (i32.const 1)
   )
  )
  ;;@ std/new.ts:9:4
  (f32.store offset=4
   (get_local $0)
   ;;@ std/new.ts:9:24
   (get_local $1)
  )
 )
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (set_global "$(lib)/allocator/arena/HEAP_OFFSET"
   ;;@ (lib)/allocator/arena.ts:11:25
   (get_global $HEAP_BASE)
  )
  (set_global $std/new/aClass
   ;;@ std/new.ts:13:13
   (block (result i32)
    (set_local $0
     (call "$(lib)/allocator/arena/allocate_memory"
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $0)
     ;;@ std/new.ts:5:16
     (i32.const 1)
    )
    (f32.store offset=4
     (get_local $0)
     ;;@ std/new.ts:6:22
     (f32.const 2)
    )
    (call $std/new/AClass#constructor
     (get_local $0)
     ;;@ std/new.ts:13:24
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
  CLASS_PROTOTYPE: std/new/AClass
  GLOBAL: std/new/AClass.aStaticField
  GLOBAL: std/new/aClass
  GLOBAL: (lib)/allocator/arena/ALIGN_LOG2
  GLOBAL: (lib)/allocator/arena/ALIGN_SIZE
  GLOBAL: (lib)/allocator/arena/ALIGN_MASK
  GLOBAL: (lib)/allocator/arena/HEAP_OFFSET
  FUNCTION_PROTOTYPE: (lib)/allocator/arena/allocate_memory
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: (lib)/allocator/arena/free_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: (lib)/allocator/arena/reset_memory
  FUNCTION_PROTOTYPE: reset_memory
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
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: (lib)/allocator/arena/allocate_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: (lib)/allocator/arena/free_memory
  FUNCTION_PROTOTYPE: reset_memory
  FUNCTION_PROTOTYPE: (lib)/allocator/arena/reset_memory
;)
