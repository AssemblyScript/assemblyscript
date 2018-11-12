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
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "init" (func $assembly/index/init))
 (export "step" (func $assembly/index/step))
 (export "fill" (func $assembly/index/fill))
 (func $assembly/index/init (; 1 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
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
   set_local $0
   loop $repeat|0
    get_local $0
    get_global $assembly/index/h
    i32.ge_s
    br_if $break|0
    block $break|1
     i32.const 0
     set_local $1
     loop $repeat|1
      get_local $1
      get_global $assembly/index/w
      i32.ge_s
      br_if $break|1
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
      set_local $2
      get_global $assembly/index/s
      get_local $0
      get_global $assembly/index/w
      i32.mul
      i32.add
      get_local $1
      i32.add
      i32.const 2
      i32.shl
      get_local $2
      i32.store
      get_local $1
      i32.const 1
      i32.add
      set_local $1
      br $repeat|1
      unreachable
     end
     unreachable
    end
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
 (func $assembly/index/step (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_global $assembly/index/h
  i32.const 1
  i32.sub
  set_local $6
  get_global $assembly/index/w
  i32.const 1
  i32.sub
  set_local $7
  block $break|0
   loop $repeat|0
    get_local $0
    get_global $assembly/index/h
    i32.ge_s
    br_if $break|0
    get_local $0
    if (result i32)
     get_local $0
     i32.const 1
     i32.sub
    else     
     get_local $6
    end
    tee_local $2
    set_local $4
    get_local $0
    get_local $6
    i32.eq
    if (result i32)
     i32.const 0
    else     
     get_local $0
     i32.const 1
     i32.add
    end
    set_local $5
    block $break|1
     i32.const 0
     set_local $1
     loop $repeat|1
      get_local $1
      get_global $assembly/index/w
      i32.ge_s
      br_if $break|1
      get_local $4
      get_global $assembly/index/w
      i32.mul
      get_local $1
      if (result i32)
       get_local $1
       i32.const 1
       i32.sub
      else       
       get_local $7
      end
      tee_local $2
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      get_local $4
      get_global $assembly/index/w
      i32.mul
      get_local $1
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      get_local $4
      get_global $assembly/index/w
      i32.mul
      get_local $1
      get_local $7
      i32.eq
      if (result i32)
       i32.const 0
      else       
       get_local $1
       i32.const 1
       i32.add
      end
      tee_local $3
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      get_local $0
      get_global $assembly/index/w
      i32.mul
      get_local $2
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      get_local $0
      get_global $assembly/index/w
      i32.mul
      get_local $3
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      get_local $5
      get_global $assembly/index/w
      i32.mul
      get_local $2
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      get_local $5
      get_global $assembly/index/w
      i32.mul
      get_local $1
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      get_local $5
      get_global $assembly/index/w
      i32.mul
      get_local $3
      i32.add
      i32.const 2
      i32.shl
      i32.load
      i32.const 1
      i32.and
      i32.add
      set_local $2
      get_local $0
      get_global $assembly/index/w
      i32.mul
      get_local $1
      i32.add
      i32.const 2
      i32.shl
      i32.load
      tee_local $3
      i32.const 1
      i32.and
      if
       get_local $2
       i32.const 14
       i32.and
       i32.const 2
       i32.eq
       if
        get_global $assembly/index/s
        get_local $0
        get_global $assembly/index/w
        i32.mul
        i32.add
        get_local $1
        i32.add
        i32.const 2
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        get_global $assembly/config/BIT_ROT
        i32.sub
        tee_local $2
        i32.const 0
        get_local $2
        i32.const 0
        i32.gt_s
        select
        i32.const 24
        i32.shl
        get_local $3
        i32.const 16777215
        i32.and
        i32.or
        i32.store
       else        
        get_global $assembly/index/s
        get_local $0
        get_global $assembly/index/w
        i32.mul
        i32.add
        get_local $1
        i32.add
        i32.const 2
        i32.shl
        get_global $assembly/config/BGR_DEAD
        i32.const -16777216
        i32.or
        i32.store
       end
      else       
       get_local $2
       i32.const 3
       i32.eq
       if
        get_global $assembly/index/s
        get_local $0
        get_global $assembly/index/w
        i32.mul
        i32.add
        get_local $1
        i32.add
        i32.const 2
        i32.shl
        get_global $assembly/config/BGR_ALIVE
        i32.const -16777216
        i32.or
        i32.store
       else        
        get_global $assembly/index/s
        get_local $0
        get_global $assembly/index/w
        i32.mul
        i32.add
        get_local $1
        i32.add
        i32.const 2
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        get_global $assembly/config/BIT_ROT
        i32.sub
        tee_local $2
        i32.const 0
        get_local $2
        i32.const 0
        i32.gt_s
        select
        i32.const 24
        i32.shl
        get_local $3
        i32.const 16777215
        i32.and
        i32.or
        i32.store
       end
      end
      get_local $1
      i32.const 1
      i32.add
      set_local $1
      br $repeat|1
      unreachable
     end
     unreachable
    end
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
 (func $assembly/index/fill (; 3 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  block $break|0
   loop $repeat|0
    get_local $3
    get_global $assembly/index/w
    i32.ge_s
    br_if $break|0
    call $~lib/bindings/Math/random
    get_local $2
    f64.lt
    if
     get_global $assembly/index/s
     get_local $1
     get_global $assembly/index/w
     i32.mul
     i32.add
     get_local $3
     i32.add
     i32.const 2
     i32.shl
     get_global $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
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
    i32.ge_s
    br_if $break|1
    call $~lib/bindings/Math/random
    get_local $2
    f64.lt
    if
     get_global $assembly/index/s
     get_local $3
     get_global $assembly/index/w
     i32.mul
     i32.add
     get_local $0
     i32.add
     i32.const 2
     i32.shl
     get_global $assembly/config/BGR_ALIVE
     i32.const -16777216
     i32.or
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
  nop
 )
)
