(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/polyfills/bitrev<u8> (param $0 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  local.tee $0
  i32.const 2050
  i32.mul
  i32.const 139536
  i32.and
  local.get $0
  i32.const 32800
  i32.mul
  i32.const 558144
  i32.and
  i32.or
  i32.const 65793
  i32.mul
  i32.const 16
  i32.shr_u
 )
 (func $~lib/polyfills/bitrev<i8> (param $0 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.tee $0
  i32.const 2050
  i32.mul
  i32.const 139536
  i32.and
  local.get $0
  i32.const 32800
  i32.mul
  i32.const 558144
  i32.and
  i32.or
  i32.const 65793
  i32.mul
  i32.const 16
  i32.shr_u
 )
 (func $~lib/polyfills/bitrev<u16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 65535
  i32.and
  local.tee $0
  i32.const 252645135
  i32.and
  local.tee $1
  i32.const 8
  i32.shl
  local.get $0
  local.get $1
  i32.xor
  i32.or
  local.tee $0
  i32.const 858993459
  i32.and
  local.tee $1
  i32.const 4
  i32.shl
  local.get $0
  local.get $1
  i32.xor
  i32.or
  local.tee $0
  i32.const 1431655765
  i32.and
  local.tee $1
  i32.const 2
  i32.shl
  local.get $0
  local.get $1
  i32.xor
  i32.or
  i32.const 15
  i32.shr_u
 )
 (func $~lib/polyfills/bitrev<i16> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $0
  i32.const 252645135
  i32.and
  local.tee $1
  i32.const 8
  i32.shl
  local.get $0
  local.get $1
  i32.xor
  i32.or
  local.tee $0
  i32.const 858993459
  i32.and
  local.tee $1
  i32.const 4
  i32.shl
  local.get $0
  local.get $1
  i32.xor
  i32.or
  local.tee $0
  i32.const 1431655765
  i32.and
  local.tee $1
  i32.const 2
  i32.shl
  local.get $0
  local.get $1
  i32.xor
  i32.or
  i32.const 15
  i32.shr_u
 )
 (func $~lib/polyfills/bitrev<u32> (param $0 i32) (result i32)
  local.get $0
  i32.const 1431655765
  i32.and
  i32.const 1
  i32.shl
  local.get $0
  i32.const -1431655766
  i32.and
  i32.const 1
  i32.shr_u
  i32.or
  local.tee $0
  i32.const 858993459
  i32.and
  i32.const 2
  i32.shl
  local.get $0
  i32.const -858993460
  i32.and
  i32.const 2
  i32.shr_u
  i32.or
  local.tee $0
  i32.const 252645135
  i32.and
  i32.const 4
  i32.shl
  local.get $0
  i32.const -252645136
  i32.and
  i32.const 4
  i32.shr_u
  i32.or
  local.tee $0
  i32.const 16711935
  i32.and
  i32.const 8
  i32.shl
  local.get $0
  i32.const -16711936
  i32.and
  i32.const 8
  i32.shr_u
  i32.or
  i32.const 16
  i32.rotr
 )
 (func $start:std/polyfills
  i32.const 0
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 37
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  i32.const 128
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 40
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  i32.const 64
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  i32.const 64
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 51
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  i32.const 204
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 51
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  i32.const 204
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 44
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  i32.const 254
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 127
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  i32.const 254
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 129
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  i32.const 129
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 47
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 129
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  i32.const 129
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  call $~lib/polyfills/bitrev<u8>
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 49
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  call $~lib/polyfills/bitrev<i8>
  i32.const 255
  i32.and
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 52
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 54
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  i32.const 32768
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 16384
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  i32.const 16384
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 13107
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 52428
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 13107
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  i32.const 52428
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 59
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32767
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 65534
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 32767
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  i32.const 65534
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 34097
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 36001
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 62
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 34097
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  i32.const 36001
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 65535
  call $~lib/polyfills/bitrev<u16>
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 64
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 65535
  call $~lib/polyfills/bitrev<i16>
  i32.const 65535
  i32.and
  i32.const 65535
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 65
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<u32>
  if
   i32.const 0
   i32.const 1040
   i32.const 67
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/polyfills/bitrev<u32>
  if
   i32.const 0
   i32.const 1040
   i32.const 68
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<u32>
  i32.const -2147483648
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/polyfills/bitrev<u32>
  i32.const -2147483648
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 70
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<u32>
  i32.const 1073741824
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 71
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/polyfills/bitrev<u32>
  i32.const 1073741824
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 72
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  call $~lib/polyfills/bitrev<u32>
  i32.const 16777216
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 128
  call $~lib/polyfills/bitrev<u32>
  i32.const 16777216
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 858993459
  call $~lib/polyfills/bitrev<u32>
  i32.const -858993460
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 858993459
  call $~lib/polyfills/bitrev<u32>
  i32.const -858993460
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 76
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/polyfills/bitrev<u32>
  i32.const -2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/polyfills/bitrev<u32>
  i32.const -2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2023406815
  call $~lib/polyfills/bitrev<u32>
  i32.const -2067618079
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 79
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -2023406815
  call $~lib/polyfills/bitrev<u32>
  i32.const -2067618079
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/polyfills/bitrev<u32>
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 81
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/polyfills/bitrev<u32>
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 82
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 1040
  i32.const 84
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:std/polyfills
 )
)
