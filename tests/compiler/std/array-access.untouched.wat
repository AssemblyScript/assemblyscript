(module
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $~lib/string/HEADER_SIZE i32 (i32.const 4))
 (global $argumentCount (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 52))
 (memory $0 1)
 (data (i32.const 4) "\00\00\00\00")
 (data (i32.const 8) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 40) "\04\00\00\00n\00u\00l\00l\00")
 (export "i32ArrayArrayElementAccess" (func $std/array-access/i32ArrayArrayElementAccess))
 (export "stringArrayPropertyAccess" (func $std/array-access/stringArrayPropertyAccess))
 (export "stringArrayMethodCall" (func $std/array-access/stringArrayMethodCall))
 (export "stringArrayArrayPropertyAccess" (func $std/array-access/stringArrayArrayPropertyAccess))
 (export "stringArrayArrayMethodCall" (func $std/array-access/stringArrayArrayMethodCall))
 (export "memory" (memory $0))
 (func $~lib/array/Array<Array<i32>>#__get (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (unreachable)
  )
  (return
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (get_local $1)
      (i32.const 4)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<i32>#__get (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (unreachable)
  )
  (return
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (get_local $1)
      (i32.const 4)
     )
    )
   )
  )
 )
 (func $std/array-access/i32ArrayArrayElementAccess (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/array/Array<i32>#__get
    (call $~lib/array/Array<Array<i32>>#__get
     (get_local $0)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/array/Array<String>#__get (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (unreachable)
  )
  (return
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (get_local $1)
      (i32.const 4)
     )
    )
   )
  )
 )
 (func $std/array-access/stringArrayPropertyAccess (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load
    (call $~lib/array/Array<String>#__get
     (get_local $0)
     (i32.const 0)
    )
   )
  )
 )
 (func $~lib/memory/compare_memory (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      (get_local $2)
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
 (func $~lib/string/String.__eq (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.eqz
     (get_local $1)
    )
   )
   (if
    (i32.eqz
     (get_local $1)
    )
    (return
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $2)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (return
   (i32.eqz
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/string/String.__ne (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/string/String#startsWith (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 243)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 40)
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
    (call $~lib/memory/compare_memory
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
 (func $~lib/string/String#startsWith|trampoline (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $argumentCount)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $~lib/string/String#startsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/array-access/stringArrayMethodCall (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call $~lib/string/String#startsWith|trampoline
     (call $~lib/array/Array<String>#__get
      (get_local $0)
      (i32.const 0)
     )
     (i32.const 4)
     (i32.const 0)
    )
   )
  )
 )
 (func $~lib/array/Array<Array<String>>#__get (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
   )
   (unreachable)
  )
  (return
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.mul
      (get_local $1)
      (i32.const 4)
     )
    )
   )
  )
 )
 (func $std/array-access/stringArrayArrayPropertyAccess (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load
    (call $~lib/array/Array<String>#__get
     (call $~lib/array/Array<Array<String>>#__get
      (get_local $0)
      (i32.const 0)
     )
     (i32.const 1)
    )
   )
  )
 )
 (func $std/array-access/stringArrayArrayMethodCall (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (block (result i32)
    (set_global $argumentCount
     (i32.const 1)
    )
    (call $~lib/string/String#startsWith|trampoline
     (call $~lib/array/Array<String>#__get
      (call $~lib/array/Array<Array<String>>#__get
       (get_local $0)
       (i32.const 0)
      )
      (i32.const 1)
     )
     (i32.const 4)
     (i32.const 0)
    )
   )
  )
 )
)
