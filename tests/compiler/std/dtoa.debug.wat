(module
 (type $0 (func))
 (type $1 (func (param i64) (result i64)))
 (type $2 (func (param i64) (result i32)))
 (type $3 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/native/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/util/dtoa/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/dtoa/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/dtoa/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/dtoa/gBcdValue (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigits (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gDigLo (mut i64) (i64.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data $0 (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00s\00t\00d\00/\00d\00t\00o\00a\00.\00t\00s\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/polyfills/bswap<u64> (param $value i64) (result i64)
  (local $a i64)
  (local $b i64)
  (local $v i64)
  i32.const 1
  drop
  i32.const 8
  i32.const 1
  i32.eq
  drop
  i32.const 8
  i32.const 2
  i32.eq
  drop
  i32.const 8
  i32.const 4
  i32.eq
  drop
  i32.const 8
  i32.const 8
  i32.eq
  drop
  local.get $value
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.set $a
  local.get $value
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  local.set $v
  local.get $v
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.set $a
  local.get $v
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  local.set $b
  local.get $a
  local.get $b
  i64.or
  i64.const 32
  i64.rotr
  return
 )
 (func $~lib/util/dtoa/toBcd8 (param $value i64) (result i32)
  (local $value|1 i64)
  (local $quads i64)
  (local $pairs i64)
  (local $singles i64)
  (local $singles|5 i64)
  block $~lib/util/dtoa/toBcd8Digits|inlined.0 (result i64)
   local.get $value
   local.set $value|1
   local.get $value|1
   i64.const 4294957296
   local.get $value|1
   global.get $~lib/util/dtoa/DIV10K_SIG
   i64.mul
   i32.const 40
   i64.extend_i32_s
   i64.shr_u
   i64.mul
   i64.add
   local.set $quads
   local.get $quads
   i64.const 65436
   local.get $quads
   global.get $~lib/util/dtoa/DIV100_SIG
   i64.mul
   i32.const 19
   i64.extend_i32_s
   i64.shr_u
   i64.const 545460846719
   i64.and
   i64.mul
   i64.add
   local.set $pairs
   local.get $pairs
   i64.const 246
   local.get $pairs
   global.get $~lib/util/dtoa/DIV10_SIG
   i64.mul
   i32.const 10
   i64.extend_i32_s
   i64.shr_u
   i64.const 4222189076152335
   i64.and
   i64.mul
   i64.add
   local.set $singles
   local.get $singles
   call $~lib/polyfills/bswap<u64>
   global.set $~lib/util/dtoa/gBcdValue
   local.get $singles
   br $~lib/util/dtoa/toBcd8Digits|inlined.0
  end
  local.set $singles|5
  i32.const 70
  i64.extend_i32_s
  local.get $singles|5
  i64.const 1
  i64.shl
  i64.const 1
  i64.or
  i64.clz
  i64.sub
  i64.const 8
  i64.div_u
  i32.wrap_i64
  return
 )
 (func $start:std/dtoa
  (local $value i64)
  (local $length i32)
  (local $value|2 i64)
  (local $length|3 i32)
  (local $value|4 i64)
  (local $length|5 i32)
  (local $value|6 i64)
  (local $length|7 i32)
  (local $value|8 i64)
  (local $length|9 i32)
  (local $value|10 i64)
  (local $value|11 i64)
  (local $fixed16 i32)
  (local $hi i64)
  (local $lo i64)
  (local $value|15 i64)
  (local $quads i64)
  (local $pairs i64)
  (local $singles i64)
  (local $hiBcd i64)
  (local $value|20 i64)
  (local $quads|21 i64)
  (local $pairs|22 i64)
  (local $singles|23 i64)
  (local $hiLen i32)
  (local $hiBcd|25 i64)
  (local $loLen i32)
  (local $value|27 i64)
  (local $value|28 i64)
  (local $fixed16|29 i32)
  (local $hi|30 i64)
  (local $lo|31 i64)
  (local $value|32 i64)
  (local $quads|33 i64)
  (local $pairs|34 i64)
  (local $singles|35 i64)
  (local $hiBcd|36 i64)
  (local $value|37 i64)
  (local $quads|38 i64)
  (local $pairs|39 i64)
  (local $singles|40 i64)
  (local $hiLen|41 i32)
  (local $hiBcd|42 i64)
  (local $loLen|43 i32)
  (local $value|44 i64)
  (local $value|45 i64)
  (local $fixed16|46 i32)
  (local $hi|47 i64)
  (local $lo|48 i64)
  (local $value|49 i64)
  (local $quads|50 i64)
  (local $pairs|51 i64)
  (local $singles|52 i64)
  (local $hiBcd|53 i64)
  (local $value|54 i64)
  (local $quads|55 i64)
  (local $pairs|56 i64)
  (local $singles|57 i64)
  (local $hiLen|58 i32)
  (local $hiBcd|59 i64)
  (local $loLen|60 i32)
  (local $value|61 i64)
  (local $value|62 i64)
  (local $fixed16|63 i32)
  (local $hi|64 i64)
  (local $lo|65 i64)
  (local $value|66 i64)
  (local $quads|67 i64)
  (local $pairs|68 i64)
  (local $singles|69 i64)
  (local $hiBcd|70 i64)
  (local $value|71 i64)
  (local $quads|72 i64)
  (local $pairs|73 i64)
  (local $singles|74 i64)
  (local $hiLen|75 i32)
  (local $hiBcd|76 i64)
  (local $loLen|77 i32)
  i64.const 1
  local.set $value
  i32.const 0
  drop
  local.get $value
  call $~lib/util/dtoa/toBcd8
  local.set $length
  global.get $~lib/util/dtoa/gBcdValue
  i64.const 3472328296227680304
  i64.add
  global.set $~lib/util/dtoa/gDigHi
  local.get $length
  global.set $~lib/util/dtoa/gDigits
  global.get $~lib/util/dtoa/gDigits
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 78
  local.set $value|2
  i32.const 0
  drop
  local.get $value|2
  call $~lib/util/dtoa/toBcd8
  local.set $length|3
  global.get $~lib/util/dtoa/gBcdValue
  i64.const 3472328296227680304
  i64.add
  global.set $~lib/util/dtoa/gDigHi
  local.get $length|3
  global.set $~lib/util/dtoa/gDigits
  global.get $~lib/util/dtoa/gDigits
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1234
  local.set $value|4
  i32.const 0
  drop
  local.get $value|4
  call $~lib/util/dtoa/toBcd8
  local.set $length|5
  global.get $~lib/util/dtoa/gBcdValue
  i64.const 3472328296227680304
  i64.add
  global.set $~lib/util/dtoa/gDigHi
  local.get $length|5
  global.set $~lib/util/dtoa/gDigits
  global.get $~lib/util/dtoa/gDigits
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 10000
  local.set $value|6
  i32.const 0
  drop
  local.get $value|6
  call $~lib/util/dtoa/toBcd8
  local.set $length|7
  global.get $~lib/util/dtoa/gBcdValue
  i64.const 3472328296227680304
  i64.add
  global.set $~lib/util/dtoa/gDigHi
  local.get $length|7
  global.set $~lib/util/dtoa/gDigits
  global.get $~lib/util/dtoa/gDigits
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 10000000
  local.set $value|8
  i32.const 0
  drop
  local.get $value|8
  call $~lib/util/dtoa/toBcd8
  local.set $length|9
  global.get $~lib/util/dtoa/gBcdValue
  i64.const 3472328296227680304
  i64.add
  global.set $~lib/util/dtoa/gDigHi
  local.get $length|9
  global.set $~lib/util/dtoa/gDigits
  global.get $~lib/util/dtoa/gDigits
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 100000001
  local.set $value|10
  i32.const 0
  drop
  block $~lib/util/dtoa/toDigits64Swar|inlined.0
   local.get $value|10
   local.set $value|11
   i32.const 0
   local.set $fixed16
   local.get $value|11
   i64.const 100000000
   i64.div_u
   local.set $hi
   local.get $value|11
   local.get $hi
   i64.const 100000000
   i64.mul
   i64.sub
   local.set $lo
   local.get $fixed16
   if
    block $~lib/util/dtoa/toBcd8Digits|inlined.1 (result i64)
     local.get $hi
     local.set $value|15
     local.get $value|15
     i64.const 4294957296
     local.get $value|15
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads
     local.get $quads
     i64.const 65436
     local.get $quads
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs
     local.get $pairs
     i64.const 246
     local.get $pairs
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles
     local.get $singles
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles
     br $~lib/util/dtoa/toBcd8Digits|inlined.1
    end
    drop
    global.get $~lib/util/dtoa/gBcdValue
    local.set $hiBcd
    block $~lib/util/dtoa/toBcd8Digits|inlined.2 (result i64)
     local.get $lo
     local.set $value|20
     local.get $value|20
     i64.const 4294957296
     local.get $value|20
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|21
     local.get $quads|21
     i64.const 65436
     local.get $quads|21
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|22
     local.get $pairs|22
     i64.const 246
     local.get $pairs|22
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|23
     local.get $singles|23
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|23
     br $~lib/util/dtoa/toBcd8Digits|inlined.2
    end
    drop
    local.get $hiBcd
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    global.get $~lib/util/dtoa/gBcdValue
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigLo
    br $~lib/util/dtoa/toDigits64Swar|inlined.0
   end
   local.get $hi
   call $~lib/util/dtoa/toBcd8
   local.set $hiLen
   global.get $~lib/util/dtoa/gBcdValue
   local.set $hiBcd|25
   local.get $lo
   i64.const 0
   i64.eq
   if
    local.get $hiBcd|25
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    i64.const 3472328296227680304
    global.set $~lib/util/dtoa/gDigLo
    local.get $hiLen
    i32.const 8
    i32.add
    global.set $~lib/util/dtoa/gDigits
    br $~lib/util/dtoa/toDigits64Swar|inlined.0
   end
   local.get $lo
   call $~lib/util/dtoa/toBcd8
   local.set $loLen
   local.get $hiBcd|25
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   global.get $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigLo
   local.get $hi
   i64.const 0
   i64.eq
   if (result i32)
    local.get $loLen
   else
    local.get $hiLen
    i32.const 8
    i32.add
   end
   global.set $~lib/util/dtoa/gDigits
  end
  global.get $~lib/util/dtoa/gDigits
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 100000000
  local.set $value|27
  i32.const 0
  drop
  block $~lib/util/dtoa/toDigits64Swar|inlined.1
   local.get $value|27
   local.set $value|28
   i32.const 0
   local.set $fixed16|29
   local.get $value|28
   i64.const 100000000
   i64.div_u
   local.set $hi|30
   local.get $value|28
   local.get $hi|30
   i64.const 100000000
   i64.mul
   i64.sub
   local.set $lo|31
   local.get $fixed16|29
   if
    block $~lib/util/dtoa/toBcd8Digits|inlined.3 (result i64)
     local.get $hi|30
     local.set $value|32
     local.get $value|32
     i64.const 4294957296
     local.get $value|32
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|33
     local.get $quads|33
     i64.const 65436
     local.get $quads|33
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|34
     local.get $pairs|34
     i64.const 246
     local.get $pairs|34
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|35
     local.get $singles|35
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|35
     br $~lib/util/dtoa/toBcd8Digits|inlined.3
    end
    drop
    global.get $~lib/util/dtoa/gBcdValue
    local.set $hiBcd|36
    block $~lib/util/dtoa/toBcd8Digits|inlined.4 (result i64)
     local.get $lo|31
     local.set $value|37
     local.get $value|37
     i64.const 4294957296
     local.get $value|37
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|38
     local.get $quads|38
     i64.const 65436
     local.get $quads|38
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|39
     local.get $pairs|39
     i64.const 246
     local.get $pairs|39
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|40
     local.get $singles|40
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|40
     br $~lib/util/dtoa/toBcd8Digits|inlined.4
    end
    drop
    local.get $hiBcd|36
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    global.get $~lib/util/dtoa/gBcdValue
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigLo
    br $~lib/util/dtoa/toDigits64Swar|inlined.1
   end
   local.get $hi|30
   call $~lib/util/dtoa/toBcd8
   local.set $hiLen|41
   global.get $~lib/util/dtoa/gBcdValue
   local.set $hiBcd|42
   local.get $lo|31
   i64.const 0
   i64.eq
   if
    local.get $hiBcd|42
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    i64.const 3472328296227680304
    global.set $~lib/util/dtoa/gDigLo
    local.get $hiLen|41
    i32.const 8
    i32.add
    global.set $~lib/util/dtoa/gDigits
    br $~lib/util/dtoa/toDigits64Swar|inlined.1
   end
   local.get $lo|31
   call $~lib/util/dtoa/toBcd8
   local.set $loLen|43
   local.get $hiBcd|42
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   global.get $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigLo
   local.get $hi|30
   i64.const 0
   i64.eq
   if (result i32)
    local.get $loLen|43
   else
    local.get $hiLen|41
    i32.const 8
    i32.add
   end
   global.set $~lib/util/dtoa/gDigits
  end
  global.get $~lib/util/dtoa/gDigits
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1000000000000000
  local.set $value|44
  i32.const 0
  drop
  block $~lib/util/dtoa/toDigits64Swar|inlined.2
   local.get $value|44
   local.set $value|45
   i32.const 0
   local.set $fixed16|46
   local.get $value|45
   i64.const 100000000
   i64.div_u
   local.set $hi|47
   local.get $value|45
   local.get $hi|47
   i64.const 100000000
   i64.mul
   i64.sub
   local.set $lo|48
   local.get $fixed16|46
   if
    block $~lib/util/dtoa/toBcd8Digits|inlined.5 (result i64)
     local.get $hi|47
     local.set $value|49
     local.get $value|49
     i64.const 4294957296
     local.get $value|49
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|50
     local.get $quads|50
     i64.const 65436
     local.get $quads|50
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|51
     local.get $pairs|51
     i64.const 246
     local.get $pairs|51
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|52
     local.get $singles|52
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|52
     br $~lib/util/dtoa/toBcd8Digits|inlined.5
    end
    drop
    global.get $~lib/util/dtoa/gBcdValue
    local.set $hiBcd|53
    block $~lib/util/dtoa/toBcd8Digits|inlined.6 (result i64)
     local.get $lo|48
     local.set $value|54
     local.get $value|54
     i64.const 4294957296
     local.get $value|54
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|55
     local.get $quads|55
     i64.const 65436
     local.get $quads|55
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|56
     local.get $pairs|56
     i64.const 246
     local.get $pairs|56
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|57
     local.get $singles|57
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|57
     br $~lib/util/dtoa/toBcd8Digits|inlined.6
    end
    drop
    local.get $hiBcd|53
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    global.get $~lib/util/dtoa/gBcdValue
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigLo
    br $~lib/util/dtoa/toDigits64Swar|inlined.2
   end
   local.get $hi|47
   call $~lib/util/dtoa/toBcd8
   local.set $hiLen|58
   global.get $~lib/util/dtoa/gBcdValue
   local.set $hiBcd|59
   local.get $lo|48
   i64.const 0
   i64.eq
   if
    local.get $hiBcd|59
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    i64.const 3472328296227680304
    global.set $~lib/util/dtoa/gDigLo
    local.get $hiLen|58
    i32.const 8
    i32.add
    global.set $~lib/util/dtoa/gDigits
    br $~lib/util/dtoa/toDigits64Swar|inlined.2
   end
   local.get $lo|48
   call $~lib/util/dtoa/toBcd8
   local.set $loLen|60
   local.get $hiBcd|59
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   global.get $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigLo
   local.get $hi|47
   i64.const 0
   i64.eq
   if (result i32)
    local.get $loLen|60
   else
    local.get $hiLen|58
    i32.const 8
    i32.add
   end
   global.set $~lib/util/dtoa/gDigits
  end
  global.get $~lib/util/dtoa/gDigits
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1234567890123456
  local.set $value|61
  i32.const 0
  drop
  block $~lib/util/dtoa/toDigits64Swar|inlined.3
   local.get $value|61
   local.set $value|62
   i32.const 0
   local.set $fixed16|63
   local.get $value|62
   i64.const 100000000
   i64.div_u
   local.set $hi|64
   local.get $value|62
   local.get $hi|64
   i64.const 100000000
   i64.mul
   i64.sub
   local.set $lo|65
   local.get $fixed16|63
   if
    block $~lib/util/dtoa/toBcd8Digits|inlined.7 (result i64)
     local.get $hi|64
     local.set $value|66
     local.get $value|66
     i64.const 4294957296
     local.get $value|66
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|67
     local.get $quads|67
     i64.const 65436
     local.get $quads|67
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|68
     local.get $pairs|68
     i64.const 246
     local.get $pairs|68
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|69
     local.get $singles|69
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|69
     br $~lib/util/dtoa/toBcd8Digits|inlined.7
    end
    drop
    global.get $~lib/util/dtoa/gBcdValue
    local.set $hiBcd|70
    block $~lib/util/dtoa/toBcd8Digits|inlined.8 (result i64)
     local.get $lo|65
     local.set $value|71
     local.get $value|71
     i64.const 4294957296
     local.get $value|71
     global.get $~lib/util/dtoa/DIV10K_SIG
     i64.mul
     i32.const 40
     i64.extend_i32_s
     i64.shr_u
     i64.mul
     i64.add
     local.set $quads|72
     local.get $quads|72
     i64.const 65436
     local.get $quads|72
     global.get $~lib/util/dtoa/DIV100_SIG
     i64.mul
     i32.const 19
     i64.extend_i32_s
     i64.shr_u
     i64.const 545460846719
     i64.and
     i64.mul
     i64.add
     local.set $pairs|73
     local.get $pairs|73
     i64.const 246
     local.get $pairs|73
     global.get $~lib/util/dtoa/DIV10_SIG
     i64.mul
     i32.const 10
     i64.extend_i32_s
     i64.shr_u
     i64.const 4222189076152335
     i64.and
     i64.mul
     i64.add
     local.set $singles|74
     local.get $singles|74
     call $~lib/polyfills/bswap<u64>
     global.set $~lib/util/dtoa/gBcdValue
     local.get $singles|74
     br $~lib/util/dtoa/toBcd8Digits|inlined.8
    end
    drop
    local.get $hiBcd|70
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    global.get $~lib/util/dtoa/gBcdValue
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigLo
    br $~lib/util/dtoa/toDigits64Swar|inlined.3
   end
   local.get $hi|64
   call $~lib/util/dtoa/toBcd8
   local.set $hiLen|75
   global.get $~lib/util/dtoa/gBcdValue
   local.set $hiBcd|76
   local.get $lo|65
   i64.const 0
   i64.eq
   if
    local.get $hiBcd|76
    i64.const 3472328296227680304
    i64.add
    global.set $~lib/util/dtoa/gDigHi
    i64.const 3472328296227680304
    global.set $~lib/util/dtoa/gDigLo
    local.get $hiLen|75
    i32.const 8
    i32.add
    global.set $~lib/util/dtoa/gDigits
    br $~lib/util/dtoa/toDigits64Swar|inlined.3
   end
   local.get $lo|65
   call $~lib/util/dtoa/toBcd8
   local.set $loLen|77
   local.get $hiBcd|76
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   global.get $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigLo
   local.get $hi|64
   i64.const 0
   i64.eq
   if (result i32)
    local.get $loLen|77
   else
    local.get $hiLen|75
    i32.const 8
    i32.add
   end
   global.set $~lib/util/dtoa/gDigits
  end
  global.get $~lib/util/dtoa/gDigits
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/dtoa
 )
)
