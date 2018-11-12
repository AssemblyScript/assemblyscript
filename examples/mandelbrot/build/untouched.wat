(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (type $v (func))
 (import "env" "memory" (memory $0 0))
 (import "Math" "LN2" (global $~lib/bindings/Math/LN2 f64))
 (import "Math" "sqrt" (func $~lib/bindings/Math/sqrt (param f64) (result f64)))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $~lib/builtins/isFinite<f64> (; 2 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  get_local $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $assembly/index/clamp<f64> (; 3 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  get_local $0
  get_local $1
  f64.max
  get_local $2
  f64.min
 )
 (func $assembly/index/computeLine (; 4 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 i32)
  get_local $1
  f64.convert_u/i32
  f64.const 1.6
  f64.div
  set_local $4
  get_local $2
  f64.convert_u/i32
  f64.const 2
  f64.div
  set_local $5
  f64.const 10
  f64.const 3
  get_local $1
  f64.convert_u/i32
  f64.mul
  f64.const 4
  get_local $2
  f64.convert_u/i32
  f64.mul
  f64.min
  f64.div
  set_local $6
  get_local $0
  f64.convert_u/i32
  get_local $5
  f64.sub
  get_local $6
  f64.mul
  set_local $7
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $8
     f64.convert_u/i32
     get_local $4
     f64.sub
     get_local $6
     f64.mul
     set_local $9
     f64.const 0
     set_local $10
     f64.const 0
     set_local $11
     i32.const 0
     set_local $14
     block $break|1
      loop $continue|1
       get_local $10
       get_local $10
       f64.mul
       tee_local $12
       get_local $11
       get_local $11
       f64.mul
       tee_local $13
       f64.add
       f64.const 4
       f64.le
       if
        block
         get_local $12
         get_local $13
         f64.sub
         get_local $9
         f64.add
         set_local $15
         f64.const 2
         get_local $10
         f64.mul
         get_local $11
         f64.mul
         get_local $7
         f64.add
         set_local $11
         get_local $15
         set_local $10
         get_local $14
         get_local $3
         i32.ge_u
         if
          br $break|1
         end
         get_local $14
         i32.const 1
         i32.add
         set_local $14
        end
        br $continue|1
       end
      end
     end
     block $break|2
      f64.const 8
      get_local $3
      f64.convert_u/i32
      f64.min
      set_local $15
      loop $repeat|2
       get_local $14
       f64.convert_u/i32
       get_local $15
       f64.lt
       i32.eqz
       br_if $break|2
       block
        get_local $10
        get_local $10
        f64.mul
        get_local $11
        get_local $11
        f64.mul
        f64.sub
        get_local $9
        f64.add
        set_local $16
        f64.const 2
        get_local $10
        f64.mul
        get_local $11
        f64.mul
        get_local $7
        f64.add
        set_local $11
        get_local $16
        set_local $10
       end
       get_local $14
       i32.const 1
       i32.add
       set_local $14
       br $repeat|2
       unreachable
      end
      unreachable
     end
     get_local $10
     get_local $10
     f64.mul
     get_local $11
     get_local $11
     f64.mul
     f64.add
     call $~lib/bindings/Math/sqrt
     call $~lib/bindings/Math/log
     call $~lib/bindings/Math/log
     get_global $~lib/bindings/Math/LN2
     f64.div
     set_local $15
     get_local $15
     call $~lib/builtins/isFinite<f64>
     if (result i32)
      get_global $assembly/index/NUM_COLORS
      i32.const 1
      i32.sub
      f64.convert_s/i32
      get_local $14
      i32.const 1
      i32.add
      f64.convert_u/i32
      get_local $15
      f64.sub
      get_local $3
      f64.convert_u/i32
      f64.div
      f64.const 0
      f64.const 1
      call $assembly/index/clamp<f64>
      f64.mul
      i32.trunc_u/f64
     else      
      get_global $assembly/index/NUM_COLORS
      i32.const 1
      i32.sub
     end
     set_local $17
     get_local $0
     get_local $1
     i32.mul
     get_local $8
     i32.add
     i32.const 1
     i32.shl
     get_local $17
     i32.store16
    end
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
 (func $null (; 5 ;) (type $v)
 )
)
