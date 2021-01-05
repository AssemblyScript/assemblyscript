(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (import "wasi_snapshot_preview1" "random_get" (func $~lib/bindings/wasi_snapshot_preview1/random_get (param i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1276) "<")
 (data (i32.const 1288) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1372) ",")
 (data (i32.const 1384) "\01\00\00\00\0e\00\00\00S\00U\00C\00C\00E\00S\00S")
 (data (i32.const 1420) "\1c")
 (data (i32.const 1432) "\01\00\00\00\0c\00\00\00T\00O\00O\00B\00I\00G")
 (data (i32.const 1452) "\1c")
 (data (i32.const 1464) "\01\00\00\00\n\00\00\00A\00C\00C\00E\00S")
 (data (i32.const 1484) ",")
 (data (i32.const 1496) "\01\00\00\00\12\00\00\00A\00D\00D\00R\00I\00N\00U\00S\00E")
 (data (i32.const 1532) ",")
 (data (i32.const 1544) "\01\00\00\00\18\00\00\00A\00D\00D\00R\00N\00O\00T\00A\00V\00A\00I\00L")
 (data (i32.const 1580) ",")
 (data (i32.const 1592) "\01\00\00\00\16\00\00\00A\00F\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 1628) "\1c")
 (data (i32.const 1640) "\01\00\00\00\n\00\00\00A\00G\00A\00I\00N")
 (data (i32.const 1660) ",")
 (data (i32.const 1672) "\01\00\00\00\0e\00\00\00A\00L\00R\00E\00A\00D\00Y")
 (data (i32.const 1708) "\1c")
 (data (i32.const 1720) "\01\00\00\00\08\00\00\00B\00A\00D\00F")
 (data (i32.const 1740) "\1c")
 (data (i32.const 1752) "\01\00\00\00\0c\00\00\00B\00A\00D\00M\00S\00G")
 (data (i32.const 1772) "\1c")
 (data (i32.const 1784) "\01\00\00\00\08\00\00\00B\00U\00S\00Y")
 (data (i32.const 1804) ",")
 (data (i32.const 1816) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
 (data (i32.const 1852) "\1c")
 (data (i32.const 1864) "\01\00\00\00\n\00\00\00C\00H\00I\00L\00D")
 (data (i32.const 1884) ",")
 (data (i32.const 1896) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00A\00B\00O\00R\00T\00E\00D")
 (data (i32.const 1932) ",")
 (data (i32.const 1944) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00R\00E\00F\00U\00S\00E\00D")
 (data (i32.const 1980) ",")
 (data (i32.const 1992) "\01\00\00\00\12\00\00\00C\00O\00N\00N\00R\00E\00S\00E\00T")
 (data (i32.const 2028) "\1c")
 (data (i32.const 2040) "\01\00\00\00\0c\00\00\00D\00E\00A\00D\00L\00K")
 (data (i32.const 2060) ",")
 (data (i32.const 2072) "\01\00\00\00\16\00\00\00D\00E\00S\00T\00A\00D\00D\00R\00R\00E\00Q")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01\00\00\00\06\00\00\00D\00O\00M")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\n\00\00\00D\00Q\00U\00O\00T")
 (data (i32.const 2172) "\1c")
 (data (i32.const 2184) "\01\00\00\00\n\00\00\00E\00X\00I\00S\00T")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2216) "\01\00\00\00\n\00\00\00F\00A\00U\00L\00T")
 (data (i32.const 2236) "\1c")
 (data (i32.const 2248) "\01\00\00\00\08\00\00\00F\00B\00I\00G")
 (data (i32.const 2268) ",")
 (data (i32.const 2280) "\01\00\00\00\16\00\00\00H\00O\00S\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2316) "\1c")
 (data (i32.const 2328) "\01\00\00\00\08\00\00\00I\00D\00R\00M")
 (data (i32.const 2348) "\1c")
 (data (i32.const 2360) "\01\00\00\00\n\00\00\00I\00L\00S\00E\00Q")
 (data (i32.const 2380) ",")
 (data (i32.const 2392) "\01\00\00\00\14\00\00\00I\00N\00P\00R\00O\00G\00R\00E\00S\00S")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2440) "\01\00\00\00\08\00\00\00I\00N\00T\00R")
 (data (i32.const 2460) "\1c")
 (data (i32.const 2472) "\01\00\00\00\n\00\00\00I\00N\00V\00A\00L")
 (data (i32.const 2492) "\1c")
 (data (i32.const 2504) "\01\00\00\00\04\00\00\00I\00O")
 (data (i32.const 2524) "\1c")
 (data (i32.const 2536) "\01\00\00\00\0c\00\00\00I\00S\00C\00O\00N\00N")
 (data (i32.const 2556) "\1c")
 (data (i32.const 2568) "\01\00\00\00\n\00\00\00I\00S\00D\00I\00R")
 (data (i32.const 2588) "\1c")
 (data (i32.const 2600) "\01\00\00\00\08\00\00\00L\00O\00O\00P")
 (data (i32.const 2620) "\1c")
 (data (i32.const 2632) "\01\00\00\00\n\00\00\00M\00F\00I\00L\00E")
 (data (i32.const 2652) "\1c")
 (data (i32.const 2664) "\01\00\00\00\n\00\00\00M\00L\00I\00N\00K")
 (data (i32.const 2684) ",")
 (data (i32.const 2696) "\01\00\00\00\0e\00\00\00M\00S\00G\00S\00I\00Z\00E")
 (data (i32.const 2732) ",")
 (data (i32.const 2744) "\01\00\00\00\10\00\00\00M\00U\00L\00T\00I\00H\00O\00P")
 (data (i32.const 2780) ",")
 (data (i32.const 2792) "\01\00\00\00\16\00\00\00N\00A\00M\00E\00T\00O\00O\00L\00O\00N\00G")
 (data (i32.const 2828) ",")
 (data (i32.const 2840) "\01\00\00\00\0e\00\00\00N\00E\00T\00D\00O\00W\00N")
 (data (i32.const 2876) ",")
 (data (i32.const 2888) "\01\00\00\00\10\00\00\00N\00E\00T\00R\00E\00S\00E\00T")
 (data (i32.const 2924) ",")
 (data (i32.const 2936) "\01\00\00\00\14\00\00\00N\00E\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2972) "\1c")
 (data (i32.const 2984) "\01\00\00\00\n\00\00\00N\00F\00I\00L\00E")
 (data (i32.const 3004) "\1c")
 (data (i32.const 3016) "\01\00\00\00\0c\00\00\00N\00O\00B\00U\00F\00S")
 (data (i32.const 3036) "\1c")
 (data (i32.const 3048) "\01\00\00\00\n\00\00\00N\00O\00D\00E\00V")
 (data (i32.const 3068) "\1c")
 (data (i32.const 3080) "\01\00\00\00\n\00\00\00N\00O\00E\00N\00T")
 (data (i32.const 3100) "\1c")
 (data (i32.const 3112) "\01\00\00\00\0c\00\00\00N\00O\00E\00X\00E\00C")
 (data (i32.const 3132) "\1c")
 (data (i32.const 3144) "\01\00\00\00\n\00\00\00N\00O\00L\00C\00K")
 (data (i32.const 3164) "\1c")
 (data (i32.const 3176) "\01\00\00\00\0c\00\00\00N\00O\00L\00I\00N\00K")
 (data (i32.const 3196) "\1c")
 (data (i32.const 3208) "\01\00\00\00\n\00\00\00N\00O\00M\00E\00M")
 (data (i32.const 3228) "\1c")
 (data (i32.const 3240) "\01\00\00\00\n\00\00\00N\00O\00M\00S\00G")
 (data (i32.const 3260) ",")
 (data (i32.const 3272) "\01\00\00\00\14\00\00\00N\00O\00P\00R\00O\00T\00O\00O\00P\00T")
 (data (i32.const 3308) "\1c")
 (data (i32.const 3320) "\01\00\00\00\n\00\00\00N\00O\00S\00P\00C")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3352) "\01\00\00\00\n\00\00\00N\00O\00S\00Y\00S")
 (data (i32.const 3372) ",")
 (data (i32.const 3384) "\01\00\00\00\0e\00\00\00N\00O\00T\00C\00O\00N\00N")
 (data (i32.const 3420) "\1c")
 (data (i32.const 3432) "\01\00\00\00\0c\00\00\00N\00O\00T\00D\00I\00R")
 (data (i32.const 3452) ",")
 (data (i32.const 3464) "\01\00\00\00\10\00\00\00N\00O\00T\00E\00M\00P\00T\00Y")
 (data (i32.const 3500) ",")
 (data (i32.const 3512) "\01\00\00\00\1c\00\00\00N\00O\00T\00R\00E\00C\00O\00V\00E\00R\00A\00B\00L\00E")
 (data (i32.const 3548) ",")
 (data (i32.const 3560) "\01\00\00\00\0e\00\00\00N\00O\00T\00S\00O\00C\00K")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\01\00\00\00\0c\00\00\00N\00O\00T\00S\00U\00P")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3640) "\01\00\00\00\n\00\00\00N\00O\00T\00T\00Y")
 (data (i32.const 3660) "\1c")
 (data (i32.const 3672) "\01\00\00\00\08\00\00\00N\00X\00I\00O")
 (data (i32.const 3692) ",")
 (data (i32.const 3704) "\01\00\00\00\10\00\00\00O\00V\00E\00R\00F\00L\00O\00W")
 (data (i32.const 3740) ",")
 (data (i32.const 3752) "\01\00\00\00\12\00\00\00O\00W\00N\00E\00R\00D\00E\00A\00D")
 (data (i32.const 3788) "\1c")
 (data (i32.const 3800) "\01\00\00\00\08\00\00\00P\00E\00R\00M")
 (data (i32.const 3820) "\1c")
 (data (i32.const 3832) "\01\00\00\00\08\00\00\00P\00I\00P\00E")
 (data (i32.const 3852) "\1c")
 (data (i32.const 3864) "\01\00\00\00\n\00\00\00P\00R\00O\00T\00O")
 (data (i32.const 3884) ",")
 (data (i32.const 3896) "\01\00\00\00\1c\00\00\00P\00R\00O\00T\00O\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 3932) ",")
 (data (i32.const 3944) "\01\00\00\00\12\00\00\00P\00R\00O\00T\00O\00T\00Y\00P\00E")
 (data (i32.const 3980) "\1c")
 (data (i32.const 3992) "\01\00\00\00\n\00\00\00R\00A\00N\00G\00E")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01\00\00\00\08\00\00\00R\00O\00F\00S")
 (data (i32.const 4044) "\1c")
 (data (i32.const 4056) "\01\00\00\00\n\00\00\00S\00P\00I\00P\00E")
 (data (i32.const 4076) "\1c")
 (data (i32.const 4088) "\01\00\00\00\08\00\00\00S\00R\00C\00H")
 (data (i32.const 4108) "\1c")
 (data (i32.const 4120) "\01\00\00\00\n\00\00\00S\00T\00A\00L\00E")
 (data (i32.const 4140) ",")
 (data (i32.const 4152) "\01\00\00\00\10\00\00\00T\00I\00M\00E\00D\00O\00U\00T")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4200) "\01\00\00\00\0c\00\00\00T\00X\00T\00B\00S\00Y")
 (data (i32.const 4220) "\1c")
 (data (i32.const 4232) "\01\00\00\00\08\00\00\00X\00D\00E\00V")
 (data (i32.const 4252) ",")
 (data (i32.const 4264) "\01\00\00\00\14\00\00\00N\00O\00T\00C\00A\00P\00A\00B\00L\00E")
 (data (i32.const 4300) ",")
 (data (i32.const 4312) "\01\00\00\00\0e\00\00\00U\00N\00K\00N\00O\00W\00N")
 (data (i32.const 4348) ",")
 (data (i32.const 4360) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00c\00r\00y\00p\00t\00o\00.\00t\00s")
 (data (i32.const 4396) "L")
 (data (i32.const 4408) "\01\00\00\000\00\00\00c\00r\00y\00p\00t\00o\00.\00g\00e\00t\00R\00a\00n\00d\00o\00m\00V\00a\00l\00u\00e\00s\00:\00 ")
 (data (i32.const 4476) "\1c")
 (data (i32.const 4488) "\01")
 (data (i32.const 4508) "|")
 (data (i32.const 4520) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 4636) "<")
 (data (i32.const 4648) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 4700) "\1c")
 (data (i32.const 4712) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4732) "\\")
 (data (i32.const 4744) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4828) "\1c")
 (data (i32.const 4840) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 4860) "\1c")
 (data (i32.const 4872) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
 (data (i32.const 4924) "<")
 (data (i32.const 4936) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00p\00r\00o\00c\00e\00s\00s\00.\00t\00s")
 (data (i32.const 4988) "\1c")
 (data (i32.const 5000) "\01\00\00\00\02\00\00\00\n")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $std-wasi/crypto/buf (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $4
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $3
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $3
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $4
      local.get $0
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $3
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $0
       i32.load16_u offset=2
       local.tee $5
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $3
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $5
        i32.const 1023
        i32.and
        i32.or
        local.tee $3
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $3
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $3
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $3
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $3
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $3
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16
      local.get $1
      local.get $3
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $1
  local.get $2
  i32.sub
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/wasi/index/abort (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 12
  i32.store
  i32.const 12
  i64.const 9071471065260641
  i64.store
  local.get $0
  if (result i32)
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 19
   call $~lib/string/String.UTF8.encodeUnsafe
   i32.const 19
   i32.add
  else
   i32.const 19
  end
  local.tee $4
  i32.const 544106784
  i32.store
  local.get $4
  i32.const 4
  i32.add
  local.set $4
  local.get $1
  if
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.get $4
   call $~lib/string/String.UTF8.encodeUnsafe
   local.get $4
   i32.add
   local.set $4
  end
  local.get $4
  i32.const 40
  i32.store8
  local.get $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  local.get $4
  i32.const 1
  i32.add
  i32.add
  local.set $4
  loop $do-continue|0
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   local.get $2
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $2
   i32.const 10
   i32.div_u
   local.tee $2
   br_if $do-continue|0
  end
  local.get $0
  local.get $4
  i32.add
  local.tee $0
  i32.const 58
  i32.store8
  local.get $3
  call $~lib/util/number/decimalCount32
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $4
  loop $do-continue|1
   local.get $4
   i32.const 1
   i32.sub
   local.tee $4
   local.get $3
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store8
   local.get $3
   i32.const 10
   i32.div_u
   local.tee $3
   br_if $do-continue|1
  end
  local.get $1
  local.get $4
  i32.add
  local.tee $0
  i32.const 2601
  i32.store16
  i32.const 4
  local.get $0
  i32.const 10
  i32.sub
  i32.store
  i32.const 2
  i32.const 0
  i32.const 1
  i32.const 8
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  drop
  i32.const 255
  call $~lib/bindings/wasi_snapshot_preview1/proc_exit
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 272
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 274
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $3
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 287
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $4
  local.get $1
  i32.load offset=4
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=8
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $4
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $1
    local.get $4
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 200
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 202
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.const 1073741820
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    local.get $4
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $2
   end
  end
  local.get $4
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $3
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1296
    i32.const 223
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 4
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741820
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/removeBlock
    local.get $3
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $4
    i32.store
    local.get $3
   else
    local.get $1
   end
   local.set $1
  end
  local.get $5
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $4
  i32.const -4
  i32.and
  local.tee $3
  i32.const 1073741820
  i32.lt_u
  i32.const 0
  local.get $3
  i32.const 12
  i32.ge_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 238
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $5
  local.get $3
  local.get $1
  i32.const 4
  i32.add
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1296
   i32.const 239
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 256
  i32.lt_u
  if
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $4
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $3
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 255
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $4
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $4
  if
   local.get $4
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $3
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1296
   i32.const 380
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const -16
  i32.and
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1296
    i32.const 387
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1296
    i32.const 400
    i32.const 5
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.set $2
   local.get $1
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1296
   i32.const 333
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1296
     i32.const 346
     i32.const 18
     call $~lib/wasi/index/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.ge_u
  if
   i32.const 1168
   i32.const 1296
   i32.const 461
   i32.const 30
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $2
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   i32.const 4
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   local.get $0
   i32.load offset=1568
   i32.ne
   i32.shl
   local.get $2
   i32.const 1
   i32.const 27
   local.get $2
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.get $2
   local.get $2
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1296
    i32.const 499
    i32.const 16
    call $~lib/wasi/index/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1296
   i32.const 501
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1296
   i32.const 360
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $2
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1168
   i32.const 1232
   i32.const 127
   i32.const 31
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   memory.size
   local.tee $3
   i32.const 1
   i32.lt_s
   if (result i32)
    i32.const 1
    local.get $3
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 5024
   i32.const 0
   i32.store
   i32.const 6592
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $2
    i32.const 23
    i32.lt_u
    if
     local.get $2
     i32.const 2
     i32.shl
     i32.const 5024
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $3
     loop $for-loop|1
      local.get $3
      i32.const 16
      i32.lt_u
      if
       local.get $3
       local.get $2
       i32.const 4
       i32.shl
       i32.add
       i32.const 2
       i32.shl
       i32.const 5024
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|1
      end
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 5024
   i32.const 6596
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 5024
   global.set $~lib/rt/tlsf/ROOT
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $0
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $2
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 20
  i32.add
 )
 (func $~lib/bindings/wasi_snapshot_preview1/errnoToString (param $0 i32) (result i32)
  block $break|0
   block $case76|0
    block $case75|0
     block $case74|0
      block $case73|0
       block $case72|0
        block $case71|0
         block $case70|0
          block $case69|0
           block $case68|0
            block $case67|0
             block $case66|0
              block $case65|0
               block $case64|0
                block $case63|0
                 block $case62|0
                  block $case61|0
                   block $case60|0
                    block $case59|0
                     block $case58|0
                      block $case57|0
                       block $case56|0
                        block $case55|0
                         block $case54|0
                          block $case53|0
                           block $case52|0
                            block $case51|0
                             block $case50|0
                              block $case49|0
                               block $case48|0
                                block $case47|0
                                 block $case46|0
                                  block $case45|0
                                   block $case44|0
                                    block $case43|0
                                     block $case42|0
                                      block $case41|0
                                       block $case40|0
                                        block $case39|0
                                         block $case38|0
                                          block $case37|0
                                           block $case36|0
                                            block $case35|0
                                             block $case34|0
                                              block $case33|0
                                               block $case32|0
                                                block $case31|0
                                                 block $case30|0
                                                  block $case29|0
                                                   block $case28|0
                                                    block $case27|0
                                                     block $case26|0
                                                      block $case25|0
                                                       block $case24|0
                                                        block $case23|0
                                                         block $case22|0
                                                          block $case21|0
                                                           block $case20|0
                                                            block $case19|0
                                                             block $case18|0
                                                              block $case17|0
                                                               block $case16|0
                                                                block $case15|0
                                                                 block $case14|0
                                                                  block $case13|0
                                                                   block $case12|0
                                                                    block $case11|0
                                                                     block $case10|0
                                                                      block $case9|0
                                                                       block $case8|0
                                                                        block $case7|0
                                                                         block $case6|0
                                                                          block $case5|0
                                                                           block $case4|0
                                                                            block $case3|0
                                                                             block $case2|0
                                                                              block $case1|0
                                                                               block $case0|0
                                                                                local.get $0
                                                                                i32.const 65535
                                                                                i32.and
                                                                                br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $case13|0 $case14|0 $case15|0 $case16|0 $case17|0 $case18|0 $case19|0 $case20|0 $case21|0 $case22|0 $case23|0 $case24|0 $case25|0 $case26|0 $case27|0 $case28|0 $case29|0 $case30|0 $case31|0 $case32|0 $case33|0 $case34|0 $case35|0 $case36|0 $case37|0 $case38|0 $case39|0 $case40|0 $case41|0 $case42|0 $case43|0 $case44|0 $case45|0 $case46|0 $case47|0 $case48|0 $case49|0 $case50|0 $case51|0 $case52|0 $case53|0 $case54|0 $case55|0 $case56|0 $case57|0 $case58|0 $case59|0 $case60|0 $case61|0 $case62|0 $case63|0 $case64|0 $case65|0 $case66|0 $case67|0 $case68|0 $case69|0 $case70|0 $case71|0 $case72|0 $case73|0 $case74|0 $case75|0 $case76|0 $break|0
                                                                               end
                                                                               i32.const 1392
                                                                               return
                                                                              end
                                                                              i32.const 1440
                                                                              return
                                                                             end
                                                                             i32.const 1472
                                                                             return
                                                                            end
                                                                            i32.const 1504
                                                                            return
                                                                           end
                                                                           i32.const 1552
                                                                           return
                                                                          end
                                                                          i32.const 1600
                                                                          return
                                                                         end
                                                                         i32.const 1648
                                                                         return
                                                                        end
                                                                        i32.const 1680
                                                                        return
                                                                       end
                                                                       i32.const 1728
                                                                       return
                                                                      end
                                                                      i32.const 1760
                                                                      return
                                                                     end
                                                                     i32.const 1792
                                                                     return
                                                                    end
                                                                    i32.const 1824
                                                                    return
                                                                   end
                                                                   i32.const 1872
                                                                   return
                                                                  end
                                                                  i32.const 1904
                                                                  return
                                                                 end
                                                                 i32.const 1952
                                                                 return
                                                                end
                                                                i32.const 2000
                                                                return
                                                               end
                                                               i32.const 2048
                                                               return
                                                              end
                                                              i32.const 2080
                                                              return
                                                             end
                                                             i32.const 2128
                                                             return
                                                            end
                                                            i32.const 2160
                                                            return
                                                           end
                                                           i32.const 2192
                                                           return
                                                          end
                                                          i32.const 2224
                                                          return
                                                         end
                                                         i32.const 2256
                                                         return
                                                        end
                                                        i32.const 2288
                                                        return
                                                       end
                                                       i32.const 2336
                                                       return
                                                      end
                                                      i32.const 2368
                                                      return
                                                     end
                                                     i32.const 2400
                                                     return
                                                    end
                                                    i32.const 2448
                                                    return
                                                   end
                                                   i32.const 2480
                                                   return
                                                  end
                                                  i32.const 2512
                                                  return
                                                 end
                                                 i32.const 2544
                                                 return
                                                end
                                                i32.const 2576
                                                return
                                               end
                                               i32.const 2608
                                               return
                                              end
                                              i32.const 2640
                                              return
                                             end
                                             i32.const 2672
                                             return
                                            end
                                            i32.const 2704
                                            return
                                           end
                                           i32.const 2752
                                           return
                                          end
                                          i32.const 2800
                                          return
                                         end
                                         i32.const 2848
                                         return
                                        end
                                        i32.const 2896
                                        return
                                       end
                                       i32.const 2944
                                       return
                                      end
                                      i32.const 2992
                                      return
                                     end
                                     i32.const 3024
                                     return
                                    end
                                    i32.const 3056
                                    return
                                   end
                                   i32.const 3088
                                   return
                                  end
                                  i32.const 3120
                                  return
                                 end
                                 i32.const 3152
                                 return
                                end
                                i32.const 3184
                                return
                               end
                               i32.const 3216
                               return
                              end
                              i32.const 3248
                              return
                             end
                             i32.const 3280
                             return
                            end
                            i32.const 3328
                            return
                           end
                           i32.const 3360
                           return
                          end
                          i32.const 3392
                          return
                         end
                         i32.const 3440
                         return
                        end
                        i32.const 3472
                        return
                       end
                       i32.const 3520
                       return
                      end
                      i32.const 3568
                      return
                     end
                     i32.const 3616
                     return
                    end
                    i32.const 3648
                    return
                   end
                   i32.const 3680
                   return
                  end
                  i32.const 3712
                  return
                 end
                 i32.const 3760
                 return
                end
                i32.const 3808
                return
               end
               i32.const 3840
               return
              end
              i32.const 3872
              return
             end
             i32.const 3904
             return
            end
            i32.const 3952
            return
           end
           i32.const 4000
           return
          end
          i32.const 4032
          return
         end
         i32.const 4064
         return
        end
        i32.const 4096
        return
       end
       i32.const 4128
       return
      end
      i32.const 4160
      return
     end
     i32.const 4208
     return
    end
    i32.const 4240
    return
   end
   i32.const 4272
   return
  end
  i32.const 4320
 )
 (func $~lib/crypto/crypto.getRandomValues (param $0 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=8
  call $~lib/bindings/wasi_snapshot_preview1/random_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4368
   i32.const 9
   i32.const 14
   call $~lib/wasi/index/abort
   unreachable
  end
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  loop $do-continue|0
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 10
   i32.rem_u
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i32.const 10
   i32.div_u
   local.tee $1
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/itoa_buffered<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 255
  i32.and
  i32.const 10
  i32.lt_u
  if
   local.get $0
   local.get $1
   i32.const 255
   i32.and
   i32.const 48
   i32.or
   i32.store16
   i32.const 1
   return
  end
  local.get $1
  i32.const 255
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_dec_simple<u32>
  local.get $1
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/util/string/joinIntegerArray<u8> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1
  i32.sub
  local.tee $3
  i32.const 0
  i32.lt_s
  if
   i32.const 4496
   return
  end
  local.get $3
  i32.eqz
  if
   block $__inlined_func$~lib/util/number/utoa32
    local.get $0
    i32.load8_u
    local.tee $1
    i32.eqz
    if
     i32.const 4720
     local.set $0
     br $__inlined_func$~lib/util/number/utoa32
    end
    local.get $1
    call $~lib/util/number/decimalCount32
    local.tee $2
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $0
    local.get $1
    local.get $2
    call $~lib/util/number/utoa_dec_simple<u32>
   end
   local.get $0
   return
  end
  local.get $3
  i32.const 4844
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $4
  i32.const 10
  i32.add
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tcms/__new
  local.set $1
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.gt_s
   if
    local.get $1
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $5
    i32.add
    i32.load8_u
    call $~lib/util/number/itoa_buffered<u8>
    local.get $2
    i32.add
    local.set $2
    local.get $4
    if
     local.get $1
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.const 4848
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $2
     local.get $4
     i32.add
     local.set $2
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $6
  local.get $1
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $3
  i32.add
  i32.load8_u
  call $~lib/util/number/itoa_buffered<u8>
  local.get $2
  i32.add
  local.tee $3
  i32.gt_s
  if
   block $__inlined_func$~lib/string/String#substring
    i32.const 0
    local.get $1
    local.tee $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $1
    local.get $1
    i32.const 0
    i32.gt_s
    select
    local.tee $2
    local.get $3
    i32.const 0
    local.get $3
    i32.const 0
    i32.gt_s
    select
    local.tee $3
    local.get $1
    local.get $1
    local.get $3
    i32.gt_s
    select
    local.tee $3
    local.get $2
    local.get $3
    i32.gt_s
    select
    i32.const 1
    i32.shl
    local.tee $4
    local.get $2
    local.get $3
    local.get $2
    local.get $3
    i32.lt_s
    select
    i32.const 1
    i32.shl
    local.tee $2
    i32.sub
    local.tee $3
    i32.eqz
    if
     i32.const 4496
     local.set $0
     br $__inlined_func$~lib/string/String#substring
    end
    i32.const 0
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
    i32.eq
    local.get $2
    select
    br_if $__inlined_func$~lib/string/String#substring
    local.get $3
    i32.const 1
    call $~lib/rt/tcms/__new
    local.tee $1
    local.get $0
    local.get $2
    i32.add
    local.get $3
    call $~lib/memory/memory.copy
    local.get $1
    local.set $0
   end
   local.get $0
   return
  end
  local.get $1
 )
 (func $~lib/string/String#concat (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 4880
  local.get $0
  select
  local.tee $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $3
  i32.const 4412
  i32.load
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.shl
  local.tee $0
  i32.add
  local.tee $1
  i32.eqz
  if
   i32.const 4496
   return
  end
  local.get $1
  i32.const 1
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 4416
  local.get $0
  call $~lib/memory/memory.copy
  local.get $0
  local.get $1
  i32.add
  local.get $2
  local.get $3
  call $~lib/memory/memory.copy
  local.get $1
 )
 (func $~lib/process/writeString (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const -1
  local.set $2
  i32.const -1
  local.set $1
  i32.const -1
  local.set $3
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $0
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
       end
       local.get $0
       i32.load16_u offset=6
       local.tee $3
       i32.const 128
       i32.ge_u
       br_if $break|0
      end
      local.get $0
      i32.load16_u offset=4
      local.tee $1
      i32.const 128
      i32.ge_u
      br_if $break|0
     end
     local.get $0
     i32.load16_u offset=2
     local.tee $2
     i32.const 128
     i32.ge_u
     br_if $break|0
    end
    local.get $0
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.ge_u
    br_if $break|0
    i32.const 4896
    i32.const 4904
    i32.store
    i32.const 4900
    local.get $2
    i32.const -1
    i32.ne
    i32.const 1
    i32.add
    local.get $1
    i32.const -1
    i32.ne
    i32.add
    local.get $3
    i32.const -1
    i32.ne
    i32.add
    i32.store
    i32.const 4904
    local.get $4
    local.get $2
    i32.const 8
    i32.shl
    i32.or
    local.get $1
    i32.const 16
    i32.shl
    i32.or
    local.get $3
    i32.const 24
    i32.shl
    i32.or
    i32.store
    i32.const 1
    i32.const 4896
    i32.const 1
    i32.const 4908
    call $~lib/bindings/wasi_snapshot_preview1/fd_write
    local.tee $0
    i32.const 65535
    i32.and
    if
     local.get $0
     call $~lib/bindings/wasi_snapshot_preview1/errnoToString
     i32.const 4944
     i32.const 178
     i32.const 16
     call $~lib/wasi/index/abort
     unreachable
    end
   end
   return
  end
  local.get $0
  local.set $1
  i32.const 0
  local.set $2
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $1
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $3
      local.get $1
      i32.const 2
      i32.add
      i32.gt_u
      i32.const 0
      local.get $4
      i32.const 64512
      i32.and
      i32.const 55296
      i32.eq
      select
      if
       local.get $1
       i32.load16_u offset=2
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $2
        i32.const 4
        i32.add
        local.set $2
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $2
      i32.const 3
      i32.add
     end
    end
    local.set $2
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $2
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $2
  call $~lib/string/String.UTF8.encodeUnsafe
  drop
  i32.const 4896
  local.get $2
  i32.store
  i32.const 4900
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.store
  i32.const 1
  i32.const 4896
  i32.const 1
  i32.const 4904
  call $~lib/bindings/wasi_snapshot_preview1/fd_write
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_snapshot_preview1/errnoToString
   i32.const 4944
   i32.const 151
   i32.const 12
   call $~lib/wasi/index/abort
   unreachable
  end
 )
 (func $start:std-wasi/crypto
  (local $0 i32)
  (local $1 i32)
  i32.const 1348
  i32.const 1344
  i32.store
  i32.const 1352
  i32.const 1344
  i32.store
  i32.const 1344
  global.set $~lib/rt/tcms/fromSpace
  i32.const 12
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tcms/__new
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
  i32.const 8
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $1
  i32.const 0
  i32.store8
  local.get $1
  i32.const 0
  i32.store8 offset=7
  local.get $1
  i32.const 0
  i32.store8 offset=1
  local.get $1
  i32.const 0
  i32.store8 offset=2
  local.get $1
  i32.const 0
  i32.store8 offset=6
  local.get $1
  i32.const 0
  i32.store8 offset=5
  local.get $1
  i32.const 0
  i32.store8 offset=3
  local.get $1
  i32.const 0
  i32.store8 offset=4
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
  global.set $std-wasi/crypto/buf
  global.get $std-wasi/crypto/buf
  call $~lib/crypto/crypto.getRandomValues
  global.get $std-wasi/crypto/buf
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<u8>
  call $~lib/string/String#concat
  call $~lib/process/writeString
  i32.const 5008
  call $~lib/process/writeString
  global.get $std-wasi/crypto/buf
  call $~lib/crypto/crypto.getRandomValues
  global.get $std-wasi/crypto/buf
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<u8>
  call $~lib/string/String#concat
  call $~lib/process/writeString
  i32.const 5008
  call $~lib/process/writeString
  global.get $std-wasi/crypto/buf
  call $~lib/crypto/crypto.getRandomValues
  global.get $std-wasi/crypto/buf
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<u8>
  call $~lib/string/String#concat
  call $~lib/process/writeString
  i32.const 5008
  call $~lib/process/writeString
 )
 (func $~start
  global.get $~started
  if
   return
  end
  i32.const 1
  global.set $~started
  call $start:std-wasi/crypto
 )
)
