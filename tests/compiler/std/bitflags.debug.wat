(module
 (type $0 (func))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32776))
 (global $~lib/memory/__heap_base i32 (i32.const 32776))
 (memory $0 0)
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:std/bitflags
  (local $flags i32)
  (local $bit i32)
  (local $flags|2 i32)
  (local $bit|3 i32)
  (local $flags|4 i32)
  (local $bit|5 i32)
  (local $flags|6 i32)
  (local $mask i32)
  (local $flags|8 i32)
  (local $mask|9 i32)
  (local $flags|10 i32)
  (local $index i32)
  (local $flags|12 i32)
  (local $index|13 i32)
  (local $flags|14 i32)
  (local $index|15 i32)
  (local $flags|16 i32)
  (local $bit|17 i32)
  (local $flags|18 i32)
  (local $bit|19 i32)
  (local $flags|20 i32)
  (local $bit|21 i32)
  (local $flags|22 i32)
  (local $bit|23 i32)
  (local $flags|24 i32)
  (local $bit|25 i32)
  (local $flags|26 i32)
  (local $bit|27 i32)
  (local $flags|28 i32)
  (local $flags|29 i32)
  (local $flags|30 i32)
  (local $flags|31 i32)
  (local $flags|32 i32)
  (local $flags|33 i32)
  (local $flags|34 i64)
  (local $bit|35 i64)
  (local $flags|36 i64)
  (local $index|37 i32)
  (local $flags|38 i64)
  (local $index|39 i32)
  (local $flags|40 i64)
  (local $flags|41 i64)
  (local $bit|42 i64)
  (local $flags|43 i64)
  (local $bit|44 i64)
  (local $flags|45 i64)
  (local $bit|46 i64)
  (local $flags|47 i64)
  (local $flags|48 i64)
  block $~lib/bitflags/BitFlags.has<u32>|inlined.0 (result i32)
   i32.const 15
   local.set $flags
   i32.const 5
   local.set $bit
   i32.const 1
   i32.eqz
   drop
   local.get $flags
   local.get $bit
   i32.and
   local.get $bit
   i32.eq
   br $~lib/bitflags/BitFlags.has<u32>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.has<u32>|inlined.1 (result i32)
   i32.const 10
   local.set $flags|2
   i32.const 5
   local.set $bit|3
   i32.const 1
   i32.eqz
   drop
   local.get $flags|2
   local.get $bit|3
   i32.and
   local.get $bit|3
   i32.eq
   br $~lib/bitflags/BitFlags.has<u32>|inlined.1
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.has<u32>|inlined.2 (result i32)
   i32.const 15
   local.set $flags|4
   i32.const 0
   local.set $bit|5
   i32.const 1
   i32.eqz
   drop
   local.get $flags|4
   local.get $bit|5
   i32.and
   local.get $bit|5
   i32.eq
   br $~lib/bitflags/BitFlags.has<u32>|inlined.2
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.hasAny<u32>|inlined.0 (result i32)
   i32.const 10
   local.set $flags|6
   i32.const 2
   local.set $mask
   i32.const 1
   i32.eqz
   drop
   local.get $flags|6
   local.get $mask
   i32.and
   i32.const 0
   i32.ne
   br $~lib/bitflags/BitFlags.hasAny<u32>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.hasAny<u32>|inlined.1 (result i32)
   i32.const 8
   local.set $flags|8
   i32.const 5
   local.set $mask|9
   i32.const 1
   i32.eqz
   drop
   local.get $flags|8
   local.get $mask|9
   i32.and
   i32.const 0
   i32.ne
   br $~lib/bitflags/BitFlags.hasAny<u32>|inlined.1
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.test<u32>|inlined.0 (result i32)
   i32.const 10
   local.set $flags|10
   i32.const 1
   local.set $index
   i32.const 1
   i32.eqz
   drop
   local.get $flags|10
   i32.const 1
   local.get $index
   i32.shl
   i32.and
   i32.const 0
   i32.ne
   br $~lib/bitflags/BitFlags.test<u32>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.test<u32>|inlined.1 (result i32)
   i32.const 10
   local.set $flags|12
   i32.const 0
   local.set $index|13
   i32.const 1
   i32.eqz
   drop
   local.get $flags|12
   i32.const 1
   local.get $index|13
   i32.shl
   i32.and
   i32.const 0
   i32.ne
   br $~lib/bitflags/BitFlags.test<u32>|inlined.1
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.test<u32>|inlined.2 (result i32)
   i32.const 10
   local.set $flags|14
   i32.const 3
   local.set $index|15
   i32.const 1
   i32.eqz
   drop
   local.get $flags|14
   i32.const 1
   local.get $index|15
   i32.shl
   i32.and
   i32.const 0
   i32.ne
   br $~lib/bitflags/BitFlags.test<u32>|inlined.2
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.set<u32>|inlined.0 (result i32)
   i32.const 8
   local.set $flags|16
   i32.const 1
   local.set $bit|17
   i32.const 1
   i32.eqz
   drop
   local.get $flags|16
   local.get $bit|17
   i32.or
   br $~lib/bitflags/BitFlags.set<u32>|inlined.0
  end
  i32.const 9
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.set<u32>|inlined.1 (result i32)
   i32.const 10
   local.set $flags|18
   i32.const 4
   local.set $bit|19
   i32.const 1
   i32.eqz
   drop
   local.get $flags|18
   local.get $bit|19
   i32.or
   br $~lib/bitflags/BitFlags.set<u32>|inlined.1
  end
  i32.const 14
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.clear<u32>|inlined.0 (result i32)
   i32.const 15
   local.set $flags|20
   i32.const 5
   local.set $bit|21
   i32.const 1
   i32.eqz
   drop
   local.get $flags|20
   local.get $bit|21
   i32.const -1
   i32.xor
   i32.and
   br $~lib/bitflags/BitFlags.clear<u32>|inlined.0
  end
  i32.const 10
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.clear<u32>|inlined.1 (result i32)
   i32.const 10
   local.set $flags|22
   i32.const 2
   local.set $bit|23
   i32.const 1
   i32.eqz
   drop
   local.get $flags|22
   local.get $bit|23
   i32.const -1
   i32.xor
   i32.and
   br $~lib/bitflags/BitFlags.clear<u32>|inlined.1
  end
  i32.const 8
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.toggle<u32>|inlined.0 (result i32)
   i32.const 10
   local.set $flags|24
   i32.const 6
   local.set $bit|25
   i32.const 1
   i32.eqz
   drop
   local.get $flags|24
   local.get $bit|25
   i32.xor
   br $~lib/bitflags/BitFlags.toggle<u32>|inlined.0
  end
  i32.const 12
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.toggle<u32>|inlined.1 (result i32)
   i32.const 15
   local.set $flags|26
   i32.const 15
   local.set $bit|27
   i32.const 1
   i32.eqz
   drop
   local.get $flags|26
   local.get $bit|27
   i32.xor
   br $~lib/bitflags/BitFlags.toggle<u32>|inlined.1
  end
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.popcount<u32>|inlined.0 (result i32)
   i32.const 0
   local.set $flags|28
   i32.const 1
   i32.eqz
   drop
   local.get $flags|28
   i32.popcnt
   br $~lib/bitflags/BitFlags.popcount<u32>|inlined.0
  end
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.popcount<u32>|inlined.1 (result i32)
   i32.const 1
   local.set $flags|29
   i32.const 1
   i32.eqz
   drop
   local.get $flags|29
   i32.popcnt
   br $~lib/bitflags/BitFlags.popcount<u32>|inlined.1
  end
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.popcount<u32>|inlined.2 (result i32)
   i32.const 10
   local.set $flags|30
   i32.const 1
   i32.eqz
   drop
   local.get $flags|30
   i32.popcnt
   br $~lib/bitflags/BitFlags.popcount<u32>|inlined.2
  end
  i32.const 2
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.popcount<u32>|inlined.3 (result i32)
   i32.const -1
   local.set $flags|31
   i32.const 1
   i32.eqz
   drop
   local.get $flags|31
   i32.popcnt
   br $~lib/bitflags/BitFlags.popcount<u32>|inlined.3
  end
  i32.const 32
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.isEmpty<u32>|inlined.0 (result i32)
   i32.const 0
   local.set $flags|32
   i32.const 1
   i32.eqz
   drop
   local.get $flags|32
   i32.const 0
   i32.eq
   br $~lib/bitflags/BitFlags.isEmpty<u32>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.isEmpty<u32>|inlined.1 (result i32)
   i32.const 1
   local.set $flags|33
   i32.const 1
   i32.eqz
   drop
   local.get $flags|33
   i32.const 0
   i32.eq
   br $~lib/bitflags/BitFlags.isEmpty<u32>|inlined.1
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.has<u64>|inlined.0 (result i32)
   i64.const -1
   local.set $flags|34
   i64.const -9223372036854775808
   local.set $bit|35
   i32.const 1
   i32.eqz
   drop
   local.get $flags|34
   local.get $bit|35
   i64.and
   local.get $bit|35
   i64.eq
   br $~lib/bitflags/BitFlags.has<u64>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.test<u64>|inlined.0 (result i32)
   i64.const -9223372036854775808
   local.set $flags|36
   i32.const 63
   local.set $index|37
   i32.const 1
   i32.eqz
   drop
   local.get $flags|36
   i64.const 1
   local.get $index|37
   i64.extend_i32_s
   i64.shl
   i64.and
   i64.const 0
   i64.ne
   br $~lib/bitflags/BitFlags.test<u64>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.test<u64>|inlined.1 (result i32)
   i64.const -9223372036854775808
   local.set $flags|38
   i32.const 0
   local.set $index|39
   i32.const 1
   i32.eqz
   drop
   local.get $flags|38
   i64.const 1
   local.get $index|39
   i64.extend_i32_s
   i64.shl
   i64.and
   i64.const 0
   i64.ne
   br $~lib/bitflags/BitFlags.test<u64>|inlined.1
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.popcount<u64>|inlined.0 (result i32)
   i64.const -1
   local.set $flags|40
   i32.const 1
   i32.eqz
   drop
   local.get $flags|40
   i64.popcnt
   i32.wrap_i64
   br $~lib/bitflags/BitFlags.popcount<u64>|inlined.0
  end
  i32.const 64
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.set<u64>|inlined.0 (result i64)
   i64.const 0
   local.set $flags|41
   i64.const -9223372036854775808
   local.set $bit|42
   i32.const 1
   i32.eqz
   drop
   local.get $flags|41
   local.get $bit|42
   i64.or
   br $~lib/bitflags/BitFlags.set<u64>|inlined.0
  end
  i64.const -9223372036854775808
  i64.eq
  drop
  block $~lib/bitflags/BitFlags.clear<u64>|inlined.0 (result i64)
   i64.const -1
   local.set $flags|43
   i64.const -9223372036854775808
   local.set $bit|44
   i32.const 1
   i32.eqz
   drop
   local.get $flags|43
   local.get $bit|44
   i64.const -1
   i64.xor
   i64.and
   br $~lib/bitflags/BitFlags.clear<u64>|inlined.0
  end
  i64.const 9223372036854775807
  i64.eq
  drop
  block $~lib/bitflags/BitFlags.toggle<u64>|inlined.0 (result i64)
   i64.const 0
   local.set $flags|45
   i64.const -6148914691236517206
   local.set $bit|46
   i32.const 1
   i32.eqz
   drop
   local.get $flags|45
   local.get $bit|46
   i64.xor
   br $~lib/bitflags/BitFlags.toggle<u64>|inlined.0
  end
  i64.const -6148914691236517206
  i64.eq
  drop
  block $~lib/bitflags/BitFlags.isEmpty<u64>|inlined.0 (result i32)
   i64.const 0
   local.set $flags|47
   i32.const 1
   i32.eqz
   drop
   local.get $flags|47
   i64.const 0
   i64.eq
   br $~lib/bitflags/BitFlags.isEmpty<u64>|inlined.0
  end
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  block $~lib/bitflags/BitFlags.isEmpty<u64>|inlined.1 (result i32)
   i64.const 1
   local.set $flags|48
   i32.const 1
   i32.eqz
   drop
   local.get $flags|48
   i64.const 0
   i64.eq
   br $~lib/bitflags/BitFlags.isEmpty<u64>|inlined.1
  end
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
 )
 (func $~start
  call $start:std/bitflags
 )
)
