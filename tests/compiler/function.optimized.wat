(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$f (func (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $function/v)
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
 (func $function/iv (; 5 ;) (type $FUNCSIG$v)
  nop
 )
 (func $function/ii (; 6 ;) (type $FUNCSIG$i) (result i32)
  i32.const 0
 )
 (func $function/II (; 7 ;) (type $FUNCSIG$j) (result i64)
  i64.const 0
 )
 (func $function/ff (; 8 ;) (type $FUNCSIG$f) (result f32)
  f32.const 0
 )
 (func $function/FF (; 9 ;) (type $FUNCSIG$d) (result f64)
  f64.const 0
 )
 (func $function/iii (; 10 ;) (type $FUNCSIG$i) (result i32)
  i32.const 3
 )
 (func $function/III (; 11 ;) (type $FUNCSIG$j) (result i64)
  i64.const 3
 )
 (func $function/fff (; 12 ;) (type $FUNCSIG$f) (result f32)
  f32.const 3
 )
 (func $function/FFF (; 13 ;) (type $FUNCSIG$d) (result f64)
  f64.const 3
 )
 (func $start (; 14 ;) (type $v)
  call $function/v
  call $function/i
  drop
  call $function/I
  drop
  call $function/f
  drop
  call $function/F
  drop
  call $function/iv
  call $function/ii
  drop
  call $function/II
  drop
  call $function/ff
  drop
  call $function/FF
  drop
  call $function/iv
  call $function/iii
  drop
  call $function/III
  drop
  call $function/fff
  drop
  call $function/FFF
  drop
 )
)
