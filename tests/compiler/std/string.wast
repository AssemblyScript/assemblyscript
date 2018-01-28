(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $std/string/str (mut i32) (i32.const 8))
 (global $std:string/HEAD i32 (i32.const 4))
 (global $HEAP_BASE i32 (i32.const 118))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 48) "\02\00\00\00h\00i\00")
 (data (i32.const 56) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 72) "\06\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 88) "\03\00\00\00I\00\'\00m\00")
 (data (i32.const 104) "\01\00\00\00,\00")
 (data (i32.const 112) "\01\00\00\00x\00")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func $std:string/String#charCodeAt (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.sub
     (i32.const 0)
     (i32.const 1)
    )
   )
  )
  (return
   (i32.load16_u offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std:heap/compare_memory (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      (i32.eq
       (i32.load8_u
        (get_local $0)
       )
       (i32.load8_u
        (get_local $1)
       )
      )
      (get_local $2)
     )
     (block
      (block
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (if (result i32)
    (get_local $2)
    (i32.sub
     (i32.load8_u
      (get_local $0)
     )
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $std:string/String#startsWith (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 56)
   )
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $2)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (get_local $4)
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.gt_s
    (i32.add
     (get_local $8)
     (get_local $7)
    )
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (return
   (i32.eqz
    (call $std:heap/compare_memory
     (i32.add
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $8)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std:string/String#endsWith (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $5
   (select
    (tee_local $3
     (select
      (tee_local $3
       (get_local $2)
      )
      (tee_local $4
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $4)
      )
     )
    )
    (tee_local $4
     (i32.load
      (get_local $0)
     )
    )
    (i32.lt_s
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $7
   (i32.sub
    (get_local $5)
    (get_local $6)
   )
  )
  (if
   (i32.lt_s
    (get_local $7)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (return
   (i32.eqz
    (call $std:heap/compare_memory
     (i32.add
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
      (i32.shl
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std:string/String#indexOf (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 56)
   )
  )
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (select
    (tee_local $5
     (select
      (tee_local $5
       (get_local $3)
      )
      (tee_local $6
       (i32.const 0)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (tee_local $6
     (get_local $4)
    )
    (i32.lt_s
     (get_local $5)
     (get_local $6)
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $9
    (get_local $7)
   )
   (loop $continue|0
    (if
     (i32.le_s
      (i32.add
       (get_local $9)
       (get_local $8)
      )
      (get_local $4)
     )
     (block
      (if
       (i32.eqz
        (call $std:heap/compare_memory
         (i32.add
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.shl
           (get_local $9)
           (i32.const 1)
          )
         )
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
         (i32.shl
          (get_local $8)
          (i32.const 1)
         )
        )
       )
       (return
        (get_local $9)
       )
      )
      (set_local $9
       (i32.add
        (get_local $9)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.sub
    (i32.const 0)
    (i32.const 1)
   )
  )
 )
 (func $std:string/String#includes (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (return
   (i32.ne
    (call $std:string/String#indexOf
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (i32.sub
     (i32.const 0)
     (i32.const 1)
    )
   )
  )
 )
 (func $std/string/getString (; 6 ;) (type $i) (result i32)
  (return
   (get_global $std/string/str)
  )
 )
 (func $start (; 7 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/string/str)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load
      (get_global $std/string/str)
     )
     (i32.const 16)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:string/String#charCodeAt
      (get_global $std/string/str)
      (i32.const 0)
     )
     (i32.const 104)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#startsWith
     (get_global $std/string/str)
     (i32.const 48)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#endsWith
     (get_global $std/string/str)
     (i32.const 72)
     (i32.const 2147483647)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#includes
     (get_global $std/string/str)
     (i32.const 88)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:string/String#indexOf
      (get_global $std/string/str)
      (i32.const 104)
      (i32.const 0)
     )
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std:string/String#indexOf
      (get_global $std/string/str)
      (i32.const 112)
      (i32.const 0)
     )
     (i32.sub
      (i32.const 0)
      (i32.const 1)
     )
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
  GLOBAL: std:heap/ALIGN_LOG2
  GLOBAL: std:heap/ALIGN_SIZE
  GLOBAL: std:heap/ALIGN_MASK
  GLOBAL: std:heap/HEAP_OFFSET
  FUNCTION_PROTOTYPE: std:heap/allocate_memory
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: std:heap/free_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: std:heap/copy_memory
  FUNCTION_PROTOTYPE: std:heap/move_memory
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: std:heap/set_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: std:heap/compare_memory
  FUNCTION_PROTOTYPE: compare_memory
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: Map
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
  FUNCTION_PROTOTYPE: std:string/parseInt
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: std:string/parseFloat
  FUNCTION_PROTOTYPE: parseFloat
  GLOBAL: std/string/str
  FUNCTION_PROTOTYPE: std/string/getString
[program.exports]
  CLASS_PROTOTYPE: std:array/Array
  CLASS_PROTOTYPE: Array
  CLASS_PROTOTYPE: std:array/CArray
  CLASS_PROTOTYPE: CArray
  CLASS_PROTOTYPE: std:error/Error
  CLASS_PROTOTYPE: Error
  CLASS_PROTOTYPE: std:error/RangeError
  CLASS_PROTOTYPE: RangeError
  FUNCTION_PROTOTYPE: allocate_memory
  FUNCTION_PROTOTYPE: std:heap/allocate_memory
  FUNCTION_PROTOTYPE: free_memory
  FUNCTION_PROTOTYPE: std:heap/free_memory
  FUNCTION_PROTOTYPE: move_memory
  FUNCTION_PROTOTYPE: std:heap/move_memory
  FUNCTION_PROTOTYPE: set_memory
  FUNCTION_PROTOTYPE: std:heap/set_memory
  FUNCTION_PROTOTYPE: compare_memory
  FUNCTION_PROTOTYPE: std:heap/compare_memory
  CLASS_PROTOTYPE: std:map/Map
  CLASS_PROTOTYPE: Map
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
  FUNCTION_PROTOTYPE: std/string/getString
;)
