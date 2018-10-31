(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 0 65535)
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $../../examples/i64-polyfill/assembly/i64/lo (mut i32) (i32.const 0))
 (global $../../examples/i64-polyfill/assembly/i64/hi (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getHi" (func $../../examples/i64-polyfill/assembly/i64/getHi))
 (export "getLo" (func $../../examples/i64-polyfill/assembly/i64/getLo))
 (export "clz" (func $../../examples/i64-polyfill/assembly/i64/clz))
 (export "ctz" (func $../../examples/i64-polyfill/assembly/i64/ctz))
 (export "popcnt" (func $../../examples/i64-polyfill/assembly/i64/popcnt))
 (export "eqz" (func $../../examples/i64-polyfill/assembly/i64/eqz))
 (export "add" (func $../../examples/i64-polyfill/assembly/i64/add))
 (export "sub" (func $../../examples/i64-polyfill/assembly/i64/sub))
 (export "mul" (func $../../examples/i64-polyfill/assembly/i64/mul))
 (export "div_s" (func $../../examples/i64-polyfill/assembly/i64/div_s))
 (export "div_u" (func $../../examples/i64-polyfill/assembly/i64/div_u))
 (export "rem_s" (func $../../examples/i64-polyfill/assembly/i64/rem_s))
 (export "rem_u" (func $../../examples/i64-polyfill/assembly/i64/rem_u))
 (export "and" (func $../../examples/i64-polyfill/assembly/i64/and))
 (export "or" (func $../../examples/i64-polyfill/assembly/i64/or))
 (export "xor" (func $../../examples/i64-polyfill/assembly/i64/xor))
 (export "shl" (func $../../examples/i64-polyfill/assembly/i64/shl))
 (export "shr_s" (func $../../examples/i64-polyfill/assembly/i64/shr_s))
 (export "shr_u" (func $../../examples/i64-polyfill/assembly/i64/shr_u))
 (export "rotl" (func $../../examples/i64-polyfill/assembly/i64/rotl))
 (export "rotr" (func $../../examples/i64-polyfill/assembly/i64/rotr))
 (export "eq" (func $../../examples/i64-polyfill/assembly/i64/eq))
 (export "ne" (func $../../examples/i64-polyfill/assembly/i64/ne))
 (export "lt_s" (func $../../examples/i64-polyfill/assembly/i64/lt_s))
 (export "lt_u" (func $../../examples/i64-polyfill/assembly/i64/lt_u))
 (export "le_s" (func $../../examples/i64-polyfill/assembly/i64/le_s))
 (export "le_u" (func $../../examples/i64-polyfill/assembly/i64/le_u))
 (export "gt_s" (func $../../examples/i64-polyfill/assembly/i64/gt_s))
 (export "gt_u" (func $../../examples/i64-polyfill/assembly/i64/gt_u))
 (export "ge_s" (func $../../examples/i64-polyfill/assembly/i64/ge_s))
 (export "ge_u" (func $../../examples/i64-polyfill/assembly/i64/ge_u))
 (func $../../examples/i64-polyfill/assembly/i64/getHi (; 0 ;) (; has Stack IR ;) (type $i) (result i32)
  get_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/getLo (; 1 ;) (; has Stack IR ;) (type $i) (result i32)
  get_global $../../examples/i64-polyfill/assembly/i64/lo
 )
 (func $../../examples/i64-polyfill/assembly/i64/clz (; 2 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.clz
  set_local $2
  get_local $2
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ctz (; 3 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.ctz
  set_local $2
  get_local $2
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/popcnt (; 4 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.popcnt
  set_local $2
  get_local $2
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/eqz (; 5 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.eqz
  set_local $2
  get_local $2
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/add (; 6 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.add
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/sub (; 7 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.sub
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/mul (; 8 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.mul
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/div_s (; 9 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.div_s
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/div_u (; 10 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.div_u
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rem_s (; 11 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.rem_s
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rem_u (; 12 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.rem_u
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/and (; 13 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.and
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/or (; 14 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.or
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/xor (; 15 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.xor
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/shl (; 16 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.shl
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/shr_s (; 17 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.shr_s
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/shr_u (; 18 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.shr_u
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rotl (; 19 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.rotl
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rotr (; 20 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.rotr
  set_local $4
  get_local $4
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/eq (; 21 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.eq
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ne (; 22 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.ne
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_s (; 23 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.lt_s
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_u (; 24 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.lt_u
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_s (; 25 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.le_s
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_u (; 26 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.le_u
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_s (; 27 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.gt_s
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_u (; 28 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.gt_u
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_s (; 29 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.ge_s
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_u (; 30 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  get_local $0
  i64.extend_u/i32
  get_local $1
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  get_local $2
  i64.extend_u/i32
  get_local $3
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  i64.ge_u
  set_local $4
  get_local $4
  set_global $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  set_global $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $null (; 31 ;) (; has Stack IR ;) (type $v)
 )
)
