(module
 (type $iiv (func (param i32 i32)))
 (type $F (func (result f64)))
 (type $v (func))
 (type $iiFv (func (param i32 i32 f64)))
 (import "env" "memory" (memory $0 0))
 (import "config" "BGR_ALIVE" (global $assembly/config/BGR_ALIVE i32))
 (import "config" "BGR_DEAD" (global $assembly/config/BGR_DEAD i32))
 (import "config" "BIT_ROT" (global $assembly/config/BIT_ROT i32))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/index/w (mut i32) (i32.const 0))
 (global $assembly/index/h (mut i32) (i32.const 0))
 (global $assembly/index/s (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "fill" (func $assembly/index/fill))
 (func $assembly/index/init (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  set_global $assembly/index/w
  get_local $1
  set_global $assembly/index/h
  get_local $0
  get_local $1
  i32.mul
  set_global $assembly/index/s
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_global $assembly/index/h
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $break|1
     i32.const 0
     set_local $3
     loop $repeat|1
      get_local $3
      get_global $assembly/index/w
      i32.lt_s
      i32.eqz
      br_if $break|1
      block $assembly/index/set|inlined.0
       call $~lib/bindings/Math/random
       f64.const 0.1
       f64.gt
       if (result i32)
        get_global $assembly/config/BGR_DEAD
        i32.const 16777215
        i32.and
       else        
        get_global $assembly/config/BGR_ALIVE
        i32.const -16777216
        i32.or
       end
       set_local $4
       get_global $assembly/index/s
       get_local $2
       get_global $assembly/index/w
       i32.mul
       i32.add
       get_local $3
       i32.add
       i32.const 2
       i32.shl
       get_local $4
       i32.store
      end
      get_local $3
      i32.const 1
      i32.add
      set_local $3
      br $repeat|1
      unreachable
     end
     unreachable
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/step (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  get_global $assembly/index/h
  i32.const 1
  i32.sub
  set_local $0
  get_global $assembly/index/w
  i32.const 1
  i32.sub
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_global $assembly/index/h
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $2
     i32.const 0
     i32.eq
     if (result i32)
      get_local $0
     else      
      get_local $2
      i32.const 1
      i32.sub
     end
     set_local $3
     get_local $2
     get_local $0
     i32.eq
     if (result i32)
      i32.const 0
     else      
      get_local $2
      i32.const 1
      i32.add
     end
     set_local $4
     block $break|1
      i32.const 0
      set_local $5
      loop $repeat|1
       get_local $5
       get_global $assembly/index/w
       i32.lt_s
       i32.eqz
       br_if $break|1
       block
        get_local $5
        i32.const 0
        i32.eq
        if (result i32)
         get_local $1
        else         
         get_local $5
         i32.const 1
         i32.sub
        end
        set_local $6
        get_local $5
        get_local $1
        i32.eq
        if (result i32)
         i32.const 0
        else         
         get_local $5
         i32.const 1
         i32.add
        end
        set_local $7
        block $assembly/index/get|inlined.0 (result i32)
         get_local $3
         get_global $assembly/index/w
         i32.mul
         get_local $6
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        block $assembly/index/get|inlined.1 (result i32)
         get_local $3
         get_global $assembly/index/w
         i32.mul
         get_local $5
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        block $assembly/index/get|inlined.2 (result i32)
         get_local $3
         get_global $assembly/index/w
         i32.mul
         get_local $7
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        block $assembly/index/get|inlined.3 (result i32)
         get_local $2
         get_global $assembly/index/w
         i32.mul
         get_local $6
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        block $assembly/index/get|inlined.4 (result i32)
         get_local $2
         get_global $assembly/index/w
         i32.mul
         get_local $7
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        block $assembly/index/get|inlined.5 (result i32)
         get_local $4
         get_global $assembly/index/w
         i32.mul
         get_local $6
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        block $assembly/index/get|inlined.6 (result i32)
         get_local $4
         get_global $assembly/index/w
         i32.mul
         get_local $5
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        block $assembly/index/get|inlined.7 (result i32)
         get_local $4
         get_global $assembly/index/w
         i32.mul
         get_local $7
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        i32.const 1
        i32.and
        i32.add
        set_local $8
        block $assembly/index/get|inlined.8 (result i32)
         get_local $2
         get_global $assembly/index/w
         i32.mul
         get_local $5
         i32.add
         i32.const 2
         i32.shl
         i32.load
        end
        set_local $9
        get_local $9
        i32.const 1
        i32.and
        if
         get_local $8
         i32.const 14
         i32.and
         i32.const 2
         i32.eq
         if
          get_local $9
          i32.const 24
          i32.shr_u
          get_global $assembly/config/BIT_ROT
          i32.sub
          tee_local $10
          i32.const 0
          tee_local $11
          get_local $10
          get_local $11
          i32.gt_s
          select
          set_local $10
          block $assembly/index/set|inlined.1
           get_local $10
           i32.const 24
           i32.shl
           get_local $9
           i32.const 16777215
           i32.and
           i32.or
           set_local $11
           get_global $assembly/index/s
           get_local $2
           get_global $assembly/index/w
           i32.mul
           i32.add
           get_local $5
           i32.add
           i32.const 2
           i32.shl
           get_local $11
           i32.store
          end
         else          
          get_global $assembly/config/BGR_DEAD
          i32.const -16777216
          i32.or
          set_local $10
          get_global $assembly/index/s
          get_local $2
          get_global $assembly/index/w
          i32.mul
          i32.add
          get_local $5
          i32.add
          i32.const 2
          i32.shl
          get_local $10
          i32.store
         end
        else         
         get_local $8
         i32.const 3
         i32.eq
         if
          get_global $assembly/config/BGR_ALIVE
          i32.const -16777216
          i32.or
          set_local $10
          get_global $assembly/index/s
          get_local $2
          get_global $assembly/index/w
          i32.mul
          i32.add
          get_local $5
          i32.add
          i32.const 2
          i32.shl
          get_local $10
          i32.store
         else          
          get_local $9
          i32.const 24
          i32.shr_u
          get_global $assembly/config/BIT_ROT
          i32.sub
          tee_local $10
          i32.const 0
          tee_local $11
          get_local $10
          get_local $11
          i32.gt_s
          select
          set_local $10
          block $assembly/index/set|inlined.4
           get_local $10
           i32.const 24
           i32.shl
           get_local $9
           i32.const 16777215
           i32.and
           i32.or
           set_local $11
           get_global $assembly/index/s
           get_local $2
           get_global $assembly/index/w
           i32.mul
           i32.add
           get_local $5
           i32.add
           i32.const 2
           i32.shl
           get_local $11
           i32.store
          end
         end
        end
       end
       get_local $5
       i32.const 1
       i32.add
       set_local $5
       br $repeat|1
       unreachable
      end
      unreachable
     end
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/index/fill (; 3 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_global $assembly/index/w
    i32.lt_s
    i32.eqz
    br_if $break|0
    call $~lib/bindings/Math/random
    get_local $2
    f64.lt
    if
     get_global $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
     set_local $4
     get_global $assembly/index/s
     get_local $1
     get_global $assembly/index/w
     i32.mul
     i32.add
     get_local $3
     i32.add
     i32.const 2
     i32.shl
     get_local $4
     i32.store
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $3
   loop $repeat|1
    get_local $3
    get_global $assembly/index/h
    i32.lt_s
    i32.eqz
    br_if $break|1
    call $~lib/bindings/Math/random
    get_local $2
    f64.lt
    if
     get_global $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
     set_local $4
     get_global $assembly/index/s
     get_local $3
     get_global $assembly/index/w
     i32.mul
     i32.add
     get_local $0
     i32.add
     i32.const 2
     i32.shl
     get_local $4
     i32.store
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|1
    unreachable
   end
   unreachable
  end
 )
 (func $null (; 4 ;) (type $v)
 )
)
