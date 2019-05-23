(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$vifi (func (param i32 f32 i32)))
 (type $FUNCSIG$vidi (func (param i32 f64 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 112) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 168) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 224) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (data (i32.const 272) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00s\00t\00d\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $std/dataview/array (mut i32) (i32.const 0))
 (global $std/dataview/view (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 8
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__set (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 184
   i32.const 115
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/dataview/DataView#constructor (; 4 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.const 1073741808
  i32.gt_u
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.gt_u
  i32.or
  if
   i32.const 24
   i32.const 240
   i32.const 21
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 4
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.load
  drop
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.get $0
  local.get $1
  i32.add
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
 )
 (func $~lib/dataview/DataView#getFloat32 (; 5 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 128
   i32.const 240
   i32.const 44
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  if (result f32)
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   f32.load
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i32.add
   i32.load
   local.tee $0
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $0
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
   f32.reinterpret_i32
  end
 )
 (func $~lib/polyfills/bswap<u64> (; 6 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $0
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $0
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
 )
 (func $~lib/dataview/DataView#getFloat64 (; 7 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 58
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  if (result f64)
   local.get $0
   i32.load offset=4
   f64.load
  else   
   local.get $0
   i32.load offset=4
   i64.load
   call $~lib/polyfills/bswap<u64>
   f64.reinterpret_i64
  end
 )
 (func $~lib/dataview/DataView#getInt8 (; 8 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 240
   i32.const 69
   i32.const 49
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/dataview/DataView#getInt16 (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 128
   i32.const 240
   i32.const 77
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_s
  local.set $0
  local.get $2
  if (result i32)
   local.get $0
  else   
   local.get $0
   i32.const 16
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 255
   i32.and
   local.get $0
   i32.const 8
   i32.shl
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getInt32 (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 128
   i32.const 240
   i32.const 86
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  local.set $0
  local.get $2
  if (result i32)
   local.get $0
  else   
   local.get $0
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $0
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getInt64 (; 11 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 180
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i64.load
  local.set $2
  local.get $1
  if (result i64)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<u64>
  end
 )
 (func $~lib/dataview/DataView#getUint8 (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 240
   i32.const 92
   i32.const 49
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/dataview/DataView#getUint16 (; 13 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 128
   i32.const 240
   i32.const 100
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load16_u
  local.set $0
  local.get $2
  if (result i32)
   local.get $0
  else   
   local.get $0
   i32.const 8
   i32.shl
   local.get $0
   i32.const 65535
   i32.and
   i32.const 8
   i32.shr_u
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getUint32 (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 0
  i32.lt_s
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  i32.or
  if
   i32.const 128
   i32.const 240
   i32.const 109
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load
  local.set $0
  local.get $2
  if (result i32)
   local.get $0
  else   
   local.get $0
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $0
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
  end
 )
 (func $~lib/dataview/DataView#getUint64 (; 15 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 189
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i64.load
  local.set $2
  local.get $1
  if (result i64)
   local.get $2
  else   
   local.get $2
   call $~lib/polyfills/bswap<u64>
  end
 )
 (func $~lib/dataview/DataView#setFloat32 (; 16 ;) (type $FUNCSIG$vifi) (param $0 i32) (param $1 f32) (param $2 i32)
  i32.const 4
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 118
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  if
   local.get $0
   i32.load offset=4
   local.get $1
   f32.store
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i32.reinterpret_f32
   local.tee $0
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $0
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
   i32.store
  end
 )
 (func $~lib/dataview/DataView#setFloat64 (; 17 ;) (type $FUNCSIG$vidi) (param $0 i32) (param $1 f64) (param $2 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 127
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  if
   local.get $0
   i32.load offset=4
   local.get $1
   f64.store
  else   
   local.get $0
   i32.load offset=4
   local.get $1
   i64.reinterpret_f64
   call $~lib/polyfills/bswap<u64>
   i64.store
  end
 )
 (func $~lib/dataview/DataView#setInt8 (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 240
   i32.const 133
   i32.const 49
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 108
  i32.store8
 )
 (func $~lib/dataview/DataView#setInt16 (; 19 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 2
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 141
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 16
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 255
   i32.and
   local.get $1
   i32.const 8
   i32.shl
   i32.or
   local.set $1
  end
  local.get $0
  local.get $1
  i32.store16
 )
 (func $~lib/dataview/DataView#setInt32 (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 4
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 149
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $1
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
   local.set $1
  end
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/dataview/DataView#setInt64 (; 21 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 198
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $2
  if (result i64)
   local.get $1
  else   
   local.get $1
   call $~lib/polyfills/bswap<u64>
  end
  i64.store
 )
 (func $~lib/dataview/DataView#setUint8 (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 0
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 128
   i32.const 240
   i32.const 154
   i32.const 49
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 238
  i32.store8
 )
 (func $~lib/dataview/DataView#setUint16 (; 23 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 2
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 162
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 8
   i32.shl
   local.get $1
   i32.const 65535
   i32.and
   i32.const 8
   i32.shr_u
   i32.or
   local.set $1
  end
  local.get $0
  local.get $1
  i32.store16
 )
 (func $~lib/dataview/DataView#setUint32 (; 24 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 4
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 170
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const -16711936
   i32.and
   i32.const 8
   i32.rotl
   local.get $1
   i32.const 16711935
   i32.and
   i32.const 8
   i32.rotr
   i32.or
   local.set $1
  end
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/dataview/DataView#setUint64 (; 25 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 128
   i32.const 240
   i32.const 206
   i32.const 6
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $2
  if (result i64)
   local.get $1
  else   
   local.get $1
   call $~lib/polyfills/bswap<u64>
  end
  i64.store
 )
 (func $~lib/dataview/DataView#constructor|trampoline (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 16
   i32.sub
   i32.load offset=12
   local.set $1
  end
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/dataview/DataView#constructor
 )
 (func $start:std/dataview (; 27 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 320
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 12
  i32.const 3
  call $~lib/rt/stub/__alloc
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.set $std/dataview/array
  global.get $std/dataview/array
  i32.const 0
  i32.const 246
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 1
  i32.const 224
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 2
  i32.const 88
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 3
  i32.const 159
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 4
  i32.const 130
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 5
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 6
  i32.const 67
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.const 7
  i32.const 95
  call $~lib/typedarray/Uint8Array#__set
  global.get $std/dataview/array
  i32.load
  global.get $std/dataview/array
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  local.get $0
  i32.load offset=8
  call $~lib/dataview/DataView#constructor
  global.set $std/dataview/view
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -4.592586247781397e-20
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const -2.3413961970849473e-37
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 77105877018631129268224
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 16
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 229.51023864746094
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 17
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 14079802746555334656
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -2275140518817895515269171e9
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 20
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -62437351080004157440
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 21
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1403059112509440
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 22
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -5.522466503261712e-20
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 23
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const -1.6843597451835358e-37
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 24
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const 7936550095674706383278551e126
  f64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const -411777475818852546741639e241
  f64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const -10
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getInt8
  i32.const -32
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  call $~lib/dataview/DataView#getInt8
  i32.const 88
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  call $~lib/dataview/DataView#getInt8
  i32.const -97
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 32
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  call $~lib/dataview/DataView#getInt8
  i32.const -126
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  call $~lib/dataview/DataView#getInt8
  i32.const 101
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  call $~lib/dataview/DataView#getInt8
  i32.const 67
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 7
  call $~lib/dataview/DataView#getInt8
  i32.const 95
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 36
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 57590
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 38
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 22752
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 39
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 40792
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 40
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 33439
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 25986
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 17253
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 43
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 24387
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 44
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 63200
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 57432
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 22687
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 48
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 40834
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 33381
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 25923
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 17247
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 52
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -1621565194
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 54
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const -2103486240
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 55
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1703059288
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 56
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1130726047
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 57
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1598252418
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 58
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -153069409
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 60
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -531062910
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 61
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 1486848613
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 62
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -1618844349
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 63
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const -2107292833
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 64
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const 6864441868736323830
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 66
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const -657428103485373601
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 67
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 246
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 69
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getUint8
  i32.const 224
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 70
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  call $~lib/dataview/DataView#getUint8
  i32.const 88
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 71
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  call $~lib/dataview/DataView#getUint8
  i32.const 159
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 72
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  call $~lib/dataview/DataView#getUint8
  i32.const 130
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 73
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  call $~lib/dataview/DataView#getUint8
  i32.const 101
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 74
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  call $~lib/dataview/DataView#getUint8
  i32.const 67
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 75
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 7
  call $~lib/dataview/DataView#getUint8
  i32.const 95
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 76
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 57590
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 78
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 22752
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 79
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 40792
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 80
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 33439
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 81
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 25986
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 82
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 17253
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 83
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 24387
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 84
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 63200
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 86
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 57432
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 87
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 22687
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 88
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 40834
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 89
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 33381
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 90
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 5
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 25923
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 91
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 6
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 17247
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 92
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -1621565194
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 94
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -2103486240
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 95
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1703059288
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 96
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1130726047
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 97
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const 1598252418
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 98
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -153069409
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 100
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -531062910
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 101
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 2
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const 1486848613
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 102
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 3
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1618844349
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 103
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 4
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -2107292833
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 104
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 6864441868736323830
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 106
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -657428103485373601
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 107
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  f32.const 1.5976661625240943e-18
  i32.const 1
  call $~lib/dataview/DataView#setFloat32
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getFloat32
  f32.const 1.5976661625240943e-18
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 110
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  f32.const 1976281973381696323584
  i32.const 0
  call $~lib/dataview/DataView#setFloat32
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getFloat32
  f32.const 1976281973381696323584
  f32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 113
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  f64.const -1094252199637739024055454e124
  i32.const 1
  call $~lib/dataview/DataView#setFloat64
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getFloat64
  f64.const -1094252199637739024055454e124
  f64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 116
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  f64.const 6.022586634778589e-103
  i32.const 0
  call $~lib/dataview/DataView#setFloat64
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getFloat64
  f64.const 6.022586634778589e-103
  f64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 119
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  call $~lib/dataview/DataView#setInt8
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt8
  i32.const 108
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 122
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const -13360
  i32.const 1
  call $~lib/dataview/DataView#setInt16
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 52176
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 125
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 14689
  i32.const 0
  call $~lib/dataview/DataView#setInt16
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt16
  i32.const 65535
  i32.and
  i32.const 14689
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 128
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 1204680201
  i32.const 1
  call $~lib/dataview/DataView#setInt32
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getInt32
  i32.const 1204680201
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 131
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 660673230
  i32.const 0
  call $~lib/dataview/DataView#setInt32
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getInt32
  i32.const 660673230
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 134
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i64.const -3290739641816099749
  i32.const 1
  call $~lib/dataview/DataView#setInt64
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getInt64
  i64.const -3290739641816099749
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 137
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i64.const 8178932412950708047
  i32.const 0
  call $~lib/dataview/DataView#setInt64
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getInt64
  i64.const 8178932412950708047
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 140
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  call $~lib/dataview/DataView#setUint8
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint8
  i32.const 238
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 143
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 58856
  i32.const 1
  call $~lib/dataview/DataView#setUint16
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 58856
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 146
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const 60400
  i32.const 0
  call $~lib/dataview/DataView#setUint16
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint16
  i32.const 65535
  i32.and
  i32.const 60400
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 149
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const -846805744
  i32.const 1
  call $~lib/dataview/DataView#setUint32
  global.get $std/dataview/view
  i32.const 0
  i32.const 1
  call $~lib/dataview/DataView#getUint32
  i32.const -846805744
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 152
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.const -1510791631
  i32.const 0
  call $~lib/dataview/DataView#setUint32
  global.get $std/dataview/view
  i32.const 0
  i32.const 0
  call $~lib/dataview/DataView#getUint32
  i32.const -1510791631
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 155
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i64.const 2334704782995986958
  i32.const 1
  call $~lib/dataview/DataView#setUint64
  global.get $std/dataview/view
  i32.const 1
  call $~lib/dataview/DataView#getUint64
  i64.const 2334704782995986958
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 158
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i64.const -7123186897289856329
  i32.const 0
  call $~lib/dataview/DataView#setUint64
  global.get $std/dataview/view
  i32.const 0
  call $~lib/dataview/DataView#getUint64
  i64.const -7123186897289856329
  i64.ne
  if
   i32.const 0
   i32.const 288
   i32.const 161
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  global.get $std/dataview/array
  i32.load
  call $~lib/dataview/DataView#constructor|trampoline
  global.set $std/dataview/view
  global.get $std/dataview/view
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 288
   i32.const 164
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/dataview/view
  i32.load offset=8
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 288
   i32.const 165
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 28 ;) (type $FUNCSIG$v)
  call $start:std/dataview
 )
 (func $null (; 29 ;) (type $FUNCSIG$v)
  nop
 )
)
