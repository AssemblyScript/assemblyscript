(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $overflow/badByte (mut i32) (i32.const 255))
 (global $overflow/anotherBadByte (mut i32) (i32.const 255))
 (global $overflow/badIncrementer (mut i32) (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $overflow/local (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ overflow.ts:11:2
  (set_local $0
   ;;@ overflow.ts:11:20
   (i32.const 255)
  )
  ;;@ overflow.ts:12:2
  (set_local $0
   (i32.and
    (i32.add
     (get_local $0)
     ;;@ overflow.ts:12:13
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:13:2
  (if
   (i32.eqz
    ;;@ overflow.ts:13:9
    (i32.eq
     (get_local $0)
     ;;@ overflow.ts:13:20
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:15:2
  (set_local $1
   ;;@ overflow.ts:15:27
   (i32.const 255)
  )
  ;;@ overflow.ts:16:2
  (set_local $2
   ;;@ overflow.ts:16:27
   (i32.const 1)
  )
  ;;@ overflow.ts:17:2
  (set_local $1
   (i32.and
    (i32.add
     (get_local $1)
     ;;@ overflow.ts:17:20
     (get_local $2)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:18:2
  (if
   (i32.eqz
    ;;@ overflow.ts:18:9
    (i32.eq
     (get_local $1)
     ;;@ overflow.ts:18:27
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 18)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 2 ;) (type $v)
  ;;@ overflow.ts:2:0
  (set_global $overflow/badByte
   (i32.and
    (i32.add
     (get_global $overflow/badByte)
     ;;@ overflow.ts:2:11
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:3:0
  (if
   (i32.eqz
    ;;@ overflow.ts:3:7
    (i32.eq
     (get_global $overflow/badByte)
     ;;@ overflow.ts:3:18
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ overflow.ts:7:0
  (set_global $overflow/anotherBadByte
   (i32.and
    (i32.add
     (get_global $overflow/anotherBadByte)
     ;;@ overflow.ts:7:18
     (get_global $overflow/badIncrementer)
    )
    (i32.const 255)
   )
  )
  ;;@ overflow.ts:8:0
  (if
   (i32.eqz
    ;;@ overflow.ts:8:7
    (i32.eq
     (get_global $overflow/anotherBadByte)
     ;;@ overflow.ts:8:25
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
  ;;@ overflow.ts:21:0
  (call $overflow/local)
 )
)
