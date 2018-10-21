(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00s\00w\00i\00t\00c\00h\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $switch/doSwitch (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $case4|0
   (block $case2|0
    (if
     (i32.ne
      (get_local $0)
      (i32.const 1)
     )
     (block
      (br_if $case2|0
       (i32.eqz
        (tee_local $1
         (get_local $0)
        )
       )
      )
      (br_if $case4|0
       (i32.eq
        (get_local $1)
        (i32.const 2)
       )
      )
      (br_if $case4|0
       (i32.eq
        (get_local $1)
        (i32.const 3)
       )
      )
      (br $case2|0)
     )
    )
    (return
     (i32.const 1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 23)
 )
 (func $switch/doSwitchDefaultOmitted (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $break|0
   (block $case2|0
    (if
     (i32.ne
      (get_local $0)
      (i32.const 1)
     )
     (block
      (br_if $case2|0
       (i32.eq
        (tee_local $1
         (get_local $0)
        )
        (i32.const 2)
       )
      )
      (br_if $case2|0
       (i32.eq
        (get_local $1)
        (i32.const 3)
       )
      )
      (br $break|0)
     )
    )
    (return
     (i32.const 1)
    )
   )
   (return
    (i32.const 23)
   )
  )
  (i32.const 0)
 )
 (func $switch/doSwitchBreakCase (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (block $break|0
   (br_if $break|0
    (i32.eq
     (get_local $0)
     (i32.const 1)
    )
   )
   (return
    (i32.const 2)
   )
  )
  (i32.const 1)
 )
 (func $switch/doSwitchBreakDefault (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (block $break|0
   (block $case1|0
    (br_if $break|0
     (i32.ne
      (get_local $0)
      (i32.const 1)
     )
    )
    (return
     (i32.const 1)
    )
   )
  )
  (i32.const 2)
 )
 (func $switch/doSwitchFallThroughCase (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.ne
    (get_local $0)
    (i32.const 1)
   )
   (return
    (i32.const 2)
   )
  )
  (i32.const 1)
 )
 (func $switch/doSwitchFallThroughDefault (; 6 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (i32.const 1)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 2)
 )
 (func $switch/doSwitchEmpty (; 7 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 2)
 )
 (func $start (; 8 ;) (; has Stack IR ;) (type $v)
  (if
   (call $switch/doSwitch
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitch
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitch
     (i32.const 2)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitch
     (i32.const 3)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $switch/doSwitch
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $switch/doSwitch
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitch
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitch
     (i32.const 2)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitch
     (i32.const 3)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $switch/doSwitch
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $switch/doSwitchDefaultOmitted
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchDefaultOmitted
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchDefaultOmitted
     (i32.const 2)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchDefaultOmitted
     (i32.const 3)
    )
    (i32.const 23)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $switch/doSwitchDefaultOmitted
    (i32.const 4)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchBreakCase
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 51)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchBreakCase
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 52)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchBreakCase
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchBreakDefault
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchBreakDefault
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchBreakDefault
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchFallThroughCase
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 73)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchFallThroughCase
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchFallThroughCase
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchFallThroughDefault
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchFallThroughDefault
     (i32.const 1)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 85)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchFallThroughDefault
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 86)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchEmpty)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchEmpty)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $switch/doSwitchEmpty)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 94)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
 (func $null (; 9 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
