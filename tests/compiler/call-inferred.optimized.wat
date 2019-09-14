(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00i\00n\00f\00e\00r\00r\00e\00d\00.\00t\00s")
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:call-inferred (; 1 ;) (type $FUNCSIG$v)
  (local $0 f32)
  i32.const 0
  global.set $~lib/argc
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 42
   local.set $0
  end
  local.get $0
  f32.const 42
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:call-inferred
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
