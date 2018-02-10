(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $overflow/badByte (mut i32) (i32.const 255))
 (global $overflow/anotherBadByte (mut i32) (i32.const 255))
 (global $overflow/badIncrementer (mut i32) (i32.const 1))
 (global $overflow/valueU8 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s\00")
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
     (i32.const 8)
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
     (i32.const 8)
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
 (func $start (; 3 ;) (type $v)
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
     (i32.const 8)
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
     (i32.const 8)
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
     (i32.const 8)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
