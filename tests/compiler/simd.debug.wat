(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $i32_i32_=>_none (func_subtype (param i32 i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_=>_none (func_subtype (param i32) func))
 (type $i32_i32_i32_=>_none (func_subtype (param i32 i32 i32) func))
 (type $i32_i32_=>_i32 (func_subtype (param i32 i32) (result i32) func))
 (type $i32_i32_i32_=>_v128 (func_subtype (param i32 i32 i32) (result v128) func))
 (type $i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32) (result i32) func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (type $none_=>_i32 (func_subtype (result i32) func))
 (type $i32_i32_=>_v128 (func_subtype (param i32 i32) (result v128) func))
 (type $none_=>_v128 (func_subtype (result v128) func))
 (type $v128_=>_v128 (func_subtype (param v128) (result v128) func))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_v128 (func_subtype (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result v128) func))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_v128 (func_subtype (param i32 i32 i32 i32 i32 i32 i32 i32) (result v128) func))
 (type $i32_i32_i32_i32_=>_v128 (func_subtype (param i32 i32 i32 i32) (result v128) func))
 (type $i64_=>_v128 (func_subtype (param i64) (result v128) func))
 (type $i64_i64_=>_v128 (func_subtype (param i64 i64) (result v128) func))
 (type $f32_f32_f32_=>_v128 (func_subtype (param f32 f32 f32) (result v128) func))
 (type $f32_f32_f32_f32_=>_v128 (func_subtype (param f32 f32 f32 f32) (result v128) func))
 (type $f64_=>_v128 (func_subtype (param f64) (result v128) func))
 (type $f64_f64_=>_v128 (func_subtype (param f64 f64) (result v128) func))
 (type $i32_i32_i32_i32_=>_i32 (func_subtype (param i32 i32 i32 i32) (result i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $simd/vec (mut v128) (v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000))
 (global $~lib/builtins/u8.MAX_VALUE i32 (i32.const 255))
 (global $~lib/builtins/u16.MAX_VALUE i32 (i32.const 65535))
 (global $~lib/builtins/i16.MAX_VALUE i32 (i32.const 32767))
 (global $~lib/builtins/i8.MAX_VALUE i32 (i32.const 127))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/rt/__rtti_base i32 (i32.const 560))
 (global $~lib/memory/__data_end i32 (i32.const 584))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33352))
 (global $~lib/memory/__heap_base i32 (i32.const 33352))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 192) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 224) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 252) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 316) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 368) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 396) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 460) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 508) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00s\00i\00m\00d\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 560) "\05\00\00\00 \00\00\00 \00\00\00\00\00\00\00\02\04\00\00\02\t\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "reexport" (func $simd/reexport))
 (export "test_vars_i8x16_partial" (func $simd/test_vars_i8x16_partial))
 (export "test_vars_i8x16_full" (func $simd/test_vars_i8x16_full))
 (export "test_vars_i16x8_partial" (func $simd/test_vars_i16x8_partial))
 (export "test_vars_i16x8_full" (func $simd/test_vars_i16x8_full))
 (export "test_vars_i32x4_partial" (func $simd/test_vars_i32x4_partial))
 (export "test_vars_i32x4_full" (func $simd/test_vars_i32x4_full))
 (export "test_vars_i64x2_partial" (func $simd/test_vars_i64x2_partial))
 (export "test_vars_i64x2_full" (func $simd/test_vars_i64x2_full))
 (export "test_vars_f32x4_partial" (func $simd/test_vars_f32x4_partial))
 (export "test_vars_f32x4_full" (func $simd/test_vars_f32x4_full))
 (export "test_vars_f64x2_partial" (func $simd/test_vars_f64x2_partial))
 (export "test_vars_f64x2_full" (func $simd/test_vars_f64x2_full))
 (export "vec" (global $simd/vec))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (type $i32_i32_=>_none) (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (type $i32_i32_=>_none) (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=8
 )
 (func $~lib/rt/itcms/initLazy (type $i32_=>_i32) (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (type $i32_=>_none) (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  (local $3 i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (type $i32_i32_=>_none) (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (type $i32_i32_=>_none) (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (type $i32_=>_none) (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/__typeinfo (type $i32_=>_i32) (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
  i32.gt_u
  if
   i32.const 272
   i32.const 336
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (type $i32_=>_i32) (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (type $i32_i32_i32_=>_none) (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (type $i32_=>_none) (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 144
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (type $i32_i32_=>_none) (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (type $i32_=>_none) (param $cookie i32)
  (local $ptr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $ptr
    i32.load $0
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:size (type $i32_=>_i32) (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (type $i32_i32_=>_none) (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (type $i32_i32_=>_none) (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (type $i32_i32_=>_none) (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (type $i32_i32_=>_none) (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/tlsf/removeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  local.get $root
  local.set $root|11
  local.get $fl
  local.set $fl|12
  local.get $sl
  local.set $sl|13
  local.get $root|11
  local.get $fl|12
  i32.const 4
  i32.shl
  local.get $sl|13
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store $0 offset=96
   local.get $next
   i32.eqz
   if
    local.get $root
    local.set $root|18
    local.get $fl
    local.set $fl|19
    local.get $root|18
    local.get $fl|19
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store $0 offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  local.set $block|3
  local.get $block|3
  i32.const 4
  i32.add
  local.get $block|3
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   local.set $block|6
   local.get $block|6
   i32.const 4
   i32.add
   local.get $block|6
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   local.get $block
   local.set $block|7
   local.get $block|7
   i32.const 4
   i32.sub
   i32.load $0
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 416
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store $0
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.set $root|16
  local.get $fl
  local.set $fl|17
  local.get $sl
  local.set $sl|18
  local.get $root|16
  local.get $fl|17
  i32.const 4
  i32.shl
  local.get $sl|18
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store $0 offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  local.get $root
  local.set $root|24
  local.get $fl
  local.set $fl|25
  local.get $root|24
  local.get $fl|25
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (type $i32_i32_i32_=>_i32) (param $root i32) (param $start i32) (param $end i32) (result i32)
  (local $root|3 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|9 i32)
  (local $tail|10 i32)
  i32.const 1
  drop
  local.get $start
  local.get $end
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  local.get $root
  local.set $root|3
  local.get $root|3
  i32.load $0 offset=1568
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 416
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 416
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|9
  local.get $tail
  local.set $tail|10
  local.get $root|9
  local.get $tail|10
  i32.store $0 offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize (type $none_=>_none)
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $7 i32)
  (local $root|8 i32)
  (local $fl|9 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $12 i32)
  (local $root|13 i32)
  (local $fl|14 i32)
  (local $sl|15 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size $0
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store $0 offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   local.set $7
   local.get $7
   if
    local.get $root
    local.set $root|8
    local.get $fl
    local.set $fl|9
    i32.const 0
    local.set $slMap
    local.get $root|8
    local.get $fl|9
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store $0 offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     local.set $12
     local.get $12
     if
      local.get $root
      local.set $root|13
      local.get $fl
      local.set $fl|14
      local.get $sl
      local.set $sl|15
      i32.const 0
      local.set $head
      local.get $root|13
      local.get $fl|14
      i32.const 4
      i32.shl
      local.get $sl|15
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store $0 offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size $0
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (type $i32_=>_i32) (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
 )
 (func $~lib/rt/tlsf/freeBlock (type $i32_i32_=>_none) (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (type $i32_=>_none) (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (type $i32_=>_none) (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (type $none_=>_i32) (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $3 i32)
  (local $4 i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $3
     local.get $3
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $4
      local.get $4
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt (type $none_=>_none)
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (type $i32_=>_i32) (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (type $i32_=>_i32) (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 80
   i32.const 416
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (type $i32_i32_=>_i32) (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $size
    i32.const 1
    i32.const 27
    local.get $size
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $size
   end
   local.set $requestSize
   i32.const 31
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.set $root|5
  local.get $fl
  local.set $fl|6
  local.get $root|5
  local.get $fl|6
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    local.get $root
    local.set $root|10
    local.get $fl
    local.set $fl|11
    local.get $root|10
    local.get $fl|11
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 416
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $root
    local.set $root|12
    local.get $fl
    local.set $fl|13
    local.get $slMap
    i32.ctz
    local.set $sl|14
    local.get $root|12
    local.get $fl|13
    i32.const 4
    i32.shl
    local.get $sl|14
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
    local.set $head
   end
  else
   local.get $root
   local.set $root|15
   local.get $fl
   local.set $fl|16
   local.get $slMap
   i32.ctz
   local.set $sl|17
   local.get $root|15
   local.get $fl|16
   i32.const 4
   i32.shl
   local.get $sl|17
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   local.set $head
  end
  local.get $head
 )
 (func $~lib/rt/tlsf/growMemory (type $i32_i32_=>_none) (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 536870910
  i32.lt_u
  if
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $size
  end
  memory.size $0
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $root
  local.set $root|3
  local.get $root|3
  i32.load $0 offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow $0
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size $0
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (type $i32_i32_i32_=>_none) (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   local.set $block|7
   local.get $block|7
   i32.const 4
   i32.add
   local.get $block|7
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $block
   local.set $block|6
   local.get $block|6
   i32.const 4
   i32.add
   local.get $block|6
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (type $i32_i32_=>_i32) (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 416
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 416
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
 )
 (func $~lib/rt/tlsf/__alloc (type $i32_=>_i32) (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (type $i32_i32_=>_none) (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (type $i32_i32_=>_none) (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (type $i32_i32_=>_i32) (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 80
   i32.const 144
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill $0
  local.get $ptr
 )
 (func $~lib/rt/__newBuffer (type $i32_i32_i32_=>_i32) (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy $0 $0
  end
  local.get $buffer
 )
 (func $~lib/rt/itcms/__link (type $i32_i32_i32_=>_none) (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/array/Array<v128>#get:length_ (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<v128>#get:dataStart (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<v128>#__get (type $i32_i32_=>_v128) (param $this i32) (param $index i32) (result v128)
  (local $value v128)
  local.get $index
  local.get $this
  call $~lib/array/Array<v128>#get:length_
  i32.ge_u
  if
   i32.const 272
   i32.const 480
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  call $~lib/array/Array<v128>#get:dataStart
  local.get $index
  i32.const 4
  i32.shl
  i32.add
  v128.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
 )
 (func $simd/test_v128 (type $none_=>_none)
  (local $ptr i32)
  (local $ptr|1 i32)
  (local $ptr|2 i32)
  (local $ptr|3 i32)
  (local $ptr|4 i32)
  (local $ptr|5 i32)
  (local $ptr|6 i32)
  (local $v v128)
  (local $v|8 v128)
  (local $ptr|9 i32)
  (local $v|10 v128)
  (local $ptr|11 i32)
  (local $v|12 v128)
  (local $v|13 v128)
  (local $v|14 v128)
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0xff000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x04030202 0x08070605 0x0c0b0a09 0x100f0e0d
  i8x16.ne
  v128.any_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  v128.and
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  v128.or
  v128.const i32x4 0x05030301 0x09070705 0x0d0b0b09 0x110f0f0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  v128.xor
  v128.const i32x4 0x05020300 0x09060704 0x0d0a0b08 0x110e0f0c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.not
  v128.const i32x4 0xfbfcfdfe 0xf7f8f9fa 0xf3f4f5f6 0xeff0f1f2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x100f0e0d
  v128.const i32x4 0x0d0e0f10 0x090a0b0c 0x05060708 0x01020304
  v128.const i32x4 0xff00ff00 0xff00ff00 0xff00ff00 0xff00ff00
  v128.bitselect
  v128.const i32x4 0x040e0210 0x080a060c 0x0c060a08 0x10020e04
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 64
  call $~lib/rt/tlsf/__alloc
  local.set $ptr
  local.get $ptr
  local.get $ptr
  v128.load $0 offset=16
  v128.store $0 offset=32
  local.get $ptr
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|1
  local.get $ptr|1
  i32.const 42
  i32.store8 $0
  local.get $ptr|1
  v128.load8_splat $0
  v128.const i32x4 0x2a2a2a2a 0x2a2a2a2a 0x2a2a2a2a 0x2a2a2a2a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 71
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|1
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|2
  local.get $ptr|2
  i32.const 42
  i32.store16 $0
  local.get $ptr|2
  v128.load16_splat $0
  v128.const i32x4 0x002a002a 0x002a002a 0x002a002a 0x002a002a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 81
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|2
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|3
  local.get $ptr|3
  i32.const 42
  i32.store $0
  local.get $ptr|3
  v128.load32_splat $0
  v128.const i32x4 0x0000002a 0x0000002a 0x0000002a 0x0000002a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 91
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|3
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|4
  local.get $ptr|4
  i64.const 42
  i64.store $0
  local.get $ptr|4
  v128.load64_splat $0
  v128.const i32x4 0x0000002a 0x00000000 0x0000002a 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 101
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|4
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|5
  local.get $ptr|5
  i32.const 42
  i32.store $0
  local.get $ptr|5
  v128.load32_zero $0
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 111
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|5
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|6
  local.get $ptr|6
  i64.const 42
  i64.store $0
  local.get $ptr|6
  v128.load64_zero $0
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 121
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|6
  call $~lib/rt/tlsf/__free
  v128.const i32x4 0x3f800000 0xbf800000 0x3f800000 0xbf800000
  v128.const i32x4 0xbf800000 0x3f800000 0xbf800000 0x3f800000
  f32x4.pmin
  v128.const i32x4 0xbf800000 0xbf800000 0xbf800000 0xbf800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x3f800000 0xbf800000 0x3f800000 0xbf800000
  v128.const i32x4 0xbf800000 0x3f800000 0xbf800000 0x3f800000
  f32x4.pmax
  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  i32x4.add
  v128.const i32x4 0x00000002 0x00000004 0x00000006 0x00000008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  i32x4.sub
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  v128.const i32x4 0x00000002 0x00000002 0x00000002 0x00000002
  i32x4.dot_i16x8_s
  v128.const i32x4 0x00000002 0x00000004 0x00000006 0x00000008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x3f8ccccd 0x40200000 0x4079999a 0x40800000
  f32x4.trunc
  v128.const i32x4 0x3f800000 0x40000000 0x40400000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x3f8ccccd 0x40200000 0x4060a3d7 0x40800000
  f32x4.nearest
  v128.const i32x4 0x3f800000 0x40000000 0x40800000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  f32x4.convert_i32x4_s
  local.set $v
  local.get $v
  v128.const i32x4 0x3f800000 0x40000000 0x40400000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 177
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $v
  i32x4.trunc_sat_f32x4_s
  local.set $v
  local.get $v
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x00000004
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 179
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x00000001 0x00000002 0x00000000 0x00000000
  f64x2.convert_low_i32x4_s
  local.set $v|8
  local.get $v|8
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x40000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 183
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $v|8
  i32x4.trunc_sat_f64x2_s_zero
  local.set $v|8
  local.get $v|8
  v128.const i32x4 0x00000001 0x00000002 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 185
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|9
  local.get $ptr|9
  i32.const 42
  i32.store $0
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  local.set $v|10
  local.get $ptr|9
  local.get $v|10
  v128.load32_lane $0 0
  local.set $v|10
  local.get $v|10
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 192
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|9
  call $~lib/rt/tlsf/__free
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr|11
  local.get $ptr|11
  i32.const 42
  i32.store $0
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  local.set $v|12
  local.get $ptr|11
  local.get $v|12
  v128.load32_lane $0 0
  local.set $v|12
  local.get $v|12
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 200
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|11
  local.get $v|12
  v128.load8_lane $0 0
  local.set $v|12
  local.get $v|12
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 202
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|11
  local.get $v|12
  v128.load16_lane $0 0
  local.set $v|12
  local.get $v|12
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 204
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|11
  local.get $v|12
  v128.load32_lane $0 0
  local.set $v|12
  local.get $v|12
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 206
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|11
  local.get $v|12
  v128.load64_lane $0 0
  local.set $v|12
  local.get $v|12
  v128.const i32x4 0x0000002a 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 208
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr|11
  call $~lib/rt/tlsf/__free
  v128.const i32x4 0x3f8ccccd 0xbe800000 0x428c051f 0x40800000
  f32x4.ceil
  local.set $v|13
  local.get $v|13
  v128.const i32x4 0x40000000 0x80000000 0x428e0000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 213
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x3f8ccccd 0xbe800000 0x428c051f 0x40800000
  f32x4.floor
  local.set $v|14
  local.get $v|14
  v128.const i32x4 0x3f800000 0xbf800000 0x428c0000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 217
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.bitmask
  i32.const 65535
  i32.eq
  drop
  v128.const i32x4 0x020100ff 0x06050403 0x0a090807 0x0f0d0c0b
  i8x16.bitmask
  i32.const 1
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i16x8.bitmask
  i32.const 255
  i32.eq
  drop
  v128.const i32x4 0x0000ffff 0x00020001 0x000c000b 0x000f000d
  i16x8.bitmask
  i32.const 1
  i32.eq
  drop
  v128.const i32x4 0x00000001 0xffffffff 0x00000001 0xffffffff
  i32x4.bitmask
  i32.const 10
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i32x4.bitmask
  i32.const 15
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0x00000000 0x00000001 0x0000000f
  i32x4.bitmask
  i32.const 1
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i64x2.bitmask
  i32.const 3
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0x0000000f 0x00000000
  i64x2.bitmask
  i32.const 1
  i32.eq
  drop
 )
 (func $simd/test_i8x16 (type $none_=>_none)
  (local $a v128)
  (local $b v128)
  (local $c v128)
  (local $one v128)
  (local $negOne v128)
  (local $only1st v128)
  (local $excl1st v128)
  (local $a|7 v128)
  (local $b|8 v128)
  (local $c|9 v128)
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  local.set $a
  local.get $a
  v128.const i32x4 0x04030201 0x08070605 0x0c0b0a09 0x7f0f0e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 287
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  local.set $b
  local.get $b
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 289
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.add
  local.set $c
  local.get $c
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x80100f0e
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 291
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i8x16.sub
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 292
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.min_s
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.min_u
  v128.const i32x4 0x007f0000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.max_s
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x007f7f00 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00800080 0x00000000 0x00000000 0x00000000
  i8x16.max_u
  v128.const i32x4 0x00807f80 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x04040201 0x08070605 0x0c0b0a09 0xff800e0d
  v128.const i32x4 0x04020401 0x08070605 0x0c0b0a09 0xff800e0d
  i8x16.avgr_u
  v128.const i32x4 0x04030301 0x08070605 0x0c0b0a09 0xff800e0d
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  i8x16.neg
  v128.const i32x4 0xfcfdfeff 0xf8f9fafb 0xf4f5f6f7 0x81f1f2f3
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 333
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i8x16.extract_lane_s 0
  i32.extend8_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 338
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i8x16.extract_lane_s 15
  i32.extend8_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 339
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 340
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i32.const 17
  i8x16.replace_lane 15
  v128.const i32x4 0x05040302 0x09080706 0x0d0c0b0a 0x11100f0e
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 341
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x04030201 0x08070605 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 346
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x7f7f7f7e 0x7f7f7f7f 0x7f7f7f7f 0x7f7f7f7f
  i32.const 2
  i8x16.splat
  i8x16.add_sat_s
  i32.const 127
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xfffffffe 0xffffffff 0xffffffff 0xffffffff
  i32.const 2
  i8x16.splat
  i8x16.add_sat_u
  i32.const -1
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80808081 0x80808080 0x80808080 0x80808080
  i32.const 2
  i8x16.splat
  i8x16.sub_sat_s
  i32.const -128
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i32.const 2
  i8x16.splat
  i8x16.sub_sat_u
  i32.const 0
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 1
  i8x16.splat
  i32.const 1
  i8x16.shl
  i32.const 2
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -2
  i8x16.splat
  i32.const 1
  i8x16.shr_s
  i32.const -1
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 1
  i8x16.shr_u
  i32.const 127
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i8x16.splat
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i8x16.splat
  i32.const 1
  i8x16.replace_lane 0
  local.set $one
  i32.const 0
  i8x16.splat
  i32.const -1
  i8x16.replace_lane 0
  local.set $negOne
  local.get $negOne
  local.set $only1st
  local.get $negOne
  v128.not
  local.set $excl1st
  local.get $negOne
  local.get $one
  i8x16.eq
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 384
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i8x16.ne
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 385
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i8x16.lt_s
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 386
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i8x16.lt_u
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 387
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i8x16.le_s
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 388
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i8x16.le_u
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 389
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i8x16.gt_s
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 390
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i8x16.gt_u
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 391
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i8x16.ge_s
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 392
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i8x16.ge_u
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  i8x16.narrow_i16x8_s
  global.get $~lib/builtins/i8.MAX_VALUE
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  i8x16.narrow_i16x8_u
  global.get $~lib/builtins/u8.MAX_VALUE
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x03020100 0x07060504 0x0b0a0908 0x0f0e0d0c
  local.set $a|7
  v128.const i32x4 0x13121110 0x17161514 0x1b1a1918 0x1f1e1d1c
  local.set $b|8
  local.get $a|7
  local.get $b|8
  i8x16.shuffle 0 17 2 19 4 21 6 23 8 25 10 27 12 29 14 31
  v128.const i32x4 0x13021100 0x17061504 0x1b0a1908 0x1f0e1d0c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 399
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x0c0d0e10 0x08090a0b 0x04050607 0x00010203
  local.set $c|9
  local.get $a|7
  local.get $c|9
  i8x16.swizzle
  v128.const i32x4 0x0c0d0e00 0x08090a0b 0x04050607 0x00010203
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 405
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a|7
  i8x16.popcnt
  v128.const i32x4 0x02010100 0x03020201 0x03020201 0x04030302
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 410
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.abs
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.abs
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.abs
  v128.const i32x4 0x01010101 0x01010101 0x01010101 0x01010101
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80808080 0x80808080 0x80808080 0x80808080
  i8x16.abs
  v128.const i32x4 0x80808080 0x80808080 0x80808080 0x80808080
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.bitmask
  i32.const 65535
  i32.eq
  drop
  v128.const i32x4 0x020100ff 0x06050403 0x0a090807 0x0f0d0c0b
  i8x16.bitmask
  i32.const 1
  i32.eq
  drop
 )
 (func $simd/test_i16x8 (type $none_=>_none)
  (local $a v128)
  (local $b v128)
  (local $c v128)
  (local $one v128)
  (local $negOne v128)
  (local $only1st v128)
  (local $excl1st v128)
  (local $ptr i32)
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  local.set $a
  local.get $a
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x7fff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 465
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  local.set $b
  local.get $b
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 467
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i16x8.add
  local.set $c
  local.get $c
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x80000008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 469
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i16x8.sub
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 470
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i16x8.mul
  local.get $c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 471
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.min_s
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.min_u
  v128.const i32x4 0x00000000 0x00007fff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.max_s
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fff0000 0x00007fff 0x00000000 0x00000000
  v128.const i32x4 0x00008000 0x00008000 0x00000000 0x00000000
  i16x8.max_u
  v128.const i32x4 0x7fff8000 0x00008000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00020001 0x00040004 0x00060005 0xffff8000
  v128.const i32x4 0x00040001 0x00040002 0x00060005 0xffff8000
  i16x8.avgr_u
  v128.const i32x4 0x00030001 0x00040003 0x00060005 0xffff8000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  i16x8.neg
  v128.const i32x4 0xfffeffff 0xfffcfffd 0xfffafffb 0x8001fff9
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 512
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i16x8.extract_lane_s 0
  i32.extend16_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 517
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i16x8.extract_lane_s 7
  i32.extend16_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 518
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i16x8.extract_lane_u 7
  i32.const 65535
  i32.and
  i32.const 32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 519
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i32.const 9
  i16x8.replace_lane 7
  v128.const i32x4 0x00030002 0x00050004 0x00070006 0x00090008
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 520
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00020001 0x00040003 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 525
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x7fff7ffe 0x7fff7fff 0x7fff7fff 0x7fff7fff
  i32.const 2
  i16x8.splat
  i16x8.add_sat_s
  i32.const 32767
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xfffffffe 0xffffffff 0xffffffff 0xffffffff
  i32.const 2
  i16x8.splat
  i16x8.add_sat_u
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80008001 0x80008000 0x80008000 0x80008000
  i32.const 2
  i16x8.splat
  i16x8.sub_sat_s
  i32.const -32768
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i32.const 2
  i16x8.splat
  i16x8.sub_sat_u
  i32.const 0
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const 1
  i16x8.splat
  i32.const 1
  i16x8.shl
  i32.const 2
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -2
  i16x8.splat
  i32.const 1
  i16x8.shr_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 1
  i16x8.shr_u
  i32.const 32767
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i16x8.splat
  i16x8.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i16x8.splat
  i32.const 1
  i16x8.replace_lane 0
  local.set $one
  i32.const 0
  i16x8.splat
  i32.const -1
  i16x8.replace_lane 0
  local.set $negOne
  local.get $negOne
  local.set $only1st
  local.get $negOne
  v128.not
  local.set $excl1st
  local.get $negOne
  local.get $one
  i16x8.eq
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 563
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i16x8.ne
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 564
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i16x8.lt_s
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 565
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i16x8.lt_u
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 566
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i16x8.le_s
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 567
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i16x8.le_u
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 568
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i16x8.gt_s
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 569
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i16x8.gt_u
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 570
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i16x8.ge_s
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 571
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i16x8.ge_u
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 572
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  i16x8.narrow_i32x4_s
  global.get $~lib/builtins/i16.MAX_VALUE
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  global.get $~lib/builtins/i32.MAX_VALUE
  i32x4.splat
  i16x8.narrow_i32x4_u
  global.get $~lib/builtins/u16.MAX_VALUE
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 8
  i16x8.extend_low_i8x16_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 8
  i16x8.extend_low_i8x16_u
  i32.const 255
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 0
  i16x8.extend_high_i8x16_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i8x16.splat
  i32.const 0
  i8x16.replace_lane 0
  i16x8.extend_high_i8x16_u
  i32.const 255
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 579
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.swizzle
  local.get $a
  local.get $b
  i8x16.swizzle
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 584
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr
  local.get $ptr
  i32.const 1
  i32.store8 $0
  local.get $ptr
  i32.const 2
  i32.store8 $0 offset=1
  local.get $ptr
  i32.const 3
  i32.store8 $0 offset=2
  local.get $ptr
  i32.const 4
  i32.store8 $0 offset=3
  local.get $ptr
  i32.const 5
  i32.store8 $0 offset=4
  local.get $ptr
  i32.const 6
  i32.store8 $0 offset=5
  local.get $ptr
  i32.const 7
  i32.store8 $0 offset=6
  local.get $ptr
  i32.const -1
  i32.store8 $0 offset=7
  local.get $ptr
  v128.load8x8_s $0 align=1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0xffff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 599
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  v128.load8x8_u $0 align=1
  v128.const i32x4 0x00020001 0x00040003 0x00060005 0x00ff0007
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 604
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  call $~lib/rt/tlsf/__free
  v128.const i32x4 0xc001ffff 0xffff7ffd 0xffff8000 0x8000bfff
  v128.const i32x4 0xc000ffff 0x80000001 0x00018000 0xfff6c000
  i16x8.q15mulr_sat_s
  v128.const i32x4 0x20000000 0x00010001 0x00007fff 0x000a2001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  i16x8.extadd_pairwise_i8x16_s
  drop
  local.get $a
  i16x8.extadd_pairwise_i8x16_u
  drop
  local.get $a
  local.get $a
  i16x8.extmul_low_i8x16_s
  drop
  local.get $a
  local.get $a
  i16x8.extmul_low_i8x16_u
  drop
  local.get $a
  local.get $a
  i16x8.extmul_high_i8x16_s
  drop
  local.get $a
  local.get $a
  i16x8.extmul_high_i8x16_u
  drop
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i16x8.abs
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i16x8.abs
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i16x8.abs
  v128.const i32x4 0x00010001 0x00010001 0x00010001 0x00010001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80008000 0x80008000 0x80008000 0x80008000
  i16x8.abs
  v128.const i32x4 0x80008000 0x80008000 0x80008000 0x80008000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i16x8.bitmask
  i32.const 255
  i32.eq
  drop
  v128.const i32x4 0x0000ffff 0x00020001 0x000c000b 0x000f000d
  i16x8.bitmask
  i32.const 1
  i32.eq
  drop
 )
 (func $simd/test_i32x4 (type $none_=>_none)
  (local $a v128)
  (local $b v128)
  (local $c v128)
  (local $one v128)
  (local $negOne v128)
  (local $only1st v128)
  (local $excl1st v128)
  (local $ptr i32)
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  local.set $a
  local.get $a
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 672
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  local.set $b
  local.get $b
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 674
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i32x4.add
  local.set $c
  local.get $c
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 676
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i32x4.sub
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 677
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i32x4.mul
  local.get $c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 678
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.min_s
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.min_u
  v128.const i32x4 0x00000000 0x00000000 0x7fffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.max_s
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x7fffffff 0x7fffffff 0x00000000
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i32x4.max_u
  v128.const i32x4 0x80000000 0x7fffffff 0x80000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00020001 0x00040003 0x0003ffff 0x00000000
  v128.const i32x4 0x00060005 0x00080007 0xffff0002 0x00000000
  i32x4.dot_i16x8_s
  v128.const i32x4 0x00000011 0x00000035 0xfffffffb 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  i32x4.neg
  v128.const i32x4 0xffffffff 0xfffffffe 0xfffffffd 0x80000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 719
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i32x4.extract_lane 0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 724
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i32x4.extract_lane 3
  i32.const -2147483648
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 725
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i32.const 5
  i32x4.replace_lane 3
  v128.const i32x4 0x00000002 0x00000003 0x00000004 0x00000005
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 726
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000002 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 731
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  i32.const 1
  i32x4.shl
  i32.const 2
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -2
  i32x4.splat
  i32.const 1
  i32x4.shr_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i32x4.splat
  i32.const 1
  i32x4.shr_u
  i32.const 2147483647
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 1
  i32x4.splat
  i32x4.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 0
  i32x4.splat
  i32.const 1
  i32x4.replace_lane 0
  local.set $one
  i32.const 0
  i32x4.splat
  i32.const -1
  i32x4.replace_lane 0
  local.set $negOne
  local.get $negOne
  local.set $only1st
  local.get $negOne
  v128.not
  local.set $excl1st
  local.get $negOne
  local.get $one
  i32x4.eq
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 745
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i32x4.ne
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 746
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i32x4.lt_s
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 747
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i32x4.lt_u
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 748
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i32x4.le_s
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 749
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i32x4.le_u
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 750
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i32x4.gt_s
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 751
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i32x4.gt_u
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 752
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  i32x4.ge_s
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 753
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  i32x4.ge_u
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 754
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const -1.5
  f32x4.splat
  i32x4.trunc_sat_f32x4_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  f32.const -1.5
  f32x4.splat
  i32x4.trunc_sat_f32x4_u
  i32.const 0
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 4
  i32x4.extend_low_i16x8_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 4
  i32x4.extend_low_i16x8_u
  i32.const 65535
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 0
  i32x4.extend_high_i16x8_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i16x8.splat
  i32.const 0
  i16x8.replace_lane 0
  i32x4.extend_high_i16x8_u
  i32.const 65535
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 769
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr
  local.get $ptr
  i32.const 1
  i32.store16 $0
  local.get $ptr
  i32.const 2
  i32.store16 $0 offset=2
  local.get $ptr
  i32.const 3
  i32.store16 $0 offset=4
  local.get $ptr
  i32.const -1
  i32.store16 $0 offset=6
  local.get $ptr
  v128.load16x4_s $0 align=2
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 780
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  v128.load16x4_u $0 align=2
  v128.const i32x4 0x00000001 0x00000002 0x00000003 0x0000ffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 785
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  call $~lib/rt/tlsf/__free
  local.get $a
  i32x4.extadd_pairwise_i16x8_s
  drop
  local.get $a
  i32x4.extadd_pairwise_i16x8_u
  drop
  local.get $a
  i32x4.trunc_sat_f64x2_s_zero
  drop
  local.get $a
  i32x4.trunc_sat_f64x2_u_zero
  drop
  local.get $a
  local.get $a
  i32x4.extmul_low_i16x8_s
  drop
  local.get $a
  local.get $a
  i32x4.extmul_low_i16x8_u
  drop
  local.get $a
  local.get $a
  i32x4.extmul_high_i16x8_s
  drop
  local.get $a
  local.get $a
  i32x4.extmul_high_i16x8_u
  drop
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i32x4.abs
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i32x4.abs
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i32x4.abs
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80000000 0x80000000 0x80000000 0x80000000
  i32x4.abs
  v128.const i32x4 0x80000000 0x80000000 0x80000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0xffffffff 0x00000001 0xffffffff
  i32x4.bitmask
  i32.const 10
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i32x4.bitmask
  i32.const 15
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0x00000000 0x00000001 0x0000000f
  i32x4.bitmask
  i32.const 1
  i32.eq
  drop
 )
 (func $simd/test_i64x2 (type $none_=>_none)
  (local $a v128)
  (local $b v128)
  (local $c v128)
  (local $ptr i32)
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  local.set $a
  local.get $a
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x7fffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 819
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  local.set $b
  local.get $b
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 821
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i64x2.add
  local.set $c
  local.get $c
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 823
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i64x2.sub
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 824
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  i64x2.mul
  local.get $c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 825
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  i64x2.neg
  v128.const i32x4 0xffffffff 0xffffffff 0x00000001 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 826
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i64x2.extract_lane 0
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 831
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i64x2.extract_lane 1
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 832
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  i64.const 3
  i64x2.replace_lane 1
  v128.const i32x4 0x00000002 0x00000000 0x00000003 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 833
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 838
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  i32.const 1
  i64x2.shl
  i64.const 2
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i64.const -2
  i64x2.splat
  i32.const 1
  i64x2.shr_s
  i64.const -1
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i64.const -1
  i64x2.splat
  i32.const 1
  i64x2.shr_u
  i64.const 9223372036854775807
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i64.const 1
  i64x2.splat
  i64x2.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  drop
  i32.const 16
  call $~lib/rt/tlsf/__alloc
  local.set $ptr
  local.get $ptr
  i32.const 1
  i32.store $0
  local.get $ptr
  i32.const -1
  i32.store $0 offset=4
  local.get $ptr
  v128.load32x2_s $0 align=4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 852
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  v128.load32x2_u $0 align=4
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 857
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  call $~lib/rt/tlsf/__free
  local.get $a
  local.get $a
  i64x2.extmul_low_i32x4_s
  drop
  local.get $a
  local.get $a
  i64x2.extmul_low_i32x4_u
  drop
  local.get $a
  local.get $a
  i64x2.extmul_high_i32x4_s
  drop
  local.get $a
  local.get $a
  i64x2.extmul_high_i32x4_u
  drop
  v128.const i32x4 0x0000000c 0x00000000 0x0000000c 0x00000000
  v128.const i32x4 0x0000000c 0x00000000 0x0000000c 0x00000000
  i64x2.eq
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x0000000c 0x00000000 0x0000000c 0x00000000
  v128.const i32x4 0x0000000c 0x00000000 0x0000000d 0x00000000
  i64x2.eq
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x0000000c 0x00000000 0x0000000c 0x00000000
  v128.const i32x4 0x0000000c 0x00000000 0x0000000d 0x00000000
  i64x2.ne
  v128.const i32x4 0x00000000 0x00000000 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x0000000b 0x00000000 0x0000000c 0x00000000
  v128.const i32x4 0x0000000c 0x00000000 0x0000000d 0x00000000
  i64x2.ne
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x00000000
  i64x2.lt_s
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00000002 0x00000000 0x00000001 0x00000000
  i64x2.lt_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x00000000
  i64x2.le_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00000002 0x00000000 0x00000001 0x00000000
  i64x2.le_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i64x2.gt_s
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000002 0x00000000 0x00000001 0x00000000
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i64x2.gt_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000002 0x00000000 0x00000000 0x00000000
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i64x2.ge_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000002 0x00000000 0x00000001 0x00000000
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i64x2.ge_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0x00000001 0x00000001 0xffffffff
  i64x2.extend_low_i32x4_s
  v128.const i32x4 0xffffffff 0xffffffff 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000001 0xffffffff
  i64x2.extend_low_i32x4_s
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000001 0x00000000 0x00000000
  i64x2.extend_low_i32x4_s
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i64x2.extend_low_i32x4_s
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80000000 0x80000000 0x7fffffff 0x7fffffff
  i64x2.extend_low_i32x4_s
  v128.const i32x4 0x80000000 0xffffffff 0x80000000 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0x7fffffff 0x7fffffff
  i64x2.extend_low_i32x4_s
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i64x2.extend_low_i32x4_u
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000001 0xffffffff
  i64x2.extend_low_i32x4_u
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000001 0x00000000 0x00000000
  i64x2.extend_low_i32x4_u
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  i64x2.extend_low_i32x4_u
  v128.const i32x4 0xffffffff 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80000000 0x80000000 0x80000000 0x80000000
  i64x2.extend_low_i32x4_u
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0x7fffffff 0x7fffffff
  i64x2.extend_low_i32x4_u
  v128.const i32x4 0xffffffff 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0x00000001 0x00000001 0xffffffff
  i64x2.extend_high_i32x4_s
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000001 0xffffffff
  i64x2.extend_high_i32x4_s
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0xffffffff
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000001 0x00000000 0x00000000
  i64x2.extend_high_i32x4_s
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i64x2.extend_high_i32x4_s
  v128.const i32x4 0x00000001 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80000000 0x80000000 0x7fffffff 0x7fffffff
  i64x2.extend_high_i32x4_s
  v128.const i32x4 0x7fffffff 0x00000000 0x7fffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0x7fffffff 0x7fffffff
  i64x2.extend_high_i32x4_s
  v128.const i32x4 0x7fffffff 0x00000000 0x7fffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i64x2.extend_high_i32x4_u
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0x00000001 0xffffffff
  i64x2.extend_high_i32x4_u
  v128.const i32x4 0x00000001 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000001 0x00000000 0x00000000
  i64x2.extend_high_i32x4_u
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x00000000 0xffffffff 0xffffffff
  i64x2.extend_high_i32x4_u
  v128.const i32x4 0xffffffff 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x80000000 0x80000000 0x80000000 0x80000000
  i64x2.extend_high_i32x4_u
  v128.const i32x4 0x80000000 0x00000000 0x80000000 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x7fffffff 0x7fffffff 0xffffffff 0xffffffff
  i64x2.extend_high_i32x4_u
  v128.const i32x4 0xffffffff 0x00000000 0xffffffff 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i64x2.abs
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i64x2.abs
  v128.const i32x4 0x00000001 0x00000000 0x00000001 0x00000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x80000000 0x00000000 0x80000000
  i64x2.abs
  v128.const i32x4 0x00000000 0x80000000 0x00000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff
  i64x2.bitmask
  i32.const 3
  i32.eq
  drop
  v128.const i32x4 0xffffffff 0xffffffff 0x0000000f 0x00000000
  i64x2.bitmask
  i32.const 1
  i32.eq
  drop
 )
 (func $simd/test_f32x4 (type $none_=>_none)
  (local $a v128)
  (local $b v128)
  (local $c v128)
  (local $d v128)
  (local $one v128)
  (local $negOne v128)
  (local $only1st v128)
  (local $excl1st v128)
  (local $v v128)
  (local $v|9 v128)
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  local.set $a
  local.get $a
  v128.const i32x4 0x3fc00000 0x40200000 0x40600000 0x40900000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 930
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 1
  f32x4.splat
  local.set $b
  local.get $b
  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 932
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  f32x4.add
  local.set $c
  local.get $c
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40b00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 934
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  f32x4.sub
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 935
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  f32x4.mul
  local.get $c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 936
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $a
  f32x4.mul
  local.set $d
  local.get $d
  local.get $a
  f32x4.div
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 938
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $d
  local.get $a
  f32x4.mul
  local.get $a
  i8x16.ne
  v128.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 939
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  f32x4.neg
  v128.const i32x4 0xbfc00000 0xc0200000 0xc0600000 0xc0900000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 940
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  f32x4.extract_lane 0
  f32.const 2.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 941
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  f32x4.extract_lane 3
  f32.const 5.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 942
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  f32.const 6.5
  f32x4.replace_lane 3
  v128.const i32x4 0x40200000 0x40600000 0x40900000 0x40d00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 943
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x3fc00000 0x40200000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 948
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f32.const 0
  f32x4.splat
  f32.const 1
  f32x4.replace_lane 0
  local.set $one
  f32.const 0
  f32x4.splat
  f32.const -1
  f32x4.replace_lane 0
  local.set $negOne
  v128.const i32x4 0xffffffff 0x00000000 0x00000000 0x00000000
  local.set $only1st
  v128.const i32x4 0x00000000 0xffffffff 0xffffffff 0xffffffff
  local.set $excl1st
  local.get $negOne
  local.get $one
  f32x4.eq
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 957
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f32x4.ne
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 958
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f32x4.lt
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 959
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  f32x4.le
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 960
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  f32x4.gt
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 961
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f32x4.ge
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 962
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f32x4.min
  local.get $negOne
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 963
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f32x4.max
  local.get $one
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 964
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  f32x4.abs
  local.get $one
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 965
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x40800000 0x41100000 0x41800000 0x41c80000
  f32x4.sqrt
  v128.const i32x4 0x40000000 0x40400000 0x40800000 0x40a00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i32x4.splat
  f32x4.convert_i32x4_s
  f32.const -1
  f32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  i32.const -1
  i32x4.splat
  f32x4.convert_i32x4_u
  f32.const 4294967296
  f32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  f32x4.demote_f64x2_zero
  drop
  v128.const i32x4 0x3f800000 0xbf800000 0x3f800000 0xbf800000
  v128.const i32x4 0xbf800000 0x3f800000 0xbf800000 0x3f800000
  f32x4.pmin
  v128.const i32x4 0xbf800000 0xbf800000 0xbf800000 0xbf800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x3f800000 0xbf800000 0x3f800000 0xbf800000
  v128.const i32x4 0xbf800000 0x3f800000 0xbf800000 0x3f800000
  f32x4.pmax
  v128.const i32x4 0x3f800000 0x3f800000 0x3f800000 0x3f800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x3f8ccccd 0xbe800000 0x428c051f 0x40800000
  f32x4.ceil
  local.set $v
  local.get $v
  v128.const i32x4 0x40000000 0x80000000 0x428e0000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 992
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x3f8ccccd 0xbe800000 0x428c051f 0x40800000
  f32x4.floor
  local.set $v|9
  local.get $v|9
  v128.const i32x4 0x3f800000 0xbf800000 0x428c0000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 996
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x3f8ccccd 0x40200000 0x4079999a 0x40800000
  f32x4.trunc
  v128.const i32x4 0x3f800000 0x40000000 0x40400000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x3f8ccccd 0x40200000 0x4060a3d7 0x40800000
  f32x4.nearest
  v128.const i32x4 0x3f800000 0x40000000 0x40800000 0x40800000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
 )
 (func $simd/test_f64x2 (type $none_=>_none)
  (local $a v128)
  (local $b v128)
  (local $c v128)
  (local $d v128)
  (local $one v128)
  (local $negOne v128)
  (local $only1st v128)
  (local $excl1st v128)
  (local $v v128)
  (local $v|9 v128)
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  local.set $a
  local.get $a
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x40040000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1012
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 1
  f64x2.splat
  local.set $b
  local.get $b
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1014
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  f64x2.add
  local.set $c
  local.get $c
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x400c0000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1016
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  f64x2.sub
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1017
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  local.get $b
  f64x2.mul
  local.get $c
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1018
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $a
  f64x2.mul
  local.set $d
  local.get $d
  local.get $a
  f64x2.div
  local.get $a
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1020
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $d
  local.get $a
  f64x2.mul
  local.get $a
  i8x16.ne
  v128.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1021
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  f64x2.neg
  v128.const i32x4 0x00000000 0xbff80000 0x00000000 0xc0040000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1022
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  f64x2.extract_lane 0
  f64.const 2.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1023
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  f64x2.extract_lane 1
  f64.const 3.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1024
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $c
  f64.const 4.5
  f64x2.replace_lane 1
  v128.const i32x4 0x00000000 0x40040000 0x00000000 0x40120000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1025
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $a
  local.get $b
  i8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32x4 0x00000000 0x3ff80000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1030
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  f64.const 0
  f64x2.splat
  f64.const 1
  f64x2.replace_lane 0
  local.set $one
  f64.const 0
  f64x2.splat
  f64.const -1
  f64x2.replace_lane 0
  local.set $negOne
  v128.const i32x4 0xffffffff 0xffffffff 0x00000000 0x00000000
  local.set $only1st
  v128.const i32x4 0x00000000 0x00000000 0xffffffff 0xffffffff
  local.set $excl1st
  local.get $negOne
  local.get $one
  f64x2.eq
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1039
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f64x2.ne
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1040
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f64x2.lt
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1041
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  f64x2.le
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1042
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $one
  local.get $negOne
  f64x2.gt
  local.get $only1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1043
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f64x2.ge
  local.get $excl1st
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1044
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f64x2.min
  local.get $negOne
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1045
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  local.get $one
  f64x2.max
  local.get $one
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1046
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $negOne
  f64x2.abs
  local.get $one
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1047
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x00000000 0x40100000 0x00000000 0x40220000
  f64x2.sqrt
  v128.const i32x4 0x00000000 0x40000000 0x00000000 0x40080000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  local.get $a
  f64x2.convert_low_i32x4_s
  drop
  local.get $a
  f64x2.convert_low_i32x4_u
  drop
  local.get $a
  f64x2.promote_low_f32x4
  drop
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0xbff00000
  v128.const i32x4 0x00000000 0xbff00000 0x00000000 0x3ff00000
  f64x2.pmin
  v128.const i32x4 0x00000000 0xbff00000 0x00000000 0xbff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0xbff00000
  v128.const i32x4 0x00000000 0xbff00000 0x00000000 0x3ff00000
  f64x2.pmax
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x3ff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x9999999a 0x3ff19999 0x00000000 0xbfd00000
  f64x2.ceil
  local.set $v
  local.get $v
  v128.const i32x4 0x00000000 0x40000000 0x00000000 0x80000000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1066
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x9999999a 0x3ff19999 0x00000000 0xbfd00000
  f64x2.floor
  local.set $v|9
  local.get $v|9
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0xbff00000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 1070
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  v128.const i32x4 0x9999999a 0x3ff19999 0x33333333 0x400f3333
  f64x2.trunc
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x40080000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
  v128.const i32x4 0x9999999a 0x3ff19999 0xe147ae14 0x400c147a
  f64x2.nearest
  v128.const i32x4 0x00000000 0x3ff00000 0x00000000 0x40100000
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  drop
 )
 (func $simd/test_const (type $none_=>_v128) (result v128)
  (local $one v128)
  v128.const i32x4 0x00000001 0x00000001 0x00000001 0x00000001
  local.set $one
  local.get $one
 )
 (func $start:simd (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $arr i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  memory.size $0
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 192
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 224
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 368
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 4
  i32.const 3
  i32.const 32
  call $~lib/rt/__newArray
  local.tee $arr
  i32.store $0
  local.get $arr
  i32.const 0
  call $~lib/array/Array<v128>#__get
  i32x4.extract_lane 0
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 528
   i32.const 5
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  global.set $simd/vec
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  call $simd/test_v128
  call $simd/test_i8x16
  call $simd/test_i16x8
  call $simd/test_i32x4
  call $simd/test_i64x2
  call $simd/test_f32x4
  call $simd/test_f64x2
  call $simd/test_const
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $simd/reexport (type $v128_=>_v128) (param $a v128) (result v128)
  local.get $a
  local.get $a
  i32x4.mul
 )
 (func $simd/test_vars_i8x16_partial (type $i32_i32_i32_=>_v128) (param $a i32) (param $b i32) (param $c i32) (result v128)
  v128.const i32x4 0x03000100 0x07000504 0x0b0a0908 0x000e0d0c
  local.get $a
  i8x16.replace_lane 2
  local.get $b
  i8x16.replace_lane 6
  local.get $c
  i8x16.replace_lane 15
 )
 (func $simd/test_vars_i8x16_full (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_v128) (param $a i32) (param $b i32) (param $c i32) (param $d i32) (param $e i32) (param $f i32) (param $g i32) (param $h i32) (param $i i32) (param $k i32) (param $l i32) (param $m i32) (param $n i32) (param $o i32) (param $p i32) (param $q i32) (result v128)
  local.get $a
  i8x16.splat
  local.get $b
  i8x16.replace_lane 1
  local.get $c
  i8x16.replace_lane 2
  local.get $d
  i8x16.replace_lane 3
  local.get $e
  i8x16.replace_lane 4
  local.get $f
  i8x16.replace_lane 5
  local.get $g
  i8x16.replace_lane 6
  local.get $h
  i8x16.replace_lane 7
  local.get $i
  i8x16.replace_lane 8
  local.get $k
  i8x16.replace_lane 9
  local.get $l
  i8x16.replace_lane 10
  local.get $m
  i8x16.replace_lane 11
  local.get $n
  i8x16.replace_lane 12
  local.get $o
  i8x16.replace_lane 13
  local.get $p
  i8x16.replace_lane 14
  local.get $q
  i8x16.replace_lane 15
 )
 (func $simd/test_vars_i16x8_partial (type $i32_i32_i32_=>_v128) (param $a i32) (param $b i32) (param $c i32) (result v128)
  v128.const i32x4 0x00010000 0x00030000 0x00050000 0x00000006
  local.get $a
  i16x8.replace_lane 2
  local.get $b
  i16x8.replace_lane 4
  local.get $c
  i16x8.replace_lane 7
 )
 (func $simd/test_vars_i16x8_full (type $i32_i32_i32_i32_i32_i32_i32_i32_=>_v128) (param $a i32) (param $b i32) (param $c i32) (param $d i32) (param $e i32) (param $f i32) (param $g i32) (param $h i32) (result v128)
  local.get $a
  i16x8.splat
  local.get $b
  i16x8.replace_lane 1
  local.get $c
  i16x8.replace_lane 2
  local.get $d
  i16x8.replace_lane 3
  local.get $e
  i16x8.replace_lane 4
  local.get $f
  i16x8.replace_lane 5
  local.get $g
  i16x8.replace_lane 6
  local.get $h
  i16x8.replace_lane 7
 )
 (func $simd/test_vars_i32x4_partial (type $i32_i32_i32_=>_v128) (param $a i32) (param $b i32) (param $c i32) (result v128)
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  local.get $a
  i32x4.replace_lane 1
  local.get $b
  i32x4.replace_lane 2
  local.get $c
  i32x4.replace_lane 3
 )
 (func $simd/test_vars_i32x4_full (type $i32_i32_i32_i32_=>_v128) (param $a i32) (param $b i32) (param $c i32) (param $d i32) (result v128)
  local.get $a
  i32x4.splat
  local.get $b
  i32x4.replace_lane 1
  local.get $c
  i32x4.replace_lane 2
  local.get $d
  i32x4.replace_lane 3
 )
 (func $simd/test_vars_i64x2_partial (type $i64_=>_v128) (param $a i64) (result v128)
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  local.get $a
  i64x2.replace_lane 1
 )
 (func $simd/test_vars_i64x2_full (type $i64_i64_=>_v128) (param $a i64) (param $b i64) (result v128)
  local.get $a
  i64x2.splat
  local.get $b
  i64x2.replace_lane 1
 )
 (func $simd/test_vars_f32x4_partial (type $f32_f32_f32_=>_v128) (param $a f32) (param $b f32) (param $c f32) (result v128)
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  local.get $a
  f32x4.replace_lane 1
  local.get $b
  f32x4.replace_lane 2
  local.get $c
  f32x4.replace_lane 3
 )
 (func $simd/test_vars_f32x4_full (type $f32_f32_f32_f32_=>_v128) (param $a f32) (param $b f32) (param $c f32) (param $d f32) (result v128)
  local.get $a
  f32x4.splat
  local.get $b
  f32x4.replace_lane 1
  local.get $c
  f32x4.replace_lane 2
  local.get $d
  f32x4.replace_lane 3
 )
 (func $simd/test_vars_f64x2_partial (type $f64_=>_v128) (param $a f64) (result v128)
  v128.const i32x4 0x00000000 0x00000000 0x00000000 0x00000000
  local.get $a
  f64x2.replace_lane 1
 )
 (func $simd/test_vars_f64x2_full (type $f64_f64_=>_v128) (param $a f64) (param $b f64) (result v128)
  local.get $a
  f64x2.splat
  local.get $b
  f64x2.replace_lane 1
 )
 (func $~lib/rt/__visit_globals (type $i32_=>_none) (param $0 i32)
  (local $1 i32)
  i32.const 272
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 80
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<v128>#get:buffer (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<v128>#__visit (type $i32_i32_=>_none) (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  call $~lib/array/Array<v128>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<v128>~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<v128>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (type $i32_=>_i32) (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<i32>#__visit (type $i32_i32_=>_none) (param $this i32) (param $cookie i32)
  i32.const 0
  drop
  local.get $this
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/rt/__visit_members (type $i32_i32_=>_none) (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/array/Array<i32>
    block $~lib/array/Array<v128>
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        local.get $0
        i32.const 8
        i32.sub
        i32.load $0
        br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<v128> $~lib/array/Array<i32> $invalid
       end
       return
      end
      return
     end
     local.get $0
     local.get $1
     call $~lib/arraybuffer/ArrayBufferView~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<v128>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<i32>~visit
   return
  end
  unreachable
 )
 (func $~start (type $none_=>_none)
  call $start:simd
 )
 (func $~stack_check (type $none_=>_none)
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33376
   i32.const 33424
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/__newArray (type $i32_i32_i32_i32_=>_i32) (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 0
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store $0
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store $0
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store $0 offset=4
  local.get $array
  local.get $bufferSize
  i32.store $0 offset=8
  local.get $array
  local.get $length
  i32.store $0 offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
)
