(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $II (func (param i64) (result i64)))
 (type $ff (func (param f32) (result f32)))
 (type $FF (func (param f64) (result f64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $IiI (func (param i64 i32) (result i64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $function/v (; 0 ;) (type $v)
  nop
 )
 (func $function/i (; 1 ;) (type $i) (result i32)
  i32.const 0
 )
 (func $function/I (; 2 ;) (type $I) (result i64)
  i64.const 0
 )
 (func $function/f (; 3 ;) (type $f) (result f32)
  f32.const 0
 )
 (func $function/F (; 4 ;) (type $F) (result f64)
  f64.const 0
 )
 (func $function/iv (; 5 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $function/ii (; 6 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
 )
 (func $function/II (; 7 ;) (type $II) (param $0 i64) (result i64)
  get_local $0
 )
 (func $function/ff (; 8 ;) (type $ff) (param $0 f32) (result f32)
  get_local $0
 )
 (func $function/FF (; 9 ;) (type $FF) (param $0 f64) (result f64)
  get_local $0
 )
 (func $function/iiv (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  nop
 )
 (func $function/iii (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $function/III (; 12 ;) (type $IiI) (param $0 i64) (param $1 i32) (result i64)
  get_local $0
  get_local $1
  i64.extend_s/i32
  i64.add
 )
 (func $function/fff (; 13 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  get_local $0
  get_local $1
  f32.add
 )
 (func $function/FFF (; 14 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  get_local $0
  get_local $1
  f64.add
 )
 (func $start (; 15 ;) (type $v)
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
 (func $null (; 16 ;) (type $v)
 )
)
