(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32)))
 (type $3 (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 35676))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\06\00\00\00a\00b\00c")
 (data $2 (i32.const 1100) ",")
 (data $2.1 (i32.const 1112) "\02\00\00\00\16\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data $3 (i32.const 1148) "\1c")
 (data $3.1 (i32.const 1160) "\07\00\00\00\08\00\00\00\01")
 (data $4 (i32.const 1184) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $5 (i32.const 1800) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $6 (i32.const 2060) "L")
 (data $6.1 (i32.const 2072) "\02\00\00\008\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00(\00)\00 \00{\00 \00[\00n\00a\00t\00i\00v\00e\00 \00c\00o\00d\00e\00]\00 \00}")
 (data $7 (i32.const 2140) ",")
 (data $7.1 (i32.const 2152) "\02\00\00\00\14\00\00\00s\00i\00g\00n\00a\00t\00u\00r\00e\00s")
 (data $8 (i32.const 2188) ",")
 (data $8.1 (i32.const 2200) "\02\00\00\00\0e\00\00\00t\00e\00s\00t\00i\00n\00g")
 (data $9 (i32.const 2236) ",")
 (data $9.1 (i32.const 2248) "\02\00\00\00\10\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data $10 (i32.const 2284) "\1c")
 (data $10.1 (i32.const 2296) "\02\00\00\00\02\00\00\00C")
 (data $11 (i32.const 2316) "\1c")
 (data $11.1 (i32.const 2328) "\02\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
 (data $12 (i32.const 2348) "\1c")
 (data $12.1 (i32.const 2360) "\02\00\00\00\08\00\00\00b\00o\00o\00l")
 (data $13 (i32.const 2380) "\1c")
 (data $13.1 (i32.const 2392) "\02\00\00\00\04\00\00\00i\008")
 (data $14 (i32.const 2412) "\1c")
 (data $14.1 (i32.const 2424) "\02\00\00\00\04\00\00\00u\008")
 (data $15 (i32.const 2444) "\1c")
 (data $15.1 (i32.const 2456) "\02\00\00\00\06\00\00\00i\001\006")
 (data $16 (i32.const 2476) "\1c")
 (data $16.1 (i32.const 2488) "\02\00\00\00\06\00\00\00u\001\006")
 (data $17 (i32.const 2508) "\1c")
 (data $17.1 (i32.const 2520) "\02\00\00\00\06\00\00\00i\003\002")
 (data $18 (i32.const 2540) "\1c")
 (data $18.1 (i32.const 2552) "\02\00\00\00\06\00\00\00u\003\002")
 (data $19 (i32.const 2572) "\1c")
 (data $19.1 (i32.const 2584) "\02\00\00\00\06\00\00\00f\003\002")
 (data $20 (i32.const 2604) "\1c")
 (data $20.1 (i32.const 2616) "\02\00\00\00\06\00\00\00i\006\004")
 (data $21 (i32.const 2636) "\1c")
 (data $21.1 (i32.const 2648) "\02\00\00\00\06\00\00\00u\006\004")
 (data $22 (i32.const 2668) "\1c")
 (data $22.1 (i32.const 2680) "\02\00\00\00\06\00\00\00f\006\004")
 (data $23 (i32.const 2700) "\1c")
 (data $23.1 (i32.const 2712) "\02\00\00\00\n\00\00\00i\00s\00i\00z\00e")
 (data $24 (i32.const 2732) "\1c")
 (data $24.1 (i32.const 2744) "\02\00\00\00\n\00\00\00u\00s\00i\00z\00e")
 (data $25 (i32.const 2764) "\1c")
 (data $25.1 (i32.const 2776) "\02\00\00\00\08\00\00\00v\00o\00i\00d")
 (data $26 (i32.const 2796) ",")
 (data $26.1 (i32.const 2808) "\02\00\00\00\14\00\00\00s\00o\00m\00e\00 \00v\00a\00l\00u\00e")
 (data $27 (i32.const 2844) "\1c")
 (data $27.1 (i32.const 2856) "\0c\00\00\00\08\00\00\00\02")
 (data $28 (i32.const 2876) "\1c")
 (data $28.1 (i32.const 2888) "\r\00\00\00\08\00\00\00\03")
 (table $0 4 4 funcref)
 (elem $0 (i32.const 1) $start:builtins~anonymous|0 $start:builtins~anonymous|1 $start:builtins~anonymous|2)
 (export "test" (func $start:builtins~anonymous|1))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2908
  i32.lt_s
  if
   i32.const 35696
   i32.const 35744
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   if (result i32)
    local.get $2
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
   else
    i32.const 1
   end
   i32.eqz
   if
    loop $do-loop|0
     local.get $2
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl$2
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u
      local.tee $5
      local.get $1
      i32.load16_u
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl$2
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $start:builtins~anonymous|1
 )
 (func $~start
  call $start:builtins
 )
 (func $start:builtins~anonymous|2 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  unreachable
 )
 (func $start:builtins~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $start:builtins
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2908
  i32.lt_s
  if
   i32.const 35696
   i32.const 35744
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 31
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 2
  global.set $builtins/i
  i32.const -2147483648
  global.set $builtins/i
  i32.const 42
  global.set $builtins/i
  i32.const 2
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 3
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 6
  global.set $builtins/i
  i32.const 3
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i32.const 3
  global.set $builtins/i
  i64.const 63
  global.set $builtins/I
  i64.const 0
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 2
  global.set $builtins/I
  i64.const -9223372036854775808
  global.set $builtins/I
  i64.const 42
  global.set $builtins/I
  i64.const 2
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 3
  global.set $builtins/I
  i64.const 1
  global.set $builtins/I
  i64.const 6
  global.set $builtins/I
  i64.const 3
  global.set $builtins/I
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  i64.const 1
  global.set $builtins/I
  i64.const 3
  global.set $builtins/I
  f32.const nan:0x400000
  global.set $builtins/f
  f32.const inf
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 2
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 4
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 3
  global.set $builtins/f
  f32.const 3
  global.set $builtins/f
  f32.const 2.5
  global.set $builtins/f
  f32.const 1.25
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  f32.const 1.1180340051651
  global.set $builtins/f
  f32.const 1
  global.set $builtins/f
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  f64.const nan:0x8000000000000
  global.set $builtins/F
  f64.const inf
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 2
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 4
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 3
  global.set $builtins/F
  f64.const 3
  global.set $builtins/F
  f64.const 2.5
  global.set $builtins/F
  f64.const 1.25
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  f64.const 1.118033988749895
  global.set $builtins/F
  f64.const 1
  global.set $builtins/F
  i32.const 1
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 0
  global.set $builtins/i
  i32.const 1
  global.set $builtins/i
  f64.const 0
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  f64.const 1.5
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  f64.const 1
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  f64.const 2
  global.set $builtins/F
  f32.const 2
  global.set $builtins/f
  f64.const 2
  global.set $builtins/F
  f32.const 1
  global.set $builtins/f
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  global.get $builtins/i
  i32.store
  i32.const 8
  i32.const 8
  i32.load
  i32.store
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  global.get $builtins/I
  i64.store
  i32.const 8
  i32.const 8
  i64.load
  i64.store
  i32.const 8
  f32.load
  global.set $builtins/f
  i32.const 8
  global.get $builtins/f
  f32.store
  i32.const 8
  i32.const 8
  f32.load
  f32.store
  i32.const 8
  f64.load
  global.set $builtins/F
  i32.const 8
  global.get $builtins/F
  f64.store
  i32.const 8
  i32.const 8
  f64.load
  f64.store
  i32.const 8
  i32.load8_s
  global.set $builtins/i
  i32.const 8
  i32.load16_s
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load8_u
  global.set $builtins/i
  i32.const 8
  i32.load16_u
  global.set $builtins/i
  i32.const 8
  i32.load
  global.set $builtins/i
  i32.const 8
  i32.load
  drop
  i32.const 8
  i64.load8_s
  global.set $builtins/I
  i32.const 8
  i64.load16_s
  global.set $builtins/I
  i32.const 8
  i64.load32_s
  global.set $builtins/I
  i32.const 8
  i64.load
  global.set $builtins/I
  i32.const 8
  i64.load8_u
  drop
  i32.const 8
  i64.load16_u
  drop
  i32.const 8
  i64.load32_u
  drop
  i32.const 8
  i64.load
  drop
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  i64.const 1
  i64.store
  i32.const 1067450368
  global.set $builtins/i
  f32.const 3.5032461608120427e-44
  global.set $builtins/f
  i64.const 4608308318706860032
  global.set $builtins/I
  f64.const 1.24e-322
  global.set $builtins/F
  i32.const 1
  memory.grow
  drop
  i32.const 1
  memory.grow
  drop
  i32.const 10
  global.set $builtins/i
  i64.const 200
  global.set $builtins/I
  f32.const 1.25
  global.set $builtins/f
  f64.const 25
  global.set $builtins/F
  i32.const 1
  i32.const 2
  i32.const 1168
  i32.load
  call_indirect (type $0)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 400
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store
  i32.const 2
  i32.const 3
  i32.const 1168
  i32.load
  call_indirect (type $0)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1120
   i32.const 401
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 1056
  i32.store
  i32.const 1056
  i32.const 1056
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 402
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 1168
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 2080
  i32.store
  i32.const 2080
  i32.const 2080
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 405
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  i32.load8_s
  drop
  i32.const 8
  i32.load8_u
  drop
  i32.const 8
  i32.load16_s
  drop
  i32.const 8
  i32.load16_u
  drop
  i32.const 8
  i32.load
  drop
  i32.const 8
  i64.load8_s
  drop
  i32.const 8
  i64.load8_u
  drop
  i32.const 8
  i64.load16_s
  drop
  i32.const 8
  i64.load16_u
  drop
  i32.const 8
  i64.load32_s
  drop
  i32.const 8
  i64.load32_u
  drop
  i32.const 8
  i64.load
  drop
  i32.const 8
  f32.load
  drop
  i32.const 8
  f64.load
  drop
  i32.const 8
  i32.const 1
  i32.store8
  i32.const 8
  i32.const 1
  i32.store16
  i32.const 8
  i32.const 1
  i32.store
  i32.const 8
  i64.const 1
  i64.store8
  i32.const 8
  i64.const 1
  i64.store16
  i32.const 8
  i64.const 1
  i64.store32
  i32.const 8
  i64.const 1
  i64.store
  i32.const 8
  f32.const 1
  f32.store
  i32.const 8
  f64.const 1
  f64.store
  i32.const 2160
  i32.const 5
  f64.const 0
  f64.const 0
  f64.const 51
  f64.const 52
  f64.const 52
  call $~lib/builtins/trace
  i32.const 2256
  i32.const 2256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 610
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2256
  i32.const 2256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 611
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2304
  i32.const 2304
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 612
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2336
  i32.const 2336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 613
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2368
  i32.const 2368
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 614
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2400
  i32.const 2400
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 615
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2432
  i32.const 2432
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 616
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2464
  i32.const 2464
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 617
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2496
  i32.const 2496
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 618
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2528
  i32.const 2528
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 619
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2560
  i32.const 2560
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 620
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2592
  i32.const 2592
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 621
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2624
  i32.const 2624
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 622
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2656
  i32.const 2656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 623
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2688
  i32.const 2688
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 624
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2720
  i32.const 2720
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 625
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2752
  i32.const 2752
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 626
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2784
  i32.const 2784
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 627
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2336
  i32.const 2336
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 628
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2256
  i32.const 2256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 629
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
