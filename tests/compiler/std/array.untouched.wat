(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$d (func (result f64)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$jj (func (param i64) (result i64)))
 (type $FUNCSIG$iff (func (param f32 f32) (result i32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiij (func (param i32 i32 i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 56) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 104) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 160) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r\00")
 (data (i32.const 192) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 208) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 264) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r\00")
 (data (i32.const 304) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 352) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 392) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 416) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\02\03\04\05")
 (data (i32.const 440) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 464) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00")
 (data (i32.const 488) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\00\00")
 (data (i32.const 512) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 536) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 560) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 600) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 640) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 680) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 720) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 760) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 800) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data (i32.const 848) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 864) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 880) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 920) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 960) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1000) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1040) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1080) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1120) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1160) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1200) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1240) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1280) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1320) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1360) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1400) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1440) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1480) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1520) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1560) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1600) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1640) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1680) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1720) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1760) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1800) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05\00\00\00")
 (data (i32.const 1840) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1880) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1920) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1936) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 1976) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2008) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 2032) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2072) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2096) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\05\00\00\00")
 (data (i32.const 2128) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2168) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 2192) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2224) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2264) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2288) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 2320) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2360) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2384) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 2416) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2456) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00")
 (data (i32.const 2480) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\05\00\00\00")
 (data (i32.const 2512) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2552) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 2576) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2608) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2648) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2664) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2704) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2744) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2760) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2800) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2840) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2856) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2896) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2936) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2952) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 2992) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3032) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3048) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 3088) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 3128) "\ac\00\00\00\01\00\00\00\01\00\00\00\ac\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 3320) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 3368) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 3416) "@\00\00\00\01\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 3496) "@\00\00\00\01\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 3576) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3616) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3656) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00")
 (data (i32.const 3696) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 3736) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3752) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3776) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 3800) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 3832) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 3864) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00P\00R\00N\00G\00 \00m\00u\00s\00t\00 \00b\00e\00 \00s\00e\00e\00d\00e\00d\00.\00")
 (data (i32.const 3920) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 3944) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 3968) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 4080) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 4104) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 4128) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 4152) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 4176) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\00\10\00\00\18\10\00\00\00\10\00\000\10\00\00H\10\00\00\d0\00\00\00\00\00\00\00")
 (data (i32.const 4224) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\d0\00\00\00\00\10\00\00\00\10\00\000\10\00\00\18\10\00\00H\10\00\00\00\00\00\00")
 (data (i32.const 4272) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 4296) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01\00")
 (data (i32.const 4320) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e\00")
 (data (i32.const 4344) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 4376) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 4400) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 4440) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff")
 (data (i32.const 4472) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000\00")
 (data (i32.const 4496) "\90\01\00\00\01\00\00\00\00\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 4912) "\10\00\00\00\01\00\00\00\t\00\00\00\10\00\00\00\a0\11\00\00\a0\11\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 4944) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\001\00-\002\00-\003\00")
 (data (i32.const 4976) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 5008) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00-\00")
 (data (i32.const 5032) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 5056) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00_\00_\00")
 (data (i32.const 5080) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 5144) "0\00\00\00\01\00\00\00\00\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f")
 (data (i32.const 5208) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00,\00 \00")
 (data (i32.const 5232) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 5256) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 5280) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5320) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 5352) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 6064) "\10\00\00\00\01\00\00\00\12\00\00\00\10\00\00\00\f8\14\00\00\f8\14\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 6096) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 6288) "\10\00\00\00\01\00\00\00\13\00\00\00\10\00\00\00\e0\17\00\00\e0\17\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 6320) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 6376) "\10\00\00\00\01\00\00\00\t\00\00\00\10\00\00\00\c0\18\00\00\c0\18\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 6408) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 6504) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001\00")
 (data (i32.const 6528) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\d0\00\00\00x\19\00\00\00\00\00\00")
 (data (i32.const 6560) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6608) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 6688) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 6704) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 6728) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 6752) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00")
 (data (i32.const 6784) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\00,\002\00")
 (data (i32.const 6808) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 6840) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\01\ff\00")
 (data (i32.const 6864) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 6896) "\06\00\00\00\01\00\00\00\00\00\00\00\06\00\00\00\01\00\ff\ff\00\00")
 (data (i32.const 6920) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 6960) "\18\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 7000) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 7064) " \00\00\00\01\00\00\00\00\00\00\00 \00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f")
 (data (i32.const 7112) "T\00\00\00\01\00\00\00\01\00\00\00T\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 7216) "\1c\00\00\00\01\00\00\00\00\00\00\00\1c\00\00\00\d0\00\00\00\00\10\00\00\00\10\00\000\10\00\00\18\10\00\00H\10\00\00\00\00\00\00")
 (data (i32.const 7264) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 7312) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002\00")
 (data (i32.const 7336) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004\00")
 (data (i32.const 7360) "\10\00\00\00\01\00\00\00\00\00\00\00\10\00\00\00x\19\00\00\a0\1c\00\00\00\00\00\00\b8\1c\00\00")
 (data (i32.const 7392) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 7424) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 7448) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 7472) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 7504) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\01\02")
 (data (i32.const 7528) "\02\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\03\04")
 (data (i32.const 7552) "\04\00\00\00\01\00\00\00\00\00\00\00\04\00\00\00\01\00\00\00")
 (data (i32.const 7576) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00u\00n\00c\00a\00u\00g\00h\00t\00 \00e\00r\00r\00o\00r\00")
 (data (i32.const 7624) "\1c\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\93\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\04\00\00\00\10\00\00\00\00\00\00\001\00\00\00\02\00\00\003\00\00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\0c\00\00\02\00\00\00\13\0d\00\00\02\00\00\00\93 \00\00\02\00\00\00\10\00\00\00\00\00\00\00\93 \00\00\02\00\00\00\930\00\00\02\00\00\00\93 \00\00\02\00\00\003\00\00\00\02\00\00\00\13\01\00\00\02\00\00\00S\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\930\00\00\02\00\00\003\04\00\00\02\00\00\00S\00\00\00\02\00\00\00\13\05\00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00\93 \00\00\02\00\00\00")
 (table $0 57 funcref)
 (elem (i32.const 0) $null $start:std/array~anonymous|0 $start:std/array~anonymous|1 $start:std/array~anonymous|2 $start:std/array~anonymous|3 $start:std/array~anonymous|4 $start:std/array~anonymous|5 $start:std/array~anonymous|6 $start:std/array~anonymous|7 $start:std/array~anonymous|8 $start:std/array~anonymous|9 $start:std/array~anonymous|10 $start:std/array~anonymous|11 $start:std/array~anonymous|12 $start:std/array~anonymous|13 $start:std/array~anonymous|14 $start:std/array~anonymous|15 $start:std/array~anonymous|16 $start:std/array~anonymous|17 $start:std/array~anonymous|18 $start:std/array~anonymous|19 $start:std/array~anonymous|20 $start:std/array~anonymous|21 $start:std/array~anonymous|22 $start:std/array~anonymous|23 $start:std/array~anonymous|24 $start:std/array~anonymous|25 $start:std/array~anonymous|26 $start:std/array~anonymous|27 $start:std/array~anonymous|28 $start:std/array~anonymous|29 $start:std/array~anonymous|30 $start:std/array~anonymous|31 $start:std/array~anonymous|32 $start:std/array~anonymous|33 $start:std/array~anonymous|34 $start:std/array~anonymous|35 $start:std/array~anonymous|36 $start:std/array~anonymous|37 $start:std/array~anonymous|38 $start:std/array~anonymous|39 $start:std/array~anonymous|40 $start:std/array~anonymous|41 $start:std/array~anonymous|42 $~lib/util/sort/COMPARATOR<f32>~anonymous|0 $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|0 $~lib/util/sort/COMPARATOR<u32>~anonymous|0 $~lib/util/sort/COMPARATOR<i32>~anonymous|1 $start:std/array~anonymous|43 $start:std/array~anonymous|44 $start:std/array~anonymous|45 $start:std/array~anonymous|46 $start:std/array~anonymous|47 $start:std/array~anonymous|48 $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0)
 (global $~lib/error (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $std/array/charset i32 (i32.const 3144))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 7624))
 (global $~lib/heap/__heap_base i32 (i32.const 7852))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/pure/increment (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/removeBlock (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 276
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 278
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else   
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 291
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 9 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 204
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 206
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 227
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 242
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else   
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 259
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 10 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 385
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 395
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else    
    nop
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 407
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 16
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initializeRoot (; 11 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
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
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 0
   i32.const 120
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else   
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
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
   else    
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 337
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else    
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 72
     i32.const 350
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else   
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 14 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  memory.size
  local.set $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $3
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
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
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 364
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.set $4
   local.get $4
   i32.eqz
   if
    i32.const 0
    i32.const 72
    i32.const 477
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 479
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $4
  call $~lib/rt/rtrace/onalloc
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (; 17 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $4
  local.get $4
  local.get $1
  i32.store offset=8
  local.get $4
  i32.const 16
  i32.add
 )
 (func $~lib/rt/tlsf/freeBlock (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/__typeinfo (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     i32.eqz
     br_if $break|1
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $continue|1
    end
    unreachable
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      block $break|3
       loop $continue|3
        local.get $2
        i32.const 17
        i32.ge_u
        i32.eqz
        br_if $break|3
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     block $break|4
      loop $continue|4
       local.get $2
       i32.const 18
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    block $break|5
     loop $continue|5
      local.get $2
      i32.const 19
      i32.ge_u
      i32.eqz
      br_if $break|5
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 21 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 561
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 23 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  local.set $5
  local.get $5
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/error
   if
    return
   end
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   local.set $3
   global.get $~lib/error
   if
    return
   end
   local.get $3
   i32.const 16
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
     global.get $~lib/error
     if
      return
     end
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
   global.get $~lib/error
   if
    return
   end
  end
 )
 (func $~lib/error/Error#constructor (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 176
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 208
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/error/RangeError#constructor (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  call $~lib/error/Error#constructor
  local.set $0
  local.get $0
  local.tee $2
  i32.const 280
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 29 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 320
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $4
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
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
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/array/Array<i32>#constructor (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 16
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32> | null> (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array.isArray<~lib/array/Array<i32>> (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 1
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $std/array/P#constructor (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array.isArray<std/array/P> (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 7
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/array/Array.isArray<~lib/typedarray/Uint8Array> (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array.isArray<i32> (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
 )
 (func $~lib/array/Array.isArray<~lib/string/String> (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  if (result i32)
   local.get $0
   i32.const 0
   i32.ne
  else   
   i32.const 0
  end
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/rt/__allocArray (; 39 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  local.set $5
  local.get $0
  local.get $1
  i32.shl
  local.set $6
  local.get $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  local.set $7
  local.get $5
  local.get $7
  call $~lib/rt/pure/__retain
  i32.store
  local.get $5
  local.get $7
  i32.store offset=4
  local.get $5
  local.get $6
  i32.store offset=8
  local.get $5
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $7
   local.get $3
   local.get $6
   call $~lib/memory/memory.copy
  end
  local.get $5
 )
 (func $~lib/memory/memory.fill (; 40 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/array/Array<u8>#fill (; 41 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $2
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $3
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $3
  local.get $2
  local.get $3
  i32.lt_s
  if
   local.get $4
   local.get $2
   i32.add
   local.get $1
   local.get $3
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u8>#get:length (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#__get (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u8> (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<u8>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<u8>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<u8>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.const 255
    i32.and
    local.get $1
    local.get $3
    call $~lib/array/Array<u8>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u32>#fill (; 46 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $2
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $3
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $3
  block $break|0
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $1
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<u32>#get:length (; 47 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<u32>#__unchecked_get (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<u32>#__get (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__unchecked_get
 )
 (func $std/array/isArraysEqual<u32> (; 50 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<u32>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<u32>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<u32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.get $1
    local.get $3
    call $~lib/array/Array<u32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#get:length (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 52 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $std/array/internalCapacity<i32> (; 53 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 2
  i32.shr_s
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 54 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $4
  local.get $1
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 493
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $5
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $4
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   local.get $4
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $5
    i32.const 3
    i32.and
    local.get $3
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $4
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $5
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 553
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 72
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureSize (; 56 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 0
    i32.const 320
    call $~lib/error/RangeError#constructor
    global.set $~lib/error
    return
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/__realloc
   local.set $6
   global.get $~lib/error
   if
    return
   end
   local.get $6
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    call $~lib/rt/pure/__retain
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#push (; 57 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  call $~lib/array/ensureSize
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 58 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 59 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $~lib/array/Array<i32>#pop (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 816
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.sub
  local.tee $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<i32>#concat (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $2
  i32.const 0
  local.get $1
  i32.load offset=12
  local.get $1
  i32.const 0
  i32.eq
  select
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 320
   call $~lib/error/Error#constructor
   global.set $~lib/error
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 0
   return
  end
  local.get $4
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $5
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $5
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $2
  i32.const 2
  i32.shl
  local.set $8
  local.get $7
  local.get $0
  i32.load offset=4
  local.get $8
  call $~lib/memory/memory.copy
  local.get $7
  local.get $8
  i32.add
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $6
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/array/Array<i32>#copyWithin (; 62 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  local.get $3
  local.tee $6
  local.get $5
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $1
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $8
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $2
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $9
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $5
   local.get $3
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $6
   local.get $5
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
  end
  local.set $10
  local.get $10
  local.get $9
  i32.sub
  local.tee $6
  local.get $5
  local.get $8
  i32.sub
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $11
  local.get $4
  local.get $8
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  local.get $9
  i32.const 2
  i32.shl
  i32.add
  local.get $11
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $std/array/isArraysEqual<i32> (; 63 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<i32>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<i32>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<i32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.get $1
    local.get $3
    call $~lib/array/Array<i32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#unshift (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.set $2
  local.get $0
  local.get $2
  i32.const 2
  call $~lib/array/ensureSize
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<i32>#shift (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 816
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  i32.load
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  local.get $2
  local.get $2
  i32.const 4
  i32.add
  local.get $4
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $2
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.const 0
  i32.store
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $3
 )
 (func $~lib/array/Array<i32>#reverse (; 66 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  if
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $0
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   local.set $3
   block $break|0
    loop $continue|0
     local.get $2
     local.get $3
     i32.lt_u
     i32.eqz
     br_if $break|0
     local.get $2
     i32.load
     local.set $4
     local.get $2
     local.get $3
     i32.load
     i32.store
     local.get $3
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.set $3
     br $continue|0
    end
    unreachable
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<i32>#indexOf (; 67 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#includes (; 68 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#indexOf
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#splice (; 69 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $2
  local.get $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $6
 )
 (func $~lib/array/Array<i32>#__unchecked_set (; 70 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/array/Array<i32>#__set (; 71 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<i32>#__unchecked_set
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
 )
 (func $start:std/array~anonymous|0 (; 72 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#findIndex (; 73 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const -1
 )
 (func $start:std/array~anonymous|1 (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 1
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|2 (; 75 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|3 (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|4 (; 77 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|5 (; 78 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  local.get $0
  i32.const 100
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|6 (; 79 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#every (; 80 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.const 0
    i32.ne
    i32.eqz
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 1
 )
 (func $start:std/array~anonymous|7 (; 81 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.le_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|8 (; 82 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  local.get $0
  i32.const 10
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|9 (; 83 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 10
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|10 (; 84 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  local.get $0
  i32.const 3
  i32.lt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|11 (; 85 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 3
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#some (; 86 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    if
     i32.const 1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 0
 )
 (func $start:std/array~anonymous|12 (; 87 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const -1
  i32.le_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|13 (; 88 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  local.get $0
  i32.const 10
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|14 (; 89 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 10
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|15 (; 90 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  local.get $0
  i32.const 3
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|16 (; 91 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<i32>#forEach (; 92 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    local.tee $4
    local.get $0
    i32.load offset=12
    local.tee $5
    local.get $4
    local.get $5
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$viii)
    global.get $~lib/error
    if
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
 )
 (func $start:std/array~anonymous|17 (; 93 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|18 (; 94 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|19 (; 95 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|20 (; 96 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   block $break|0
    i32.const 0
    local.set $3
    loop $loop|0
     local.get $3
     i32.const 4
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $2
     call $~lib/array/Array<i32>#pop
     local.set $4
     global.get $~lib/error
     if
      return
     end
     local.get $4
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|0
    end
    unreachable
   end
   block $break|1
    i32.const 0
    local.set $3
    loop $loop|1
     local.get $3
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|1
     local.get $2
     i32.const 100
     local.get $3
     i32.add
     call $~lib/array/Array<i32>#push
     local.set $4
     global.get $~lib/error
     if
      return
     end
     local.get $4
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|1
    end
    unreachable
   end
   block $break|2
    i32.const 0
    local.set $3
    loop $loop|2
     local.get $3
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|2
     local.get $2
     call $~lib/array/Array<i32>#pop
     local.set $4
     global.get $~lib/error
     if
      return
     end
     local.get $4
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|2
    end
    unreachable
   end
   block $break|3
    i32.const 0
    local.set $3
    loop $loop|3
     local.get $3
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|3
     local.get $2
     local.get $3
     i32.const 200
     i32.add
     call $~lib/array/Array<i32>#push
     local.set $4
     global.get $~lib/error
     if
      return
     end
     local.get $4
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $loop|3
    end
    unreachable
   end
  end
  local.get $1
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.const 202
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 568
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|21 (; 97 ;) (type $FUNCSIG$fiii) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.convert_i32_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#map<f32> (; 98 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 2
  i32.const 10
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $3
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$fiii)
    local.set $8
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $8
    local.set $8
    local.get $5
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    f32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
 )
 (func $~lib/array/Array<f32>#get:length (; 99 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#__unchecked_get (; 100 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $~lib/array/Array<f32>#__get (; 101 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   f32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__unchecked_get
 )
 (func $start:std/array~anonymous|22 (; 102 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#map<i32> (; 103 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.load offset=4
  local.set $5
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $3
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    local.set $6
    local.get $5
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
 )
 (func $start:std/array~anonymous|23 (; 104 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|24 (; 105 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|25 (; 106 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#filter (; 107 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   i32.load offset=12
   local.set $4
   loop $loop|0
    local.get $2
    local.get $4
    local.tee $5
    local.get $0
    i32.load offset=12
    local.tee $6
    local.get $5
    local.get $6
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $5
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    if
     local.get $3
     local.get $5
     call $~lib/array/Array<i32>#push
     local.set $6
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $6
     drop
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|26 (; 108 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|27 (; 109 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|28 (; 110 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/array/Array<i32>#pop
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  drop
  global.get $std/array/i
  local.get $0
  i32.add
  global.set $std/array/i
  local.get $0
  i32.const 2
  i32.ge_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:std/array~anonymous|29 (; 111 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 112 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   local.get $0
   i32.load offset=12
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|30 (; 113 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|31 (; 114 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 2
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 115 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   local.get $0
   i32.load offset=12
   local.set $5
   loop $loop|0
    local.get $4
    local.get $5
    local.tee $6
    local.get $0
    i32.load offset=12
    local.tee $7
    local.get $6
    local.get $7
    i32.lt_s
    select
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|32 (; 116 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 100
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|33 (; 117 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|34 (; 118 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|35 (; 119 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/array/Array<i32>#pop
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|36 (; 120 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 121 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.set $3
  block $break|0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|37 (; 122 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|38 (; 123 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 2
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 124 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.set $3
  block $break|0
   local.get $0
   i32.load offset=12
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $4
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
 )
 (func $start:std/array~anonymous|39 (; 125 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 100
   i32.gt_s
  end
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|40 (; 126 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|41 (; 127 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:std/array~anonymous|42 (; 128 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/array/Array<i32>#pop
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/math/murmurHash3 (; 129 ;) (type $FUNCSIG$jj) (param $0 i64) (result i64)
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -49064778989728563
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  i64.const -4265267296055464877
  i64.mul
  local.set $0
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
 )
 (func $~lib/math/splitMix32 (; 130 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1831565813
  i32.add
  local.set $0
  local.get $0
  local.get $0
  i32.const 15
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 1
  i32.or
  i32.mul
  local.set $0
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  i32.const 7
  i32.shr_u
  i32.xor
  local.get $0
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  local.set $0
  local.get $0
  local.get $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (; 131 ;) (type $FUNCSIG$vj) (param $0 i64)
  local.get $0
  i64.eqz
  if
   i32.const 0
   i32.const 3104
   i32.const 1020
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/math/random_seeded
  local.get $0
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state0_32
  global.get $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  global.set $~lib/math/random_state1_32
 )
 (func $~lib/util/sort/insertionSort<f32> (; 132 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iff)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       f32.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    f32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<f32> (; 133 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 i32)
  (local $11 f32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   return
  end
  local.get $4
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $8
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$iff)
    local.set $10
    global.get $~lib/error
    if
     return
    end
    local.get $10
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     f32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     f32.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|2
    local.get $7
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    f32.load
    local.set $9
    local.get $0
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    f32.store
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $9
    f32.store
    i32.const 1
    local.set $6
    block $break|3
     loop $continue|3
      local.get $6
      i32.const 1
      i32.shl
      local.get $5
      local.get $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $4
      local.get $7
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $4
      local.set $6
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      f32.load
      local.set $9
      local.get $0
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.set $8
      i32.const 2
      global.set $~lib/argc
      local.get $9
      local.get $8
      local.get $2
      call_indirect (type $FUNCSIG$iff)
      local.set $10
      global.get $~lib/error
      if
       return
      end
      local.get $10
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $5
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $6
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $6
       i32.const 2
       i32.shl
       i32.add
       local.get $9
       f32.store
       local.get $0
       local.get $8
       f32.store
      end
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|4
     end
     unreachable
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|2
   end
   unreachable
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  f32.load offset=4
  local.set $11
  local.get $0
  local.get $0
  f32.load
  f32.store offset=4
  local.get $0
  local.get $11
  f32.store
 )
 (func $~lib/array/Array<f32>#sort (; 134 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   f32.load offset=4
   local.set $4
   local.get $3
   f32.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iff)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    f32.store offset=4
    local.get $3
    local.get $4
    f32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  block $~lib/util/sort/SORT<f32>|inlined.0
   local.get $3
   local.set $8
   local.get $2
   local.set $7
   local.get $1
   local.set $6
   local.get $7
   i32.const 256
   i32.lt_s
   if
    local.get $8
    local.get $7
    local.get $6
    call $~lib/util/sort/insertionSort<f32>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<f32>|inlined.0
    end
   else    
    local.get $8
    local.get $7
    local.get $6
    call $~lib/util/sort/weakHeapSort<f32>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<f32>|inlined.0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f32>~anonymous|0 (; 135 ;) (type $FUNCSIG$iff) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  local.set $2
  local.get $3
  local.get $3
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  local.set $3
  local.get $2
  local.get $3
  i32.gt_s
  local.get $2
  local.get $3
  i32.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f32>|inlined.0 (result i32)
    i32.const 44
    br $~lib/util/sort/COMPARATOR<f32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#sort
 )
 (func $~lib/number/isNaN<f32> (; 137 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 138 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<f32>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<f32>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $0
     local.get $3
     call $~lib/array/Array<f32>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     call $~lib/number/isNaN<f32>
     local.get $1
     local.get $3
     call $~lib/array/Array<f32>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     call $~lib/number/isNaN<f32>
     i32.eq
     if
      br $continue|0
     end
     local.get $0
     local.get $3
     call $~lib/array/Array<f32>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     local.get $1
     local.get $3
     call $~lib/array/Array<f32>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     f32.ne
     if
      i32.const 0
      local.set $5
      local.get $0
      call $~lib/rt/pure/__release
      local.get $1
      call $~lib/rt/pure/__release
      local.get $5
      return
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/sort/insertionSort<f64> (; 139 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       f64.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $4
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 140 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 f64)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   return
  end
  local.get $4
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $8
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    local.set $10
    global.get $~lib/error
    if
     return
    end
    local.get $10
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     f64.store
     local.get $0
     local.get $7
     i32.const 3
     i32.shl
     i32.add
     local.get $9
     f64.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|2
    local.get $7
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    f64.load
    local.set $9
    local.get $0
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.store
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    local.get $9
    f64.store
    i32.const 1
    local.set $6
    block $break|3
     loop $continue|3
      local.get $6
      i32.const 1
      i32.shl
      local.get $5
      local.get $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $4
      local.get $7
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $4
      local.set $6
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      f64.load
      local.set $9
      local.get $0
      local.get $6
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $8
      i32.const 2
      global.set $~lib/argc
      local.get $9
      local.get $8
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      local.set $10
      global.get $~lib/error
      if
       return
      end
      local.get $10
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $5
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $6
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $6
       i32.const 3
       i32.shl
       i32.add
       local.get $9
       f64.store
       local.get $0
       local.get $8
       f64.store
      end
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|4
     end
     unreachable
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|2
   end
   unreachable
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $11
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $11
  f64.store
 )
 (func $~lib/array/Array<f64>#sort (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   f64.load offset=8
   local.set $4
   local.get $3
   f64.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$idd)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    f64.store offset=8
    local.get $3
    local.get $4
    f64.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  block $~lib/util/sort/SORT<f64>|inlined.0
   local.get $3
   local.set $8
   local.get $2
   local.set $7
   local.get $1
   local.set $6
   local.get $7
   i32.const 256
   i32.lt_s
   if
    local.get $8
    local.get $7
    local.get $6
    call $~lib/util/sort/insertionSort<f64>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<f64>|inlined.0
    end
   else    
    local.get $8
    local.get $7
    local.get $6
    call $~lib/util/sort/weakHeapSort<f64>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<f64>|inlined.0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 142 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  local.get $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.set $2
  local.get $3
  local.get $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.set $3
  local.get $2
  local.get $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 143 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f64>|inlined.0 (result i32)
    i32.const 45
    br $~lib/util/sort/COMPARATOR<f64>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#sort
 )
 (func $~lib/array/Array<f64>#get:length (; 144 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f64>#__unchecked_get (; 145 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (; 146 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   f64.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__unchecked_get
 )
 (func $~lib/number/isNaN<f64> (; 147 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 148 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<f64>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<f64>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $continue|0
     local.get $0
     local.get $3
     call $~lib/array/Array<f64>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     call $~lib/number/isNaN<f64>
     local.get $1
     local.get $3
     call $~lib/array/Array<f64>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     call $~lib/number/isNaN<f64>
     i32.eq
     if
      br $continue|0
     end
     local.get $0
     local.get $3
     call $~lib/array/Array<f64>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     local.get $1
     local.get $3
     call $~lib/array/Array<f64>#__get
     local.set $4
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $4
     f64.ne
     if
      i32.const 0
      local.set $5
      local.get $0
      call $~lib/rt/pure/__release
      local.get $1
      call $~lib/rt/pure/__release
      local.get $5
      return
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/util/sort/insertionSort<i32> (; 149 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<i32> (; 150 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   return
  end
  local.get $4
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $8
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$iii)
    local.set $10
    global.get $~lib/error
    if
     return
    end
    local.get $10
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $9
   loop $loop|2
    local.get $9
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    i32.load
    local.set $8
    local.get $0
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.store
    i32.const 1
    local.set $7
    block $break|3
     loop $continue|3
      local.get $7
      i32.const 1
      i32.shl
      local.get $5
      local.get $7
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $7
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $6
      local.get $9
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $6
      local.set $7
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $7
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      i32.load
      local.set $8
      local.get $0
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $4
      i32.const 2
      global.set $~lib/argc
      local.get $8
      local.get $4
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $10
      global.get $~lib/error
      if
       return
      end
      local.get $10
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $5
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $7
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $7
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.store
       local.get $0
       local.get $4
       i32.store
      end
      local.get $7
      i32.const 1
      i32.shr_s
      local.set $7
      br $continue|4
     end
     unreachable
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    br $loop|2
   end
   unreachable
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  i32.load offset=4
  local.set $11
  local.get $0
  local.get $0
  i32.load
  i32.store offset=4
  local.get $0
  local.get $11
  i32.store
 )
 (func $~lib/array/Array<i32>#sort (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $3
   i32.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  block $~lib/util/sort/SORT<i32>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/insertionSort<i32>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<i32>|inlined.0
    end
   else    
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/weakHeapSort<i32>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<i32>|inlined.0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|0 (; 152 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 153 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<i32>|inlined.0 (result i32)
    i32.const 46
    br $~lib/util/sort/COMPARATOR<i32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
 )
 (func $~lib/util/sort/insertionSort<u32> (; 154 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<u32> (; 155 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   return
  end
  local.get $4
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $5
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $8
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$iii)
    local.set $10
    global.get $~lib/error
    if
     return
    end
    local.get $10
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     local.get $8
     i32.store
     local.get $0
     local.get $7
     i32.const 2
     i32.shl
     i32.add
     local.get $9
     i32.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $9
   loop $loop|2
    local.get $9
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    i32.load
    local.set $8
    local.get $0
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $0
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.store
    i32.const 1
    local.set $7
    block $break|3
     loop $continue|3
      local.get $7
      i32.const 1
      i32.shl
      local.get $5
      local.get $7
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $7
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $6
      local.get $9
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $6
      local.set $7
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $7
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      i32.load
      local.set $8
      local.get $0
      local.get $7
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.set $4
      i32.const 2
      global.set $~lib/argc
      local.get $8
      local.get $4
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $10
      global.get $~lib/error
      if
       return
      end
      local.get $10
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $5
       local.get $7
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $7
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $7
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.store
       local.get $0
       local.get $4
       i32.store
      end
      local.get $7
      i32.const 1
      i32.shr_s
      local.set $7
      br $continue|4
     end
     unreachable
    end
    local.get $9
    i32.const 1
    i32.sub
    local.set $9
    br $loop|2
   end
   unreachable
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  i32.load offset=4
  local.set $11
  local.get $0
  local.get $0
  i32.load
  i32.store offset=4
  local.get $0
  local.get $11
  i32.store
 )
 (func $~lib/array/Array<u32>#sort (; 156 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $3
   i32.load
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  block $~lib/util/sort/SORT<u32>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/insertionSort<u32>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<u32>|inlined.0
    end
   else    
    local.get $5
    local.get $4
    local.get $6
    call $~lib/util/sort/weakHeapSort<u32>
    global.get $~lib/error
    if
     br $~lib/util/sort/SORT<u32>|inlined.0
    end
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/COMPARATOR<u32>~anonymous|0 (; 157 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<u32>|inlined.0 (result i32)
    i32.const 47
    br $~lib/util/sort/COMPARATOR<u32>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#sort
 )
 (func $~lib/array/Array.create<i32> (; 159 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 320
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.load offset=4
  i32.const 0
  local.get $2
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $2
 )
 (func $std/array/createReverseOrderedArray (; 160 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/array/Array.create<i32>
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $2
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $1
    local.get $0
    i32.const 1
    i32.sub
    local.get $1
    i32.sub
    call $~lib/array/Array<i32>#__set
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.random (; 161 ;) (type $FUNCSIG$d) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  global.get $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 3880
   call $~lib/error/Error#constructor
   global.set $~lib/error
   f64.const 0
   return
  end
  global.get $~lib/math/random_state0_64
  local.set $0
  global.get $~lib/math/random_state1_64
  local.set $1
  local.get $1
  global.set $~lib/math/random_state0_64
  local.get $0
  local.get $0
  i64.const 23
  i64.shl
  i64.xor
  local.set $0
  local.get $0
  local.get $0
  i64.const 17
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.xor
  local.set $0
  local.get $0
  local.get $1
  i64.const 26
  i64.shr_u
  i64.xor
  local.set $0
  local.get $0
  global.set $~lib/math/random_state1_64
  local.get $1
  local.get $0
  i64.add
  i64.const 4503599627370495
  i64.and
  i64.const 4607182418800017408
  i64.or
  local.set $2
  local.get $2
  f64.reinterpret_i64
  f64.const 1
  f64.sub
 )
 (func $std/array/createRandomOrderedArray (; 162 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  local.get $0
  call $~lib/array/Array.create<i32>
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $2
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $1
    call $~lib/math/NativeMath.random
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
    local.get $0
    f64.convert_i32_s
    f64.mul
    i32.trunc_f64_s
    call $~lib/array/Array<i32>#__set
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/util/sort/COMPARATOR<i32>~anonymous|1 (; 163 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<i32>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.get $0
    local.get $2
    call $~lib/array/Array<i32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/array/assertSorted<i32> (; 165 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#sort
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  local.tee $2
  local.get $1
  call $std/array/isSorted<i32>
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/array/assertSortedDefault<i32> (; 166 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  block $~lib/util/sort/COMPARATOR<i32>|inlined.1 (result i32)
   i32.const 48
   br $~lib/util/sort/COMPARATOR<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/array~anonymous|43 (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|44 (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $start:std/array~anonymous|45 (; 169 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $start:std/array~anonymous|46 (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.sub
 )
 (func $~lib/array/Array.create<~lib/array/Array<i32>> (; 171 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 320
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.load offset=4
  i32.const 0
  local.get $2
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $2
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set (; 172 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
   global.get $~lib/error
   if
    return
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__set (; 173 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   i32.const 0
   i32.const 3984
   call $~lib/error/Error#constructor
   global.set $~lib/error
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedNestedArray (; 174 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<~lib/array/Array<i32>>
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $2
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 1
    call $~lib/array/Array.create<i32>
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
    local.set $3
    local.get $3
    i32.const 0
    local.get $0
    i32.const 1
    i32.sub
    local.get $1
    i32.sub
    call $~lib/array/Array<i32>#__set
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $2
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/array/Array<i32>>#__set
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $start:std/array~anonymous|47 (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  i32.sub
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<~lib/array/Array<i32>> (; 176 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#sort (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<~lib/array/Array<i32>>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<~lib/array/Array<i32>>
   global.get $~lib/error
   if
    br $~lib/util/sort/SORT<~lib/array/Array<i32>>|inlined.0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#get:length (; 178 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get (; 179 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__get (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 3984
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/array/Array<i32>> (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<~lib/array/Array<i32>>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/array/Array<i32>>#__get
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<~lib/array/Array<i32>> (; 182 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#sort
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  local.tee $2
  local.get $1
  call $std/array/isSorted<~lib/array/Array<i32>>
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array.create<std/array/Proxy<i32>> (; 183 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 320
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 2
  i32.const 14
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.load offset=4
  i32.const 0
  local.get $2
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $2
 )
 (func $std/array/Proxy<i32>#constructor (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_set (; 185 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
   global.get $~lib/error
   if
    return
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__set (; 186 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   i32.const 0
   i32.const 3984
   call $~lib/error/Error#constructor
   global.set $~lib/error
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/array/createReverseOrderedElementsArray (; 187 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/array/Array.create<std/array/Proxy<i32>>
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $2
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $1
    i32.const 0
    local.get $0
    i32.const 1
    i32.sub
    local.get $1
    i32.sub
    call $std/array/Proxy<i32>#constructor
    local.tee $3
    call $~lib/array/Array<std/array/Proxy<i32>>#__set
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $start:std/array~anonymous|48 (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.sub
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<std/array/Proxy<i32>> (; 189 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#sort (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<std/array/Proxy<i32>>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<std/array/Proxy<i32>>
   global.get $~lib/error
   if
    br $~lib/util/sort/SORT<std/array/Proxy<i32>>|inlined.0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#get:length (; 191 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__get (; 193 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 3984
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#__unchecked_get
 )
 (func $std/array/isSorted<std/array/Proxy<i32>> (; 194 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<std/array/Proxy<i32>>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<std/array/Proxy<i32>>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<std/array/Proxy<i32>>#__get
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<std/array/Proxy<i32>> (; 195 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Proxy<i32>>#sort
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  local.tee $2
  local.get $1
  call $std/array/isSorted<std/array/Proxy<i32>>
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String | null> (; 196 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String | null>#sort (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<~lib/string/String | null>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<~lib/string/String | null>
   global.get $~lib/error
   if
    br $~lib/util/sort/SORT<~lib/string/String | null>|inlined.0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#get:length (; 198 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String | null>#__unchecked_get (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String | null>#__get (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String | null> (; 201 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<~lib/string/String | null>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<~lib/string/String | null> (; 202 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#sort
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  local.tee $2
  local.get $1
  call $std/array/isSorted<~lib/string/String | null>
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/string/String#get:length (; 203 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (; 204 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u
     local.get $7
     i32.load16_u
     i32.sub
     local.tee $5
     i32.eqz
    else     
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $continue|0
   end
   unreachable
  end
  local.get $5
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String | null>~anonymous|0 (; 205 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $3
  i32.eqz
  if (result i32)
   local.get $4
   i32.eqz
  else   
   i32.const 0
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const -1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  local.tee $2
  local.get $4
  local.tee $5
  local.get $2
  local.get $5
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/array/assertSorted<~lib/string/String | null>|trampoline (; 206 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<~lib/string/String | null>|inlined.0 (result i32)
    i32.const 55
    br $~lib/util/sort/COMPARATOR<~lib/string/String | null>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/string/String | null>
 )
 (func $~lib/string/String.__eq (; 207 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__ne (; 208 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/array/isArraysEqual<~lib/string/String | null> (; 209 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  i32.eqz
  if
   local.get $0
   call $~lib/array/Array<~lib/string/String | null>#get:length
   local.set $2
   local.get $2
   local.get $1
   call $~lib/array/Array<~lib/string/String | null>#get:length
   i32.ne
   if
    i32.const 0
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
   local.get $0
   local.get $1
   i32.eq
   if
    i32.const 1
    local.set $3
    local.get $0
    call $~lib/rt/pure/__release
    local.get $1
    call $~lib/rt/pure/__release
    local.get $3
    return
   end
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    local.get $1
    local.get $3
    call $~lib/array/Array<~lib/string/String | null>#__get
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.tee $5
    call $~lib/string/String.__ne
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $~lib/array/Array.create<~lib/string/String> (; 210 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 268435452
  i32.gt_u
  if
   i32.const 0
   i32.const 320
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 2
  i32.const 16
  i32.const 0
  call $~lib/rt/__allocArray
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.load offset=4
  i32.const 0
  local.get $2
  i32.load offset=8
  call $~lib/memory/memory.fill
  local.get $2
 )
 (func $~lib/string/String#charAt (; 211 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 2
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#concat (; 212 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 4288
   local.tee $2
   local.get $1
   local.tee $3
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $3
    call $~lib/rt/pure/__release
   end
   local.get $2
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $5
  i32.add
  local.set $6
  local.get $6
  i32.const 0
  i32.eq
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $6
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.get $0
  local.get $4
  call $~lib/memory/memory.copy
  local.get $7
  local.get $4
  i32.add
  local.get $1
  local.get $5
  call $~lib/memory/memory.copy
  local.get $7
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/string/String.__concat (; 213 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 4288
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/array/createRandomString (; 214 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 208
  call $~lib/rt/pure/__retain
  local.set $1
  block $break|0
   i32.const 0
   local.set $2
   loop $loop|0
    local.get $2
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $1
    global.get $std/array/charset
    call $~lib/math/NativeMath.random
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
    global.get $std/array/charset
    call $~lib/string/String#get:length
    f64.convert_i32_s
    f64.mul
    local.set $3
    local.get $3
    f64.floor
    i32.trunc_f64_s
    call $~lib/string/String#charAt
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    call $~lib/string/String.__concat
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.tee $5
    local.tee $6
    local.get $1
    local.tee $7
    i32.ne
    if
     local.get $6
     call $~lib/rt/pure/__retain
     drop
     local.get $7
     call $~lib/rt/pure/__release
    end
    local.get $6
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_set (; 215 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  local.get $3
  i32.load
  local.set $4
  local.get $2
  local.get $4
  i32.ne
  if
   local.get $3
   local.get $2
   call $~lib/rt/pure/__retain
   i32.store
   local.get $4
   call $~lib/rt/pure/__release
   global.get $~lib/error
   if
    return
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<~lib/string/String>#__set (; 216 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  local.get $3
  i32.gt_u
  if
   i32.const 0
   i32.const 3984
   call $~lib/error/Error#constructor
   global.set $~lib/error
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.const 2
  call $~lib/array/ensureSize
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/string/String>#__unchecked_set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.get $3
  i32.ge_s
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/array/createRandomStringArray (; 217 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  local.get $0
  call $~lib/array/Array.create<~lib/string/String>
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $2
  block $break|0
   i32.const 0
   local.set $1
   loop $loop|0
    local.get $1
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $1
    call $~lib/math/NativeMath.random
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
    f64.const 32
    f64.mul
    i32.trunc_f64_s
    call $std/array/createRandomString
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    call $~lib/array/Array<~lib/string/String>#__set
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/util/sort/insertionSort<~lib/string/String> (; 218 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/rt/pure/__retain
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $~lib/rt/pure/__retain
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$iii)
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 2
       i32.shl
       i32.add
       local.get $6
       i32.store
      else       
       local.get $6
       call $~lib/rt/pure/__release
       br $break|1
      end
      local.get $6
      call $~lib/rt/pure/__release
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String>#sort (; 219 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.le_s
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.load offset=4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   i32.load
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 2
   global.set $~lib/argc
   local.get $4
   local.get $5
   local.get $1
   call_indirect (type $FUNCSIG$iii)
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $3
    local.get $5
    i32.store offset=4
    local.get $3
    local.get $4
    i32.store
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   return
  end
  block $~lib/util/sort/SORT<~lib/string/String>|inlined.0
   local.get $3
   local.set $5
   local.get $2
   local.set $4
   local.get $1
   local.set $6
   local.get $5
   local.get $4
   local.get $6
   call $~lib/util/sort/insertionSort<~lib/string/String>
   global.get $~lib/error
   if
    br $~lib/util/sort/SORT<~lib/string/String>|inlined.0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (; 220 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#__unchecked_get (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 222 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 3984
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 224
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__unchecked_get
 )
 (func $std/array/isSorted<~lib/string/String> (; 223 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  block $break|0
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/array/Array<~lib/string/String>#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 2
    global.set $~lib/argc
    local.get $0
    local.get $2
    i32.const 1
    i32.sub
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.tee $4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $5
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $5
    local.tee $5
    local.get $1
    call_indirect (type $FUNCSIG$iii)
    local.set $6
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $6
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     local.set $6
     local.get $0
     call $~lib/rt/pure/__release
     local.get $4
     call $~lib/rt/pure/__release
     local.get $5
     call $~lib/rt/pure/__release
     local.get $6
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $4
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $std/array/assertSorted<~lib/string/String> (; 224 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#sort
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  local.tee $2
  local.get $1
  call $std/array/isSorted<~lib/string/String>
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 830
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/sort/COMPARATOR<~lib/string/String>~anonymous|0 (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.eq
  if (result i32)
   i32.const 1
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
  local.set $4
  local.get $3
  i32.eqz
  if (result i32)
   local.get $4
   i32.eqz
  else   
   i32.const 0
  end
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const -1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 1
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  local.tee $2
  local.get $4
  local.tee $5
  local.get $2
  local.get $5
  i32.lt_s
  select
  call $~lib/util/string/compareImpl
  local.set $2
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $std/array/assertSorted<~lib/string/String>|trampoline (; 226 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<~lib/string/String>|inlined.0 (result i32)
    i32.const 56
    br $~lib/util/sort/COMPARATOR<~lib/string/String>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $std/array/assertSorted<~lib/string/String>
 )
 (func $~lib/string/String#substring (; 227 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $6
  local.get $2
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.set $7
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $8
  local.get $6
  local.tee $4
  local.get $7
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $8
  i32.sub
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   return
  end
  local.get $8
  i32.eqz
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   i32.eq
  else   
   i32.const 0
  end
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $10
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<bool>#join_bool (; 228 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   i32.const 4336
   i32.const 4360
   local.get $4
   i32.load8_u
   select
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 5
  local.set $6
  local.get $6
  local.get $5
  i32.add
  local.get $2
  i32.mul
  local.get $6
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.add
    i32.load8_u
    local.set $10
    i32.const 4
    local.get $10
    i32.const 0
    i32.ne
    i32.eqz
    i32.add
    local.set $6
    local.get $8
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.const 4336
    i32.const 4360
    local.get $10
    select
    local.get $6
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $9
    local.get $6
    i32.add
    local.set $9
    local.get $5
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $5
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.add
  i32.load8_u
  local.set $10
  i32.const 4
  local.get $10
  i32.const 0
  i32.ne
  i32.eqz
  i32.add
  local.set $6
  local.get $8
  local.get $9
  i32.const 1
  i32.shl
  i32.add
  i32.const 4336
  i32.const 4360
  local.get $10
  select
  local.get $6
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $9
  local.get $6
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<bool>#join (; 229 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<bool>#join_bool
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/util/number/decimalCount32 (; 230 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
  else   
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_lut (; 231 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 4928
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    local.get $3
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    local.get $3
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   local.get $3
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store
  else   
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $5
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $5
   i32.store16
  end
 )
 (func $~lib/util/number/itoa32 (; 232 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4488
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $4
  local.get $4
  local.set $6
  local.get $0
  local.set $5
  local.get $2
  local.set $3
  local.get $6
  local.get $5
  local.get $3
  call $~lib/util/number/utoa32_lut
  local.get $1
  if
   local.get $4
   i32.const 45
   i32.store16
  end
  local.get $4
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa<i32> (; 233 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/number/itoa32
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<i32> (; 234 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i32.const 0
  i32.lt_s
  local.set $4
  local.get $4
  if
   i32.const 0
   local.get $2
   i32.sub
   local.set $2
  end
  local.get $2
  call $~lib/util/number/decimalCount32
  local.get $4
  i32.add
  local.set $3
  local.get $0
  local.set $7
  local.get $2
  local.set $6
  local.get $3
  local.set $5
  local.get $7
  local.get $6
  local.get $5
  call $~lib/util/number/utoa32_lut
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i32>#join_int (; 235 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/util/number/itoa<i32>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 11
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 11
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<i32>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<i32>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i32>#join (; 236 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/util/number/utoa32 (; 237 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4488
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $3
  local.get $3
  local.set $5
  local.get $0
  local.set $4
  local.get $1
  local.set $2
  local.get $5
  local.get $4
  local.get $2
  call $~lib/util/number/utoa32_lut
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa<u32> (; 238 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/number/utoa32
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<u32> (; 239 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/util/number/decimalCount32
  local.set $3
  local.get $0
  local.set $6
  local.get $2
  local.set $5
  local.get $3
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $3
 )
 (func $~lib/array/Array<u32>#join_int (; 240 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/util/number/itoa<u32>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 10
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u32>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u32>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u32>#join (; 241 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/number/isFinite<f64> (; 242 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 243 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 244 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 245 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  i32.const 0
  local.get $4
  i32.sub
  local.set $7
  i64.const 1
  local.get $7
  i64.extend_i32_s
  i64.shl
  local.set $8
  local.get $8
  i64.const 1
  i64.sub
  local.set $9
  local.get $3
  local.get $1
  i64.sub
  local.set $10
  local.get $4
  local.set $11
  local.get $3
  local.get $7
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.set $12
  local.get $3
  local.get $9
  i64.and
  local.set $13
  local.get $12
  call $~lib/util/number/decimalCount32
  local.set $14
  local.get $6
  local.set $15
  i32.const 6392
  i32.load offset=4
  local.set $16
  block $break|0
   loop $continue|0
    local.get $14
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block $break|1
     block $case10|1
      block $case9|1
       block $case8|1
        block $case7|1
         block $case6|1
          block $case5|1
           block $case4|1
            block $case3|1
             block $case2|1
              block $case1|1
               block $case0|1
                local.get $14
                local.set $18
                local.get $18
                i32.const 10
                i32.eq
                br_if $case0|1
                local.get $18
                i32.const 9
                i32.eq
                br_if $case1|1
                local.get $18
                i32.const 8
                i32.eq
                br_if $case2|1
                local.get $18
                i32.const 7
                i32.eq
                br_if $case3|1
                local.get $18
                i32.const 6
                i32.eq
                br_if $case4|1
                local.get $18
                i32.const 5
                i32.eq
                br_if $case5|1
                local.get $18
                i32.const 4
                i32.eq
                br_if $case6|1
                local.get $18
                i32.const 3
                i32.eq
                br_if $case7|1
                local.get $18
                i32.const 2
                i32.eq
                br_if $case8|1
                local.get $18
                i32.const 1
                i32.eq
                br_if $case9|1
                br $case10|1
               end
               local.get $12
               i32.const 1000000000
               i32.div_u
               local.set $17
               local.get $12
               i32.const 1000000000
               i32.rem_u
               local.set $12
               br $break|1
              end
              local.get $12
              i32.const 100000000
              i32.div_u
              local.set $17
              local.get $12
              i32.const 100000000
              i32.rem_u
              local.set $12
              br $break|1
             end
             local.get $12
             i32.const 10000000
             i32.div_u
             local.set $17
             local.get $12
             i32.const 10000000
             i32.rem_u
             local.set $12
             br $break|1
            end
            local.get $12
            i32.const 1000000
            i32.div_u
            local.set $17
            local.get $12
            i32.const 1000000
            i32.rem_u
            local.set $12
            br $break|1
           end
           local.get $12
           i32.const 100000
           i32.div_u
           local.set $17
           local.get $12
           i32.const 100000
           i32.rem_u
           local.set $12
           br $break|1
          end
          local.get $12
          i32.const 10000
          i32.div_u
          local.set $17
          local.get $12
          i32.const 10000
          i32.rem_u
          local.set $12
          br $break|1
         end
         local.get $12
         i32.const 1000
         i32.div_u
         local.set $17
         local.get $12
         i32.const 1000
         i32.rem_u
         local.set $12
         br $break|1
        end
        local.get $12
        i32.const 100
        i32.div_u
        local.set $17
        local.get $12
        i32.const 100
        i32.rem_u
        local.set $12
        br $break|1
       end
       local.get $12
       i32.const 10
       i32.div_u
       local.set $17
       local.get $12
       i32.const 10
       i32.rem_u
       local.set $12
       br $break|1
      end
      local.get $12
      local.set $17
      i32.const 0
      local.set $12
      br $break|1
     end
     i32.const 0
     local.set $17
     br $break|1
    end
    local.get $17
    local.get $15
    i32.or
    if
     local.get $0
     local.get $15
     local.tee $18
     i32.const 1
     i32.add
     local.set $15
     local.get $18
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     local.get $17
     i32.const 65535
     i32.and
     i32.add
     i32.store16
    end
    local.get $14
    i32.const 1
    i32.sub
    local.set $14
    local.get $12
    i64.extend_i32_u
    local.get $7
    i64.extend_i32_s
    i64.shl
    local.get $13
    i64.add
    local.set $19
    local.get $19
    local.get $5
    i64.le_u
    if
     global.get $~lib/util/number/_K
     local.get $14
     i32.add
     global.set $~lib/util/number/_K
     local.get $0
     local.set $24
     local.get $15
     local.set $18
     local.get $5
     local.set $23
     local.get $19
     local.set $22
     local.get $16
     local.get $14
     i32.const 2
     i32.shl
     i32.add
     i64.load32_u
     local.get $7
     i64.extend_i32_s
     i64.shl
     local.set $21
     local.get $10
     local.set $20
     local.get $24
     local.get $18
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.set $25
     local.get $25
     i32.load16_u
     local.set $26
     block $break|2
      loop $continue|2
       local.get $22
       local.get $20
       i64.lt_u
       if (result i32)
        local.get $23
        local.get $22
        i64.sub
        local.get $21
        i64.ge_u
       else        
        i32.const 0
       end
       if (result i32)
        local.get $22
        local.get $21
        i64.add
        local.get $20
        i64.lt_u
        if (result i32)
         i32.const 1
        else         
         local.get $20
         local.get $22
         i64.sub
         local.get $22
         local.get $21
         i64.add
         local.get $20
         i64.sub
         i64.gt_u
        end
       else        
        i32.const 0
       end
       i32.eqz
       br_if $break|2
       local.get $26
       i32.const 1
       i32.sub
       local.set $26
       local.get $22
       local.get $21
       i64.add
       local.set $22
       br $continue|2
      end
      unreachable
     end
     local.get $25
     local.get $26
     i32.store16
     local.get $15
     return
    end
    br $continue|0
   end
   unreachable
  end
  loop $continue|3
   local.get $13
   i64.const 10
   i64.mul
   local.set $13
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $13
   local.get $7
   i64.extend_i32_s
   i64.shr_u
   local.set $19
   local.get $19
   local.get $15
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $0
    local.get $15
    local.tee $17
    i32.const 1
    i32.add
    local.set $15
    local.get $17
    i32.const 1
    i32.shl
    i32.add
    i32.const 48
    local.get $19
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.add
    i32.store16
   end
   local.get $13
   local.get $9
   i64.and
   local.set $13
   local.get $14
   i32.const 1
   i32.sub
   local.set $14
   local.get $13
   local.get $5
   i64.lt_u
   if
    global.get $~lib/util/number/_K
    local.get $14
    i32.add
    global.set $~lib/util/number/_K
    local.get $10
    local.get $16
    i32.const 0
    local.get $14
    i32.sub
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    i64.mul
    local.set $10
    local.get $0
    local.set $24
    local.get $15
    local.set $18
    local.get $5
    local.set $23
    local.get $13
    local.set $22
    local.get $8
    local.set $21
    local.get $10
    local.set $20
    local.get $24
    local.get $18
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.set $17
    local.get $17
    i32.load16_u
    local.set $26
    block $break|4
     loop $continue|4
      local.get $22
      local.get $20
      i64.lt_u
      if (result i32)
       local.get $23
       local.get $22
       i64.sub
       local.get $21
       i64.ge_u
      else       
       i32.const 0
      end
      if (result i32)
       local.get $22
       local.get $21
       i64.add
       local.get $20
       i64.lt_u
       if (result i32)
        i32.const 1
       else        
        local.get $20
        local.get $22
        i64.sub
        local.get $22
        local.get $21
        i64.add
        local.get $20
        i64.sub
        i64.gt_u
       end
      else       
       i32.const 0
      end
      i32.eqz
      br_if $break|4
      local.get $26
      i32.const 1
      i32.sub
      local.set $26
      local.get $22
      local.get $21
      i64.add
      local.set $22
      br $continue|4
     end
     unreachable
    end
    local.get $17
    local.get $26
    i32.store16
    local.get $15
    return
   end
   br $continue|3
  end
  unreachable
 )
 (func $~lib/util/number/prettify (; 246 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
   i32.add
   i32.const 46
   i32.const 48
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.set $3
  local.get $1
  local.get $3
  i32.le_s
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else   
   i32.const 0
  end
  if
   block $break|0
    local.get $1
    local.set $4
    loop $loop|0
     local.get $4
     local.get $3
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $loop|0
    end
    unreachable
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   i32.const 46
   i32.const 48
   i32.const 16
   i32.shl
   i32.or
   i32.store
   local.get $3
   i32.const 2
   i32.add
   return
  else   
   local.get $3
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $3
    i32.const 21
    i32.le_s
   else    
    i32.const 0
   end
   if
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.set $4
    local.get $4
    i32.const 2
    i32.add
    local.get $4
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    return
   else    
    i32.const -6
    local.get $3
    i32.lt_s
    if (result i32)
     local.get $3
     i32.const 0
     i32.le_s
    else     
     i32.const 0
    end
    if
     i32.const 2
     local.get $3
     i32.sub
     local.set $4
     local.get $0
     local.get $4
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 48
     i32.const 46
     i32.const 16
     i32.shl
     i32.or
     i32.store
     block $break|1
      i32.const 2
      local.set $5
      loop $loop|1
       local.get $5
       local.get $4
       i32.lt_s
       i32.eqz
       br_if $break|1
       local.get $0
       local.get $5
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $loop|1
      end
      unreachable
     end
     local.get $1
     local.get $4
     i32.add
     return
    else     
     local.get $1
     i32.const 1
     i32.eq
     if
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.set $4
      local.get $3
      i32.const 1
      i32.sub
      local.set $5
      local.get $5
      i32.const 0
      i32.lt_s
      local.set $6
      local.get $6
      if
       i32.const 0
       local.get $5
       i32.sub
       local.set $5
      end
      local.get $5
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.set $7
      local.get $4
      local.set $10
      local.get $5
      local.set $9
      local.get $7
      local.set $8
      local.get $10
      local.get $9
      local.get $8
      call $~lib/util/number/utoa32_lut
      local.get $4
      i32.const 45
      i32.const 43
      local.get $6
      select
      i32.store16
      local.get $7
      local.set $1
      local.get $1
      i32.const 2
      i32.add
      return
     else      
      local.get $1
      i32.const 1
      i32.shl
      local.set $7
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $7
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $7
      i32.add
      i32.const 101
      i32.store16 offset=2
      local.get $1
      local.get $0
      local.get $7
      i32.add
      i32.const 4
      i32.add
      local.set $9
      local.get $3
      i32.const 1
      i32.sub
      local.set $8
      local.get $8
      i32.const 0
      i32.lt_s
      local.set $6
      local.get $6
      if
       i32.const 0
       local.get $8
       i32.sub
       local.set $8
      end
      local.get $8
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.set $4
      local.get $9
      local.set $11
      local.get $8
      local.set $5
      local.get $4
      local.set $10
      local.get $11
      local.get $5
      local.get $10
      call $~lib/util/number/utoa32_lut
      local.get $9
      i32.const 45
      i32.const 43
      local.get $6
      select
      i32.store16
      local.get $4
      i32.add
      local.set $1
      local.get $1
      i32.const 2
      i32.add
      return
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/dtoa_core (; 247 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i64)
  (local $26 i32)
  (local $27 i64)
  (local $28 i32)
  local.get $1
  f64.const 0
  f64.lt
  local.set $2
  local.get $2
  if
   local.get $1
   f64.neg
   local.set $1
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $1
  local.set $5
  local.get $0
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i64.reinterpret_f64
  local.set $6
  local.get $6
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $7
  local.get $6
  i64.const 4503599627370495
  i64.and
  local.set $8
  local.get $7
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.const 52
  i64.shl
  local.get $8
  i64.add
  local.set $9
  local.get $7
  i32.const 1
  local.get $7
  i32.const 0
  i32.ne
  select
  i32.const 1023
  i32.const 52
  i32.add
  i32.sub
  local.set $7
  local.get $9
  local.set $11
  local.get $7
  local.set $10
  local.get $11
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.set $12
  local.get $10
  i32.const 1
  i32.sub
  local.set $13
  local.get $12
  i64.clz
  i32.wrap_i64
  local.set $14
  local.get $12
  local.get $14
  i64.extend_i32_s
  i64.shl
  local.set $12
  local.get $13
  local.get $14
  i32.sub
  local.set $13
  i32.const 1
  local.get $11
  i64.const 4503599627370496
  i64.eq
  i32.add
  local.set $15
  local.get $12
  global.set $~lib/util/number/_frc_plus
  local.get $11
  local.get $15
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $10
  local.get $15
  i32.sub
  local.get $13
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $13
  global.set $~lib/util/number/_exp
  global.get $~lib/util/number/_exp
  local.set $10
  i32.const -61
  local.get $10
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.set $16
  local.get $16
  i32.trunc_f64_s
  local.set $15
  local.get $15
  local.get $15
  f64.convert_i32_s
  local.get $16
  f64.ne
  i32.add
  local.set $15
  local.get $15
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.set $14
  i32.const 348
  local.get $14
  i32.const 3
  i32.shl
  i32.sub
  global.set $~lib/util/number/_K
  i32.const 6080
  local.get $14
  call $~lib/array/Array<u64>#__unchecked_get
  global.set $~lib/util/number/_frc_pow
  i32.const 6304
  local.get $14
  call $~lib/array/Array<i16>#__unchecked_get
  global.set $~lib/util/number/_exp_pow
  local.get $9
  i64.clz
  i32.wrap_i64
  local.set $14
  local.get $9
  local.get $14
  i64.extend_i32_s
  i64.shl
  local.set $9
  local.get $7
  local.get $14
  i32.sub
  local.set $7
  global.get $~lib/util/number/_frc_pow
  local.set $12
  global.get $~lib/util/number/_exp_pow
  local.set $15
  local.get $9
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $19
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $18
  local.get $19
  i64.mul
  local.set $22
  local.get $20
  local.get $19
  i64.mul
  local.get $22
  i64.const 32
  i64.shr_u
  i64.add
  local.set $23
  local.get $18
  local.get $21
  i64.mul
  local.get $23
  i64.const 4294967295
  i64.and
  i64.add
  local.set $24
  local.get $24
  i64.const 2147483647
  i64.add
  local.set $24
  local.get $23
  i64.const 32
  i64.shr_u
  local.set $23
  local.get $24
  i64.const 32
  i64.shr_u
  local.set $24
  local.get $20
  local.get $21
  i64.mul
  local.get $23
  i64.add
  local.get $24
  i64.add
  local.set $24
  local.get $7
  local.set $10
  local.get $15
  local.set $13
  local.get $10
  local.get $13
  i32.add
  i32.const 64
  i32.add
  local.set $10
  global.get $~lib/util/number/_frc_plus
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $23
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $22
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $23
  local.get $22
  i64.mul
  local.set $19
  local.get $21
  local.get $22
  i64.mul
  local.get $19
  i64.const 32
  i64.shr_u
  i64.add
  local.set $18
  local.get $23
  local.get $20
  i64.mul
  local.get $18
  i64.const 4294967295
  i64.and
  i64.add
  local.set $25
  local.get $25
  i64.const 2147483647
  i64.add
  local.set $25
  local.get $18
  i64.const 32
  i64.shr_u
  local.set $18
  local.get $25
  i64.const 32
  i64.shr_u
  local.set $25
  local.get $21
  local.get $20
  i64.mul
  local.get $18
  i64.add
  local.get $25
  i64.add
  i64.const 1
  i64.sub
  local.set $25
  global.get $~lib/util/number/_exp
  local.set $26
  local.get $15
  local.set $13
  local.get $26
  local.get $13
  i32.add
  i32.const 64
  i32.add
  local.set $26
  global.get $~lib/util/number/_frc_minus
  local.set $17
  local.get $12
  local.set $11
  local.get $17
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $11
  i64.const 4294967295
  i64.and
  local.set $19
  local.get $17
  i64.const 32
  i64.shr_u
  local.set $20
  local.get $11
  i64.const 32
  i64.shr_u
  local.set $21
  local.get $18
  local.get $19
  i64.mul
  local.set $22
  local.get $20
  local.get $19
  i64.mul
  local.get $22
  i64.const 32
  i64.shr_u
  i64.add
  local.set $23
  local.get $18
  local.get $21
  i64.mul
  local.get $23
  i64.const 4294967295
  i64.and
  i64.add
  local.set $27
  local.get $27
  i64.const 2147483647
  i64.add
  local.set $27
  local.get $23
  i64.const 32
  i64.shr_u
  local.set $23
  local.get $27
  i64.const 32
  i64.shr_u
  local.set $27
  local.get $20
  local.get $21
  i64.mul
  local.get $23
  i64.add
  local.get $27
  i64.add
  i64.const 1
  i64.add
  local.set $27
  local.get $25
  local.get $27
  i64.sub
  local.set $23
  local.get $4
  local.get $24
  local.get $10
  local.get $25
  local.get $26
  local.get $23
  local.get $3
  call $~lib/util/number/genDigits
  local.set $28
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $28
  local.get $2
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.set $28
  local.get $28
  local.get $2
  i32.add
 )
 (func $~lib/util/number/dtoa (; 248 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 5248
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/number/isNaN<f64>
   if
    i32.const 5272
    call $~lib/rt/pure/__retain
    return
   end
   i32.const 5296
   i32.const 5336
   local.get $0
   f64.const 0
   f64.lt
   select
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 28
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $2
  local.get $2
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $3
  local.get $3
  i32.const 28
  i32.eq
  if
   local.get $2
   call $~lib/rt/pure/__retain
   return
  end
  local.get $2
  i32.const 0
  local.get $3
  call $~lib/string/String#substring
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  local.set $4
  local.get $2
  call $~lib/rt/tlsf/__free
  local.get $4
 )
 (func $~lib/util/number/dtoa_stream (; 249 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  f64.const 0
  f64.eq
  if
   local.get $0
   i32.const 48
   i32.store16
   local.get $0
   i32.const 46
   i32.store16 offset=2
   local.get $0
   i32.const 48
   i32.store16 offset=4
   i32.const 3
   return
  end
  local.get $2
  call $~lib/number/isFinite<f64>
  i32.eqz
  if
   local.get $2
   call $~lib/number/isNaN<f64>
   if
    local.get $0
    i32.const 78
    i32.store16
    local.get $0
    i32.const 97
    i32.store16 offset=2
    local.get $0
    i32.const 78
    i32.store16 offset=4
    i32.const 3
    return
   else    
    local.get $2
    f64.const 0
    f64.lt
    local.set $3
    i32.const 8
    local.get $3
    i32.add
    local.set $4
    local.get $0
    i32.const 5296
    i32.const 5336
    local.get $3
    select
    local.get $4
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $4
    return
   end
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/util/number/dtoa_core
 )
 (func $~lib/array/Array<f64>#join_flt (; 250 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   f64.load
   call $~lib/util/number/dtoa
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 28
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 28
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/dtoa_stream
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  f64.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/dtoa_stream
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<f64>#join (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#join_flt
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join_str (; 252 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $3
   local.get $2
   i32.const 1
   i32.add
   local.set $8
   loop $loop|0
    local.get $3
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $9
    local.get $7
    local.tee $10
    i32.ne
    if
     local.get $9
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $9
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $6
     local.get $7
     call $~lib/string/String#get:length
     i32.add
     local.set $6
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  local.set $11
  local.get $6
  local.get $5
  local.get $2
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $8
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $8
  call $~lib/rt/pure/__retain
  local.set $12
  block $break|1
   i32.const 0
   local.set $8
   loop $loop|1
    local.get $8
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $4
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $10
    local.get $7
    local.tee $3
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     drop
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $10
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $7
     call $~lib/string/String#get:length
     local.set $10
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $10
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $10
     i32.add
     local.set $11
    end
    local.get $5
    if
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $5
     i32.add
     local.set $11
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $loop|1
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $9
  local.get $7
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  local.set $7
  local.get $7
  i32.const 0
  i32.ne
  if
   local.get $12
   local.get $11
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   local.get $7
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $12
  local.set $9
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/string/String>#join (; 253 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#join_str
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $std/array/Ref#constructor (; 254 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 20
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
 )
 (func $~lib/array/Array<std/array/Ref | null>#join_ref (; 255 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   i32.const 6576
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 15
  local.get $5
  i32.add
  local.get $2
  i32.mul
  i32.const 15
  i32.add
  local.set $6
  local.get $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 0
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $10
    local.get $9
    local.tee $11
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     drop
     local.get $11
     call $~lib/rt/pure/__release
    end
    local.get $10
    local.set $9
    local.get $9
    if
     local.get $7
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     i32.const 6576
     i32.const 15
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     i32.const 15
     i32.add
     local.set $8
    end
    local.get $5
    if
     local.get $7
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $8
     local.get $5
     i32.add
     local.set $8
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  if
   local.get $7
   local.get $8
   i32.const 1
   i32.shl
   i32.add
   i32.const 6576
   i32.const 15
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $8
   i32.const 15
   i32.add
   local.set $8
  end
  local.get $6
  local.get $8
  i32.gt_s
  if
   local.get $7
   i32.const 0
   local.get $8
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $7
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<std/array/Ref | null>#join (; 256 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<std/array/Ref | null>#join_ref
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i32>#toString (; 257 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<i32>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/util/number/itoa<i8> (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/itoa32
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<i8> (; 259 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.lt_s
  local.set $4
  local.get $4
  if
   i32.const 0
   local.get $2
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/util/number/decimalCount32
  local.get $4
  i32.add
  local.set $3
  local.get $0
  local.set $7
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.set $6
  local.get $3
  local.set $5
  local.get $7
  local.get $6
  local.get $5
  call $~lib/util/number/utoa32_lut
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i8>#join_int (; 260 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load8_s
   call $~lib/util/number/itoa<i8>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 11
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 11
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<i8>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<i8>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i8>#join (; 261 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i8>#toString (; 262 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<i8>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/util/number/itoa<u16> (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/util/number/utoa32
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<u16> (; 264 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.const 65535
  i32.and
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i32.const 65535
  i32.and
  call $~lib/util/number/decimalCount32
  local.set $3
  local.get $0
  local.set $6
  local.get $2
  i32.const 65535
  i32.and
  local.set $5
  local.get $3
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $3
 )
 (func $~lib/array/Array<u16>#join_int (; 265 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load16_u
   call $~lib/util/number/itoa<u16>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 10
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u16>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u16>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u16>#join (; 266 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<u16>#toString (; 267 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<u16>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/util/number/decimalCount64 (; 268 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  if
   local.get $0
   i64.const 1000000000000
   i64.lt_u
   if
    i32.const 11
    i32.const 12
    local.get $0
    i64.const 100000000000
    i64.lt_u
    select
    return
   else    
    i32.const 14
    i32.const 15
    local.get $0
    i64.const 100000000000000
    i64.lt_u
    select
    local.set $1
    i32.const 13
    local.get $1
    local.get $0
    i64.const 10000000000000
    i64.lt_u
    select
    return
   end
   unreachable
  else   
   local.get $0
   i64.const 100000000000000000
   i64.lt_u
   if
    i32.const 16
    i32.const 17
    local.get $0
    i64.const 10000000000000000
    i64.lt_u
    select
    return
   else    
    i32.const 19
    i32.const 20
    local.get $0
    i64.const -8446744073709551616
    i64.lt_u
    select
    local.set $1
    i32.const 18
    local.get $1
    local.get $0
    i64.const 1000000000000000000
    i64.lt_u
    select
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa64_lut (; 269 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  i32.const 4928
  i32.load offset=4
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i64.const 100000000
    i64.ge_u
    i32.eqz
    br_if $break|0
    local.get $1
    i64.const 100000000
    i64.div_u
    local.set $4
    local.get $1
    local.get $4
    i64.const 100000000
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 10000
    i32.div_u
    local.set $6
    local.get $5
    i32.const 10000
    i32.rem_u
    local.set $7
    local.get $6
    i32.const 100
    i32.div_u
    local.set $8
    local.get $6
    i32.const 100
    i32.rem_u
    local.set $9
    local.get $7
    i32.const 100
    i32.div_u
    local.set $10
    local.get $7
    i32.const 100
    i32.rem_u
    local.set $11
    local.get $3
    local.get $10
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    local.get $3
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $12
    local.get $13
    i64.const 32
    i64.shl
    i64.or
    i64.store
    local.get $3
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $12
    local.get $3
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $13
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $12
    local.get $13
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $continue|0
   end
   unreachable
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/utoa64 (; 270 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  i64.eqz
  if
   i32.const 4488
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $2
   local.get $2
   call $~lib/util/number/decimalCount32
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $4
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $4
   local.set $1
   local.get $1
   local.set $6
   local.get $2
   local.set $5
   local.get $3
   local.set $4
   local.get $6
   local.get $5
   local.get $4
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $2
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $2
   local.set $1
   local.get $1
   local.set $5
   local.get $0
   local.set $7
   local.get $3
   local.set $4
   local.get $5
   local.get $7
   local.get $4
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa<u64> (; 271 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/number/utoa64
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<u64> (; 272 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i64.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   i32.wrap_i64
   local.set $4
   local.get $4
   call $~lib/util/number/decimalCount32
   local.set $3
   local.get $0
   local.set $7
   local.get $4
   local.set $6
   local.get $3
   local.set $5
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_lut
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.set $3
   local.get $0
   local.set $6
   local.get $2
   local.set $8
   local.get $3
   local.set $5
   local.get $6
   local.get $8
   local.get $5
   call $~lib/util/number/utoa64_lut
  end
  local.get $3
 )
 (func $~lib/array/Array<u64>#join_int (; 273 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i64.load
   call $~lib/util/number/itoa<u64>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 20
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 20
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u64>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u64>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u64>#join (; 274 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u64>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<u64>#toString (; 275 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<u64>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/util/number/itoa64 (; 276 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  i64.eqz
  if
   i32.const 4488
   call $~lib/rt/pure/__retain
   return
  end
  local.get $0
  i64.const 0
  i64.lt_s
  local.set $1
  local.get $1
  if
   i64.const 0
   local.get $0
   i64.sub
   local.set $0
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $3
   local.get $3
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $5
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $5
   local.set $2
   local.get $2
   local.set $7
   local.get $3
   local.set $6
   local.get $4
   local.set $5
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_lut
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $2
   local.get $2
   local.set $6
   local.get $0
   local.set $8
   local.get $4
   local.set $5
   local.get $6
   local.get $8
   local.get $5
   call $~lib/util/number/utoa64_lut
  end
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa<i64> (; 277 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/util/number/itoa64
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<i64> (; 278 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i64.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i64.const 0
  i64.lt_s
  local.set $4
  local.get $4
  if
   i64.const 0
   local.get $2
   i64.sub
   local.set $2
  end
  local.get $2
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   i32.wrap_i64
   local.set $5
   local.get $5
   call $~lib/util/number/decimalCount32
   local.get $4
   i32.add
   local.set $3
   local.get $0
   local.set $8
   local.get $5
   local.set $7
   local.get $3
   local.set $6
   local.get $8
   local.get $7
   local.get $6
   call $~lib/util/number/utoa32_lut
  else   
   local.get $2
   call $~lib/util/number/decimalCount64
   local.get $4
   i32.add
   local.set $3
   local.get $0
   local.set $7
   local.get $2
   local.set $9
   local.get $3
   local.set $6
   local.get $7
   local.get $9
   local.get $6
   call $~lib/util/number/utoa64_lut
  end
  local.get $4
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/array/Array<i64>#join_int (; 279 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i64.load
   call $~lib/util/number/itoa<i64>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 21
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 21
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<i64>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<i64>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<i64>#join (; 280 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<i64>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<i64>#toString (; 281 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<i64>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String | null>#join_str (; 282 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  i32.const 0
  local.set $6
  i32.const 0
  local.set $7
  block $break|0
   i32.const 0
   local.set $3
   local.get $2
   i32.const 1
   i32.add
   local.set $8
   loop $loop|0
    local.get $3
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $9
    local.get $7
    local.tee $10
    i32.ne
    if
     local.get $9
     call $~lib/rt/pure/__retain
     drop
     local.get $10
     call $~lib/rt/pure/__release
    end
    local.get $9
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $6
     local.get $7
     call $~lib/string/String#get:length
     i32.add
     local.set $6
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  i32.const 0
  local.set $11
  local.get $6
  local.get $5
  local.get $2
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $8
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $8
  call $~lib/rt/pure/__retain
  local.set $12
  block $break|1
   i32.const 0
   local.set $8
   loop $loop|1
    local.get $8
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $4
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $10
    local.get $7
    local.tee $3
    i32.ne
    if
     local.get $10
     call $~lib/rt/pure/__retain
     drop
     local.get $3
     call $~lib/rt/pure/__release
    end
    local.get $10
    local.set $7
    local.get $7
    i32.const 0
    i32.ne
    if
     local.get $7
     call $~lib/string/String#get:length
     local.set $10
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $7
     local.get $10
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $10
     i32.add
     local.set $11
    end
    local.get $5
    if
     local.get $12
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $5
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $11
     local.get $5
     i32.add
     local.set $11
    end
    local.get $8
    i32.const 1
    i32.add
    local.set $8
    br $loop|1
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $9
  local.get $7
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  local.set $7
  local.get $7
  i32.const 0
  i32.ne
  if
   local.get $12
   local.get $11
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   local.get $7
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $12
  local.set $9
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/array/Array<~lib/string/String | null>#join (; 283 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String | null>#join_str
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String | null>#toString (; 284 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<~lib/string/String | null>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/string/String>#toString (; 285 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<~lib/string/String>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join_arr (; 286 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 208
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<i32>#join
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
   else    
    i32.const 208
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<i32>#join
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $8
     local.tee $8
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $10
  local.get $7
  local.tee $3
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<i32>#join
   local.set $10
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $10
   local.tee $10
   call $~lib/string/String.__concat
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#join (; 287 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<i32>>#join_arr
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#toString (; 288 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<~lib/array/Array<i32>>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/util/number/itoa<u8> (; 289 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 255
  i32.and
  call $~lib/util/number/utoa32
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
  return
 )
 (func $~lib/util/number/itoa_stream<u8> (; 290 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $0
  local.get $2
  i32.const 255
  i32.and
  i32.eqz
  if
   local.get $0
   i32.const 48
   i32.store16
   i32.const 1
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  i32.const 255
  i32.and
  call $~lib/util/number/decimalCount32
  local.set $3
  local.get $0
  local.set $6
  local.get $2
  i32.const 255
  i32.and
  local.set $5
  local.get $3
  local.set $4
  local.get $6
  local.get $5
  local.get $4
  call $~lib/util/number/utoa32_lut
  local.get $3
 )
 (func $~lib/array/Array<u8>#join_int (; 291 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $2
  i32.eqz
  if
   local.get $4
   i32.load8_u
   call $~lib/util/number/itoa<u8>
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $5
   return
  end
  local.get $1
  call $~lib/string/String#get:length
  local.set $6
  i32.const 10
  local.get $6
  i32.add
  local.get $2
  i32.mul
  i32.const 10
  i32.add
  local.set $7
  local.get $7
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $8
  i32.const 0
  local.set $9
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.get $3
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.set $10
    local.get $9
    local.get $8
    local.get $9
    local.get $10
    call $~lib/util/number/itoa_stream<u8>
    i32.add
    local.set $9
    local.get $6
    if
     local.get $8
     local.get $9
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $6
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $9
     local.get $6
     i32.add
     local.set $9
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 0
  i32.shl
  i32.add
  i32.load8_u
  local.set $10
  local.get $9
  local.get $8
  local.get $9
  local.get $10
  call $~lib/util/number/itoa_stream<u8>
  i32.add
  local.set $9
  local.get $7
  local.get $9
  i32.gt_s
  if
   local.get $8
   i32.const 0
   local.get $9
   call $~lib/string/String#substring
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  local.get $8
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<u8>#join (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<u8>#join_int
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join_arr (; 293 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 208
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<u8>#join
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
   else    
    i32.const 208
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<u8>#join
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $8
     local.tee $8
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $10
  local.get $7
  local.tee $3
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<u8>#join
   local.set $10
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $10
   local.tee $10
   call $~lib/string/String.__concat
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#join (; 294 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u8>>#join_arr
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#toString (; 295 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<~lib/array/Array<u8>>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join_arr (; 296 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 208
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<u32>#join
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
   else    
    i32.const 208
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<u32>#join
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $8
     local.tee $8
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $10
  local.get $7
  local.tee $3
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<u32>#join
   local.set $10
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $10
   local.tee $10
   call $~lib/string/String.__concat
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#join (; 297 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<u32>>#join_arr
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr (; 298 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.sub
  local.set $2
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 208
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 208
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/string/String#get:length
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  i32.const 0
  local.set $7
  local.get $2
  i32.eqz
  if
   local.get $6
   i32.load
   local.tee $3
   local.get $7
   local.tee $8
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $8
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $7
   local.get $7
   if (result i32)
    local.get $7
    local.get $1
    call $~lib/array/Array<~lib/array/Array<u32>>#join
    local.set $3
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $3
   else    
    i32.const 208
    call $~lib/rt/pure/__retain
   end
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $6
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $8
    local.get $7
    local.tee $9
    i32.ne
    if
     local.get $8
     call $~lib/rt/pure/__retain
     drop
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $8
    local.set $7
    local.get $7
    if
     local.get $4
     local.get $7
     local.get $1
     call $~lib/array/Array<~lib/array/Array<u32>>#join
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $8
     local.tee $8
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $10
     local.get $4
     local.tee $11
     i32.ne
     if
      local.get $10
      call $~lib/rt/pure/__retain
      drop
      local.get $11
      call $~lib/rt/pure/__release
     end
     local.get $10
     local.set $4
     local.get $8
     call $~lib/rt/pure/__release
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $5
    if
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $9
     local.tee $9
     local.tee $11
     local.get $4
     local.tee $8
     i32.ne
     if
      local.get $11
      call $~lib/rt/pure/__retain
      drop
      local.get $8
      call $~lib/rt/pure/__release
     end
     local.get $11
     local.set $4
     local.get $9
     call $~lib/rt/pure/__release
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
  local.get $6
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $10
  local.get $7
  local.tee $3
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $10
  local.set $7
  local.get $7
  if
   local.get $4
   local.get $7
   local.get $1
   call $~lib/array/Array<~lib/array/Array<u32>>#join
   local.set $10
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $10
   local.tee $10
   call $~lib/string/String.__concat
   local.set $3
   global.get $~lib/error
   if
    i32.const 0
    return
   end
   local.get $3
   local.tee $3
   local.tee $8
   local.get $4
   local.tee $9
   i32.ne
   if
    local.get $8
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $8
   local.set $4
   local.get $10
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join (; 299 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join_arr
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString (; 300 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4392
  call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#join
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $1
 )
 (func $start:std/array (; 301 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (local $52 i32)
  (local $53 i32)
  (local $54 f32)
  (local $55 i32)
  (local $56 i32)
  (local $57 i32)
  block $uncaughtError
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#constructor
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   global.set $std/array/arr
   i32.const 0
   call $~lib/array/Array.isArray<~lib/array/Array<i32> | null>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 35
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array.isArray<~lib/array/Array<i32>>
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 36
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $std/array/P#constructor
   local.tee $0
   call $~lib/array/Array.isArray<std/array/P>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 37
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Uint8Array#constructor
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.tee $1
   call $~lib/array/Array.isArray<~lib/typedarray/Uint8Array>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 38
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   call $~lib/array/Array.isArray<i32>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 39
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 408
   call $~lib/array/Array.isArray<~lib/string/String>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 40
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 0
   i32.const 8
   i32.const 432
   call $~lib/rt/__allocArray
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $1
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/pure/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 8
   i32.const 456
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   i32.const 0
   call $std/array/isArraysEqual<u8>
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 48
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 0
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/pure/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 8
   i32.const 480
   call $~lib/rt/__allocArray
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $4
   i32.const 0
   call $std/array/isArraysEqual<u8>
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 51
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/pure/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 8
   i32.const 504
   call $~lib/rt/__allocArray
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.const 0
   call $std/array/isArraysEqual<u8>
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 54
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/pure/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 8
   i32.const 528
   call $~lib/rt/__allocArray
   local.set $6
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $6
   call $~lib/rt/pure/__retain
   local.tee $6
   i32.const 0
   call $std/array/isArraysEqual<u8>
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 57
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<u8>#fill
   call $~lib/rt/pure/__release
   local.get $1
   i32.const 5
   i32.const 0
   i32.const 8
   i32.const 552
   call $~lib/rt/__allocArray
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   call $~lib/rt/pure/__retain
   local.tee $7
   i32.const 0
   call $std/array/isArraysEqual<u8>
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 60
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 576
   call $~lib/rt/__allocArray
   local.set $6
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $6
   call $~lib/rt/pure/__retain
   local.tee $6
   call $~lib/rt/pure/__retain
   local.set $7
   local.get $7
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 616
   call $~lib/rt/__allocArray
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $4
   i32.const 0
   call $std/array/isArraysEqual<u32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 67
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 0
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 656
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   i32.const 0
   call $std/array/isArraysEqual<u32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 70
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 696
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.const 0
   call $std/array/isArraysEqual<u32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 73
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 2
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 736
   call $~lib/rt/__allocArray
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.const 0
   call $std/array/isArraysEqual<u32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 76
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/array/Array<u32>#fill
   call $~lib/rt/pure/__release
   local.get $7
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 776
   call $~lib/rt/__allocArray
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.const 0
   call $std/array/isArraysEqual<u32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 79
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 85
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 86
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 42
   call $~lib/array/Array<i32>#push
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   drop
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 90
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 91
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 92
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   local.set $2
   local.get $2
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 96
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 97
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 98
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   call $~lib/array/Array<i32>#push
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 102
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 103
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 104
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 44
   call $~lib/array/Array<i32>#push
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 108
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 109
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 110
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 111
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 45
   call $~lib/array/Array<i32>#push
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 115
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 116
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 117
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 118
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 119
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#constructor
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   local.set $2
   global.get $std/array/arr
   local.get $2
   call $~lib/array/Array<i32>#concat
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.set $0
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 128
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 129
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 130
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 864
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   call $~lib/array/Array<i32>#concat
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 133
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 135
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 136
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 137
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 46
   call $~lib/array/Array<i32>#push
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   drop
   local.get $2
   i32.const 47
   call $~lib/array/Array<i32>#push
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   drop
   global.get $std/array/arr
   local.get $2
   call $~lib/array/Array<i32>#concat
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.set $5
   local.get $0
   call $~lib/rt/pure/__release
   local.get $5
   local.set $0
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 144
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 145
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 146
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 147
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 148
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 149
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 3
   call $~lib/array/Array<i32>#__get
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 46
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 150
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 4
   call $~lib/array/Array<i32>#__get
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 47
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 151
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/array/Array<i32>#pop
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   drop
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 154
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#concat
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   local.set $6
   local.get $0
   call $~lib/rt/pure/__release
   local.get $6
   local.set $0
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 157
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $6
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $6
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 158
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 880
   call $~lib/rt/__allocArray
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/rt/pure/__retain
   local.set $6
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 161
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   global.get $std/array/arr
   call $~lib/array/Array<i32>#concat
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.set $7
   local.get $0
   call $~lib/rt/pure/__release
   local.get $7
   local.set $0
   local.get $0
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 163
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 164
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   i32.const 0
   local.set $6
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 896
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   local.tee $4
   local.get $6
   local.tee $5
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $4
   local.set $6
   local.get $6
   i32.const 0
   i32.const 3
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $4
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 936
   call $~lib/rt/__allocArray
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 172
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 976
   call $~lib/rt/__allocArray
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   call $~lib/rt/pure/__retain
   local.tee $2
   local.tee $1
   local.get $6
   local.tee $5
   i32.ne
   if
    local.get $1
    call $~lib/rt/pure/__retain
    drop
    local.get $5
    call $~lib/rt/pure/__release
   end
   local.get $1
   local.set $6
   local.get $6
   i32.const 1
   i32.const 3
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $1
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1016
   call $~lib/rt/__allocArray
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   call $~lib/rt/pure/__retain
   local.tee $7
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 174
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1056
   call $~lib/rt/__allocArray
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   call $~lib/rt/pure/__retain
   local.tee $8
   local.tee $5
   local.get $6
   local.tee $9
   i32.ne
   if
    local.get $5
    call $~lib/rt/pure/__retain
    drop
    local.get $9
    call $~lib/rt/pure/__release
   end
   local.get $5
   local.set $6
   local.get $6
   i32.const 1
   i32.const 2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $5
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1096
   call $~lib/rt/__allocArray
   local.set $10
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   call $~lib/rt/pure/__retain
   local.tee $10
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 176
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1136
   call $~lib/rt/__allocArray
   local.set $11
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $11
   call $~lib/rt/pure/__retain
   local.tee $11
   local.tee $9
   local.get $6
   local.tee $12
   i32.ne
   if
    local.get $9
    call $~lib/rt/pure/__retain
    drop
    local.get $12
    call $~lib/rt/pure/__release
   end
   local.get $9
   local.set $6
   local.get $6
   i32.const 2
   i32.const 2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $9
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1176
   call $~lib/rt/__allocArray
   local.set $13
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $13
   call $~lib/rt/pure/__retain
   local.tee $13
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $12
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 178
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1216
   call $~lib/rt/__allocArray
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   call $~lib/rt/pure/__retain
   local.tee $14
   local.tee $12
   local.get $6
   local.tee $15
   i32.ne
   if
    local.get $12
    call $~lib/rt/pure/__retain
    drop
    local.get $15
    call $~lib/rt/pure/__release
   end
   local.get $12
   local.set $6
   local.get $6
   i32.const 0
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.tee $12
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1256
   call $~lib/rt/__allocArray
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   call $~lib/rt/pure/__retain
   local.tee $16
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 180
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1296
   call $~lib/rt/__allocArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__retain
   local.tee $17
   local.tee $15
   local.get $6
   local.tee $18
   i32.ne
   if
    local.get $15
    call $~lib/rt/pure/__retain
    drop
    local.get $18
    call $~lib/rt/pure/__release
   end
   local.get $15
   local.set $6
   local.get $6
   i32.const 1
   i32.const 3
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.tee $15
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1336
   call $~lib/rt/__allocArray
   local.set $19
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $19
   call $~lib/rt/pure/__retain
   local.tee $19
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $18
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $18
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 182
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1376
   call $~lib/rt/__allocArray
   local.set $20
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $20
   call $~lib/rt/pure/__retain
   local.tee $20
   local.tee $18
   local.get $6
   local.tee $21
   i32.ne
   if
    local.get $18
    call $~lib/rt/pure/__retain
    drop
    local.get $21
    call $~lib/rt/pure/__release
   end
   local.get $18
   local.set $6
   local.get $6
   i32.const 1
   i32.const 2
   i32.const 4
   call $~lib/array/Array<i32>#copyWithin
   local.tee $18
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1416
   call $~lib/rt/__allocArray
   local.set $22
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $22
   call $~lib/rt/pure/__retain
   local.tee $22
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $21
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $21
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 184
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1456
   call $~lib/rt/__allocArray
   local.set $23
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $23
   call $~lib/rt/pure/__retain
   local.tee $23
   local.tee $21
   local.get $6
   local.tee $24
   i32.ne
   if
    local.get $21
    call $~lib/rt/pure/__retain
    drop
    local.get $24
    call $~lib/rt/pure/__release
   end
   local.get $21
   local.set $6
   local.get $6
   i32.const 0
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $21
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1496
   call $~lib/rt/__allocArray
   local.set $25
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $25
   call $~lib/rt/pure/__retain
   local.tee $25
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $24
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $24
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 186
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1536
   call $~lib/rt/__allocArray
   local.set $26
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $26
   call $~lib/rt/pure/__retain
   local.tee $26
   local.tee $24
   local.get $6
   local.tee $27
   i32.ne
   if
    local.get $24
    call $~lib/rt/pure/__retain
    drop
    local.get $27
    call $~lib/rt/pure/__release
   end
   local.get $24
   local.set $6
   local.get $6
   i32.const 0
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.tee $24
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1576
   call $~lib/rt/__allocArray
   local.set $28
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $28
   call $~lib/rt/pure/__retain
   local.tee $28
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $27
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $27
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 188
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1616
   call $~lib/rt/__allocArray
   local.set $29
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $29
   call $~lib/rt/pure/__retain
   local.tee $29
   local.tee $27
   local.get $6
   local.tee $30
   i32.ne
   if
    local.get $27
    call $~lib/rt/pure/__retain
    drop
    local.get $30
    call $~lib/rt/pure/__release
   end
   local.get $27
   local.set $6
   local.get $6
   i32.const -4
   i32.const -3
   i32.const -2
   call $~lib/array/Array<i32>#copyWithin
   local.tee $27
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1656
   call $~lib/rt/__allocArray
   local.set $31
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $31
   call $~lib/rt/pure/__retain
   local.tee $31
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $30
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $30
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 190
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1696
   call $~lib/rt/__allocArray
   local.set $32
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $32
   call $~lib/rt/pure/__retain
   local.tee $32
   local.tee $30
   local.get $6
   local.tee $33
   i32.ne
   if
    local.get $30
    call $~lib/rt/pure/__retain
    drop
    local.get $33
    call $~lib/rt/pure/__release
   end
   local.get $30
   local.set $6
   local.get $6
   i32.const -4
   i32.const -3
   i32.const -1
   call $~lib/array/Array<i32>#copyWithin
   local.tee $30
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1736
   call $~lib/rt/__allocArray
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   call $~lib/rt/pure/__retain
   local.tee $34
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $33
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $33
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 192
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1776
   call $~lib/rt/__allocArray
   local.set $35
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $35
   call $~lib/rt/pure/__retain
   local.tee $35
   local.tee $33
   local.get $6
   local.tee $36
   i32.ne
   if
    local.get $33
    call $~lib/rt/pure/__retain
    drop
    local.get $36
    call $~lib/rt/pure/__release
   end
   local.get $33
   local.set $6
   local.get $6
   i32.const -4
   i32.const -3
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#copyWithin
   local.tee $33
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1816
   call $~lib/rt/__allocArray
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   call $~lib/rt/pure/__retain
   local.tee $37
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $36
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $36
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 194
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $16
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   local.get $19
   call $~lib/rt/pure/__release
   local.get $20
   call $~lib/rt/pure/__release
   local.get $18
   call $~lib/rt/pure/__release
   local.get $22
   call $~lib/rt/pure/__release
   local.get $23
   call $~lib/rt/pure/__release
   local.get $21
   call $~lib/rt/pure/__release
   local.get $25
   call $~lib/rt/pure/__release
   local.get $26
   call $~lib/rt/pure/__release
   local.get $24
   call $~lib/rt/pure/__release
   local.get $28
   call $~lib/rt/pure/__release
   local.get $29
   call $~lib/rt/pure/__release
   local.get $27
   call $~lib/rt/pure/__release
   local.get $31
   call $~lib/rt/pure/__release
   local.get $32
   call $~lib/rt/pure/__release
   local.get $30
   call $~lib/rt/pure/__release
   local.get $34
   call $~lib/rt/pure/__release
   local.get $35
   call $~lib/rt/pure/__release
   local.get $33
   call $~lib/rt/pure/__release
   local.get $37
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   i32.const 42
   call $~lib/array/Array<i32>#unshift
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 202
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 203
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 204
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 205
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 206
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 207
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 41
   call $~lib/array/Array<i32>#unshift
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 211
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 212
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 41
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 213
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 214
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 215
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 216
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 4
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 217
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#shift
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   global.set $std/array/i
   global.get $std/array/i
   i32.const 41
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 226
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 227
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 228
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 229
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 230
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 231
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 232
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   global.set $std/array/i
   global.get $std/array/i
   i32.const 45
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 236
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 237
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 238
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 239
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 240
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 241
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#reverse
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 249
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 250
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 251
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 43
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 252
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#__get
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 253
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   call $~lib/array/Array<i32>#push
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   drop
   global.get $std/array/arr
   i32.const 44
   call $~lib/array/Array<i32>#push
   local.set $37
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $37
   drop
   global.get $std/array/arr
   i32.const 44
   i32.const 0
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 263
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 42
   i32.const 0
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 266
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 45
   i32.const 0
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 269
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 100
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 272
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const -100
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 275
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const -2
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 278
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const -4
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 281
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 0
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 284
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 1
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 287
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 2
   call $~lib/array/Array<i32>#indexOf
   global.set $std/array/i
   global.get $std/array/i
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 290
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 44
   i32.const 0
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 297
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 42
   i32.const 0
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 300
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 45
   i32.const 0
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 303
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 100
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 306
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const -100
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 309
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const -2
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 312
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const -4
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 315
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 0
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 318
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 1
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 321
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 43
   i32.const 2
   call $~lib/array/Array<i32>#includes
   local.set $37
   local.get $37
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 324
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $33
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $33
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 328
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $std/array/internalCapacity<i32>
   i32.const 5
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 329
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $33
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $33
   i32.const 44
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 330
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#__get
   local.set $33
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $33
   i32.const 42
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 331
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1856
   call $~lib/rt/__allocArray
   local.set $33
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $33
   call $~lib/rt/pure/__retain
   local.tee $33
   call $~lib/rt/pure/__retain
   local.set $37
   local.get $37
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.set $35
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $35
   local.tee $35
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1896
   call $~lib/rt/__allocArray
   local.set $30
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $30
   call $~lib/rt/pure/__retain
   local.tee $30
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 338
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 1936
   call $~lib/rt/__allocArray
   local.set $32
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $32
   call $~lib/rt/pure/__retain
   local.tee $32
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 339
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 1952
   call $~lib/rt/__allocArray
   local.set $31
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $31
   call $~lib/rt/pure/__retain
   local.tee $31
   local.tee $36
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $36
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $36
   local.set $37
   local.get $37
   i32.const 2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.set $36
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $36
   local.tee $36
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 1992
   call $~lib/rt/__allocArray
   local.set $27
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $27
   call $~lib/rt/pure/__retain
   local.tee $27
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 342
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 2024
   call $~lib/rt/__allocArray
   local.set $29
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $29
   call $~lib/rt/pure/__retain
   local.tee $29
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 343
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2048
   call $~lib/rt/__allocArray
   local.set $28
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $28
   call $~lib/rt/pure/__retain
   local.tee $28
   local.tee $6
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $6
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $6
   local.set $37
   local.get $37
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#splice
   local.set $6
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $6
   local.tee $6
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 2088
   call $~lib/rt/__allocArray
   local.set $24
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $24
   call $~lib/rt/pure/__retain
   local.tee $24
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 346
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 2112
   call $~lib/rt/__allocArray
   local.set $26
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $26
   call $~lib/rt/pure/__retain
   local.tee $26
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 347
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2144
   call $~lib/rt/__allocArray
   local.set $25
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $25
   call $~lib/rt/pure/__retain
   local.tee $25
   local.tee $3
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $3
   local.set $37
   local.get $37
   i32.const 0
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   local.tee $3
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 2184
   call $~lib/rt/__allocArray
   local.set $21
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $21
   call $~lib/rt/pure/__retain
   local.tee $21
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 350
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 2208
   call $~lib/rt/__allocArray
   local.set $23
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $23
   call $~lib/rt/pure/__retain
   local.tee $23
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 351
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2240
   call $~lib/rt/__allocArray
   local.set $22
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $22
   call $~lib/rt/pure/__retain
   local.tee $22
   local.tee $4
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $4
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $4
   local.set $37
   local.get $37
   i32.const -1
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   local.tee $4
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 2280
   call $~lib/rt/__allocArray
   local.set $18
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $18
   call $~lib/rt/pure/__retain
   local.tee $18
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 354
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 2304
   call $~lib/rt/__allocArray
   local.set $20
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $20
   call $~lib/rt/pure/__retain
   local.tee $20
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 355
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2336
   call $~lib/rt/__allocArray
   local.set $19
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $19
   call $~lib/rt/pure/__retain
   local.tee $19
   local.tee $0
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $0
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $0
   local.set $37
   local.get $37
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<i32>#splice
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.tee $0
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 2376
   call $~lib/rt/__allocArray
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   call $~lib/rt/pure/__retain
   local.tee $15
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 358
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 2400
   call $~lib/rt/__allocArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__retain
   local.tee $17
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 359
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2432
   call $~lib/rt/__allocArray
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   call $~lib/rt/pure/__retain
   local.tee $16
   local.tee $2
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $2
   local.set $37
   local.get $37
   i32.const -2
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   local.tee $2
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 2472
   call $~lib/rt/__allocArray
   local.set $12
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   call $~lib/rt/pure/__retain
   local.tee $12
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 362
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 2496
   call $~lib/rt/__allocArray
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   call $~lib/rt/pure/__retain
   local.tee $14
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 363
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2528
   call $~lib/rt/__allocArray
   local.set $13
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $13
   call $~lib/rt/pure/__retain
   local.tee $13
   local.tee $1
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $1
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $1
   local.set $37
   local.get $37
   i32.const -7
   i32.const 1
   call $~lib/array/Array<i32>#splice
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.tee $1
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 2568
   call $~lib/rt/__allocArray
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   call $~lib/rt/pure/__retain
   local.tee $9
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 366
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 2592
   call $~lib/rt/__allocArray
   local.set $11
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $11
   call $~lib/rt/pure/__retain
   local.tee $11
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 367
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2624
   call $~lib/rt/__allocArray
   local.set $10
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   call $~lib/rt/pure/__retain
   local.tee $10
   local.tee $7
   local.get $37
   local.tee $34
   i32.ne
   if
    local.get $7
    call $~lib/rt/pure/__retain
    drop
    local.get $34
    call $~lib/rt/pure/__release
   end
   local.get $7
   local.set $37
   local.get $37
   i32.const -2
   i32.const -1
   call $~lib/array/Array<i32>#splice
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   local.tee $7
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 2664
   call $~lib/rt/__allocArray
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 370
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2680
   call $~lib/rt/__allocArray
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   call $~lib/rt/pure/__retain
   local.tee $8
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 371
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2720
   call $~lib/rt/__allocArray
   local.set $38
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $38
   call $~lib/rt/pure/__retain
   local.tee $38
   local.tee $34
   local.get $37
   local.tee $39
   i32.ne
   if
    local.get $34
    call $~lib/rt/pure/__retain
    drop
    local.get $39
    call $~lib/rt/pure/__release
   end
   local.get $34
   local.set $37
   local.get $37
   i32.const 1
   i32.const -2
   call $~lib/array/Array<i32>#splice
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   local.tee $34
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 2760
   call $~lib/rt/__allocArray
   local.set $40
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $40
   call $~lib/rt/pure/__retain
   local.tee $40
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $39
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $39
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 374
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2776
   call $~lib/rt/__allocArray
   local.set $41
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $41
   call $~lib/rt/pure/__retain
   local.tee $41
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $39
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $39
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 375
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2816
   call $~lib/rt/__allocArray
   local.set $42
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $42
   call $~lib/rt/pure/__retain
   local.tee $42
   local.tee $39
   local.get $37
   local.tee $43
   i32.ne
   if
    local.get $39
    call $~lib/rt/pure/__retain
    drop
    local.get $43
    call $~lib/rt/pure/__release
   end
   local.get $39
   local.set $37
   local.get $37
   i32.const 4
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $39
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $39
   local.tee $39
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 2856
   call $~lib/rt/__allocArray
   local.set $44
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $44
   call $~lib/rt/pure/__retain
   local.tee $44
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $43
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $43
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 378
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2872
   call $~lib/rt/__allocArray
   local.set $45
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $45
   call $~lib/rt/pure/__retain
   local.tee $45
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $43
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $43
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 379
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2912
   call $~lib/rt/__allocArray
   local.set $46
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $46
   call $~lib/rt/pure/__retain
   local.tee $46
   local.tee $43
   local.get $37
   local.tee $47
   i32.ne
   if
    local.get $43
    call $~lib/rt/pure/__retain
    drop
    local.get $47
    call $~lib/rt/pure/__release
   end
   local.get $43
   local.set $37
   local.get $37
   i32.const 7
   i32.const 0
   call $~lib/array/Array<i32>#splice
   local.set $43
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $43
   local.tee $43
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 2952
   call $~lib/rt/__allocArray
   local.set $48
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $48
   call $~lib/rt/pure/__retain
   local.tee $48
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $47
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $47
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 382
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 2968
   call $~lib/rt/__allocArray
   local.set $49
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $49
   call $~lib/rt/pure/__retain
   local.tee $49
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $47
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $47
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 383
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3008
   call $~lib/rt/__allocArray
   local.set $50
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $50
   call $~lib/rt/pure/__retain
   local.tee $50
   local.tee $47
   local.get $37
   local.tee $51
   i32.ne
   if
    local.get $47
    call $~lib/rt/pure/__retain
    drop
    local.get $51
    call $~lib/rt/pure/__release
   end
   local.get $47
   local.set $37
   local.get $37
   i32.const 7
   i32.const 5
   call $~lib/array/Array<i32>#splice
   local.set $47
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $47
   local.tee $47
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 3048
   call $~lib/rt/__allocArray
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__retain
   local.tee $52
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $51
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $51
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 386
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $37
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3064
   call $~lib/rt/__allocArray
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   call $~lib/rt/pure/__retain
   local.tee $53
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $51
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $51
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 387
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $33
   call $~lib/rt/pure/__release
   local.get $37
   call $~lib/rt/pure/__release
   local.get $35
   call $~lib/rt/pure/__release
   local.get $30
   call $~lib/rt/pure/__release
   local.get $32
   call $~lib/rt/pure/__release
   local.get $31
   call $~lib/rt/pure/__release
   local.get $36
   call $~lib/rt/pure/__release
   local.get $27
   call $~lib/rt/pure/__release
   local.get $29
   call $~lib/rt/pure/__release
   local.get $28
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $24
   call $~lib/rt/pure/__release
   local.get $26
   call $~lib/rt/pure/__release
   local.get $25
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $21
   call $~lib/rt/pure/__release
   local.get $23
   call $~lib/rt/pure/__release
   local.get $22
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $18
   call $~lib/rt/pure/__release
   local.get $20
   call $~lib/rt/pure/__release
   local.get $19
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $16
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $38
   call $~lib/rt/pure/__release
   local.get $34
   call $~lib/rt/pure/__release
   local.get $40
   call $~lib/rt/pure/__release
   local.get $41
   call $~lib/rt/pure/__release
   local.get $42
   call $~lib/rt/pure/__release
   local.get $39
   call $~lib/rt/pure/__release
   local.get $44
   call $~lib/rt/pure/__release
   local.get $45
   call $~lib/rt/pure/__release
   local.get $46
   call $~lib/rt/pure/__release
   local.get $43
   call $~lib/rt/pure/__release
   local.get $48
   call $~lib/rt/pure/__release
   local.get $49
   call $~lib/rt/pure/__release
   local.get $50
   call $~lib/rt/pure/__release
   local.get $47
   call $~lib/rt/pure/__release
   local.get $52
   call $~lib/rt/pure/__release
   local.get $53
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   i32.const 0
   i32.const 0
   call $~lib/array/Array<i32>#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/arr
   i32.const 1
   i32.const 1
   call $~lib/array/Array<i32>#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/arr
   i32.const 2
   i32.const 2
   call $~lib/array/Array<i32>#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/arr
   i32.const 3
   i32.const 3
   call $~lib/array/Array<i32>#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#findIndex
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 400
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#findIndex
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 403
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#findIndex
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 406
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 4
   call $~lib/array/Array<i32>#findIndex
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 414
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 415
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 5
   call $~lib/array/Array<i32>#findIndex
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 417
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 6
   call $~lib/array/Array<i32>#findIndex
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const -1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 430
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 431
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 7
   call $~lib/array/Array<i32>#every
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 441
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 8
   call $~lib/array/Array<i32>#every
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 444
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 9
   call $~lib/array/Array<i32>#every
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 452
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 453
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 10
   call $~lib/array/Array<i32>#every
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 455
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 11
   call $~lib/array/Array<i32>#every
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 468
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 469
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 12
   call $~lib/array/Array<i32>#some
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 479
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 13
   call $~lib/array/Array<i32>#some
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 482
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 14
   call $~lib/array/Array<i32>#some
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 490
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 491
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 15
   call $~lib/array/Array<i32>#some
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 493
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 16
   call $~lib/array/Array<i32>#some
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 506
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 507
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 17
   call $~lib/array/Array<i32>#forEach
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 518
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 18
   call $~lib/array/Array<i32>#forEach
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 527
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 528
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 19
   call $~lib/array/Array<i32>#forEach
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/i
   i32.const 406
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 531
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 20
   call $~lib/array/Array<i32>#forEach
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 545
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 546
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 21
   call $~lib/array/Array<i32>#forEach
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 100
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 571
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   block $break|0
    i32.const 0
    local.set $53
    loop $loop|0
     local.get $53
     i32.const 100
     i32.lt_s
     i32.eqz
     br_if $break|0
     global.get $std/array/arr
     call $~lib/array/Array<i32>#pop
     local.set $52
     global.get $~lib/error
     if
      br $uncaughtError
     end
     local.get $52
     drop
     local.get $53
     i32.const 1
     i32.add
     local.set $53
     br $loop|0
    end
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   drop
   global.get $std/array/arr
   i32.const 22
   call $~lib/array/Array<i32>#map<f32>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $53
   local.get $53
   call $~lib/array/Array<f32>#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 585
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $53
   i32.const 0
   call $~lib/array/Array<f32>#__get
   local.set $54
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $54
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#__get
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   f32.convert_i32_s
   f32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 586
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 23
   call $~lib/array/Array<i32>#map<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 595
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 596
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 24
   call $~lib/array/Array<i32>#map<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   global.get $std/array/i
   i32.const 406
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 603
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 25
   call $~lib/array/Array<i32>#map<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 618
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 619
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   local.get $53
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   i32.const 26
   call $~lib/array/Array<i32>#filter
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $53
   local.get $53
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 629
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 27
   call $~lib/array/Array<i32>#filter
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 638
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 639
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 28
   call $~lib/array/Array<i32>#filter
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   global.get $std/array/i
   i32.const 406
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 646
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   i32.const 0
   global.set $std/array/i
   global.get $std/array/arr
   i32.const 29
   call $~lib/array/Array<i32>#filter
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 661
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 662
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   local.get $53
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   i32.const 30
   i32.const 0
   call $~lib/array/Array<i32>#reduce<i32>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 672
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 31
   i32.const 4
   call $~lib/array/Array<i32>#reduce<i32>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 676
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 32
   i32.const 0
   call $~lib/array/Array<i32>#reduce<bool>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 679
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 33
   i32.const 0
   call $~lib/array/Array<i32>#reduce<bool>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 682
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 34
   i32.const 0
   call $~lib/array/Array<i32>#reduce<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 690
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 691
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 35
   i32.const 0
   call $~lib/array/Array<i32>#reduce<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 693
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 36
   i32.const 0
   call $~lib/array/Array<i32>#reduce<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   global.set $std/array/i
   global.get $std/array/i
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 706
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 707
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 37
   i32.const 0
   call $~lib/array/Array<i32>#reduceRight<i32>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 717
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 38
   i32.const 4
   call $~lib/array/Array<i32>#reduceRight<i32>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 721
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 39
   i32.const 0
   call $~lib/array/Array<i32>#reduceRight<bool>
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 724
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 40
   i32.const 0
   call $~lib/array/Array<i32>#reduceRight<bool>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   local.set $53
   local.get $53
   i32.const 0
   i32.ne
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 727
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 41
   i32.const 0
   call $~lib/array/Array<i32>#reduceRight<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 735
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 736
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 42
   i32.const 0
   call $~lib/array/Array<i32>#reduceRight<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   global.set $std/array/i
   global.get $std/array/i
   i32.const 10
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 738
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   call $~lib/array/Array<i32>#pop
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 43
   i32.const 0
   call $~lib/array/Array<i32>#reduceRight<i32>
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   global.set $std/array/i
   global.get $std/array/i
   i32.const 6
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 751
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   call $~lib/array/Array<i32>#get:length
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 752
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   global.get $std/array/arr
   i32.const 0
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 1
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 2
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   global.get $std/array/arr
   i32.const 3
   call $~lib/array/Array<i32>#push
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   drop
   call $~lib/bindings/Math/random
   i64.reinterpret_f64
   call $~lib/math/NativeMath.seedRandom
   i32.const 8
   i32.const 2
   i32.const 10
   i32.const 3336
   call $~lib/rt/__allocArray
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__retain
   local.tee $52
   call $~lib/rt/pure/__retain
   local.set $53
   i32.const 0
   global.set $~lib/argc
   local.get $53
   i32.const 0
   call $~lib/array/Array<f32>#sort|trampoline
   local.set $47
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $47
   call $~lib/rt/pure/__release
   local.get $53
   i32.const 8
   i32.const 2
   i32.const 10
   i32.const 3384
   call $~lib/rt/__allocArray
   local.set $50
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $50
   call $~lib/rt/pure/__retain
   local.tee $50
   i32.const 0
   call $std/array/isArraysEqual<f32>
   local.set $47
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $47
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 841
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   i32.const 3
   i32.const 11
   i32.const 3432
   call $~lib/rt/__allocArray
   local.set $49
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $49
   call $~lib/rt/pure/__retain
   local.tee $49
   call $~lib/rt/pure/__retain
   local.set $47
   i32.const 0
   global.set $~lib/argc
   local.get $47
   i32.const 0
   call $~lib/array/Array<f64>#sort|trampoline
   local.set $48
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $48
   call $~lib/rt/pure/__release
   local.get $47
   i32.const 8
   i32.const 3
   i32.const 11
   i32.const 3512
   call $~lib/rt/__allocArray
   local.set $43
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $43
   call $~lib/rt/pure/__retain
   local.tee $43
   i32.const 0
   call $std/array/isArraysEqual<f64>
   local.set $48
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $48
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 845
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3592
   call $~lib/rt/__allocArray
   local.set $46
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $46
   call $~lib/rt/pure/__retain
   local.tee $46
   call $~lib/rt/pure/__retain
   local.set $48
   i32.const 0
   global.set $~lib/argc
   local.get $48
   i32.const 0
   call $~lib/array/Array<i32>#sort|trampoline
   local.set $45
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $45
   call $~lib/rt/pure/__release
   local.get $48
   i32.const 5
   i32.const 2
   i32.const 3
   i32.const 3632
   call $~lib/rt/__allocArray
   local.set $44
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $44
   call $~lib/rt/pure/__retain
   local.tee $44
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $45
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $45
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 849
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 3672
   call $~lib/rt/__allocArray
   local.set $39
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $39
   call $~lib/rt/pure/__retain
   local.tee $39
   call $~lib/rt/pure/__retain
   local.set $45
   i32.const 0
   global.set $~lib/argc
   local.get $45
   i32.const 0
   call $~lib/array/Array<u32>#sort|trampoline
   local.set $42
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $42
   call $~lib/rt/pure/__release
   local.get $45
   i32.const 5
   i32.const 2
   i32.const 9
   i32.const 3712
   call $~lib/rt/__allocArray
   local.set $41
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $41
   call $~lib/rt/pure/__retain
   local.tee $41
   i32.const 0
   call $std/array/isArraysEqual<u32>
   local.set $42
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $42
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 853
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 3752
   call $~lib/rt/__allocArray
   local.set $40
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $40
   call $~lib/rt/pure/__retain
   local.tee $40
   call $~lib/rt/pure/__retain
   local.set $42
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 3768
   call $~lib/rt/__allocArray
   local.set $38
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $38
   call $~lib/rt/pure/__retain
   local.tee $38
   call $~lib/rt/pure/__retain
   local.set $34
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3792
   call $~lib/rt/__allocArray
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $5
   call $~lib/rt/pure/__retain
   local.set $8
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 3816
   call $~lib/rt/__allocArray
   local.set $10
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   call $~lib/rt/pure/__retain
   local.tee $10
   call $~lib/rt/pure/__retain
   local.set $7
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 3848
   call $~lib/rt/__allocArray
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   call $~lib/rt/pure/__retain
   local.tee $9
   call $~lib/rt/pure/__retain
   local.set $11
   i32.const 64
   call $std/array/createReverseOrderedArray
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.set $1
   i32.const 128
   call $std/array/createReverseOrderedArray
   local.set $13
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $13
   local.set $13
   i32.const 1024
   call $std/array/createReverseOrderedArray
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   local.set $14
   i32.const 10000
   call $std/array/createReverseOrderedArray
   local.set $12
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   local.set $12
   i32.const 512
   call $std/array/createRandomOrderedArray
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   local.set $2
   local.get $42
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 3936
   call $~lib/rt/__allocArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__retain
   local.tee $17
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 873
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $8
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 3960
   call $~lib/rt/__allocArray
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   call $~lib/rt/pure/__retain
   local.tee $15
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 876
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   local.get $11
   i32.const 0
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 879
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.get $11
   i32.const 4
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 882
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $13
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $13
   local.get $11
   i32.const 4
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 885
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $14
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   local.get $11
   i32.const 4
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 888
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $12
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   local.get $11
   i32.const 4
   call $std/array/isArraysEqual<i32>
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 891
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $std/array/assertSortedDefault<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__release
   local.get $53
   call $~lib/rt/pure/__release
   local.get $50
   call $~lib/rt/pure/__release
   local.get $49
   call $~lib/rt/pure/__release
   local.get $47
   call $~lib/rt/pure/__release
   local.get $43
   call $~lib/rt/pure/__release
   local.get $46
   call $~lib/rt/pure/__release
   local.get $48
   call $~lib/rt/pure/__release
   local.get $44
   call $~lib/rt/pure/__release
   local.get $39
   call $~lib/rt/pure/__release
   local.get $45
   call $~lib/rt/pure/__release
   local.get $41
   call $~lib/rt/pure/__release
   local.get $40
   call $~lib/rt/pure/__release
   local.get $42
   call $~lib/rt/pure/__release
   local.get $38
   call $~lib/rt/pure/__release
   local.get $34
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   i32.const 64
   call $std/array/createRandomOrderedArray
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   local.set $15
   i32.const 257
   call $std/array/createRandomOrderedArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   local.set $17
   local.get $15
   i32.const 49
   call $std/array/assertSorted<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   i32.const 50
   call $std/array/assertSorted<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   i32.const 51
   call $std/array/assertSorted<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   i32.const 52
   call $std/array/assertSorted<i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   i32.const 2
   call $std/array/createReverseOrderedNestedArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   local.set $17
   local.get $17
   i32.const 53
   call $std/array/assertSorted<~lib/array/Array<i32>>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__release
   i32.const 512
   call $std/array/createReverseOrderedElementsArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   local.set $17
   local.get $17
   i32.const 54
   call $std/array/assertSorted<std/array/Proxy<i32>>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__release
   i32.const 7
   i32.const 2
   i32.const 15
   i32.const 4192
   call $~lib/rt/__allocArray
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   call $~lib/rt/pure/__retain
   local.tee $15
   call $~lib/rt/pure/__retain
   local.set $17
   i32.const 7
   i32.const 2
   i32.const 15
   i32.const 4240
   call $~lib/rt/__allocArray
   local.set $12
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   call $~lib/rt/pure/__retain
   local.tee $12
   call $~lib/rt/pure/__retain
   local.set $2
   i32.const 1
   global.set $~lib/argc
   local.get $17
   i32.const 0
   call $std/array/assertSorted<~lib/string/String | null>|trampoline
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   local.get $2
   i32.const 0
   call $std/array/isArraysEqual<~lib/string/String | null>
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 928
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 400
   call $std/array/createRandomStringArray
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   local.set $14
   i32.const 1
   global.set $~lib/argc
   local.get $14
   i32.const 0
   call $std/array/assertSorted<~lib/string/String>|trampoline
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   i32.const 2
   i32.const 0
   i32.const 17
   i32.const 4312
   call $~lib/rt/__allocArray
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.const 4392
   call $~lib/array/Array<bool>#join
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   local.tee $14
   i32.const 4416
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 939
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 3
   i32.const 4456
   call $~lib/rt/__allocArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__retain
   local.tee $17
   i32.const 208
   call $~lib/array/Array<i32>#join
   local.set $12
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   local.tee $12
   i32.const 4960
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 940
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 9
   i32.const 4992
   call $~lib/rt/__allocArray
   local.set $13
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $13
   call $~lib/rt/pure/__retain
   local.tee $13
   i32.const 5024
   call $~lib/array/Array<u32>#join
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   local.tee $15
   i32.const 4960
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 941
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 5048
   call $~lib/rt/__allocArray
   local.set $11
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $11
   call $~lib/rt/pure/__retain
   local.tee $11
   i32.const 5072
   call $~lib/array/Array<i32>#join
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.tee $1
   i32.const 5096
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 942
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 6
   i32.const 3
   i32.const 11
   i32.const 5160
   call $~lib/rt/__allocArray
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   call $~lib/rt/pure/__retain
   local.tee $7
   i32.const 5224
   call $~lib/array/Array<f64>#join
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   local.tee $9
   i32.const 6424
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 943
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 16
   i32.const 6544
   call $~lib/rt/__allocArray
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   call $~lib/rt/pure/__retain
   local.tee $8
   i32.const 208
   call $~lib/array/Array<~lib/string/String>#join
   local.set $10
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   local.tee $10
   i32.const 6520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 944
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 21
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $40
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $40
   local.set $5
   local.get $5
   i32.load offset=4
   local.set $34
   local.get $34
   i32.const 0
   call $std/array/Ref#constructor
   local.tee $38
   call $~lib/rt/pure/__retain
   i32.store
   local.get $34
   i32.const 0
   call $~lib/rt/pure/__retain
   i32.store offset=4
   local.get $34
   i32.const 0
   call $std/array/Ref#constructor
   local.tee $42
   call $~lib/rt/pure/__retain
   i32.store offset=8
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $34
   local.get $34
   i32.const 4392
   call $~lib/array/Array<std/array/Ref | null>#join
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   local.tee $5
   i32.const 6624
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 946
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $38
   call $~lib/rt/pure/__release
   local.get $42
   call $~lib/rt/pure/__release
   local.get $34
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 0
   i32.const 2
   i32.const 3
   i32.const 6704
   call $~lib/rt/__allocArray
   local.set $34
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $34
   call $~lib/rt/pure/__retain
   local.tee $34
   call $~lib/rt/pure/__retain
   local.set $5
   i32.const 1
   i32.const 2
   i32.const 3
   i32.const 6720
   call $~lib/rt/__allocArray
   local.set $38
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $38
   call $~lib/rt/pure/__retain
   local.tee $38
   call $~lib/rt/pure/__retain
   local.set $42
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 6744
   call $~lib/rt/__allocArray
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   call $~lib/rt/pure/__retain
   local.tee $8
   call $~lib/rt/pure/__retain
   local.set $10
   i32.const 4
   i32.const 2
   i32.const 3
   i32.const 6768
   call $~lib/rt/__allocArray
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   call $~lib/rt/pure/__retain
   local.tee $7
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $5
   call $~lib/array/Array<i32>#toString
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   local.tee $1
   i32.const 208
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 956
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $42
   call $~lib/array/Array<i32>#toString
   local.set $11
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $11
   local.tee $11
   i32.const 6520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 957
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   call $~lib/array/Array<i32>#toString
   local.set $15
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $15
   local.tee $15
   i32.const 6800
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 958
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $~lib/array/Array<i32>#toString
   local.set $13
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $13
   local.tee $13
   i32.const 6824
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 959
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 0
   i32.const 22
   i32.const 6856
   call $~lib/rt/__allocArray
   local.set $17
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $17
   call $~lib/rt/pure/__retain
   local.tee $17
   call $~lib/array/Array<i8>#toString
   local.set $12
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $12
   local.tee $12
   i32.const 6880
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 961
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 1
   i32.const 23
   i32.const 6912
   call $~lib/rt/__allocArray
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   call $~lib/rt/pure/__retain
   local.tee $2
   call $~lib/array/Array<u16>#toString
   local.set $14
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $14
   local.tee $14
   i32.const 6936
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 962
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 3
   i32.const 18
   i32.const 6976
   call $~lib/rt/__allocArray
   local.set $41
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $41
   call $~lib/rt/pure/__retain
   local.tee $41
   call $~lib/array/Array<u64>#toString
   local.set $40
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $40
   local.tee $40
   i32.const 7016
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 963
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 3
   i32.const 24
   i32.const 7080
   call $~lib/rt/__allocArray
   local.set $39
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $39
   call $~lib/rt/pure/__retain
   local.tee $39
   call $~lib/array/Array<i64>#toString
   local.set $45
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $45
   local.tee $45
   i32.const 7128
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 964
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 7
   i32.const 2
   i32.const 15
   i32.const 7232
   call $~lib/rt/__allocArray
   local.set $48
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $48
   call $~lib/rt/pure/__retain
   local.tee $48
   call $~lib/rt/pure/__retain
   local.set $44
   local.get $44
   call $~lib/array/Array<~lib/string/String | null>#toString
   local.set $46
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $46
   local.tee $46
   i32.const 7280
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 968
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 4
   i32.const 2
   i32.const 16
   i32.const 7376
   call $~lib/rt/__allocArray
   local.set $47
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $47
   call $~lib/rt/pure/__retain
   local.tee $47
   call $~lib/array/Array<~lib/string/String>#toString
   local.set $43
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $43
   local.tee $43
   i32.const 7408
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 969
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 12
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.set $49
   local.get $49
   i32.load offset=4
   local.set $50
   local.get $50
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 7440
   call $~lib/rt/__allocArray
   local.set $52
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $52
   call $~lib/rt/pure/__retain
   local.tee $52
   call $~lib/rt/pure/__retain
   i32.store
   local.get $50
   i32.const 2
   i32.const 2
   i32.const 3
   i32.const 7464
   call $~lib/rt/__allocArray
   local.set $16
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $16
   call $~lib/rt/pure/__retain
   local.tee $16
   call $~lib/rt/pure/__retain
   i32.store offset=4
   local.get $49
   call $~lib/rt/pure/__retain
   local.set $55
   local.get $55
   call $~lib/array/Array<~lib/array/Array<i32>>#toString
   local.set $50
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $50
   local.tee $50
   i32.const 7488
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 972
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 2
   i32.const 2
   i32.const 25
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.set $49
   local.get $49
   i32.load offset=4
   local.set $53
   local.get $53
   i32.const 2
   i32.const 0
   i32.const 8
   i32.const 7520
   call $~lib/rt/__allocArray
   local.set $19
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $19
   call $~lib/rt/pure/__retain
   local.tee $19
   call $~lib/rt/pure/__retain
   i32.store
   local.get $53
   i32.const 2
   i32.const 0
   i32.const 8
   i32.const 7544
   call $~lib/rt/__allocArray
   local.set $20
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $20
   call $~lib/rt/pure/__retain
   local.tee $20
   call $~lib/rt/pure/__retain
   i32.store offset=4
   local.get $49
   call $~lib/rt/pure/__retain
   local.set $56
   local.get $56
   call $~lib/array/Array<~lib/array/Array<u8>>#toString
   local.set $53
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $53
   local.tee $53
   i32.const 7488
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 975
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   i32.const 2
   i32.const 27
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   local.set $49
   local.get $49
   i32.load offset=4
   local.set $0
   local.get $0
   i32.const 1
   i32.const 2
   i32.const 26
   i32.const 0
   call $~lib/rt/__allocArray
   local.set $22
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $22
   local.set $18
   local.get $18
   i32.load offset=4
   local.set $4
   local.get $4
   i32.const 1
   i32.const 2
   i32.const 9
   i32.const 7568
   call $~lib/rt/__allocArray
   local.set $23
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $23
   call $~lib/rt/pure/__retain
   local.tee $23
   call $~lib/rt/pure/__retain
   i32.store
   local.get $18
   call $~lib/rt/pure/__retain
   i32.store
   local.get $49
   call $~lib/rt/pure/__retain
   local.set $57
   local.get $57
   call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#toString
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.tee $0
   i32.const 6520
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 978
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $34
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $38
   call $~lib/rt/pure/__release
   local.get $42
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $11
   call $~lib/rt/pure/__release
   local.get $15
   call $~lib/rt/pure/__release
   local.get $13
   call $~lib/rt/pure/__release
   local.get $17
   call $~lib/rt/pure/__release
   local.get $12
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $14
   call $~lib/rt/pure/__release
   local.get $41
   call $~lib/rt/pure/__release
   local.get $40
   call $~lib/rt/pure/__release
   local.get $39
   call $~lib/rt/pure/__release
   local.get $45
   call $~lib/rt/pure/__release
   local.get $48
   call $~lib/rt/pure/__release
   local.get $44
   call $~lib/rt/pure/__release
   local.get $46
   call $~lib/rt/pure/__release
   local.get $47
   call $~lib/rt/pure/__release
   local.get $43
   call $~lib/rt/pure/__release
   local.get $52
   call $~lib/rt/pure/__release
   local.get $16
   call $~lib/rt/pure/__release
   local.get $50
   call $~lib/rt/pure/__release
   local.get $19
   call $~lib/rt/pure/__release
   local.get $20
   call $~lib/rt/pure/__release
   local.get $53
   call $~lib/rt/pure/__release
   local.get $23
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   global.get $std/array/arr
   call $~lib/rt/pure/__release
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $55
   call $~lib/rt/pure/__release
   local.get $56
   call $~lib/rt/pure/__release
   local.get $57
   call $~lib/rt/pure/__release
   return
  end
  i32.const 7592
  i32.const 368
  i32.const 1
  i32.const 0
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 302 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/array
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 303 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u8>#__visit_impl (; 304 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u32>#__visit_impl (; 305 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f32>#__visit_impl (; 306 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<f64>#__visit_impl (; 307 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/pure/markGray (; 308 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/scanBlack (; 309 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 310 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const 1879048192
    i32.const -1
    i32.xor
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 311 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__visit (; 312 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        global.get $~lib/error
        if
         return
        end
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 24
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 24
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__visit_impl (; 313 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<std/array/Proxy<i32>>#__visit_impl (; 314 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String | null>#__visit_impl (; 315 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__visit_impl (; 316 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<bool>#__visit_impl (; 317 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u64>#__visit_impl (; 318 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i16>#__visit_impl (; 319 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<std/array/Ref | null>#__visit_impl (; 320 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<i8>#__visit_impl (; 321 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<u16>#__visit_impl (; 322 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i64>#__visit_impl (; 323 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl (; 324 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<u32>>#__visit_impl (; 325 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#__visit_impl (; 326 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load
    local.set $4
    local.get $4
    if
     local.get $4
     local.get $1
     call $~lib/rt/pure/__visit
     global.get $~lib/error
     if
      return
     end
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $continue|0
   end
   unreachable
  end
 )
 (func $~lib/rt/__visit_members (; 327 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$29
     block $switch$1$case$28
      block $switch$1$case$27
       block $switch$1$case$26
        block $switch$1$case$25
         block $switch$1$case$24
          block $switch$1$case$23
           block $switch$1$case$21
            block $switch$1$case$20
             block $switch$1$case$19
              block $switch$1$case$18
               block $switch$1$case$17
                block $switch$1$case$16
                 block $switch$1$case$14
                  block $switch$1$case$13
                   block $switch$1$case$12
                    block $switch$1$case$11
                     block $switch$1$case$10
                      block $switch$1$case$6
                       block $switch$1$case$5
                        block $switch$1$case$4
                         block $switch$1$case$2
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load
                          br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$5 $switch$1$case$6 $switch$1$case$6 $switch$1$case$2 $switch$1$case$4 $switch$1$case$10 $switch$1$case$11 $switch$1$case$12 $switch$1$case$13 $switch$1$case$14 $switch$1$case$2 $switch$1$case$16 $switch$1$case$17 $switch$1$case$18 $switch$1$case$19 $switch$1$case$20 $switch$1$case$21 $switch$1$case$2 $switch$1$case$23 $switch$1$case$24 $switch$1$case$25 $switch$1$case$26 $switch$1$case$27 $switch$1$case$28 $switch$1$case$29 $switch$1$default
                         end
                         return
                        end
                        br $block$4$break
                       end
                       local.get $0
                       local.get $1
                       call $~lib/array/Array<i32>#__visit_impl
                       br $block$4$break
                      end
                      local.get $0
                      i32.load
                      local.tee $2
                      if
                       local.get $2
                       local.get $1
                       call $~lib/rt/pure/__visit
                      end
                      local.get $0
                      i32.load offset=4
                      local.tee $2
                      if
                       local.get $2
                       local.get $1
                       call $~lib/rt/pure/__visit
                      end
                      local.get $0
                      i32.load offset=8
                      local.tee $2
                      if
                       local.get $2
                       local.get $1
                       call $~lib/rt/pure/__visit
                      end
                      return
                     end
                     local.get $0
                     local.get $1
                     call $~lib/array/Array<u8>#__visit_impl
                     br $block$4$break
                    end
                    local.get $0
                    local.get $1
                    call $~lib/array/Array<u32>#__visit_impl
                    br $block$4$break
                   end
                   local.get $0
                   local.get $1
                   call $~lib/array/Array<f32>#__visit_impl
                   br $block$4$break
                  end
                  local.get $0
                  local.get $1
                  call $~lib/array/Array<f64>#__visit_impl
                  br $block$4$break
                 end
                 local.get $0
                 local.get $1
                 call $~lib/array/Array<~lib/array/Array<i32>>#__visit_impl
                 br $block$4$break
                end
                local.get $0
                local.get $1
                call $~lib/array/Array<std/array/Proxy<i32>>#__visit_impl
                br $block$4$break
               end
               local.get $0
               local.get $1
               call $~lib/array/Array<~lib/string/String | null>#__visit_impl
               br $block$4$break
              end
              local.get $0
              local.get $1
              call $~lib/array/Array<~lib/string/String>#__visit_impl
              br $block$4$break
             end
             local.get $0
             local.get $1
             call $~lib/array/Array<bool>#__visit_impl
             br $block$4$break
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<u64>#__visit_impl
            br $block$4$break
           end
           local.get $0
           local.get $1
           call $~lib/array/Array<i16>#__visit_impl
           br $block$4$break
          end
          local.get $0
          local.get $1
          call $~lib/array/Array<std/array/Ref | null>#__visit_impl
          br $block$4$break
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<i8>#__visit_impl
         br $block$4$break
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<u16>#__visit_impl
        br $block$4$break
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<i64>#__visit_impl
       br $block$4$break
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<~lib/array/Array<u8>>#__visit_impl
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<~lib/array/Array<u32>>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/array/Array<~lib/array/Array<u32>>>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $null (; 328 ;) (type $FUNCSIG$v)
 )
)
