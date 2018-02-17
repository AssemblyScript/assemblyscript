(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $std/carray/arr (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00s\00t\00d\00/\00c\00a\00r\00r\00a\00y\00.\00t\00s\00")
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
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
     (i32.const 4)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
