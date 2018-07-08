(module
 (type $ii (func (param i32) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $v (func))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/string/EMPTY i32 (i32.const 8))
 (global $~lib/internal/hash/FNV_OFFSET i32 (i32.const -2128831035))
 (global $~lib/internal/hash/FNV_PRIME i32 (i32.const 16777619))
 (global $Infinity f64 (f64.const inf))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00")
 (data (i32.const 12) "\01\00\00\00a\00")
 (data (i32.const 20) "\02\00\00\00a\00b\00")
 (data (i32.const 28) "\03\00\00\00a\00b\00c\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/internal/hash/hashStr (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i32.const -2128831035)
  )
  (block $break|0
   (block
    (set_local $2
     (i32.const 0)
    )
    (set_local $3
     (i32.shl
      (i32.load
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (set_local $1
     (i32.mul
      (i32.xor
       (get_local $1)
       (i32.load8_u offset=4
        (i32.add
         (get_local $0)
         (get_local $2)
        )
       )
      )
      (i32.const 16777619)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $std/hash/check (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (i32.const 1)
 )
 (func $~lib/internal/hash/hash32 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const -2128831035)
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (i32.shr_u
       (get_local $0)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.and
      (i32.shr_u
       (get_local $0)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $1
   (i32.mul
    (i32.xor
     (get_local $1)
     (i32.shr_u
      (get_local $0)
      (i32.const 24)
     )
    )
    (i32.const 16777619)
   )
  )
  (get_local $1)
 )
 (func $~lib/internal/hash/hash64 (; 3 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (i32.wrap/i64
    (get_local $0)
   )
  )
  (set_local $2
   (i32.wrap/i64
    (i64.shr_u
     (get_local $0)
     (i64.const 32)
    )
   )
  )
  (set_local $3
   (i32.const -2128831035)
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $1)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.shr_u
      (get_local $1)
      (i32.const 24)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (get_local $2)
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.and
      (i32.shr_u
       (get_local $2)
       (i32.const 16)
      )
      (i32.const 255)
     )
    )
    (i32.const 16777619)
   )
  )
  (set_local $3
   (i32.mul
    (i32.xor
     (get_local $3)
     (i32.shr_u
      (get_local $2)
      (i32.const 24)
     )
    )
    (i32.const 16777619)
   )
  )
  (get_local $3)
 )
 (func $start (; 4 ;) (type $v)
  (local $0 i32)
  (local $1 f32)
  (local $2 f64)
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<String>|inlined.0 (result i32)
     (set_local $0
      (i32.const 0)
     )
     (br $~lib/internal/hash/hash<String>|inlined.0
      (call $~lib/internal/hash/hashStr
       (get_local $0)
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<String>|inlined.1 (result i32)
     (set_local $0
      (i32.const 8)
     )
     (br $~lib/internal/hash/hash<String>|inlined.1
      (call $~lib/internal/hash/hashStr
       (get_local $0)
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<String>|inlined.2 (result i32)
     (set_local $0
      (i32.const 12)
     )
     (br $~lib/internal/hash/hash<String>|inlined.2
      (call $~lib/internal/hash/hashStr
       (get_local $0)
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<String>|inlined.3 (result i32)
     (set_local $0
      (i32.const 20)
     )
     (br $~lib/internal/hash/hash<String>|inlined.3
      (call $~lib/internal/hash/hashStr
       (get_local $0)
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<String>|inlined.4 (result i32)
     (set_local $0
      (i32.const 28)
     )
     (br $~lib/internal/hash/hash<String>|inlined.4
      (call $~lib/internal/hash/hashStr
       (get_local $0)
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f32>|inlined.0 (result i32)
     (set_local $1
      (f32.const 0)
     )
     (br $~lib/internal/hash/hash<f32>|inlined.0
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f32>|inlined.1 (result i32)
     (set_local $1
      (f32.const 1)
     )
     (br $~lib/internal/hash/hash<f32>|inlined.1
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f32>|inlined.2 (result i32)
     (set_local $1
      (f32.const 1.100000023841858)
     )
     (br $~lib/internal/hash/hash<f32>|inlined.2
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f32>|inlined.3 (result i32)
     (set_local $1
      (f32.const 0)
     )
     (br $~lib/internal/hash/hash<f32>|inlined.3
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f32>|inlined.4 (result i32)
     (set_local $1
      (f32.const inf)
     )
     (br $~lib/internal/hash/hash<f32>|inlined.4
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f32>|inlined.5 (result i32)
     (set_local $1
      (f32.const nan:0x400000)
     )
     (br $~lib/internal/hash/hash<f32>|inlined.5
      (call $~lib/internal/hash/hash32
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f64>|inlined.0 (result i32)
     (set_local $2
      (f64.const 0)
     )
     (br $~lib/internal/hash/hash<f64>|inlined.0
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f64>|inlined.1 (result i32)
     (set_local $2
      (f64.const 1)
     )
     (br $~lib/internal/hash/hash<f64>|inlined.1
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f64>|inlined.2 (result i32)
     (set_local $2
      (f64.const 1.1)
     )
     (br $~lib/internal/hash/hash<f64>|inlined.2
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f64>|inlined.3 (result i32)
     (set_local $2
      (f64.const 0)
     )
     (br $~lib/internal/hash/hash<f64>|inlined.3
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f64>|inlined.4 (result i32)
     (set_local $2
      (f64.const inf)
     )
     (br $~lib/internal/hash/hash<f64>|inlined.4
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (drop
   (call $std/hash/check
    (block $~lib/internal/hash/hash<f64>|inlined.5 (result i32)
     (set_local $2
      (f64.const nan:0x8000000000000)
     )
     (br $~lib/internal/hash/hash<f64>|inlined.5
      (call $~lib/internal/hash/hash64
       (i64.reinterpret/f64
        (get_local $2)
       )
      )
     )
    )
   )
  )
 )
)
