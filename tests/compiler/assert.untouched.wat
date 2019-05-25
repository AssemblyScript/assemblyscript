(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 48) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00m\00u\00s\00t\00 \00b\00e\00 \00t\00r\00u\00e\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (start $start)
 (func $start:assert (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 1
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 0
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 3
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const 0
  f64.eq
  if
   i32.const 0
   i32.const 24
   i32.const 4
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0.5
  f64.const 0.4
  f64.gt
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4294967296
  i64.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 6
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 4294967296
  i64.const 1
  i64.gt_s
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  local.tee $0
  if (result i32)
   local.get $0
  else   
   i32.const 64
   i32.const 24
   i32.const 10
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.eqz
  if
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:assert
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
