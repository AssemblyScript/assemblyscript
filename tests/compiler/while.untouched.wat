(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00w\00h\00i\00l\00e\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 28))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  block $break|0
   loop $continue|0
    get_global $while/n
    if
     block
      get_global $while/n
      i32.const 1
      i32.sub
      set_global $while/n
      get_global $while/m
      i32.const 1
      i32.add
      set_global $while/m
     end
     br $continue|0
    end
   end
  end
  get_global $while/n
  i32.const 0
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
  get_global $while/m
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 9
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 10
  set_global $while/n
  i32.const 0
  set_global $while/m
  block $break|1
   loop $continue|1
    get_global $while/n
    if
     block
      get_global $while/n
      i32.const 1
      i32.sub
      set_global $while/n
      get_global $while/m
      i32.const 1
      i32.add
      set_global $while/m
      block $break|2
       loop $continue|2
        get_global $while/n
        if
         block
          get_global $while/n
          i32.const 1
          i32.sub
          set_global $while/n
          get_global $while/o
          i32.const 1
          i32.add
          set_global $while/o
         end
         br $continue|2
        end
       end
      end
      get_global $while/n
      i32.const 0
      i32.eq
      i32.eqz
      if
       i32.const 0
       i32.const 8
       i32.const 21
       i32.const 2
       call $~lib/env/abort
       unreachable
      end
      get_global $while/o
      i32.const 9
      i32.eq
      i32.eqz
      if
       i32.const 0
       i32.const 8
       i32.const 22
       i32.const 2
       call $~lib/env/abort
       unreachable
      end
     end
     br $continue|1
    end
   end
  end
  get_global $while/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 24
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $while/m
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $while/o
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $while/n
  i32.const 0
  set_global $while/m
  block $break|3
   loop $continue|3
    block (result i32)
     get_global $while/n
     tee_local $0
     i32.const 1
     i32.sub
     set_global $while/n
     get_local $0
    end
    tee_local $0
    if (result i32)
     get_global $while/m
     i32.const 1
     i32.add
     set_global $while/m
     get_global $while/m
    else     
     get_local $0
    end
    if
     nop
     br $continue|3
    end
   end
  end
  get_global $while/n
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $while/m
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 2 ;) (type $v)
 )
)
