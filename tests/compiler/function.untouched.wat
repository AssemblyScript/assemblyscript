(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$f (func (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$jji (func (param i64 i32) (result i64)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $function/v (; 0 ;) (type $FUNCSIG$v)
  nop
 )
 (func $function/i (; 1 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
 )
 (func $function/I (; 2 ;) (type $FUNCSIG$j) (result i64)
  i64.const 0
 )
 (func $function/f (; 3 ;) (type $FUNCSIG$f) (result f32)
  f32.const 0
 )
 (func $function/F (; 4 ;) (type $FUNCSIG$d) (result f64)
  f64.const 0
 )
 (func $function/iv (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $function/ii (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $function/II (; 7 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  local.get $0
 )
 (func $function/ff (; 8 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  local.get $0
 )
 (func $function/FF (; 9 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  local.get $0
 )
 (func $function/iiv (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $function/iii (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function/III (; 12 ;) (type $FUNCSIG$jji) (param $0 i64) (param $1 i32) (result i64)
  local.get $0
  local.get $1
  i64.extend_i32_s
  i64.add
 )
 (func $function/fff (; 13 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $function/FFF (; 14 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $start:function (; 15 ;) (type $FUNCSIG$v)
  call $function/v
  call $function/i
  drop
  call $function/I
  drop
  call $function/f
  drop
  call $function/F
  drop
  i32.const 0
  call $function/iv
  i32.const 0
  call $function/ii
  drop
  i64.const 0
  call $function/II
  drop
  f32.const 0
  call $function/ff
  drop
  f64.const 0
  call $function/FF
  drop
  i32.const 1
  i32.const 2
  call $function/iiv
  i32.const 1
  i32.const 2
  call $function/iii
  drop
  i64.const 1
  i32.const 2
  call $function/III
  drop
  f32.const 1
  f32.const 2
  call $function/fff
  drop
  f64.const 1
  f64.const 2
  call $function/FFF
  drop
 )
 (func $start (; 16 ;) (type $FUNCSIG$v)
  call $start:function
 )
 (func $null (; 17 ;) (type $FUNCSIG$v)
 )
)
