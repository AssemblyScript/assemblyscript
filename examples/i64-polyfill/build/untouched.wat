(module
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/i64/lo (mut i32) (i32.const 0))
 (global $assembly/i64/hi (mut i32) (i32.const 0))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getLo" (func $assembly/i64/getLo))
 (export "getHi" (func $assembly/i64/getHi))
 (export "clz" (func $assembly/i64/clz))
 (export "ctz" (func $assembly/i64/ctz))
 (export "popcnt" (func $assembly/i64/popcnt))
 (export "eqz" (func $assembly/i64/eqz))
 (export "add" (func $assembly/i64/add))
 (export "sub" (func $assembly/i64/sub))
 (export "mul" (func $assembly/i64/mul))
 (export "div_s" (func $assembly/i64/div_s))
 (export "div_u" (func $assembly/i64/div_u))
 (export "rem_s" (func $assembly/i64/rem_s))
 (export "rem_u" (func $assembly/i64/rem_u))
 (export "and" (func $assembly/i64/and))
 (export "or" (func $assembly/i64/or))
 (export "xor" (func $assembly/i64/xor))
 (export "shl" (func $assembly/i64/shl))
 (export "shr_s" (func $assembly/i64/shr_s))
 (export "shr_u" (func $assembly/i64/shr_u))
 (export "rotl" (func $assembly/i64/rotl))
 (export "rotr" (func $assembly/i64/rotr))
 (export "eq" (func $assembly/i64/eq))
 (export "ne" (func $assembly/i64/ne))
 (export "lt_s" (func $assembly/i64/lt_s))
 (export "lt_u" (func $assembly/i64/lt_u))
 (export "le_s" (func $assembly/i64/le_s))
 (export "le_u" (func $assembly/i64/le_u))
 (export "gt_s" (func $assembly/i64/gt_s))
 (export "gt_u" (func $assembly/i64/gt_u))
 (export "ge_s" (func $assembly/i64/ge_s))
 (export "ge_u" (func $assembly/i64/ge_u))
 (func $assembly/i64/getLo (; 0 ;) (type $i) (result i32)
  get_global $assembly/i64/lo
 )
 (func $assembly/i64/getHi (; 1 ;) (type $i) (result i32)
  get_global $assembly/i64/hi
 )
 (func $assembly/i64/clz (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/ctz (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/popcnt (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/eqz (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/add (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/sub (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/mul (; 8 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/div_s (; 9 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/div_u (; 10 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/rem_s (; 11 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/rem_u (; 12 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/and (; 13 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/or (; 14 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/xor (; 15 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/shl (; 16 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/shr_s (; 17 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/shr_u (; 18 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/rotl (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/rotr (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  get_local $4
  i64.const 32
  i64.shr_u
  i32.wrap/i64
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/eq (; 21 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/ne (; 22 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/lt_s (; 23 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/lt_u (; 24 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/le_s (; 25 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/le_u (; 26 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/gt_s (; 27 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/gt_u (; 28 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/ge_s (; 29 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $assembly/i64/ge_u (; 30 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
  set_global $assembly/i64/lo
  i32.const 0
  set_global $assembly/i64/hi
 )
 (func $null (; 31 ;) (type $v)
 )
)
