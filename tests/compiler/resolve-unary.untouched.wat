(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 48) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 464) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00@\00\00\00@\00\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 496) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001\00")
 (data (i32.const 528) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00r\00e\00s\00o\00l\00v\00e\00-\00u\00n\00a\00r\00y\00.\00t\00s\00")
 (data (i32.const 576) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 608) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002\00")
 (data (i32.const 640) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 672) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 704) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\002\00")
 (data (i32.const 736) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00+\00")
 (data (i32.const 768) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 800) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00!\00")
 (data (i32.const 832) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00~\00")
 (data (i32.const 864) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00+\00+\00i\00")
 (data (i32.const 896) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00-\00-\00i\00")
 (data (i32.const 928) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\00+\00+\00")
 (data (i32.const 960) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\00-\00-\00")
 (table $0 1 funcref)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $resolve-unary/a (mut i32) (i32.const 1))
 (global $resolve-unary/b (mut i32) (i32.const 1))
 (global $resolve-unary/foo (mut i32) (i32.const 0))
 (global $resolve-unary/bar (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 984))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/number/decimalCount32 (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/rt/stub/maybeGrowMemory (; 2 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (; 3 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/util/number/utoa32_lut (; 4 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  i32.const 480
  i32.load offset=4
  local.set $3
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $4
   local.get $4
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $5
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $6
    local.get $5
    local.set $1
    local.get $6
    i32.const 100
    i32.div_u
    local.set $7
    local.get $6
    i32.const 100
    i32.rem_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $3
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $10
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $9
    local.get $10
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $4
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $11
   local.get $4
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $11
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $12
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $12
   i32.store16
  end
 )
 (func $~lib/rt/stub/__retain (; 5 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/util/number/itoa32 (; 6 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.set $3
  local.get $3
  local.set $6
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/stub/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 7 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 8 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/util/number/itoa<i32>
 )
 (func $~lib/rt/stub/__release (; 9 ;) (param $0 i32)
  nop
 )
 (func $~lib/string/String#get:length (; 10 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 11 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-continue|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     local.set $7
     local.get $7
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     local.set $10
     local.get $0
     call $~lib/rt/stub/__release
     local.get $2
     call $~lib/rt/stub/__release
     local.get $10
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
  local.set $7
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $7
 )
 (func $~lib/string/String.__eq (; 12 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/stub/__release
   local.get $1
   call $~lib/rt/stub/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $~lib/number/Bool#toString (; 13 ;) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   i32.const 656
  else
   i32.const 688
  end
 )
 (func $resolve-unary/Foo#constructor (; 14 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $resolve-unary/Foo#plus (; 15 ;) (param $0 i32) (result i32)
  i32.const 752
 )
 (func $~lib/string/String#toString (; 16 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#minus (; 17 ;) (param $0 i32) (result i32)
  i32.const 784
 )
 (func $resolve-unary/Foo#prefix_inc (; 18 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#self (; 19 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#prefix_dec (; 20 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#not (; 21 ;) (param $0 i32) (result i32)
  i32.const 816
 )
 (func $resolve-unary/Foo#bitwise_not (; 22 ;) (param $0 i32) (result i32)
  i32.const 848
 )
 (func $resolve-unary/Foo#postfix_inc (; 23 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Foo#postfix_dec (; 24 ;) (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
 )
 (func $resolve-unary/Bar#constructor (; 25 ;) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $resolve-unary/Bar.prefix_inc (; 26 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 880
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $resolve-unary/Bar.prefix_dec (; 27 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 912
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $resolve-unary/Bar.postfix_inc (; 28 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 944
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $resolve-unary/Bar.postfix_dec (; 29 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  i32.const 976
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $start:resolve-unary (; 30 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const -1
  call $~lib/number/I32#toString
  local.tee $0
  i32.const 512
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 2
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/I32#toString
  local.tee $1
  i32.const 592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 7
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.add
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  call $~lib/number/I32#toString
  local.tee $2
  i32.const 624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 13
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const 1
  i32.sub
  global.set $resolve-unary/a
  global.get $resolve-unary/a
  call $~lib/number/I32#toString
  local.tee $3
  i32.const 592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.eqz
  call $~lib/number/Bool#toString
  local.tee $4
  i32.const 688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.eqz
  i32.eqz
  call $~lib/number/Bool#toString
  local.tee $5
  i32.const 656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 28
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/a
  i32.const -1
  i32.xor
  call $~lib/number/I32#toString
  local.tee $6
  i32.const 720
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $7
  i32.const 1
  i32.add
  global.set $resolve-unary/b
  local.get $7
  call $~lib/number/I32#toString
  local.tee $7
  i32.const 592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/b
  local.tee $8
  i32.const 1
  i32.sub
  global.set $resolve-unary/b
  local.get $8
  call $~lib/number/I32#toString
  local.tee $8
  i32.const 624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-unary/Foo#constructor
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#plus
  local.tee $9
  call $~lib/string/String#toString
  local.tee $10
  i32.const 752
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 91
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#minus
  local.tee $11
  call $~lib/string/String#toString
  local.tee $12
  i32.const 784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 96
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#prefix_inc
  local.tee $13
  local.tee $14
  global.get $resolve-unary/foo
  local.tee $15
  i32.ne
  if
   local.get $14
   call $~lib/rt/stub/__retain
   local.set $14
   local.get $15
   call $~lib/rt/stub/__release
  end
  local.get $14
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#self
  local.tee $14
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 101
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#prefix_dec
  local.tee $15
  local.tee $16
  global.get $resolve-unary/foo
  local.tee $17
  i32.ne
  if
   local.get $16
   call $~lib/rt/stub/__retain
   local.set $16
   local.get $17
   call $~lib/rt/stub/__release
  end
  local.get $16
  global.set $resolve-unary/foo
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#self
  local.tee $16
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 106
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#not
  local.tee $17
  call $~lib/string/String#toString
  local.tee $18
  i32.const 816
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 111
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  call $resolve-unary/Foo#bitwise_not
  local.tee $19
  call $~lib/string/String#toString
  local.tee $20
  i32.const 848
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 116
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $21
  call $resolve-unary/Foo#postfix_inc
  local.tee $22
  local.tee $23
  global.get $resolve-unary/foo
  local.tee $24
  i32.ne
  if
   local.get $23
   call $~lib/rt/stub/__retain
   local.set $23
   local.get $24
   call $~lib/rt/stub/__release
  end
  local.get $23
  global.set $resolve-unary/foo
  local.get $21
  call $resolve-unary/Foo#self
  local.tee $21
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 121
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/foo
  local.tee $23
  call $resolve-unary/Foo#postfix_dec
  local.tee $24
  local.tee $25
  global.get $resolve-unary/foo
  local.tee $26
  i32.ne
  if
   local.get $25
   call $~lib/rt/stub/__retain
   local.set $25
   local.get $26
   call $~lib/rt/stub/__release
  end
  local.get $25
  global.set $resolve-unary/foo
  local.get $23
  call $resolve-unary/Foo#self
  local.tee $23
  global.get $resolve-unary/foo
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 126
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $resolve-unary/Bar#constructor
  global.set $resolve-unary/bar
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.prefix_inc
  local.tee $25
  call $~lib/string/String#toString
  local.tee $26
  i32.const 880
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 151
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.prefix_dec
  local.tee $27
  call $~lib/string/String#toString
  local.tee $28
  i32.const 912
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 156
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.postfix_inc
  local.tee $29
  call $~lib/string/String#toString
  local.tee $30
  i32.const 944
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-unary/bar
  call $resolve-unary/Bar.postfix_dec
  local.tee $31
  call $~lib/string/String#toString
  local.tee $32
  i32.const 976
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 544
   i32.const 166
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $5
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $7
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $9
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $11
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $13
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $15
  call $~lib/rt/stub/__release
  local.get $16
  call $~lib/rt/stub/__release
  local.get $17
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $19
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
  local.get $21
  call $~lib/rt/stub/__release
  local.get $22
  call $~lib/rt/stub/__release
  local.get $23
  call $~lib/rt/stub/__release
  local.get $24
  call $~lib/rt/stub/__release
  local.get $25
  call $~lib/rt/stub/__release
  local.get $26
  call $~lib/rt/stub/__release
  local.get $27
  call $~lib/rt/stub/__release
  local.get $28
  call $~lib/rt/stub/__release
  local.get $29
  call $~lib/rt/stub/__release
  local.get $30
  call $~lib/rt/stub/__release
  local.get $31
  call $~lib/rt/stub/__release
  local.get $32
  call $~lib/rt/stub/__release
 )
 (func $~start (; 31 ;)
  call $start:resolve-unary
 )
)
