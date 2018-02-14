(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $overflow/badByte (mut i32) (i32.const 255))
 (global $overflow/anotherBadByte (mut i32) (i32.const 255))
 (global $overflow/badIncrementer (mut i32) (i32.const 1))
 (global $overflow/valueU8 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $overflow/local (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ overflow.ts:13:2
  (set_local $0
   ;;@ overflow.ts:13:20
   (i32.const 255)
  )
  ;;@ overflow.ts:14:2
  (set_local $0
   (i32.and
    (i32.add
     (get_local $0)
     ;;@ overflow.ts:14:13
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:15:2
  (if
   (i32.eqz
    ;;@ overflow.ts:15:9
    (i32.eq
     (get_local $0)
     ;;@ overflow.ts:15:20
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 15)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:17:2
  (set_local $1
   ;;@ overflow.ts:17:27
   (i32.const 255)
  )
  ;;@ overflow.ts:18:2
  (set_local $2
   ;;@ overflow.ts:18:27
   (i32.const 1)
  )
  ;;@ overflow.ts:19:2
  (set_local $1
   (i32.and
    (i32.add
     (get_local $1)
     ;;@ overflow.ts:19:20
     (get_local $2)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:20:2
  (if
   (i32.eqz
    ;;@ overflow.ts:20:9
    (i32.eq
     (get_local $1)
     ;;@ overflow.ts:20:27
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $overflow/loadU8FF (; 2 ;) (type $i) (result i32)
  ;;@ overflow.ts:26:2
  (i32.store8
   ;;@ overflow.ts:26:12
   (i32.const 0)
   ;;@ overflow.ts:26:15
   (i32.const 255)
  )
  ;;@ overflow.ts:27:19
  (return
   ;;@ overflow.ts:27:9
   (i32.load8_u
    ;;@ overflow.ts:27:18
    (i32.const 0)
   )
  )
 )
 (func $overflow/storeU8FFadd1 (; 3 ;) (type $iv) (param $0 i32)
  ;;@ overflow.ts:35:2
  (i32.store8
   ;;@ overflow.ts:35:12
   (i32.const 0)
   ;;@ overflow.ts:35:15
   (get_local $0)
  )
  ;;@ overflow.ts:36:2
  (if
   (i32.eqz
    ;;@ overflow.ts:36:9
    (i32.eq
     (i32.load8_u
      ;;@ overflow.ts:36:18
      (i32.const 0)
     )
     ;;@ overflow.ts:36:24
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 36)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  ;;@ overflow.ts:4:0
  (set_global $overflow/badByte
   (i32.and
    (i32.add
     (get_global $overflow/badByte)
     ;;@ overflow.ts:4:11
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:5:0
  (if
   (i32.eqz
    ;;@ overflow.ts:5:7
    (i32.eq
     (get_global $overflow/badByte)
     ;;@ overflow.ts:5:18
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:9:0
  (set_global $overflow/anotherBadByte
   (i32.and
    (i32.add
     (get_global $overflow/anotherBadByte)
     ;;@ overflow.ts:9:18
     (get_global $overflow/badIncrementer)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:10:0
  (if
   (i32.eqz
    ;;@ overflow.ts:10:7
    (i32.eq
     (get_global $overflow/anotherBadByte)
     ;;@ overflow.ts:10:25
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:23:0
  (call $overflow/local)
  (set_global $overflow/valueU8
   ;;@ overflow.ts:30:18
   (call $overflow/loadU8FF)
  )
  ;;@ overflow.ts:31:0
  (set_global $overflow/valueU8
   (i32.and
    (i32.add
     (get_global $overflow/valueU8)
     ;;@ overflow.ts:31:11
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:32:0
  (if
   (i32.eqz
    ;;@ overflow.ts:32:7
    (i32.eq
     (get_global $overflow/valueU8)
     ;;@ overflow.ts:32:18
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:39:0
  (set_global $overflow/valueU8
   ;;@ overflow.ts:39:10
   (i32.const 255)
  )
  ;;@ overflow.ts:40:0
  (call $overflow/storeU8FFadd1
   ;;@ overflow.ts:40:14
   (i32.and
    (i32.add
     (get_global $overflow/valueU8)
     ;;@ overflow.ts:40:24
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:42:0
  (i32.store8
   ;;@ overflow.ts:42:10
   (i32.const 0)
   ;;@ overflow.ts:42:13
   (i32.and
    (i32.add
     (get_global $overflow/valueU8)
     ;;@ overflow.ts:42:23
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:43:0
  (if
   (i32.eqz
    ;;@ overflow.ts:43:7
    (i32.eq
     (i32.load8_u
      ;;@ overflow.ts:43:16
      (i32.const 0)
     )
     ;;@ overflow.ts:43:22
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 43)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:45:0
  (i32.store8
   ;;@ overflow.ts:45:10
   (i32.const 0)
   ;;@ overflow.ts:45:13
   (block (result i32)
    (set_global $overflow/valueU8
     (i32.and
      (i32.add
       ;;@ overflow.ts:45:15
       (get_global $overflow/valueU8)
       (i32.const 1)
      )
      (i32.const 255)
     )
    )
    (get_global $overflow/valueU8)
   )
  )
  ;;@ overflow.ts:46:0
  (if
   (i32.eqz
    ;;@ overflow.ts:46:7
    (i32.eq
     (i32.load8_u
      ;;@ overflow.ts:46:16
      (i32.const 0)
     )
     ;;@ overflow.ts:46:22
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 46)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:47:0
  (if
   (i32.eqz
    ;;@ overflow.ts:47:7
    (i32.eq
     (get_global $overflow/valueU8)
     ;;@ overflow.ts:47:18
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 47)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
