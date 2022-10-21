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
  (local $var$8 i32)
  (local $var$9 i32)
  (local $var$10 i32)
  (local $var$11 i32)
  (local $var$12 i32)
  (local $var$13 i32)
  (local $var$14 i32)
  (local $var$15 i32)
  (local $var$16 i32)
  (local $var$17 i32)
  (local $var$18 i32)
  (local $var$19 i32)
  (local $var$20 i32)
  (local $var$21 i32)
  (local $var$22 i32)
  (local $var$23 i32)
  (local $var$24 i32)
  (local $var$25 i32)
  (local $var$26 i32)
  (local $var$27 i32)
  (local $var$28 i32)
  (local $var$29 i32)
  (local $var$30 i32)
  (local $var$31 i32)
  (local $var$32 i32)
  (local $var$33 i32)
  (local $var$34 i32)
  (local $var$35 i32)
  (local $var$36 i32)
  (local $var$37 i32)
  (local $var$38 i32)
  (local $var$39 i32)
  (local $var$40 i32)
  (local $var$41 i32)
  (local $var$42 i32)
  (local $var$43 i32)
  (local $var$44 i32)
  (local $var$45 i32)
  (local $var$46 i32)
  (local $var$47 i32)
  (local $var$48 i32)
  (local $var$49 i32)
  (local $var$50 i32)
  (local $var$51 i32)
  (local $var$52 i32)
  (local $var$53 i32)
  (local $var$54 i32)
  (local $var$55 i32)
  (local $var$56 i32)
  (local $var$57 i32)
  (local $var$58 i32)
  (local $var$59 i32)
  (local $var$60 i32)
  (local $var$61 i32)
  (local $var$62 i32)
  (local $var$63 i32)
  (local $var$64 i32)
  (local $var$65 i32)
  (local $var$66 i32)
  (local $var$67 i32)
  (local $var$68 i32)
  (local $var$69 i32)
  (local $var$70 i32)
  (local $var$71 i32)
  (local $var$72 i32)
  (local $var$73 i32)
  (local $var$74 i32)
  (local $var$75 i32)
  (local $var$76 i32)
  (local $var$77 i32)
  (local $var$78 i32)
  (local $var$79 i32)
  (local $var$80 i32)
  (local $var$81 i32)
  (local $var$82 i32)
  (local $var$83 i32)
  (local $var$84 i32)
  (local $var$85 i32)
  (local $var$86 i32)
  (local $var$87 i32)
  (local $var$88 i32)
  (local $var$89 i32)
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
    local.tee $var$8
    i32.const 1
    i32.add
    local.set $src
    local.get $var$8
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
    local.set $var$9
    local.get $var$9
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
    local.tee $var$10
    i32.const 1
    i32.add
    local.set $dest
    local.get $var$10
    local.get $src
    local.tee $var$11
    i32.const 1
    i32.add
    local.set $src
    local.get $var$11
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
       local.set $var$12
       local.get $var$12
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $var$12
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $var$12
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $src
      i32.load $0
      local.set $w
      local.get $dest
      local.tee $var$13
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$13
      local.get $src
      local.tee $var$14
      i32.const 1
      i32.add
      local.set $src
      local.get $var$14
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $var$15
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$15
      local.get $src
      local.tee $var$16
      i32.const 1
      i32.add
      local.set $src
      local.get $var$16
      i32.load8_u $0
      i32.store8 $0
      local.get $dest
      local.tee $var$17
      i32.const 1
      i32.add
      local.set $dest
      local.get $var$17
      local.get $src
      local.tee $var$18
      i32.const 1
      i32.add
      local.set $src
      local.get $var$18
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
       local.set $var$19
       local.get $var$19
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
     local.tee $var$20
     i32.const 1
     i32.add
     local.set $dest
     local.get $var$20
     local.get $src
     local.tee $var$21
     i32.const 1
     i32.add
     local.set $src
     local.get $var$21
     i32.load8_u $0
     i32.store8 $0
     local.get $dest
     local.tee $var$22
     i32.const 1
     i32.add
     local.set $dest
     local.get $var$22
     local.get $src
     local.tee $var$23
     i32.const 1
     i32.add
     local.set $src
     local.get $var$23
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
      local.set $var$24
      local.get $var$24
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
    local.tee $var$25
    i32.const 1
    i32.add
    local.set $dest
    local.get $var$25
    local.get $src
    local.tee $var$26
    i32.const 1
    i32.add
    local.set $src
    local.get $var$26
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
     local.set $var$27
     local.get $var$27
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
   local.tee $var$28
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$28
   local.get $src
   local.tee $var$29
   i32.const 1
   i32.add
   local.set $src
   local.get $var$29
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$30
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$30
   local.get $src
   local.tee $var$31
   i32.const 1
   i32.add
   local.set $src
   local.get $var$31
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$32
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$32
   local.get $src
   local.tee $var$33
   i32.const 1
   i32.add
   local.set $src
   local.get $var$33
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$34
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$34
   local.get $src
   local.tee $var$35
   i32.const 1
   i32.add
   local.set $src
   local.get $var$35
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$36
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$36
   local.get $src
   local.tee $var$37
   i32.const 1
   i32.add
   local.set $src
   local.get $var$37
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$38
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$38
   local.get $src
   local.tee $var$39
   i32.const 1
   i32.add
   local.set $src
   local.get $var$39
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$40
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$40
   local.get $src
   local.tee $var$41
   i32.const 1
   i32.add
   local.set $src
   local.get $var$41
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$42
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$42
   local.get $src
   local.tee $var$43
   i32.const 1
   i32.add
   local.set $src
   local.get $var$43
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$44
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$44
   local.get $src
   local.tee $var$45
   i32.const 1
   i32.add
   local.set $src
   local.get $var$45
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$46
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$46
   local.get $src
   local.tee $var$47
   i32.const 1
   i32.add
   local.set $src
   local.get $var$47
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$48
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$48
   local.get $src
   local.tee $var$49
   i32.const 1
   i32.add
   local.set $src
   local.get $var$49
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$50
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$50
   local.get $src
   local.tee $var$51
   i32.const 1
   i32.add
   local.set $src
   local.get $var$51
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$52
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$52
   local.get $src
   local.tee $var$53
   i32.const 1
   i32.add
   local.set $src
   local.get $var$53
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$54
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$54
   local.get $src
   local.tee $var$55
   i32.const 1
   i32.add
   local.set $src
   local.get $var$55
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$56
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$56
   local.get $src
   local.tee $var$57
   i32.const 1
   i32.add
   local.set $src
   local.get $var$57
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$58
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$58
   local.get $src
   local.tee $var$59
   i32.const 1
   i32.add
   local.set $src
   local.get $var$59
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 8
  i32.and
  if
   local.get $dest
   local.tee $var$60
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$60
   local.get $src
   local.tee $var$61
   i32.const 1
   i32.add
   local.set $src
   local.get $var$61
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$62
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$62
   local.get $src
   local.tee $var$63
   i32.const 1
   i32.add
   local.set $src
   local.get $var$63
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$64
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$64
   local.get $src
   local.tee $var$65
   i32.const 1
   i32.add
   local.set $src
   local.get $var$65
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$66
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$66
   local.get $src
   local.tee $var$67
   i32.const 1
   i32.add
   local.set $src
   local.get $var$67
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$68
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$68
   local.get $src
   local.tee $var$69
   i32.const 1
   i32.add
   local.set $src
   local.get $var$69
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$70
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$70
   local.get $src
   local.tee $var$71
   i32.const 1
   i32.add
   local.set $src
   local.get $var$71
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$72
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$72
   local.get $src
   local.tee $var$73
   i32.const 1
   i32.add
   local.set $src
   local.get $var$73
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$74
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$74
   local.get $src
   local.tee $var$75
   i32.const 1
   i32.add
   local.set $src
   local.get $var$75
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 4
  i32.and
  if
   local.get $dest
   local.tee $var$76
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$76
   local.get $src
   local.tee $var$77
   i32.const 1
   i32.add
   local.set $src
   local.get $var$77
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$78
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$78
   local.get $src
   local.tee $var$79
   i32.const 1
   i32.add
   local.set $src
   local.get $var$79
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$80
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$80
   local.get $src
   local.tee $var$81
   i32.const 1
   i32.add
   local.set $src
   local.get $var$81
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$82
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$82
   local.get $src
   local.tee $var$83
   i32.const 1
   i32.add
   local.set $src
   local.get $var$83
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 2
  i32.and
  if
   local.get $dest
   local.tee $var$84
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$84
   local.get $src
   local.tee $var$85
   i32.const 1
   i32.add
   local.set $src
   local.get $var$85
   i32.load8_u $0
   i32.store8 $0
   local.get $dest
   local.tee $var$86
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$86
   local.get $src
   local.tee $var$87
   i32.const 1
   i32.add
   local.set $src
   local.get $var$87
   i32.load8_u $0
   i32.store8 $0
  end
  local.get $n
  i32.const 1
  i32.and
  if
   local.get $dest
   local.tee $var$88
   i32.const 1
   i32.add
   local.set $dest
   local.get $var$88
   local.get $src
   local.tee $var$89
   i32.const 1
   i32.add
   local.set $src
   local.get $var$89
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
