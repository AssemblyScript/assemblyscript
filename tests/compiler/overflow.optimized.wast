(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $overflow/badByte (mut i32) (i32.const 255))
 (global $overflow/anotherBadByte (mut i32) (i32.const 255))
 (global $overflow/badIncrementer (mut i32) (i32.const 1))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $overflow/local (; 1 ;) (type $v)
  (nop)
 )
 (func $start (; 2 ;) (type $v)
  (set_global $overflow/badByte
   (i32.and
    (i32.add
     (get_global $overflow/badByte)
     (i32.const 1)
    )
    (i32.const 255)
   )
  )
  (if
   (get_global $overflow/badByte)
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
  (set_global $overflow/anotherBadByte
   (i32.and
    (i32.add
     (get_global $overflow/anotherBadByte)
     (get_global $overflow/badIncrementer)
    )
    (i32.const 255)
   )
  )
  (if
   (get_global $overflow/anotherBadByte)
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
  (call $overflow/local)
 )
)
