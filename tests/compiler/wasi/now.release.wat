(module
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_f64 (func (result f64)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "wasi_snapshot_preview1" "clock_time_get" (func $~lib/bindings/wasi_snapshot_preview1/clock_time_get (param i32 i64 i32) (result i32)))
 (import "wasi_snapshot_preview1" "fd_write" (func $~lib/bindings/wasi_snapshot_preview1/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_snapshot_preview1" "proc_exit" (func $~lib/bindings/wasi_snapshot_preview1/proc_exit (param i32)))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 20972))
 (memory $0 1)
 (data (i32.const 1052) "<")
 (data (i32.const 1064) "\01\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data (i32.const 1116) ",")
 (data (i32.const 1128) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1164) ",")
 (data (i32.const 1176) "\01\00\00\00\0e\00\00\00S\00U\00C\00C\00E\00S\00S")
 (data (i32.const 1212) "\1c")
 (data (i32.const 1224) "\01\00\00\00\0c\00\00\00T\00O\00O\00B\00I\00G")
 (data (i32.const 1244) "\1c")
 (data (i32.const 1256) "\01\00\00\00\n\00\00\00A\00C\00C\00E\00S")
 (data (i32.const 1276) ",")
 (data (i32.const 1288) "\01\00\00\00\12\00\00\00A\00D\00D\00R\00I\00N\00U\00S\00E")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\18\00\00\00A\00D\00D\00R\00N\00O\00T\00A\00V\00A\00I\00L")
 (data (i32.const 1372) ",")
 (data (i32.const 1384) "\01\00\00\00\16\00\00\00A\00F\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 1420) "\1c")
 (data (i32.const 1432) "\01\00\00\00\n\00\00\00A\00G\00A\00I\00N")
 (data (i32.const 1452) ",")
 (data (i32.const 1464) "\01\00\00\00\0e\00\00\00A\00L\00R\00E\00A\00D\00Y")
 (data (i32.const 1500) "\1c")
 (data (i32.const 1512) "\01\00\00\00\08\00\00\00B\00A\00D\00F")
 (data (i32.const 1532) "\1c")
 (data (i32.const 1544) "\01\00\00\00\0c\00\00\00B\00A\00D\00M\00S\00G")
 (data (i32.const 1564) "\1c")
 (data (i32.const 1576) "\01\00\00\00\08\00\00\00B\00U\00S\00Y")
 (data (i32.const 1596) ",")
 (data (i32.const 1608) "\01\00\00\00\10\00\00\00C\00A\00N\00C\00E\00L\00E\00D")
 (data (i32.const 1644) "\1c")
 (data (i32.const 1656) "\01\00\00\00\n\00\00\00C\00H\00I\00L\00D")
 (data (i32.const 1676) ",")
 (data (i32.const 1688) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00A\00B\00O\00R\00T\00E\00D")
 (data (i32.const 1724) ",")
 (data (i32.const 1736) "\01\00\00\00\16\00\00\00C\00O\00N\00N\00R\00E\00F\00U\00S\00E\00D")
 (data (i32.const 1772) ",")
 (data (i32.const 1784) "\01\00\00\00\12\00\00\00C\00O\00N\00N\00R\00E\00S\00E\00T")
 (data (i32.const 1820) "\1c")
 (data (i32.const 1832) "\01\00\00\00\0c\00\00\00D\00E\00A\00D\00L\00K")
 (data (i32.const 1852) ",")
 (data (i32.const 1864) "\01\00\00\00\16\00\00\00D\00E\00S\00T\00A\00D\00D\00R\00R\00E\00Q")
 (data (i32.const 1900) "\1c")
 (data (i32.const 1912) "\01\00\00\00\06\00\00\00D\00O\00M")
 (data (i32.const 1932) "\1c")
 (data (i32.const 1944) "\01\00\00\00\n\00\00\00D\00Q\00U\00O\00T")
 (data (i32.const 1964) "\1c")
 (data (i32.const 1976) "\01\00\00\00\n\00\00\00E\00X\00I\00S\00T")
 (data (i32.const 1996) "\1c")
 (data (i32.const 2008) "\01\00\00\00\n\00\00\00F\00A\00U\00L\00T")
 (data (i32.const 2028) "\1c")
 (data (i32.const 2040) "\01\00\00\00\08\00\00\00F\00B\00I\00G")
 (data (i32.const 2060) ",")
 (data (i32.const 2072) "\01\00\00\00\16\00\00\00H\00O\00S\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2108) "\1c")
 (data (i32.const 2120) "\01\00\00\00\08\00\00\00I\00D\00R\00M")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2152) "\01\00\00\00\n\00\00\00I\00L\00S\00E\00Q")
 (data (i32.const 2172) ",")
 (data (i32.const 2184) "\01\00\00\00\14\00\00\00I\00N\00P\00R\00O\00G\00R\00E\00S\00S")
 (data (i32.const 2220) "\1c")
 (data (i32.const 2232) "\01\00\00\00\08\00\00\00I\00N\00T\00R")
 (data (i32.const 2252) "\1c")
 (data (i32.const 2264) "\01\00\00\00\n\00\00\00I\00N\00V\00A\00L")
 (data (i32.const 2284) "\1c")
 (data (i32.const 2296) "\01\00\00\00\04\00\00\00I\00O")
 (data (i32.const 2316) "\1c")
 (data (i32.const 2328) "\01\00\00\00\0c\00\00\00I\00S\00C\00O\00N\00N")
 (data (i32.const 2348) "\1c")
 (data (i32.const 2360) "\01\00\00\00\n\00\00\00I\00S\00D\00I\00R")
 (data (i32.const 2380) "\1c")
 (data (i32.const 2392) "\01\00\00\00\08\00\00\00L\00O\00O\00P")
 (data (i32.const 2412) "\1c")
 (data (i32.const 2424) "\01\00\00\00\n\00\00\00M\00F\00I\00L\00E")
 (data (i32.const 2444) "\1c")
 (data (i32.const 2456) "\01\00\00\00\n\00\00\00M\00L\00I\00N\00K")
 (data (i32.const 2476) ",")
 (data (i32.const 2488) "\01\00\00\00\0e\00\00\00M\00S\00G\00S\00I\00Z\00E")
 (data (i32.const 2524) ",")
 (data (i32.const 2536) "\01\00\00\00\10\00\00\00M\00U\00L\00T\00I\00H\00O\00P")
 (data (i32.const 2572) ",")
 (data (i32.const 2584) "\01\00\00\00\16\00\00\00N\00A\00M\00E\00T\00O\00O\00L\00O\00N\00G")
 (data (i32.const 2620) ",")
 (data (i32.const 2632) "\01\00\00\00\0e\00\00\00N\00E\00T\00D\00O\00W\00N")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\10\00\00\00N\00E\00T\00R\00E\00S\00E\00T")
 (data (i32.const 2716) ",")
 (data (i32.const 2728) "\01\00\00\00\14\00\00\00N\00E\00T\00U\00N\00R\00E\00A\00C\00H")
 (data (i32.const 2764) "\1c")
 (data (i32.const 2776) "\01\00\00\00\n\00\00\00N\00F\00I\00L\00E")
 (data (i32.const 2796) "\1c")
 (data (i32.const 2808) "\01\00\00\00\0c\00\00\00N\00O\00B\00U\00F\00S")
 (data (i32.const 2828) "\1c")
 (data (i32.const 2840) "\01\00\00\00\n\00\00\00N\00O\00D\00E\00V")
 (data (i32.const 2860) "\1c")
 (data (i32.const 2872) "\01\00\00\00\n\00\00\00N\00O\00E\00N\00T")
 (data (i32.const 2892) "\1c")
 (data (i32.const 2904) "\01\00\00\00\0c\00\00\00N\00O\00E\00X\00E\00C")
 (data (i32.const 2924) "\1c")
 (data (i32.const 2936) "\01\00\00\00\n\00\00\00N\00O\00L\00C\00K")
 (data (i32.const 2956) "\1c")
 (data (i32.const 2968) "\01\00\00\00\0c\00\00\00N\00O\00L\00I\00N\00K")
 (data (i32.const 2988) "\1c")
 (data (i32.const 3000) "\01\00\00\00\n\00\00\00N\00O\00M\00E\00M")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\n\00\00\00N\00O\00M\00S\00G")
 (data (i32.const 3052) ",")
 (data (i32.const 3064) "\01\00\00\00\14\00\00\00N\00O\00P\00R\00O\00T\00O\00O\00P\00T")
 (data (i32.const 3100) "\1c")
 (data (i32.const 3112) "\01\00\00\00\n\00\00\00N\00O\00S\00P\00C")
 (data (i32.const 3132) "\1c")
 (data (i32.const 3144) "\01\00\00\00\n\00\00\00N\00O\00S\00Y\00S")
 (data (i32.const 3164) ",")
 (data (i32.const 3176) "\01\00\00\00\0e\00\00\00N\00O\00T\00C\00O\00N\00N")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3224) "\01\00\00\00\0c\00\00\00N\00O\00T\00D\00I\00R")
 (data (i32.const 3244) ",")
 (data (i32.const 3256) "\01\00\00\00\10\00\00\00N\00O\00T\00E\00M\00P\00T\00Y")
 (data (i32.const 3292) ",")
 (data (i32.const 3304) "\01\00\00\00\1c\00\00\00N\00O\00T\00R\00E\00C\00O\00V\00E\00R\00A\00B\00L\00E")
 (data (i32.const 3340) ",")
 (data (i32.const 3352) "\01\00\00\00\0e\00\00\00N\00O\00T\00S\00O\00C\00K")
 (data (i32.const 3388) "\1c")
 (data (i32.const 3400) "\01\00\00\00\0c\00\00\00N\00O\00T\00S\00U\00P")
 (data (i32.const 3420) "\1c")
 (data (i32.const 3432) "\01\00\00\00\n\00\00\00N\00O\00T\00T\00Y")
 (data (i32.const 3452) "\1c")
 (data (i32.const 3464) "\01\00\00\00\08\00\00\00N\00X\00I\00O")
 (data (i32.const 3484) ",")
 (data (i32.const 3496) "\01\00\00\00\10\00\00\00O\00V\00E\00R\00F\00L\00O\00W")
 (data (i32.const 3532) ",")
 (data (i32.const 3544) "\01\00\00\00\12\00\00\00O\00W\00N\00E\00R\00D\00E\00A\00D")
 (data (i32.const 3580) "\1c")
 (data (i32.const 3592) "\01\00\00\00\08\00\00\00P\00E\00R\00M")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3624) "\01\00\00\00\08\00\00\00P\00I\00P\00E")
 (data (i32.const 3644) "\1c")
 (data (i32.const 3656) "\01\00\00\00\n\00\00\00P\00R\00O\00T\00O")
 (data (i32.const 3676) ",")
 (data (i32.const 3688) "\01\00\00\00\1c\00\00\00P\00R\00O\00T\00O\00N\00O\00S\00U\00P\00P\00O\00R\00T")
 (data (i32.const 3724) ",")
 (data (i32.const 3736) "\01\00\00\00\12\00\00\00P\00R\00O\00T\00O\00T\00Y\00P\00E")
 (data (i32.const 3772) "\1c")
 (data (i32.const 3784) "\01\00\00\00\n\00\00\00R\00A\00N\00G\00E")
 (data (i32.const 3804) "\1c")
 (data (i32.const 3816) "\01\00\00\00\08\00\00\00R\00O\00F\00S")
 (data (i32.const 3836) "\1c")
 (data (i32.const 3848) "\01\00\00\00\n\00\00\00S\00P\00I\00P\00E")
 (data (i32.const 3868) "\1c")
 (data (i32.const 3880) "\01\00\00\00\08\00\00\00S\00R\00C\00H")
 (data (i32.const 3900) "\1c")
 (data (i32.const 3912) "\01\00\00\00\n\00\00\00S\00T\00A\00L\00E")
 (data (i32.const 3932) ",")
 (data (i32.const 3944) "\01\00\00\00\10\00\00\00T\00I\00M\00E\00D\00O\00U\00T")
 (data (i32.const 3980) "\1c")
 (data (i32.const 3992) "\01\00\00\00\0c\00\00\00T\00X\00T\00B\00S\00Y")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\01\00\00\00\08\00\00\00X\00D\00E\00V")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\14\00\00\00N\00O\00T\00C\00A\00P\00A\00B\00L\00E")
 (data (i32.const 4092) "L\01")
 (data (i32.const 4104) "\03\00\00\004\01\00\00\a0\04\00\00\d0\04\00\00\f0\04\00\00\10\05\00\00@\05\00\00p\05\00\00\a0\05\00\00\c0\05\00\00\f0\05\00\00\10\06\00\000\06\00\00P\06\00\00\80\06\00\00\a0\06\00\00\d0\06\00\00\00\07\00\000\07\00\00P\07\00\00\80\07\00\00\a0\07\00\00\c0\07\00\00\e0\07\00\00\00\08\00\00 \08\00\00P\08\00\00p\08\00\00\90\08\00\00\c0\08\00\00\e0\08\00\00\00\t\00\00 \t\00\00@\t\00\00`\t\00\00\80\t\00\00\a0\t\00\00\c0\t\00\00\f0\t\00\00 \n\00\00P\n\00\00\80\n\00\00\b0\n\00\00\e0\n\00\00\00\0b\00\00 \0b\00\00@\0b\00\00`\0b\00\00\80\0b\00\00\a0\0b\00\00\c0\0b\00\00\e0\0b\00\00\00\0c\00\000\0c\00\00P\0c\00\00p\0c\00\00\a0\0c\00\00\c0\0c\00\00\f0\0c\00\00 \0d\00\00P\0d\00\00p\0d\00\00\90\0d\00\00\b0\0d\00\00\e0\0d\00\00\10\0e\00\000\0e\00\00P\0e\00\00p\0e\00\00\a0\0e\00\00\d0\0e\00\00\f0\0e\00\00\10\0f\00\000\0f\00\00P\0f\00\00p\0f\00\00\a0\0f\00\00\c0\0f\00\00\e0\0f")
 (data (i32.const 4428) ",")
 (data (i32.const 4440) "\01\00\00\00\0e\00\00\00U\00N\00K\00N\00O\00W\00N")
 (data (i32.const 4476) ",")
 (data (i32.const 4488) "\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00d\00a\00t\00e\00.\00t\00s")
 (data (i32.const 4524) "<")
 (data (i32.const 4536) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00p\00e\00r\00f\00o\00r\00m\00a\00n\00c\00e\00.\00t\00s")
 (export "test_date_now" (func $wasi/now/test_date_now))
 (export "test_performance_now" (func $wasi/now/test_performance_now))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~lib/string/String.UTF8.encodeUnsafe@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $2of2
   block $outOfRange
    global.get $~argumentsLength
    i32.const 3
    i32.sub
    br_table $2of2 $2of2 $2of2 $outOfRange
   end
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u
    local.tee $4
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $4
     i32.store8
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $4
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $4
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $4
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
      i32.const 56320
      i32.lt_u
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.and
      local.get $4
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
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
        local.get $4
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
        local.tee $4
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $4
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $4
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $4
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
      local.get $4
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $4
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
      local.get $4
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
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   i32.const 3
   global.set $~argumentsLength
   local.get $0
   local.get $4
   i32.const 19
   call $~lib/string/String.UTF8.encodeUnsafe@varargs
   i32.const 19
   i32.add
  else
   i32.const 19
  end
  local.tee $0
  i32.const 544106784
  i32.store
  local.get $0
  i32.const 4
  i32.add
  local.set $0
  local.get $1
  if
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   i32.const 3
   global.set $~argumentsLength
   local.get $1
   local.get $4
   local.get $0
   call $~lib/string/String.UTF8.encodeUnsafe@varargs
   local.get $0
   i32.add
   local.set $0
  end
  local.get $0
  i32.const 40
  i32.store8
  local.get $2
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $2
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $2
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $2
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $2
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $2
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-loop|0
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
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
   br_if $do-loop|0
  end
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  i32.const 58
  i32.store8
  local.get $3
  i32.const 100000
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 100
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 10
    i32.ge_u
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 10000
    i32.ge_u
    i32.const 3
    i32.add
    local.get $3
    i32.const 1000
    i32.ge_u
    i32.add
   end
  else
   local.get $3
   i32.const 10000000
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 1000000
    i32.ge_u
    i32.const 6
    i32.add
   else
    local.get $3
    i32.const 1000000000
    i32.ge_u
    i32.const 8
    i32.add
    local.get $3
    i32.const 100000000
    i32.ge_u
    i32.add
   end
  end
  local.tee $1
  local.get $0
  i32.const 1
  i32.add
  i32.add
  local.set $0
  loop $do-loop|1
   local.get $0
   i32.const 1
   i32.sub
   local.tee $0
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
   br_if $do-loop|1
  end
  local.get $0
  local.get $1
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
 (func $wasi/now/test_date_now (result i64)
  (local $0 i32)
  i32.const 0
  i64.const 1000000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_errors/errnoToString
   i32.const 4496
   i32.const 47
   i32.const 18
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1024
  i64.load
  i64.const 1000000
  i64.div_u
 )
 (func $wasi/now/test_performance_now (result f64)
  (local $0 i32)
  i32.const 1
  i64.const 1000
  i32.const 1024
  call $~lib/bindings/wasi_snapshot_preview1/clock_time_get
  local.tee $0
  i32.const 65535
  i32.and
  if
   local.get $0
   call $~lib/bindings/wasi_errors/errnoToString
   i32.const 4544
   i32.const 19
   i32.const 18
   call $~lib/wasi/index/abort
   unreachable
  end
  i32.const 1024
  i64.load
  f64.convert_i64_u
  f64.const 1e6
  f64.div
 )
 (func $~start
  nop
 )
 (func $~lib/bindings/wasi_errors/errnoToString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4588
  i32.lt_s
  if
   i32.const 20992
   i32.const 21040
   i32.const 1
   i32.const 1
   call $~lib/wasi/index/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 65535
  i32.and
  i32.const 77
  i32.lt_u
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 4112
   i32.store
   local.get $0
   i32.const 65535
   i32.and
   i32.const 2
   i32.shl
   i32.const 4112
   i32.add
   i32.load
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 4448
 )
)
