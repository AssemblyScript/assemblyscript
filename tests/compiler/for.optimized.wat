(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00f\00o\00r\00.\00t\00s")
 (global $for/i (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:for (; 1 ;)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $for/i
  loop $for-loop|0
   global.get $for/i
   i32.const 10
   i32.lt_s
   if
    global.get $for/i
    i32.const 1
    i32.add
    global.set $for/i
    br $for-loop|0
   end
  end
  global.get $for/i
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 5
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|1
   local.get $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  loop $for-loop|2
   global.get $for/i
   i32.const 0
   i32.gt_s
   if
    global.get $for/i
    i32.const 1
    i32.sub
    global.set $for/i
    br $for-loop|2
   end
  end
  global.get $for/i
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|3
   global.get $for/i
   i32.const 10
   i32.ne
   if
    global.get $for/i
    i32.const 1
    i32.add
    global.set $for/i
    br $for-loop|3
   end
  end
  loop $for-loop|4
   global.get $for/i
   i32.const 1
   i32.sub
   global.set $for/i
   global.get $for/i
   br_if $for-loop|4
  end
  i32.const 0
  local.set $0
  loop $for-loop|5
   local.get $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|5
   end
  end
  local.get $0
  i32.const 10
  i32.ne
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  loop $for-loop|6
   local.get $0
   i32.const 10
   i32.lt_s
   if
    i32.const 0
    local.set $1
    loop $for-loop|7
     local.get $1
     i32.const 10
     i32.lt_s
     if
      block $for-continue|7
       local.get $0
       local.get $1
       i32.eq
       br_if $for-continue|7
      end
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|7
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|6
   end
  end
 )
 (func $~start (; 2 ;)
  call $start:for
 )
)
