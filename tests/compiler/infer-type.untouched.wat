(module
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_f32 (func (result f32)))
 (type $none_=>_f64 (func (result f64)))
 (memory $0 0)
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
 (export "memory" (memory $0))
 (start $start)
 (func $infer-type/locals (; 0 ;)
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
 (func $infer-type/reti (; 1 ;) (result i32)
  i32.const 0
 )
 (func $infer-type/retI (; 2 ;) (result i64)
  i64.const 0
 )
 (func $infer-type/retf (; 3 ;) (result f32)
  f32.const 0
 )
 (func $infer-type/refF (; 4 ;) (result f64)
  f64.const 0
 )
 (func $start:infer-type (; 5 ;)
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
   i32.const 0
   local.set $0
   i32.const 10
   local.set $1
   loop $loop|0
    local.get $0
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
   unreachable
  end
 )
 (func $start (; 6 ;)
  call $start:infer-type
 )
 (func $null (; 7 ;)
  unreachable
 )
)
