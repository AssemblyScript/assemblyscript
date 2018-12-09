(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $FFFF (func (param f64 f64 f64) (result f64)))
 (type $v (func))
 (import "env" "memory" (memory $0 0))
 (import "Math" "log" (func $~lib/bindings/Math/log (param f64) (result f64)))
 (import "Math" "log2" (func $~lib/bindings/Math/log2 (param f64) (result f64)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/index/NUM_COLORS i32 (i32.const 2048))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "computeLine" (func $assembly/index/computeLine))
 (func $assembly/index/clamp<f64> (; 2 ;) (type $FFFF) (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  get_local $0
  get_local $1
  f64.max
  get_local $2
  f64.min
 )
 (func $assembly/index/computeLine (; 3 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 i32)
  (local $19 f64)
  (local $20 i32)
  (local $21 f64)
  get_local $1
  f64.convert_u/i32
  f64.const 1
  f64.const 1.6
  f64.div
  f64.mul
  set_local $4
  get_local $2
  f64.convert_u/i32
  f64.const 1
  f64.const 2
  f64.div
  f64.mul
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
  get_local $4
  get_local $6
  f64.mul
  set_local $8
  get_local $0
  get_local $1
  i32.mul
  i32.const 1
  i32.shl
  set_local $9
  f64.const 1
  get_local $3
  f64.convert_u/i32
  f64.div
  set_local $10
  f64.const 8
  get_local $3
  f64.convert_u/i32
  f64.min
  set_local $11
  block $break|0
   i32.const 0
   set_local $12
   loop $repeat|0
    get_local $12
    get_local $1
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     get_local $12
     f64.convert_u/i32
     get_local $6
     f64.mul
     get_local $8
     f64.sub
     set_local $13
     f64.const 0
     set_local $14
     f64.const 0
     set_local $15
     i32.const 0
     set_local $18
     block $break|1
      loop $continue|1
       get_local $14
       get_local $14
       f64.mul
       tee_local $16
       get_local $15
       get_local $15
       f64.mul
       tee_local $17
       f64.add
       f64.const 4
       f64.le
       if
        block
         f64.const 2
         get_local $14
         f64.mul
         get_local $15
         f64.mul
         get_local $7
         f64.add
         set_local $15
         get_local $16
         get_local $17
         f64.sub
         get_local $13
         f64.add
         set_local $14
         get_local $18
         get_local $3
         i32.ge_u
         if
          br $break|1
         end
         get_local $18
         i32.const 1
         i32.add
         set_local $18
        end
        br $continue|1
       end
      end
     end
     block $break|2
      loop $continue|2
       get_local $18
       f64.convert_u/i32
       get_local $11
       f64.lt
       if
        block
         get_local $14
         get_local $14
         f64.mul
         get_local $15
         get_local $15
         f64.mul
         f64.sub
         get_local $13
         f64.add
         set_local $19
         f64.const 2
         get_local $14
         f64.mul
         get_local $15
         f64.mul
         get_local $7
         f64.add
         set_local $15
         get_local $19
         set_local $14
         get_local $18
         i32.const 1
         i32.add
         set_local $18
        end
        br $continue|2
       end
      end
     end
     get_global $assembly/index/NUM_COLORS
     i32.const 1
     i32.sub
     set_local $20
     get_local $14
     get_local $14
     f64.mul
     get_local $15
     get_local $15
     f64.mul
     f64.add
     set_local $19
     get_local $19
     f64.const 1
     f64.gt
     if
      f64.const 0.5
      get_local $19
      call $~lib/bindings/Math/log
      f64.mul
      call $~lib/bindings/Math/log2
      set_local $21
      get_global $assembly/index/NUM_COLORS
      i32.const 1
      i32.sub
      f64.convert_s/i32
      get_local $18
      i32.const 1
      i32.add
      f64.convert_u/i32
      get_local $21
      f64.sub
      get_local $10
      f64.mul
      f64.const 0
      f64.const 1
      call $assembly/index/clamp<f64>
      f64.mul
      i32.trunc_u/f64
      set_local $20
     end
     get_local $9
     get_local $12
     i32.const 1
     i32.shl
     i32.add
     get_local $20
     i32.store16
    end
    get_local $12
    i32.const 1
    i32.add
    set_local $12
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $null (; 4 ;) (type $v)
 )
)
