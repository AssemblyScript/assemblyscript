(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$f (func (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00f\00e\00r\00-\00t\00y\00p\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $infer-type/i i32 (i32.const 10))
 (global $infer-type/I i64 (i64.const 4294967296))
 (global $infer-type/F f64 (f64.const 1.5))
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (global $infer-type/inferi (mut i32) (i32.const -2147483648))
 (global $infer-type/inferu (mut i32) (i32.const 2147483647))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 40))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $infer-type/locals (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  i32.const 10
  local.set $0
  i64.const 4294967296
  local.set $1
  f64.const 1.5
  local.set $2
  global.get $infer-type/i
  local.set $3
  global.get $infer-type/I
  local.set $4
  global.get $infer-type/F
  local.set $5
 )
 (func $infer-type/reti (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
 )
 (func $infer-type/retI (; 3 ;) (type $FUNCSIG$j) (result i64)
  i64.const 0
 )
 (func $infer-type/retf (; 4 ;) (type $FUNCSIG$f) (result f32)
  f32.const 0
 )
 (func $infer-type/refF (; 5 ;) (type $FUNCSIG$d) (result f64)
  f64.const 0
 )
 (func $start:infer-type (; 6 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  global.get $infer-type/i
  drop
  global.get $infer-type/I
  drop
  global.get $infer-type/F
  drop
  call $infer-type/locals
  call $infer-type/reti
  global.set $infer-type/ri
  global.get $infer-type/ri
  drop
  call $infer-type/retI
  global.set $infer-type/rI
  global.get $infer-type/rI
  drop
  call $infer-type/retf
  global.set $infer-type/rf
  global.get $infer-type/rf
  drop
  call $infer-type/refF
  global.set $infer-type/rF
  global.get $infer-type/rF
  drop
  block $break|0
   block
    i32.const 0
    local.set $0
    i32.const 10
    local.set $1
   end
   loop $repeat|0
    local.get $0
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 52
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 7 ;) (type $FUNCSIG$v)
  call $start:infer-type
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
 )
)
