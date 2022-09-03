(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16444))
 (global $~lib/memory/__heap_base i32 (i32.const 16444))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memcpy" (func $memcpy/memcpy))
 (export "memory" (memory $0))
 (start $~start)
 (func $memcpy/memcpy (param $dest i32) (param $src i32) (param $n i32) (result i32)
  (local $ret i32)
  (local $w i32)
  (local $x i32)
  (local $var$6 i32)
  (local $var$7 i32)
  local.get $dest
  local.set $ret
  loop $while-continue|0
   local.get $n
   if (result i32)
    local.get $src
    i32.const 4
    i32.rem_u
   else
    i32.const 0
   end
   local.set $var$6
   local.get $var$6
   if
    local.get $dest
    local.tee $var$7
    i32.const 1
    i32.add
    local.set $dest
    local.get $var$7
    local.get $src
    local.tee $var$7
    i32.const 1
    i32.add
    local.set $src
    local.get $var$7
    i32.load8_u $0
    i32.store8 $0
    local.get $n
    i32.const 1
    i32.sub
    local.set $n
    br $while-continue|0
   end
  end
  local.get $dest
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $n
    i32.const 16
    i32.ge_u
    local.set $var$6
    local.get $var$6
    if
     local.get $dest
     local.get $src
     i32.load $0
     i32.store $0
     local.get $dest
     i32.const 4
     i32.add
     local.get $src
     i32.const 4
     i32.add
     i32.load $0
     i32.store $0
     local.get $dest
     i32.const 8
     i32.add
     local.get $src
     i32.const 8
     i32.add
     i32.load $0
     i32.store $0
     local.get $dest
     i32.const 12
     i32.add
     local.get $src
     i32.const 12
     i32.add
     i32.load $0
     i32.store $0
     local.get $src
     i32.const 16
     i32.add
     local.set $src
     local.get $dest
     i32.const 16
     i32.add
     local.set $dest
     local.get $n
     i32.const 16
     i32.sub
     local.set $n
     br $while-continue|1
    end
   end
   local.get $n
   i32.const 8
   i32.and
   if
    local.get $dest
    local.get $src
    i32.load $0
    i32.store $0
    local.get $dest
    i32.const 4
    i32.add
    local.get $src
    i32.const 4
    i32.add
    i32.load $0
    i32.store $0
    local.get $dest
    i32.const 8
    i32.add
    local.set $dest
    local.get $src
    i32.const 8
    i32.add
    local.set $src
   end
   local.get $n
   i32.const 4
   i32.and
   if
    local.get $dest
    local.get $src
    i32.load $0
    i32.store $0
    local.get $dest
    i32.const 4
    i32.add
    local.set $dest
    local.get $src
    i32.const 4
    i32.add
    local.set $src
   end
   local.get $n
   i32.const 2
   i32.and
   if
    local.get $dest
    local.get $src
    i32.load16_u $0
    i32.store16 $0
    local.get $dest
    i32.const 2
    i32.add
    local.set $dest
    local.get $src
    i32.const 2
    i32.add
    local.set $src
   end
   local.get $n
   i32.const 1
   i32.and
   if
    local.get $dest
    local.tee $var$6
    i32.const 1
    i32.add
    local.set $dest
    local.get $var$6
    local.get $src
    local.tee $var$6
    i32.const 1
    i32.add
    local.set $src
    local.get $var$6
    i32.load8_u $0
    i32.store8 $0
   end
   local.get $ret
   return
  end
  local.get $n
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $dest
       i32.const 4
       i32.rem_u
       local.set $var$6
       local.get $var$6
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $var$6
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $var$6
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $src
      i32.load $0
      local.set $w
      local.get $dest
      local.tee $var$6
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$6
      local.get $src
      local.tee $var$6
      i32.const 1
      i32.add
      local.set $src
      local.get $var$6
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $var$6
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$6
      local.get $src
      local.tee $var$6
      i32.const 1
      i32.add
      local.set $src
      local.get $var$6
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $var$6
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$6
      local.get $src
      local.tee $var$6
      i32.const 1
      i32.add
      local.set $src
      local.get $var$6
      i32.load8_u $0
      i32.store8 $0
      local.get $n
      i32.const 3
      i32.sub
      local.set $n
      loop $while-continue|3
       local.get $n
       i32.const 17
       i32.ge_u
       local.set $var$6
       local.get $var$6
       if
        local.get $src
        i32.const 1
        i32.add
        i32.load $0
        local.set $x
        local.get $dest
        local.get $w
        i32.const 24
        i32.shr_u
        local.get $x
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 5
        i32.add
        i32.load $0
        local.set $w
        local.get $dest
        i32.const 4
        i32.add
        local.get $x
        i32.const 24
        i32.shr_u
        local.get $w
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 9
        i32.add
        i32.load $0
        local.set $x
        local.get $dest
        i32.const 8
        i32.add
        local.get $w
        i32.const 24
        i32.shr_u
        local.get $x
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 13
        i32.add
        i32.load $0
        local.set $w
        local.get $dest
        i32.const 12
        i32.add
        local.get $x
        i32.const 24
        i32.shr_u
        local.get $w
        i32.const 8
        i32.shl
        i32.or
        i32.store $0
        local.get $src
        i32.const 16
        i32.add
        local.set $src
        local.get $dest
        i32.const 16
        i32.add
        local.set $dest
        local.get $n
        i32.const 16
        i32.sub
        local.set $n
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $src
     i32.load $0
     local.set $w
     local.get $dest
     local.tee $var$6
     i32.const 1
     i32.add
     local.set $dest
     local.get $var$6
     local.get $src
     local.tee $var$6
     i32.const 1
     i32.add
     local.set $src
     local.get $var$6
     i32.load8_u $0
     i32.store8 $0
     local.get $dest
     local.tee $var$6
     i32.const 1
     i32.add
     local.set $dest
     local.get $var$6
     local.get $src
     local.tee $var$6
     i32.const 1
     i32.add
     local.set $src
     local.get $var$6
     i32.load8_u $0
     i32.store8 $0
     local.get $n
     i32.const 2
     i32.sub
     local.set $n
     loop $while-continue|4
      local.get $n
      i32.const 18
      i32.ge_u
      local.set $var$6
      local.get $var$6
      if
       local.get $src
       i32.const 2
       i32.add
       i32.load $0
       local.set $x
       local.get $dest
       local.get $w
       i32.const 16
       i32.shr_u
       local.get $x
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 6
       i32.add
       i32.load $0
       local.set $w
       local.get $dest
       i32.const 4
       i32.add
       local.get $x
       i32.const 16
       i32.shr_u
       local.get $w
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 10
       i32.add
       i32.load $0
       local.set $x
       local.get $dest
       i32.const 8
       i32.add
       local.get $w
       i32.const 16
       i32.shr_u
       local.get $x
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 14
       i32.add
       i32.load $0
       local.set $w
       local.get $dest
       i32.const 12
       i32.add
       local.get $x
       i32.const 16
       i32.shr_u
       local.get $w
       i32.const 16
       i32.shl
       i32.or
       i32.store $0
       local.get $src
       i32.const 16
       i32.add
       local.set $src
       local.get $dest
       i32.const 16
       i32.add
       local.set $dest
       local.get $n
       i32.const 16
       i32.sub
       local.set $n
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $src
    i32.load $0
    local.set $w
    local.get $dest
    local.tee $var$6
    i32.const 1
    i32.add
    local.set $dest
    local.get $var$6
    local.get $src
    local.tee $var$6
    i32.const 1
    i32.add
    local.set $src
    local.get $var$6
    i32.load8_u $0
    i32.store8 $0
    local.get $n
    i32.const 1
    i32.sub
    local.set $n
    loop $while-continue|5
     local.get $n
     i32.const 19
     i32.ge_u
     local.set $var$6
     local.get $var$6
     if
      local.get $src
      i32.const 3
      i32.add
      i32.load $0
      local.set $x
      local.get $dest
      local.get $w
      i32.const 8
      i32.shr_u
      local.get $x
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 7
      i32.add
      i32.load $0
      local.set $w
      local.get $dest
      i32.const 4
      i32.add
      local.get $x
      i32.const 8
      i32.shr_u
      local.get $w
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 11
      i32.add
      i32.load $0
      local.set $x
      local.get $dest
      i32.const 8
      i32.add
      local.get $w
      i32.const 8
      i32.shr_u
      local.get $x
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 15
      i32.add
      i32.load $0
      local.set $w
      local.get $dest
      i32.const 12
      i32.add
      local.get $x
      i32.const 8
      i32.shr_u
      local.get $w
      i32.const 24
      i32.shl
      i32.or
      i32.store $0
      local.get $src
      i32.const 16
      i32.add
      local.set $src
      local.get $dest
      i32.const 16
      i32.add
      local.set $dest
      local.get $n
      i32.const 16
      i32.sub
      local.set $n
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $n
  i32.const 16
  i32.and
  if
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 8
  i32.and
  if
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 4
  i32.and
  if
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 2
  i32.and
  if
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 1
  i32.and
  if
   local.get $dest
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$6
   local.get $src
   local.tee $var$6
   i32.const 1
   i32.add
   local.set $src
   local.get $var$6
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $ret
 )
 (func $start:memcpy
  global.get $memcpy/base
  i64.const 1229782938247303441
  i64.store $0
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.const 2459565876494606882
  i64.store $0
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.const 3689348814741910323
  i64.store $0
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.const 4919131752989213764
  i64.store $0
  global.get $memcpy/base
  i32.const 1
  i32.add
  global.get $memcpy/base
  i32.const 16
  i32.add
  i32.const 4
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/dest
  global.get $memcpy/base
  i32.const 1
  i32.add
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i64.load $0
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  global.get $memcpy/base
  i32.const 32
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/dest
  global.get $memcpy/base
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 155
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i64.load $0
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.load $0
  i64.const 2459565876494606882
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.load $0
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.load $0
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 5
  i32.add
  global.get $memcpy/base
  i32.const 28
  i32.add
  i32.const 3
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/base
  i64.load $0
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  global.get $memcpy/base
  i32.const 16
  i32.add
  i32.const 15
  call $memcpy/memcpy
  global.set $memcpy/dest
  global.get $memcpy/base
  i64.load $0
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 165
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 8
  i32.add
  i64.load $0
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 166
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 16
  i32.add
  i64.load $0
  i64.const 3694152654344438852
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 167
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $memcpy/base
  i32.const 24
  i32.add
  i64.load $0
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 168
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:memcpy
 )
)
