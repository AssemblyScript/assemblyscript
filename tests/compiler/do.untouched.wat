(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\05\00\00\00d\00o\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 24))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:do (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   loop $continue|0
    block
     global.get $do/n
     i32.const 1
     i32.sub
     global.set $do/n
     global.get $do/m
     i32.const 1
     i32.add
     global.set $do/m
    end
    global.get $do/n
    br_if $continue|0
   end
  end
  global.get $do/n
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
  global.get $do/m
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
  global.set $do/n
  block $break|1
   loop $continue|1
    nop
    block (result i32)
     global.get $do/n
     local.tee $0
     i32.const 1
     i32.sub
     global.set $do/n
     local.get $0
    end
    br_if $continue|1
   end
  end
  global.get $do/n
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
  global.set $do/n
  i32.const 0
  global.set $do/m
  block $break|2
   loop $continue|2
    block
     global.get $do/n
     i32.const 1
     i32.sub
     global.set $do/n
     global.get $do/m
     i32.const 1
     i32.add
     global.set $do/m
     block $break|3
      loop $continue|3
       block
        global.get $do/n
        i32.const 1
        i32.sub
        global.set $do/n
        global.get $do/o
        i32.const 1
        i32.add
        global.set $do/o
       end
       global.get $do/n
       br_if $continue|3
      end
     end
     global.get $do/n
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
     global.get $do/o
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
    global.get $do/n
    br_if $continue|2
   end
  end
  global.get $do/n
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
  global.get $do/m
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
  global.get $do/o
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
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:do
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
