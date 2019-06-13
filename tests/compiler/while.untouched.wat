(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00w\00h\00i\00l\00e\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $while/n (mut i32) (i32.const 10))
 (global $while/m (mut i32) (i32.const 0))
 (global $while/o (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:while (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $break|0
   loop $continue|0
    global.get $while/n
    i32.eqz
    br_if $break|0
    global.get $while/n
    i32.const 1
    i32.sub
    global.set $while/n
    global.get $while/m
    i32.const 1
    i32.add
    global.set $while/m
    br $continue|0
   end
   unreachable
  end
  global.get $while/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/m
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 9
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 10
  global.set $while/n
  i32.const 0
  global.set $while/m
  block $break|1
   loop $continue|1
    global.get $while/n
    i32.eqz
    br_if $break|1
    global.get $while/n
    i32.const 1
    i32.sub
    global.set $while/n
    global.get $while/m
    i32.const 1
    i32.add
    global.set $while/m
    block $break|2
     loop $continue|2
      global.get $while/n
      i32.eqz
      br_if $break|2
      global.get $while/n
      i32.const 1
      i32.sub
      global.set $while/n
      global.get $while/o
      i32.const 1
      i32.add
      global.set $while/o
      br $continue|2
     end
     unreachable
    end
    global.get $while/n
    i32.const 0
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 21
     i32.const 2
     call $~lib/builtins/abort
     unreachable
    end
    global.get $while/o
    i32.const 9
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 24
     i32.const 22
     i32.const 2
     call $~lib/builtins/abort
     unreachable
    end
    br $continue|1
   end
   unreachable
  end
  global.get $while/n
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/m
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/o
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $while/n
  i32.const 0
  global.set $while/m
  block $break|3
   loop $continue|3
    global.get $while/n
    local.tee $0
    i32.const 1
    i32.sub
    global.set $while/n
    local.get $0
    if (result i32)
     global.get $while/m
     i32.const 1
     i32.add
     global.set $while/m
     global.get $while/m
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|3
    nop
    br $continue|3
   end
   unreachable
  end
  global.get $while/n
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $while/m
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:while
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
