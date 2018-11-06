(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00f\00e\00r\00-\00t\00y\00p\00e\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $infer-type/locals)
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $infer-type/locals (; 0 ;) (type $v)
  nop
 )
 (func $infer-type/reti (; 1 ;) (type $i) (result i32)
  i32.const 0
 )
 (func $infer-type/retI (; 2 ;) (type $I) (result i64)
  i64.const 0
 )
 (func $infer-type/retf (; 3 ;) (type $f) (result f32)
  f32.const 0
 )
 (func $infer-type/refF (; 4 ;) (type $F) (result f64)
  f64.const 0
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  call $infer-type/locals
  call $infer-type/reti
  set_global $infer-type/ri
  call $infer-type/retI
  set_global $infer-type/rI
  call $infer-type/retf
  set_global $infer-type/rf
  call $infer-type/refF
  set_global $infer-type/rF
  block $break|0
   loop $repeat|0
    get_local $0
    i32.const 10
    i32.ge_s
    br_if $break|0
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
)
