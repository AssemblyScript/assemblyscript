(module
 (type $ii (func (param i32) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 16) "\01\00\00\00a")
 (data (i32.const 24) "\02\00\00\00a\00b")
 (data (i32.const 32) "\03\00\00\00a\00b\00c")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/hash/hashStr (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  set_local $2
  block $break|0
   get_local $0
   i32.load
   i32.const 1
   i32.shl
   set_local $3
   loop $repeat|0
    get_local $1
    get_local $3
    i32.ge_u
    br_if $break|0
    get_local $2
    get_local $0
    get_local $1
    i32.add
    i32.load8_u offset=4
    i32.xor
    i32.const 16777619
    i32.mul
    set_local $2
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $2
 )
 (func $~lib/internal/hash/hash32 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $~lib/internal/hash/hash64 (; 2 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  get_local $0
  i32.wrap/i64
  tee_local $1
  i32.const 255
  i32.and
  i32.const -2128831035
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $0
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  tee_local $1
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  get_local $1
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
 )
 (func $start (; 3 ;) (type $v)
  i32.const 0
  call $~lib/internal/hash/hashStr
  drop
  i32.const 8
  call $~lib/internal/hash/hashStr
  drop
  i32.const 16
  call $~lib/internal/hash/hashStr
  drop
  i32.const 24
  call $~lib/internal/hash/hashStr
  drop
  i32.const 32
  call $~lib/internal/hash/hashStr
  drop
  i32.const 0
  call $~lib/internal/hash/hash32
  drop
  i32.const 1065353216
  call $~lib/internal/hash/hash32
  drop
  i32.const 1066192077
  call $~lib/internal/hash/hash32
  drop
  i32.const 0
  call $~lib/internal/hash/hash32
  drop
  i32.const 2139095040
  call $~lib/internal/hash/hash32
  drop
  i32.const 2143289344
  call $~lib/internal/hash/hash32
  drop
  i64.const 0
  call $~lib/internal/hash/hash64
  drop
  i64.const 4607182418800017408
  call $~lib/internal/hash/hash64
  drop
  i64.const 4607632778762754458
  call $~lib/internal/hash/hash64
  drop
  i64.const 0
  call $~lib/internal/hash/hash64
  drop
  i64.const 9218868437227405312
  call $~lib/internal/hash/hash64
  drop
  i64.const 9221120237041090560
  call $~lib/internal/hash/hash64
  drop
 )
 (func $null (; 4 ;) (type $v)
  nop
 )
)
