(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00r\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $for/i (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $start:for (; 1 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   i32.const 0
   global.set $for/i
   loop $loop|0
    global.get $for/i
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|0
    global.get $for/i
    i32.const 1
    i32.add
    global.set $for/i
    br $loop|0
   end
   unreachable
  end
  global.get $for/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $0
   loop $loop|1
    local.get $0
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|1
   end
   unreachable
  end
  block $break|2
   loop $loop|2
    global.get $for/i
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|2
    nop
    global.get $for/i
    i32.const 1
    i32.sub
    global.set $for/i
    br $loop|2
   end
   unreachable
  end
  global.get $for/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block $break|3
   loop $loop|3
    global.get $for/i
    i32.const 10
    i32.eq
    if
     br $break|3
    end
    global.get $for/i
    i32.const 1
    i32.add
    global.set $for/i
    br $loop|3
   end
   unreachable
  end
  block $break|4
   loop $loop|4
    global.get $for/i
    i32.const 1
    i32.sub
    global.set $for/i
    global.get $for/i
    i32.const 0
    i32.eq
    if
     br $break|4
    end
    br $loop|4
   end
   unreachable
  end
  block $break|5
   i32.const 0
   local.set $1
   loop $loop|5
    local.get $1
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|5
    block $continue|5
     br $continue|5
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|5
   end
   unreachable
  end
  local.get $1
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  block $break|6
   i32.const 0
   local.set $2
   loop $loop|6
    local.get $2
    i32.const 10
    i32.lt_s
    i32.eqz
    br_if $break|6
    block $break|7
     i32.const 0
     local.set $3
     loop $loop|7
      local.get $3
      i32.const 10
      i32.lt_s
      i32.eqz
      br_if $break|7
      block $continue|7
       local.get $2
       local.get $3
       i32.eq
       if
        br $continue|7
       end
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $loop|7
     end
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|6
   end
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:for
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
 )
)
