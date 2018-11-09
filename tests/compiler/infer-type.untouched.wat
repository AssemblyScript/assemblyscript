(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00i\00n\00f\00e\00r\00-\00t\00y\00p\00e\00.\00t\00s\00")
 (table $0 1 anyfunc)
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
 (global $HEAP_BASE i32 (i32.const 40))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $infer-type/locals (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  i32.const 10
  set_local $0
  i64.const 4294967296
  set_local $1
  f64.const 1.5
  set_local $2
  get_global $infer-type/i
  set_local $3
  get_global $infer-type/I
  set_local $4
  get_global $infer-type/F
  set_local $5
 )
 (func $infer-type/reti (; 2 ;) (type $i) (result i32)
  i32.const 0
 )
 (func $infer-type/retI (; 3 ;) (type $I) (result i64)
  i64.const 0
 )
 (func $infer-type/retf (; 4 ;) (type $f) (result f32)
  f32.const 0
 )
 (func $infer-type/refF (; 5 ;) (type $F) (result f64)
  f64.const 0
 )
 (func $start (; 6 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  get_global $infer-type/i
  drop
  get_global $infer-type/I
  drop
  get_global $infer-type/F
  drop
  call $infer-type/locals
  call $infer-type/reti
  set_global $infer-type/ri
  get_global $infer-type/ri
  drop
  call $infer-type/retI
  set_global $infer-type/rI
  get_global $infer-type/rI
  drop
  call $infer-type/retf
  set_global $infer-type/rf
  get_global $infer-type/rf
  drop
  call $infer-type/refF
  set_global $infer-type/rF
  get_global $infer-type/rF
  drop
  block $break|0
   block
    i32.const 0
    set_local $0
    i32.const 10
    set_local $1
   end
   loop $repeat|0
    get_local $0
    get_local $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
    get_local $0
    i32.const 1
    i32.add
    set_local $0
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
 (func $null (; 7 ;) (type $v)
 )
)
