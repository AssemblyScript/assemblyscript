(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (memory $0 1)
 (data (i32.const 9) "\01\00\00\01")
 (data (i32.const 21) "\01\00\00\be\f3\f8y\eca\f6?\190\96[\c6\fe\de\bf=\88\afJ\edq\f5?\a4\fc\d42h\0b\db\bf\b0\10\f0\f09\95\f4?{\b7\1f\n\8bA\d7\bf\85\03\b8\b0\95\c9\f3?{\cfm\1a\e9\9d\d3\bf\a5d\88\0c\19\0d\f3?1\b6\f2\f3\9b\1d\d0\bf\a0\8e\0b{\"^\f2?\f0z;\1b\1d|\c9\bf?4\1aJJ\bb\f1?\9f<\af\93\e3\f9\c2\bf\ba\e5\8a\f0X#\f1?\\\8dx\bf\cb`\b9\bf\a7\00\99A?\95\f0?\ce_G\b6\9do\aa\bf\00\00\00\00\00\00\f0?")
 (data (i32.const 184) "\acG\9a\fd\8c`\ee?=\f5$\9f\ca8\b3?\a0j\02\1f\b3\a4\ec?\ba\918T\a9v\c4?\e6\fcjW6 \eb?\d2\e4\c4J\0b\84\ce?-\aa\a1c\d1\c2\e9?\1ce\c6\f0E\06\d4?\edAx\03\e6\86\e8?\f8\9f\1b,\9c\8e\d8?bHS\f5\dcg\e7?\cc{\b1N\a4\e0\dc?")
 (data (i32.const 280) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00\18\00\00\00\18\00\00\00\00\01\00\00 ")
 (data (i32.const 313) "\01\00\00\01")
 (data (i32.const 325) "\01")
 (data (i32.const 334) "\f0?t\85\15\d3\b0\d9\ef?\0f\89\f9lX\b5\ef?Q[\12\d0\01\93\ef?{Q}<\b8r\ef?\aa\b9h1\87T\ef?8bunz8\ef?\e1\de\1f\f5\9d\1e\ef?\15\b71\n\fe\06\ef?\cb\a9:7\a7\f1\ee?\"4\12L\a6\de\ee?-\89a`\08\ce\ee?\'*6\d5\da\bf\ee?\82O\9dV+\b4\ee?)TH\dd\07\ab\ee?\85U:\b0~\a4\ee?\cd;\7ff\9e\a0\ee?t_\ec\e8u\9f\ee?\87\01\ebs\14\a1\ee?\13\ceL\99\89\a5\ee?\db\a0*B\e5\ac\ee?\e5\c5\cd\b07\b7\ee?\90\f0\a3\82\91\c4\ee?]%>\b2\03\d5\ee?\ad\d3Z\99\9f\e8\ee?G^\fb\f2v\ff\ee?\9cR\85\dd\9b\19\ef?i\90\ef\dc 7\ef?\87\a4\fb\dc\18X\ef?_\9b{3\97|\ef?\da\90\a4\a2\af\a4\ef?@En[v\d0\ef?")
 (data (i32.const 584) "\10\00\00\00\01\00\00\00\04\00\00\00\10\00\00\00H\01\00\00H\01\00\00\00\01\00\00 ")
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/math/NativeMath.pow (; 0 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  i32.const 1
  i32.const 0
  i32.const 1
  i32.const 0
  i32.const 1
  local.get $2
  i32.wrap_i64
  i32.const 0
  local.get $1
  i32.const 2147483647
  i32.and
  local.tee $3
  i32.const 2146435072
  i32.eq
  select
  local.get $3
  i32.const 2146435072
  i32.gt_s
  select
  select
  select
  if
   local.get $0
   f64.const 1
   f64.add
   return
  end
  local.get $0
 )
 (func $~lib/math/NativeMathf.mod (; 1 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $2
  local.get $1
  i32.const -2147483648
  i32.and
  local.set $4
  i32.const 1
  i32.const 0
  local.get $2
  i32.const 255
  i32.eq
  select
  if
   local.get $0
   local.get $0
   f32.div
   return
  end
  block $folding-inner0
   local.get $1
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 2130706432
   i32.le_u
   if
    local.get $3
    i32.const 2130706432
    i32.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   if (result i32)
    local.get $1
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else
    local.get $1
    i32.const 1
    local.get $2
    local.get $1
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    local.tee $2
    i32.sub
    i32.shl
   end
   local.set $1
   loop $continue|0
    local.get $2
    i32.const 127
    i32.gt_s
    if
     local.get $1
     i32.const 8388608
     i32.ge_u
     if
      local.get $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      local.get $1
      i32.const 8388608
      i32.sub
      local.set $1
     end
     local.get $1
     i32.const 1
     i32.shl
     local.set $1
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i32.const 8388608
   i32.ge_u
   if
    local.get $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    local.get $1
    i32.const 8388608
    i32.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i32.const 8
   i32.shl
   i32.clz
   local.tee $3
   i32.shl
   local.set $1
   local.get $2
   local.get $3
   i32.sub
   local.tee $2
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $1
    i32.const 8388608
    i32.sub
    local.get $2
    i32.const 23
    i32.shl
    i32.or
   else
    local.get $1
    i32.const 1
    local.get $2
    i32.sub
    i32.shr_u
   end
   local.get $4
   i32.or
   f32.reinterpret_i32
   return
  end
  f32.const 0
  local.get $0
  f32.mul
 )
 (func $~lib/util/math/powf_lut (; 2 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 8388608
  i32.sub
  i32.const 2130706432
  i32.ge_u
  if
   local.get $1
   i32.const 1
   i32.shl
   i32.const 1
   i32.sub
   i32.const -16777217
   i32.ge_u
   if
    local.get $0
    local.get $0
    f32.mul
    local.set $0
    local.get $0
    f32.neg
    local.get $0
    i32.const 1
    i32.const 0
    local.get $1
    i32.const 31
    i32.shr_u
    select
    select
    return
   end
   local.get $1
   i32.const 31
   i32.shr_u
   if
    i32.const 65536
    local.set $4
    local.get $1
    i32.const 2147483647
    i32.and
    local.set $1
   end
   local.get $1
   i32.const 8388608
   i32.lt_u
   if
    local.get $0
    f32.const 8388608
    f32.mul
    i32.reinterpret_f32
    i32.const 2147483647
    i32.and
    i32.const 192937984
    i32.sub
    local.set $1
   end
  end
  local.get $1
  local.get $1
  i32.const 1060306944
  i32.sub
  local.tee $1
  i32.const -8388608
  i32.and
  local.tee $6
  i32.sub
  f32.reinterpret_i32
  f64.promote_f32
  i32.const 300
  i32.load
  local.get $1
  i32.const 19
  i32.shr_u
  i32.const 15
  i32.and
  i32.const 4
  i32.shl
  i32.add
  local.tee $1
  f64.load
  f64.mul
  f64.const 1
  f64.sub
  local.tee $2
  local.get $2
  f64.mul
  local.set $3
  f64.const 1
  f64.const 0.288457581109214
  local.get $2
  f64.mul
  f64.const -0.36092606229713164
  f64.add
  local.get $3
  local.get $3
  f64.mul
  f64.mul
  f64.const 1.4426950408774342
  local.get $2
  f64.mul
  local.get $1
  f64.load offset=8
  local.get $6
  i32.const 23
  i32.shr_s
  f64.convert_i32_s
  f64.add
  f64.add
  f64.const 0.480898481472577
  local.get $2
  f64.mul
  f64.const -0.7213474675006291
  f64.add
  local.get $3
  f64.mul
  f64.add
  f64.add
  f64.mul
  local.tee $2
  i64.reinterpret_f64
  i64.const 47
  i64.shr_u
  i64.const 65535
  i64.and
  i64.const 32959
  i64.ge_u
  if
   local.get $2
   f64.const 127.99999995700433
   f64.gt
   if
    f32.const -1584563250285286751870879e5
    f32.const 1584563250285286751870879e5
    local.get $4
    select
    f32.const 1584563250285286751870879e5
    f32.mul
    return
   end
   local.get $2
   f64.const -150
   f64.le
   if
    f32.const -2.524354896707238e-29
    f32.const 2.524354896707238e-29
    local.get $4
    select
    f32.const 2.524354896707238e-29
    f32.mul
    return
   end
  end
  local.get $2
  f64.const 211106232532992
  f64.add
  local.tee $3
  i64.reinterpret_f64
  local.set $5
  f64.const 0.6931471806916203
  local.get $2
  local.get $3
  f64.const 211106232532992
  f64.sub
  f64.sub
  local.tee $3
  f64.mul
  f64.const 1
  f64.add
  f64.const 0.05550361559341535
  local.get $3
  f64.mul
  f64.const 0.2402284522445722
  f64.add
  local.get $3
  local.get $3
  f64.mul
  f64.mul
  f64.add
  i32.const 604
  i32.load
  local.get $5
  i32.wrap_i64
  i32.const 31
  i32.and
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.get $4
  i64.extend_i32_u
  local.get $5
  i64.add
  i64.const 47
  i64.shl
  i64.add
  f64.reinterpret_i64
  f64.mul
  f32.demote_f64
 )
 (func $~lib/math/NativeMath.mod (; 3 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $2
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $4
  i32.const 1
  i32.const 0
  local.get $2
  i64.const 2047
  i64.eq
  select
  if
   local.get $0
   local.get $0
   f64.div
   return
  end
  block $folding-inner0
   local.get $1
   i64.const 1
   i64.shl
   local.tee $3
   i64.const 9214364837600034816
   i64.le_u
   if
    local.get $3
    i64.const 9214364837600034816
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   i64.eqz
   if (result i64)
    local.get $1
    i64.const 0
    local.get $2
    local.get $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else
    local.get $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   loop $continue|0
    local.get $2
    i64.const 1023
    i64.gt_s
    if
     local.get $1
     i64.const 4503599627370496
     i64.ge_u
     if
      local.get $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      local.get $1
      i64.const 4503599627370496
      i64.sub
      local.set $1
     end
     local.get $1
     i64.const 1
     i64.shl
     local.set $1
     local.get $2
     i64.const 1
     i64.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i64.const 4503599627370496
   i64.ge_u
   if
    local.get $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $1
   local.get $2
   local.get $3
   i64.sub
   local.tee $2
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.get $2
    i64.const 52
    i64.shl
    i64.or
   else
    local.get $1
    i64.const 0
    local.get $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   local.get $4
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  f64.const 0
  local.get $0
  f64.mul
 )
 (func $start:binary (; 4 ;) (type $FUNCSIG$v)
  global.get $binary/i
  i32.const 1
  i32.rem_s
  drop
  global.get $binary/i
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/i
  i32.const 1
  i32.lt_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.gt_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.le_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.ge_s
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.eq
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.eq
  global.set $binary/b
  global.get $binary/i
  i32.const 1
  i32.add
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.sub
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.rem_s
  global.set $binary/i
  global.get $binary/i
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  i32.trunc_f64_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shl
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_u
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.and
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.or
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.xor
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.add
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.sub
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.rem_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shl
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_s
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.shr_u
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.and
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.or
  global.set $binary/i
  global.get $binary/i
  i32.const 1
  i32.xor
  global.set $binary/i
  global.get $binary/I
  i64.const 1
  i64.rem_s
  drop
  global.get $binary/I
  f64.convert_i64_s
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/I
  i64.const 1
  i64.lt_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.gt_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.le_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.ge_s
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.eq
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.eq
  global.set $binary/b
  global.get $binary/I
  i64.const 1
  i64.add
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.sub
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.rem_s
  global.set $binary/I
  global.get $binary/I
  f64.convert_i64_s
  call $~lib/math/NativeMath.pow
  i64.trunc_f64_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shl
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_u
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.and
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.or
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.xor
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.add
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.sub
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.rem_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shl
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_s
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.shr_u
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.and
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.or
  global.set $binary/I
  global.get $binary/I
  i64.const 1
  i64.xor
  global.set $binary/I
  global.get $binary/f
  call $~lib/math/NativeMathf.mod
  drop
  global.get $binary/f
  call $~lib/util/math/powf_lut
  drop
  global.get $binary/f
  f32.const 1
  f32.lt
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.gt
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.le
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.ge
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.eq
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.eq
  global.set $binary/b
  global.get $binary/f
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  call $~lib/math/NativeMathf.mod
  global.set $binary/f
  global.get $binary/f
  call $~lib/util/math/powf_lut
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.add
  global.set $binary/f
  global.get $binary/f
  f32.const 1
  f32.sub
  global.set $binary/f
  global.get $binary/f
  call $~lib/math/NativeMathf.mod
  global.set $binary/f
  global.get $binary/f
  call $~lib/util/math/powf_lut
  global.set $binary/f
  global.get $binary/F
  call $~lib/math/NativeMath.mod
  drop
  global.get $binary/F
  call $~lib/math/NativeMath.pow
  drop
  global.get $binary/F
  f64.const 1
  f64.lt
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.gt
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.le
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.ge
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.eq
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.eq
  global.set $binary/b
  global.get $binary/F
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  call $~lib/math/NativeMath.mod
  global.set $binary/F
  global.get $binary/F
  call $~lib/math/NativeMath.pow
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.add
  global.set $binary/F
  global.get $binary/F
  f64.const 1
  f64.sub
  global.set $binary/F
  global.get $binary/F
  call $~lib/math/NativeMath.mod
  global.set $binary/F
  global.get $binary/F
  call $~lib/math/NativeMath.pow
  global.set $binary/F
 )
 (func $start (; 5 ;) (type $FUNCSIG$v)
  call $start:binary
 )
 (func $null (; 6 ;) (type $FUNCSIG$v)
  nop
 )
)
