(module
 (type $ii (func (param i32) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 16) "\01\00\00\00a\00")
 (data (i32.const 24) "\02\00\00\00a\00b\00")
 (data (i32.const 32) "\03\00\00\00a\00b\00c\00")
 (table $0 1 anyfunc)
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
  get_global $~lib/internal/hash/FNV_OFFSET
  set_local $1
  block $break|0
   block
    i32.const 0
    set_local $2
    get_local $0
    i32.load
    i32.const 1
    i32.shl
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $0
    get_local $2
    i32.add
    i32.load8_u offset=4
    i32.xor
    get_global $~lib/internal/hash/FNV_PRIME
    i32.mul
    set_local $1
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $std/hash/check (; 1 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
 )
 (func $~lib/internal/hash/hash32 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_global $~lib/internal/hash/FNV_OFFSET
  set_local $1
  get_local $1
  get_local $0
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
  get_local $0
  i32.const 24
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $1
  get_local $1
 )
 (func $~lib/internal/hash/hash64 (; 3 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.wrap/i64
  set_local $1
  get_local $0
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_local $2
  get_global $~lib/internal/hash/FNV_OFFSET
  set_local $3
  get_local $3
  get_local $1
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $1
  i32.const 24
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
  get_local $2
  i32.const 24
  i32.shr_u
  i32.xor
  get_global $~lib/internal/hash/FNV_PRIME
  i32.mul
  set_local $3
  get_local $3
 )
 (func $start (; 4 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  (local $2 f64)
  block $~lib/internal/hash/HASH<String>|inlined.0 (result i32)
   i32.const 0
   set_local $0
   get_local $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.1 (result i32)
   i32.const 8
   set_local $0
   get_local $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.2 (result i32)
   i32.const 16
   set_local $0
   get_local $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.3 (result i32)
   i32.const 24
   set_local $0
   get_local $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<String>|inlined.4 (result i32)
   i32.const 32
   set_local $0
   get_local $0
   call $~lib/internal/hash/hashStr
   br $~lib/internal/hash/HASH<String>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.0 (result i32)
   f32.const 0
   set_local $1
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.1 (result i32)
   f32.const 1
   set_local $1
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.2 (result i32)
   f32.const 1.100000023841858
   set_local $1
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.3 (result i32)
   f32.const 0
   set_local $1
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.4 (result i32)
   f32.const inf
   set_local $1
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f32>|inlined.5 (result i32)
   f32.const nan:0x400000
   set_local $1
   get_local $1
   i32.reinterpret/f32
   call $~lib/internal/hash/hash32
   br $~lib/internal/hash/HASH<f32>|inlined.5
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.0 (result i32)
   f64.const 0
   set_local $2
   get_local $2
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.0
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.1 (result i32)
   f64.const 1
   set_local $2
   get_local $2
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.1
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.2 (result i32)
   f64.const 1.1
   set_local $2
   get_local $2
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.2
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.3 (result i32)
   f64.const 0
   set_local $2
   get_local $2
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.3
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.4 (result i32)
   f64.const inf
   set_local $2
   get_local $2
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.4
  end
  call $std/hash/check
  drop
  block $~lib/internal/hash/HASH<f64>|inlined.5 (result i32)
   f64.const nan:0x8000000000000
   set_local $2
   get_local $2
   i64.reinterpret/f64
   call $~lib/internal/hash/hash64
   br $~lib/internal/hash/HASH<f64>|inlined.5
  end
  call $std/hash/check
  drop
 )
 (func $null (; 5 ;) (type $v)
 )
)
