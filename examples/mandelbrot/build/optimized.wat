(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (import "env" "memory" (memory $0 0))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (import "Math" "log2" (func $~lib/bindings/Math/log2 (param f64) (result f64)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/computeLine (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  f64.const 10
  f64.const 3
  get_local $1
  f64.convert_u/i32
  tee_local $8
  f64.mul
  f64.const 4
  get_local $2
  f64.convert_u/i32
  tee_local $4
  f64.mul
  f64.min
  f64.div
  set_local $9
  get_local $0
  f64.convert_u/i32
  get_local $4
  f64.const 0.5
  f64.mul
  f64.sub
  get_local $9
  f64.mul
  set_local $10
  get_local $8
  f64.const 0.625
  f64.mul
  get_local $9
  f64.mul
  set_local $12
  get_local $0
  get_local $1
  i32.mul
  i32.const 1
  i32.shl
  set_local $0
  f64.const 1
  get_local $3
  f64.convert_u/i32
  tee_local $6
  f64.div
  set_local $13
  f64.const 8
  get_local $6
  f64.min
  set_local $8
  loop $repeat|0
   get_local $7
   get_local $1
   i32.lt_u
   if
    get_local $7
    f64.convert_u/i32
    get_local $9
    f64.mul
    get_local $12
    f64.sub
    set_local $11
    f64.const 0
    set_local $4
    f64.const 0
    set_local $5
    i32.const 0
    set_local $2
    loop $continue|1
     get_local $4
     get_local $4
     f64.mul
     tee_local $14
     get_local $5
     get_local $5
     f64.mul
     tee_local $6
     f64.add
     f64.const 4
     f64.le
     if
      block $break|1
       f64.const 2
       get_local $4
       f64.mul
       get_local $5
       f64.mul
       get_local $10
       f64.add
       set_local $5
       get_local $14
       get_local $6
       f64.sub
       get_local $11
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
    loop $continue|2
     get_local $2
     f64.convert_u/i32
     get_local $8
     f64.lt
     if
      get_local $4
      get_local $4
      f64.mul
      get_local $5
      get_local $5
      f64.mul
      f64.sub
      get_local $11
      f64.add
      set_local $6
      f64.const 2
      get_local $4
      f64.mul
      get_local $5
      f64.mul
      get_local $10
      f64.add
      set_local $5
      get_local $6
      set_local $4
      get_local $2
      i32.const 1
      i32.add
      set_local $2
      br $continue|2
     end
    end
    get_local $7
    i32.const 1
    i32.shl
    get_local $0
    i32.add
    get_local $4
    get_local $4
    f64.mul
    get_local $5
    get_local $5
    f64.mul
    f64.add
    tee_local $6
    f64.const 1
    f64.gt
    if (result i32)
     f64.const 2047
     get_local $2
     i32.const 1
     i32.add
     f64.convert_u/i32
     f64.const 0.5
     get_local $6
     call $~lib/bindings/Math/log
     f64.mul
     call $~lib/bindings/Math/log2
     f64.sub
     get_local $13
     f64.mul
     f64.const 0
     f64.max
     f64.const 1
     f64.min
     f64.mul
     i32.trunc_u/f64
    else     
     i32.const 2047
    end
    i32.store16
    get_local $7
    i32.const 1
    i32.add
    set_local $7
    br $repeat|0
   end
  end
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
