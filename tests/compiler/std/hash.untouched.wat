(module
 (type $ii (func (param i32) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 16) "\01\00\00\00a\00")
 (data (i32.const 24) "\02\00\00\00a\00b\00")
 (data (i32.const 32) "\03\00\00\00a\00b\00c\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $Infinity f64 (f64.const inf))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $HEAP_BASE i32 (i32.const 44))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/hash/hashStr (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/internal/hash/FNV_OFFSET
  local.set $1
  block $break|0
   block
    i32.const 0
    local.set $2
    local.get $0
    i32.load
    i32.const 1
    i32.shl
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $1
    local.get $0
    local.get $2
    i32.add
    i32.load8_u offset=4
    i32.xor
    global.get $~lib/internal/hash/FNV_PRIME
    i32.mul
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $1
 )
 (func $std/hash/check (; 1 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
 )
 (func $~lib/internal/hash/hash32 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/internal/hash/FNV_OFFSET
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/internal/hash/hash64 (; 3 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  local.set $1
  local.get $0
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  global.get $~lib/internal/hash/FNV_OFFSET
  local.set $3
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $1
  i32.const 24
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
  local.get $2
  i32.const 24
  i32.shr_u
  i32.xor
  global.get $~lib/internal/hash/FNV_PRIME
  i32.mul
  local.set $3
  local.get $3
 )
 (func $start (; 4 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  (local $2 f64)
  block $~lib/internal/hash/HASH<String>|inlined.0 (result i32)
   i32.const 0
   local.set $0
   local.get $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.1 (result i32)
   i32.const 8
   local.set $0
   local.get $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.2 (result i32)
   i32.const 16
   local.set $0
   local.get $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.3 (result i32)
   i32.const 24
   local.set $0
   local.get $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.4 (result i32)
   i32.const 32
   local.set $0
   local.get $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.0 (result i32)
   f32.const 0
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.1 (result i32)
   f32.const 1
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.2 (result i32)
   f32.const 1.100000023841858
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.3 (result i32)
   f32.const 0
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.4 (result i32)
   f32.const inf
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.5 (result i32)
   f32.const nan:0x400000
   local.set $1
   local.get $1
   i32.reinterpret_f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.5
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.0 (result i32)
   f64.const 0
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.1 (result i32)
   f64.const 1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.2 (result i32)
   f64.const 1.1
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.3 (result i32)
   f64.const 0
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.4 (result i32)
   f64.const inf
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.5 (result i32)
   f64.const nan:0x8000000000000
   local.set $2
   local.get $2
   i64.reinterpret_f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.5
  end
  call $std/hash/check
  drop
 )
 (func $null (; 5 ;) (type $v)
 )
)
