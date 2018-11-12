(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00f\00o\00r\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $for/i (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 24))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   set_global $for/i
   loop $repeat|0
    get_global $for/i
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|0
    nop
    get_global $for/i
    i32.const 1
    i32.add
    set_global $for/i
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_global $for/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 5
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $break|1
   i32.const 0
   set_local $0
   loop $repeat|1
    get_local $0
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|1
    nop
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $break|2
   loop $repeat|2
    get_global $for/i
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|2
    nop
    get_global $for/i
    i32.const 1
    i32.sub
    set_global $for/i
    br $repeat|2
    unreachable
   end
   unreachable
  end
  get_global $for/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $break|3
   loop $repeat|3
    i32.const 1
    i32.eqz
    br_if $break|3
    get_global $for/i
    i32.const 10
    i32.eq
    if
     br $break|3
    end
    get_global $for/i
    i32.const 1
    i32.add
    set_global $for/i
    br $repeat|3
    unreachable
   end
   unreachable
  end
  block $break|4
   loop $repeat|4
    i32.const 1
    i32.eqz
    br_if $break|4
    block (result i32)
     get_global $for/i
     i32.const 1
     i32.sub
     set_global $for/i
     get_global $for/i
    end
    i32.const 0
    i32.eq
    if
     br $break|4
    end
    br $repeat|4
    unreachable
   end
   unreachable
  end
  block $break|5
   i32.const 0
   set_local $1
   loop $repeat|5
    block $continue|5
     get_local $1
     i32.const 10
     i32.lt_s
     i32.eqz
     br_if $break|5
     br $continue|5
    end
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|5
    unreachable
   end
   unreachable
  end
  get_local $1
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $break|6
   i32.const 0
   set_local $2
   loop $repeat|6
    get_local $2
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|6
    block $break|7
     i32.const 0
     set_local $3
     loop $repeat|7
      block $continue|7
       get_local $3
       i32.const 10
       i32.lt_s
       i32.eqz
       br_if $break|7
       get_local $2
       get_local $3
       i32.eq
       if
        br $continue|7
       end
      end
      get_local $3
      i32.const 1
      i32.add
      set_local $3
      br $repeat|7
      unreachable
     end
     unreachable
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|6
    unreachable
   end
   unreachable
  end
 )
 (func $null (; 2 ;) (type $v)
 )
)
