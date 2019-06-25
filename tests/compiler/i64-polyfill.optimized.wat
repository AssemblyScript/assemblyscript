(module
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $../../examples/i64-polyfill/assembly/i64/lo (mut i32) (i32.const 0))
 (global $../../examples/i64-polyfill/assembly/i64/hi (mut i32) (i32.const 0))
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
 (func $../../examples/i64-polyfill/assembly/i64/getHi (; 0 ;) (type $FUNCSIG$i) (result i32)
  global.get $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/getLo (; 1 ;) (type $FUNCSIG$i) (result i32)
  global.get $../../examples/i64-polyfill/assembly/i64/lo
 )
 (func $../../examples/i64-polyfill/assembly/i64/clz (; 2 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.clz
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ctz (; 3 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ctz
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/popcnt (; 4 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.popcnt
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/eqz (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.eqz
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/add (; 6 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.add
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/sub (; 7 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.sub
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/mul (; 8 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.mul
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/div_s (; 9 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.div_s
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/div_u (; 10 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.div_u
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rem_s (; 11 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rem_s
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rem_u (; 12 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rem_u
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/and (; 13 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.and
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/or (; 14 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.or
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/xor (; 15 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.xor
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/shl (; 16 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.shl
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/shr_s (; 17 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.shr_s
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/shr_u (; 18 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.shr_u
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rotl (; 19 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rotl
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/rotr (; 20 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.rotr
  local.tee $4
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  local.get $4
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/eq (; 21 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.eq
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ne (; 22 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ne
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_s (; 23 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.lt_s
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/lt_u (; 24 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.lt_u
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_s (; 25 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.le_s
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/le_u (; 26 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.le_u
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_s (; 27 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.gt_s
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/gt_u (; 28 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.gt_u
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_s (; 29 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ge_s
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $../../examples/i64-polyfill/assembly/i64/ge_u (; 30 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i64.extend_i32_u
  local.get $1
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.get $2
  i64.extend_i32_u
  local.get $3
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  i64.ge_u
  global.set $../../examples/i64-polyfill/assembly/i64/lo
  i32.const 0
  global.set $../../examples/i64-polyfill/assembly/i64/hi
 )
 (func $null (; 31 ;) (type $FUNCSIG$v)
  nop
 )
)
