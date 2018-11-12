(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (import "env" "memory" (memory $0 0))
 (import "Math" "LN2" (global $~lib/bindings/Math/LN2 f64))
 (import "Math" "sqrt" (func $~lib/bindings/Math/sqrt (param f64) (result f64)))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/computeLine (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  get_local $1
  f64.convert_u/i32
  tee_local $6
  f64.const 1.6
  f64.div
  set_local $11
  get_local $0
  f64.convert_u/i32
  get_local $2
  f64.convert_u/i32
  tee_local $4
  f64.const 2
  f64.div
  tee_local $7
  f64.sub
  f64.const 10
  f64.const 3
  get_local $6
  f64.mul
  f64.const 4
  get_local $4
  f64.mul
  f64.min
  f64.div
  tee_local $12
  f64.mul
  set_local $9
  block $break|0
   loop $repeat|0
    get_local $8
    get_local $1
    i32.ge_u
    br_if $break|0
    get_local $8
    f64.convert_u/i32
    get_local $11
    f64.sub
    get_local $12
    f64.mul
    set_local $10
    f64.const 0
    set_local $4
    f64.const 0
    set_local $5
    i32.const 0
    set_local $2
    block $break|1
     loop $continue|1
      get_local $4
      get_local $4
      f64.mul
      tee_local $6
      get_local $5
      get_local $5
      f64.mul
      tee_local $7
      f64.add
      f64.const 4
      f64.le
      if
       f64.const 2
       get_local $4
       f64.mul
       get_local $5
       f64.mul
       get_local $9
       f64.add
       set_local $5
       get_local $6
       get_local $7
       f64.sub
       get_local $10
       f64.add
       set_local $4
       get_local $2
       get_local $3
       i32.ge_u
       br_if $break|1
       get_local $2
       i32.const 1
       i32.add
       set_local $2
       br $continue|1
      end
     end
    end
    block $break|2
     f64.const 8
     get_local $3
     f64.convert_u/i32
     f64.min
     set_local $6
     loop $repeat|2
      get_local $2
      f64.convert_u/i32
      get_local $6
      f64.lt
      i32.eqz
      br_if $break|2
      get_local $4
      get_local $4
      f64.mul
      get_local $5
      get_local $5
      f64.mul
      f64.sub
      get_local $10
      f64.add
      set_local $7
      f64.const 2
      get_local $4
      f64.mul
      get_local $5
      f64.mul
      get_local $9
      f64.add
      set_local $5
      get_local $7
      set_local $4
      get_local $2
      i32.const 1
      i32.add
      set_local $2
      br $repeat|2
      unreachable
     end
     unreachable
    end
    get_local $0
    get_local $1
    i32.mul
    get_local $8
    i32.add
    i32.const 1
    i32.shl
    get_local $4
    get_local $4
    f64.mul
    get_local $5
    get_local $5
    f64.mul
    f64.add
    call $~lib/bindings/Math/sqrt
    call $~lib/bindings/Math/log
    call $~lib/bindings/Math/log
    get_global $~lib/bindings/Math/LN2
    f64.div
    tee_local $6
    get_local $6
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     f64.const 2047
     get_local $2
     i32.const 1
     i32.add
     f64.convert_u/i32
     get_local $6
     f64.sub
     get_local $3
     f64.convert_u/i32
     f64.div
     f64.const 0
     f64.max
     f64.const 1
     f64.min
     f64.mul
     i32.trunc_u/f64
    else     
     i32.const 2047
    end
    tee_local $2
    i32.store16
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
