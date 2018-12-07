(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\05\00\00\00d\00o\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 24))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  block $break|0
   loop $continue|0
    block
     get_global $do/n
     i32.const 1
     i32.sub
     set_global $do/n
     get_global $do/m
     i32.const 1
     i32.add
     set_global $do/m
    end
    get_global $do/n
    br_if $continue|0
   end
  end
  get_global $do/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $do/m
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 10
  set_global $do/n
  block $break|1
   loop $continue|1
    nop
    block (result i32)
     get_global $do/n
     tee_local $0
     i32.const 1
     i32.sub
     set_global $do/n
     get_local $0
    end
    br_if $continue|1
   end
  end
  get_global $do/n
  i32.const -1
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
  i32.const 10
  set_global $do/n
  i32.const 0
  set_global $do/m
  block $break|2
   loop $continue|2
    block
     get_global $do/n
     i32.const 1
     i32.sub
     set_global $do/n
     get_global $do/m
     i32.const 1
     i32.add
     set_global $do/m
     block $break|3
      loop $continue|3
       block
        get_global $do/n
        i32.const 1
        i32.sub
        set_global $do/n
        get_global $do/o
        i32.const 1
        i32.add
        set_global $do/o
       end
       get_global $do/n
       br_if $continue|3
      end
     end
     get_global $do/n
     i32.const 0
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 8
      i32.const 24
      i32.const 2
      call $~lib/env/abort
      unreachable
     end
     get_global $do/o
     i32.const 9
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 8
      i32.const 25
      i32.const 2
      call $~lib/env/abort
      unreachable
     end
    end
    get_global $do/n
    br_if $continue|2
   end
  end
  get_global $do/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $do/m
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 28
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $do/o
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 2 ;) (type $v)
 )
)
