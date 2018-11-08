(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiif (func (param i32 i32 i32) (result f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $ffi (func (param f32 f32) (result i32)))
 (type $iv (func (param i32)))
 (type $fi (func (param f32) (result i32)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iIiIiIii (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $iiFi (func (param i32 i32 f64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $iiIi (func (param i32 i32 i64) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "Math" "random" (func $~lib/bindings/Math/random (result f64)))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 104) "\05\00\00\00\00\00\00\00\01\02\03\04\05\00\00\00")
 (data (i32.const 120) "h\00\00\00\05\00\00\00")
 (data (i32.const 128) "\05\00\00\00\00\00\00\00\01\01\01\04\05\00\00\00")
 (data (i32.const 144) "\80\00\00\00\05\00\00\00")
 (data (i32.const 152) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 184) "\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 200) "\b8\00\00\00\05\00\00\00")
 (data (i32.const 208) "\05\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00")
 (data (i32.const 224) "\d0\00\00\00\05\00\00\00")
 (data (i32.const 232) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 248) "\e8\00\00\00\05\00\00\00")
 (data (i32.const 256) "\05\00\00\00\00\00\00\00\01\01\00\02\02\00\00\00")
 (data (i32.const 272) "\00\01\00\00\05\00\00\00")
 (data (i32.const 280) "\14\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 312) "\18\01\00\00\05\00\00\00")
 (data (i32.const 320) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00")
 (data (i32.const 352) "@\01\00\00\05\00\00\00")
 (data (i32.const 360) "\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 392) "h\01\00\00\05\00\00\00")
 (data (i32.const 400) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\90\01\00\00\05\00\00\00")
 (data (i32.const 440) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 472) "\b8\01\00\00\05\00\00\00")
 (data (i32.const 480) "\14\00\00\00\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 512) "\e0\01\00\00\05\00\00\00")
 (data (i32.const 520) "\00\00\00\00\00\00\00\00")
 (data (i32.const 528) "\08\02\00\00\00\00\00\00")
 (data (i32.const 536) "\00\00\00\00\00\00\00\00")
 (data (i32.const 544) "\18\02\00\00\00\00\00\00")
 (data (i32.const 552) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 584) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 760) " \00\00\00\00\00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 824) "\f8\02\00\00\08\00\00\00")
 (data (i32.const 832) " \00\00\00\00\00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 896) "@\03\00\00\08\00\00\00")
 (data (i32.const 904) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1032) "\88\03\00\00\08\00\00\00")
 (data (i32.const 1040) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1168) "\10\04\00\00\08\00\00\00")
 (data (i32.const 1176) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 1208) "\98\04\00\00\05\00\00\00")
 (data (i32.const 1216) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 1248) "\c0\04\00\00\05\00\00\00")
 (data (i32.const 1256) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 1288) "\e8\04\00\00\05\00\00\00")
 (data (i32.const 1296) "\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00")
 (data (i32.const 1328) "\10\05\00\00\05\00\00\00")
 (data (i32.const 1336) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1344) "8\05\00\00\00\00\00\00")
 (data (i32.const 1352) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1368) "H\05\00\00\01\00\00\00")
 (data (i32.const 1376) "\08\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 1392) "`\05\00\00\02\00\00\00")
 (data (i32.const 1400) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1432) "x\05\00\00\04\00\00\00")
 (data (i32.const 1440) "\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1472) "\a0\05\00\00\04\00\00\00")
 (data (i32.const 1480) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1496) "\c8\05\00\00\01\00\00\00")
 (data (i32.const 1504) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 1520) "\e0\05\00\00\02\00\00\00")
 (data (i32.const 1528) "\01\00\00\00a\00")
 (data (i32.const 1536) "\01\00\00\00b\00")
 (data (i32.const 1544) "\02\00\00\00a\00b\00")
 (data (i32.const 1552) "\02\00\00\00b\00a\00")
 (data (i32.const 1560) "\00\00\00\00")
 (data (i32.const 1568) "\1c\00\00\00\00\00\00\00\f8\05\00\00\00\06\00\00\f8\05\00\00\08\06\00\00\10\06\00\00\18\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1632) " \06\00\00\07\00\00\00")
 (data (i32.const 1640) "\1c\00\00\00\00\00\00\00\18\06\00\00\f8\05\00\00\f8\05\00\00\08\06\00\00\00\06\00\00\10\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1704) "h\06\00\00\07\00\00\00")
 (data (i32.const 1712) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1744) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1800) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 1816) "\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1832) "\18\07\00\00\02\00\00\00")
 (data (i32.const 1840) "\04\00\00\00t\00r\00u\00e\00")
 (data (i32.const 1856) "\05\00\00\00f\00a\00l\00s\00e\00")
 (data (i32.const 1872) "\01\00\00\00,\00")
 (data (i32.const 1880) "\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1896) "X\07\00\00\02\00\00\00")
 (data (i32.const 1904) "\n\00\00\00t\00r\00u\00e\00,\00f\00a\00l\00s\00e\00")
 (data (i32.const 1928) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1960) "\88\07\00\00\03\00\00\00")
 (data (i32.const 1968) "\01\00\00\000\00")
 (data (i32.const 1976) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2488) "\b8\07\00\00d\00\00\00")
 (data (i32.const 2496) "\0c\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\fd\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2528) "\c0\t\00\00\03\00\00\00")
 (data (i32.const 2536) "\05\00\00\001\00-\002\00-\003\00")
 (data (i32.const 2552) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2584) "\f8\t\00\00\03\00\00\00")
 (data (i32.const 2592) "\01\00\00\00-\00")
 (data (i32.const 2600) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2632) "(\n\00\00\03\00\00\00")
 (data (i32.const 2640) "\08\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 2656) "P\n\00\00\02\00\00\00")
 (data (i32.const 2664) "\02\00\00\00_\00_\00")
 (data (i32.const 2672) "\08\00\00\00\00\00\00\00\00\00\00\80\00\00\00\80")
 (data (i32.const 2688) "p\n\00\00\02\00\00\00")
 (data (i32.const 2696) "\18\00\00\00-\002\001\004\007\004\008\003\006\004\008\00_\00_\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 2752) "0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00")
 (data (i32.const 2816) "\c0\n\00\00\06\00\00\00")
 (data (i32.const 2824) "\02\00\00\00,\00 \00")
 (data (i32.const 2832) "\03\00\00\000\00.\000\00")
 (data (i32.const 2848) "\03\00\00\00N\00a\00N\00")
 (data (i32.const 2864) "\t\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 2888) "\08\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 2912) "\b8\02\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3936) "`\0b\00\00W\00\00\00")
 (data (i32.const 3944) "\ae\00\00\00\00\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4200) "h\0f\00\00W\00\00\00")
 (data (i32.const 4208) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4272) "p\10\00\00\n\00\00\00")
 (data (i32.const 4280) "0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00")
 (data (i32.const 4344) "\b8\10\00\00\06\00\00\00")
 (data (i32.const 4352) "(\00\00\000\00.\000\00,\00 \001\00.\000\00,\00 \00-\002\00.\000\00,\00 \00N\00a\00N\00,\00 \00-\00I\00n\00f\00i\00n\00i\00t\00y\00,\00 \00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 4440) "\01\00\00\001\00")
 (data (i32.const 4448) "\0c\00\00\00\00\00\00\00\18\06\00\00X\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4480) "`\11\00\00\03\00\00\00")
 (data (i32.const 4488) "\0c\00\00\00\00\00\00\00\18\06\00\00X\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4520) "\88\11\00\00\03\00\00\00")
 (data (i32.const 4528) "\0f\00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 4568) " \00\00\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00,\00,\00[\00o\00b\00j\00e\00c\00t\00 \00O\00b\00j\00e\00c\00t\00]\00")
 (data (i32.const 4640) "\03\00\00\001\00,\002\00")
 (data (i32.const 4656) "\07\00\00\000\00,\001\00,\002\00,\003\00")
 (data (i32.const 4680) "\03\00\00\00\00\00\00\00\01\ff\00\00\00\00\00\00")
 (data (i32.const 4696) "H\12\00\00\03\00\00\00")
 (data (i32.const 4704) "\03\00\00\00\00\00\00\00\01\ff\00\00\00\00\00\00")
 (data (i32.const 4720) "`\12\00\00\03\00\00\00")
 (data (i32.const 4728) "\06\00\00\001\00,\00-\001\00,\000\00")
 (data (i32.const 4744) "\06\00\00\00\00\00\00\00\01\00\ff\ff\00\00\00\00")
 (data (i32.const 4760) "\88\12\00\00\03\00\00\00")
 (data (i32.const 4768) "\06\00\00\00\00\00\00\00\01\00\ff\ff\00\00\00\00")
 (data (i32.const 4784) "\a0\12\00\00\03\00\00\00")
 (data (i32.const 4792) "\t\00\00\001\00,\006\005\005\003\005\00,\000\00")
 (data (i32.const 4816) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 4848) "\d0\12\00\00\03\00\00\00")
 (data (i32.const 4856) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5368) "\f8\12\00\00d\00\00\00")
 (data (i32.const 5376) "\18\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00")
 (data (i32.const 5408) "\00\15\00\00\03\00\00\00")
 (data (i32.const 5416) "\18\00\00\001\00,\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00,\000\00")
 (data (i32.const 5472) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5536) "`\15\00\00\04\00\00\00")
 (data (i32.const 5544) " \00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff@Eu\c3*\9d\fb\ff\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5608) "\a8\15\00\00\04\00\00\00")
 (data (i32.const 5616) "*\00\00\00-\001\00,\00-\001\002\003\004\005\006\007\008\009\000\001\002\003\004\005\006\00,\000\00,\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 5704) "\0d\00\00\00,\00a\00,\00a\00,\00a\00b\00,\00b\00,\00b\00a\00,\00")
 (data (i32.const 5736) "\01\00\00\002\00")
 (data (i32.const 5744) "\01\00\00\004\00")
 (data (i32.const 5752) "\10\00\00\00\00\00\00\00X\11\00\00h\16\00\00\00\00\00\00p\16\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5784) "x\16\00\00\04\00\00\00")
 (data (i32.const 5792) "\10\00\00\00\00\00\00\00X\11\00\00h\16\00\00\00\00\00\00p\16\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 5824) "\a0\16\00\00\04\00\00\00")
 (data (i32.const 5832) "\06\00\00\001\00,\002\00,\00,\004\00")
 (data (i32.const 5848) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 5864) "\d8\16\00\00\02\00\00\00")
 (data (i32.const 5872) "\08\00\00\00\00\00\00\00\03\00\00\00\04\00\00\00")
 (data (i32.const 5888) "\f0\16\00\00\02\00\00\00")
 (data (i32.const 5896) "\08\00\00\00\00\00\00\00\e8\16\00\00\00\17\00\00")
 (data (i32.const 5912) "\08\17\00\00\02\00\00\00")
 (data (i32.const 5920) "\07\00\00\001\00,\002\00,\003\00,\004\00")
 (data (i32.const 5944) "\02\00\00\00\00\00\00\00\01\02\00\00\00\00\00\00")
 (data (i32.const 5960) "8\17\00\00\02\00\00\00")
 (data (i32.const 5968) "\02\00\00\00\00\00\00\00\03\04\00\00\00\00\00\00")
 (data (i32.const 5984) "P\17\00\00\02\00\00\00")
 (data (i32.const 5992) "\08\00\00\00\00\00\00\00H\17\00\00`\17\00\00")
 (data (i32.const 6008) "h\17\00\00\02\00\00\00")
 (data (i32.const 6016) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 6032) "\80\17\00\00\01\00\00\00")
 (data (i32.const 6040) "\04\00\00\00\00\00\00\00\90\17\00\00\00\00\00\00")
 (data (i32.const 6056) "\98\17\00\00\01\00\00\00")
 (data (i32.const 6064) "\04\00\00\00\00\00\00\00\a8\17\00\00\00\00\00\00")
 (data (i32.const 6080) "\b0\17\00\00\01\00\00\00")
 (table $0 56 anyfunc)
 (elem (i32.const 0) $null $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $start~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|29 $start~anonymous|30 $start~anonymous|31 $start~anonymous|32 $start~anonymous|33 $start~anonymous|34 $start~anonymous|35 $start~anonymous|36 $start~anonymous|37 $start~anonymous|38 $start~anonymous|39 $start~anonymous|40 $start~anonymous|41 $start~anonymous|42 $~lib/array/Array<f32>#sort|trampoline~anonymous|43 $~lib/array/Array<f64>#sort|trampoline~anonymous|44 $~lib/array/Array<i32>#sort|trampoline~anonymous|45 $~lib/array/Array<u32>#sort|trampoline~anonymous|46 $std/array/assertSortedDefault<i32>~anonymous|47 $start~anonymous|48 $start~anonymous|49 $start~anonymous|50 $start~anonymous|51 $start~anonymous|52 $start~anonymous|53 $start~anonymous|54 $start~anonymous|55)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/internal/number/MAX_DOUBLE_LENGTH i32 (i32.const 28))
 (global $~lib/internal/number/_K (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp_pow (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/arr8 (mut i32) (i32.const 120))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/array/arr32 (mut i32) (i32.const 312))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/other (mut i32) (i32.const 0))
 (global $std/array/out (mut i32) (i32.const 0))
 (global $std/array/source (mut i32) (i32.const 544))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/newArr (mut i32) (i32.const 0))
 (global $std/array/filteredArr (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state0_32 (mut i32) (i32.const 0))
 (global $~lib/math/random_state1_32 (mut i32) (i32.const 0))
 (global $std/array/charset i32 (i32.const 584))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 824))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 1032))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 1208))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 1288))
 (global $std/array/reversed0 (mut i32) (i32.const 1344))
 (global $std/array/reversed1 (mut i32) (i32.const 1368))
 (global $std/array/reversed2 (mut i32) (i32.const 1392))
 (global $std/array/reversed4 (mut i32) (i32.const 1432))
 (global $std/array/expected4 (mut i32) (i32.const 1472))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 1632))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 1704))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/internal/string/CharCode.PLUS i32 (i32.const 43))
 (global $~lib/internal/string/CharCode.MINUS i32 (i32.const 45))
 (global $~lib/internal/string/CharCode.DOT i32 (i32.const 46))
 (global $~lib/internal/string/CharCode._0 i32 (i32.const 48))
 (global $~lib/internal/string/CharCode._1 i32 (i32.const 49))
 (global $~lib/internal/string/CharCode._2 i32 (i32.const 50))
 (global $~lib/internal/string/CharCode._3 i32 (i32.const 51))
 (global $~lib/internal/string/CharCode._4 i32 (i32.const 52))
 (global $~lib/internal/string/CharCode._5 i32 (i32.const 53))
 (global $~lib/internal/string/CharCode._6 i32 (i32.const 54))
 (global $~lib/internal/string/CharCode._7 i32 (i32.const 55))
 (global $~lib/internal/string/CharCode._8 i32 (i32.const 56))
 (global $~lib/internal/string/CharCode._9 i32 (i32.const 57))
 (global $~lib/internal/string/CharCode.A i32 (i32.const 65))
 (global $~lib/internal/string/CharCode.B i32 (i32.const 66))
 (global $~lib/internal/string/CharCode.E i32 (i32.const 69))
 (global $~lib/internal/string/CharCode.N i32 (i32.const 78))
 (global $~lib/internal/string/CharCode.O i32 (i32.const 79))
 (global $~lib/internal/string/CharCode.X i32 (i32.const 88))
 (global $~lib/internal/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/internal/string/CharCode.a i32 (i32.const 97))
 (global $~lib/internal/string/CharCode.b i32 (i32.const 98))
 (global $~lib/internal/string/CharCode.e i32 (i32.const 101))
 (global $~lib/internal/string/CharCode.n i32 (i32.const 110))
 (global $~lib/internal/string/CharCode.o i32 (i32.const 111))
 (global $~lib/internal/string/CharCode.x i32 (i32.const 120))
 (global $~lib/internal/string/CharCode.z i32 (i32.const 122))
 (global $~lib/builtins/i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $std/array/refArr (mut i32) (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $std/array/subarr32 (mut i32) (i32.const 5912))
 (global $std/array/subarr8 (mut i32) (i32.const 6008))
 (global $std/array/subarrU32 (mut i32) (i32.const 6080))
 (global $HEAP_BASE i32 (i32.const 6088))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_global $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  set_local $1
  get_local $1
  get_local $0
  tee_local $2
  i32.const 1
  tee_local $3
  get_local $2
  get_local $3
  i32.gt_u
  select
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_local $4
  current_memory
  set_local $5
  get_local $4
  get_local $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $4
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   set_local $2
   get_local $5
   tee_local $3
   get_local $2
   tee_local $6
   get_local $3
   get_local $6
   i32.gt_s
   select
   set_local $3
   get_local $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $4
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 23
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/memory/memset (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $2
  i32.const -4
  i32.and
  set_local $2
  i32.const -1
  i32.const 255
  i32.div_u
  get_local $1
  i32.const 255
  i32.and
  i32.mul
  set_local $4
  get_local $0
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 12
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 8
  i32.sub
  get_local $4
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $4
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 28
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 24
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 20
  i32.sub
  get_local $4
  i32.store
  get_local $0
  get_local $2
  i32.add
  i32.const 16
  i32.sub
  get_local $4
  i32.store
  i32.const 24
  get_local $0
  i32.const 4
  i32.and
  i32.add
  set_local $3
  get_local $0
  get_local $3
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $4
  i64.extend_u/i32
  get_local $4
  i64.extend_u/i32
  i64.const 32
  i64.shl
  i64.or
  set_local $5
  block $break|0
   loop $continue|0
    get_local $2
    i32.const 32
    i32.ge_u
    if
     block
      get_local $0
      get_local $5
      i64.store
      get_local $0
      i32.const 8
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 16
      i32.add
      get_local $5
      i64.store
      get_local $0
      i32.const 24
      i32.add
      get_local $5
      i64.store
      get_local $2
      i32.const 32
      i32.sub
      set_local $2
      get_local $0
      i32.const 32
      i32.add
      set_local $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/array/Array<i32>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.0
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<u8>#fill (; 8 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $2
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $3
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $3
  get_local $2
  get_local $3
  i32.lt_s
  if
   get_local $4
   get_local $2
   i32.add
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $6
   get_local $3
   get_local $2
   i32.sub
   set_local $7
   get_local $6
   get_local $1
   get_local $7
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<u8>#__get (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isArraysEqual<u8> (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<u8>#get:length|inlined.2 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    get_local $1
    get_local $3
    call $~lib/array/Array<u8>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<u8>#fill|trampoline (; 11 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    set_local $2
   end
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/array/Array<u8>#fill
 )
 (func $~lib/array/Array<u32>#fill (; 12 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $4
  get_local $0
  i32.load offset=4
  set_local $5
  get_local $2
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $2
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $2
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $2
  get_local $3
  i32.const 0
  i32.lt_s
  if (result i32)
   get_local $5
   get_local $3
   i32.add
   tee_local $6
   i32.const 0
   tee_local $7
   get_local $6
   get_local $7
   i32.gt_s
   select
  else   
   get_local $3
   tee_local $6
   get_local $5
   tee_local $7
   get_local $6
   get_local $7
   i32.lt_s
   select
  end
  set_local $3
  block $break|0
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.0
     get_local $4
     get_local $2
     i32.const 2
     i32.shl
     i32.add
     get_local $1
     i32.store offset=8
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
 )
 (func $~lib/array/Array<u32>#__get (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isArraysEqual<u32> (; 14 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<u32>#get:length|inlined.0 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<u32>#get:length|inlined.2 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<u32>#__get
    get_local $1
    get_local $3
    call $~lib/array/Array<u32>#__get
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<u32>#fill|trampoline (; 15 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      get_global $~argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    set_local $2
   end
   get_global $~lib/builtins/i32.MAX_VALUE
   set_local $3
  end
  get_local $0
  get_local $1
  get_local $2
  get_local $3
  call $~lib/array/Array<u32>#fill
 )
 (func $std/array/internalCapacity<i32> (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.load
  set_local $1
  get_local $1
  i32.load
  i32.const 2
  i32.shr_s
 )
 (func $~lib/internal/memory/memcpy (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    get_local $2
    if (result i32)
     get_local $1
     i32.const 3
     i32.and
    else     
     get_local $2
    end
    if
     block
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
     end
     br $continue|0
    end
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     get_local $2
     i32.const 16
     i32.ge_u
     if
      block
       get_local $0
       get_local $1
       i32.load
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
      end
      br $continue|1
     end
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    block (result i32)
     get_local $0
     tee_local $5
     i32.const 1
     i32.add
     set_local $0
     get_local $5
    end
    block (result i32)
     get_local $1
     tee_local $5
     i32.const 1
     i32.add
     set_local $1
     get_local $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       get_local $0
       i32.const 3
       i32.and
       set_local $5
       get_local $5
       i32.const 1
       i32.eq
       br_if $case0|2
       get_local $5
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       get_local $1
       i32.load
       set_local $3
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        get_local $0
        tee_local $5
        i32.const 1
        i32.add
        set_local $0
        get_local $5
       end
       block (result i32)
        get_local $1
        tee_local $5
        i32.const 1
        i32.add
        set_local $1
        get_local $5
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 3
       i32.sub
       set_local $2
       block $break|3
        loop $continue|3
         get_local $2
         i32.const 17
         i32.ge_u
         if
          block
           get_local $1
           i32.const 1
           i32.add
           i32.load
           set_local $4
           get_local $0
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 5
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 4
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 9
           i32.add
           i32.load
           set_local $4
           get_local $0
           i32.const 8
           i32.add
           get_local $3
           i32.const 24
           i32.shr_u
           get_local $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 13
           i32.add
           i32.load
           set_local $3
           get_local $0
           i32.const 12
           i32.add
           get_local $4
           i32.const 24
           i32.shr_u
           get_local $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           get_local $1
           i32.const 16
           i32.add
           set_local $1
           get_local $0
           i32.const 16
           i32.add
           set_local $0
           get_local $2
           i32.const 16
           i32.sub
           set_local $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      get_local $1
      i32.load
      set_local $3
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       get_local $0
       tee_local $5
       i32.const 1
       i32.add
       set_local $0
       get_local $5
      end
      block (result i32)
       get_local $1
       tee_local $5
       i32.const 1
       i32.add
       set_local $1
       get_local $5
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 2
      i32.sub
      set_local $2
      block $break|4
       loop $continue|4
        get_local $2
        i32.const 18
        i32.ge_u
        if
         block
          get_local $1
          i32.const 2
          i32.add
          i32.load
          set_local $4
          get_local $0
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 6
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 4
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 10
          i32.add
          i32.load
          set_local $4
          get_local $0
          i32.const 8
          i32.add
          get_local $3
          i32.const 16
          i32.shr_u
          get_local $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 14
          i32.add
          i32.load
          set_local $3
          get_local $0
          i32.const 12
          i32.add
          get_local $4
          i32.const 16
          i32.shr_u
          get_local $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 16
          i32.add
          set_local $1
          get_local $0
          i32.const 16
          i32.add
          set_local $0
          get_local $2
          i32.const 16
          i32.sub
          set_local $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     get_local $1
     i32.load
     set_local $3
     block (result i32)
      get_local $0
      tee_local $5
      i32.const 1
      i32.add
      set_local $0
      get_local $5
     end
     block (result i32)
      get_local $1
      tee_local $5
      i32.const 1
      i32.add
      set_local $1
      get_local $5
     end
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     block $break|5
      loop $continue|5
       get_local $2
       i32.const 19
       i32.ge_u
       if
        block
         get_local $1
         i32.const 3
         i32.add
         i32.load
         set_local $4
         get_local $0
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 7
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 4
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 11
         i32.add
         i32.load
         set_local $4
         get_local $0
         i32.const 8
         i32.add
         get_local $3
         i32.const 8
         i32.shr_u
         get_local $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 15
         i32.add
         i32.load
         set_local $3
         get_local $0
         i32.const 12
         i32.add
         get_local $4
         i32.const 8
         i32.shr_u
         get_local $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 16
         i32.add
         set_local $1
         get_local $0
         i32.const 16
         i32.add
         set_local $0
         get_local $2
         i32.const 16
         i32.sub
         set_local $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $5
    i32.const 1
    i32.add
    set_local $0
    get_local $5
   end
   block (result i32)
    get_local $1
    tee_local $5
    i32.const 1
    i32.add
    set_local $1
    get_local $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 18 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  if (result i32)
   get_local $3
  else   
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
  end
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      get_local $0
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $2
        i32.const 1
        i32.sub
        set_local $2
        block (result i32)
         get_local $0
         tee_local $3
         i32.const 1
         i32.add
         set_local $0
         get_local $3
        end
        block (result i32)
         get_local $1
         tee_local $3
         i32.const 1
         i32.add
         set_local $1
         get_local $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $0
        get_local $1
        i64.load
        i64.store
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        i32.const 8
        i32.add
        set_local $0
        get_local $1
        i32.const 8
        i32.add
        set_local $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     get_local $2
     if
      block
       block (result i32)
        get_local $0
        tee_local $3
        i32.const 1
        i32.add
        set_local $0
        get_local $3
       end
       block (result i32)
        get_local $1
        tee_local $3
        i32.const 1
        i32.add
        set_local $1
        get_local $3
       end
       i32.load8_u
       i32.store8
       get_local $2
       i32.const 1
       i32.sub
       set_local $2
      end
      br $continue|2
     end
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      get_local $0
      get_local $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        get_local $2
        i32.eqz
        if
         return
        end
        get_local $0
        get_local $2
        i32.const 1
        i32.sub
        tee_local $2
        i32.add
        get_local $1
        get_local $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      get_local $2
      i32.const 8
      i32.ge_u
      if
       block
        get_local $2
        i32.const 8
        i32.sub
        set_local $2
        get_local $0
        get_local $2
        i32.add
        get_local $1
        get_local $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     get_local $2
     if
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.gt_s
  if
   get_local $1
   get_global $~lib/internal/arraybuffer/MAX_BLENGTH
   i32.le_s
   i32.eqz
   if
    i32.const 0
    i32.const 40
    i32.const 37
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   get_local $2
   call $~lib/internal/arraybuffer/computeSize
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
    block $~lib/memory/memory.fill|inlined.2
     get_local $0
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     get_local $2
     i32.add
     set_local $3
     i32.const 0
     set_local $4
     get_local $1
     get_local $2
     i32.sub
     set_local $5
     get_local $3
     get_local $4
     get_local $5
     call $~lib/internal/memory/memset
    end
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    set_local $5
    block $~lib/memory/memory.copy|inlined.0
     get_local $5
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     set_local $4
     get_local $0
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     set_local $3
     get_local $4
     get_local $3
     get_local $2
     call $~lib/internal/memory/memmove
    end
    block $~lib/memory/memory.fill|inlined.3
     get_local $5
     get_global $~lib/internal/arraybuffer/HEADER_SIZE
     i32.add
     get_local $2
     i32.add
     set_local $3
     i32.const 0
     set_local $4
     get_local $1
     get_local $2
     i32.sub
     set_local $6
     get_local $3
     get_local $4
     get_local $6
     call $~lib/internal/memory/memset
    end
    get_local $5
    return
   end
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     i32.const 0
     i32.const 40
     i32.const 61
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#push (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $2
  i32.const 1
  i32.add
  set_local $5
  get_local $2
  get_local $4
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 174
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
  end
  get_local $0
  get_local $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.0
   get_local $3
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $5
 )
 (func $~lib/array/Array<i32>#__get (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<i32>#pop (; 22 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=4
  set_local $1
  get_local $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 8
   i32.const 205
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.1 (result i32)
   get_local $0
   i32.load
   set_local $2
   get_local $1
   i32.const 1
   i32.sub
   tee_local $1
   set_local $3
   get_local $2
   get_local $3
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $0
  get_local $1
  i32.store offset=4
  get_local $4
 )
 (func $~lib/array/Array<i32>#concat (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
  else   
   get_local $1
   i32.load offset=4
  end
  set_local $3
  get_local $2
  get_local $3
  i32.add
  set_local $4
  i32.const 0
  get_local $4
  call $~lib/array/Array<i32>#constructor
  set_local $5
  get_local $2
  if
   get_local $5
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $6
   get_local $0
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $7
   get_local $2
   i32.const 2
   i32.shl
   set_local $8
   get_local $6
   get_local $7
   get_local $8
   call $~lib/internal/memory/memmove
  end
  get_local $3
  if
   get_local $5
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   set_local $8
   get_local $1
   i32.load
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $7
   get_local $3
   i32.const 2
   i32.shl
   set_local $6
   get_local $8
   get_local $7
   get_local $6
   call $~lib/internal/memory/memmove
  end
  get_local $5
 )
 (func $~lib/array/Array<i32>#unshift (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  set_local $3
  get_local $0
  i32.load offset=4
  set_local $4
  get_local $4
  i32.const 1
  i32.add
  set_local $5
  get_local $4
  get_local $3
  i32.ge_u
  if
   get_local $4
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 295
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   get_local $2
   get_local $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $2
   get_local $2
   i32.load
   i32.const 2
   i32.shr_u
   set_local $3
   get_local $0
   get_local $2
   i32.store
  end
  block $~lib/memory/memory.copy|inlined.3
   get_local $2
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   i32.const 4
   i32.add
   set_local $6
   get_local $2
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $7
   get_local $3
   i32.const 1
   i32.sub
   i32.const 2
   i32.shl
   set_local $8
   get_local $6
   get_local $7
   get_local $8
   call $~lib/internal/memory/memmove
  end
  block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.1
   i32.const 0
   set_local $8
   get_local $2
   get_local $8
   i32.const 2
   i32.shl
   i32.add
   get_local $1
   i32.store offset=8
  end
  get_local $0
  get_local $5
  i32.store offset=4
  get_local $5
 )
 (func $~lib/array/Array<i32>#shift (; 25 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load offset=4
  set_local $1
  get_local $1
  i32.const 1
  i32.lt_s
  if
   i32.const 0
   i32.const 8
   i32.const 266
   i32.const 20
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  set_local $2
  block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.2 (result i32)
   i32.const 0
   set_local $3
   get_local $2
   get_local $3
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $1
  i32.const 1
  i32.sub
  set_local $5
  block $~lib/memory/memory.copy|inlined.4
   get_local $2
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $3
   get_local $2
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   i32.const 4
   i32.add
   set_local $6
   get_local $5
   i32.const 2
   i32.shl
   set_local $7
   get_local $3
   get_local $6
   get_local $7
   call $~lib/internal/memory/memmove
  end
  block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.2
   i32.const 0
   set_local $7
   get_local $2
   get_local $5
   i32.const 2
   i32.shl
   i32.add
   get_local $7
   i32.store offset=8
  end
  get_local $0
  get_local $5
  i32.store offset=4
  get_local $4
 )
 (func $~lib/array/Array<i32>#reverse (; 26 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $1
  block $break|0
   block
    i32.const 0
    set_local $2
    get_local $0
    i32.load offset=4
    i32.const 1
    i32.sub
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.3 (result i32)
      get_local $1
      get_local $2
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.3
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.4 (result i32)
       get_local $1
       get_local $3
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      set_local $5
      get_local $1
      get_local $2
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.store offset=8
     end
     block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.4
      get_local $1
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      get_local $4
      i32.store offset=8
     end
    end
    block
     get_local $2
     i32.const 1
     i32.add
     set_local $2
     get_local $3
     i32.const 1
     i32.sub
     set_local $3
    end
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#indexOf (; 27 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $3
  i32.const 0
  i32.eq
  tee_local $4
  if (result i32)
   get_local $4
  else   
   get_local $2
   get_local $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  get_local $2
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $2
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $2
  end
  get_local $0
  i32.load
  set_local $6
  block $break|0
   loop $continue|0
    get_local $2
    get_local $3
    i32.lt_s
    if
     block
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.6 (result i32)
       get_local $6
       get_local $2
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      get_local $1
      i32.eq
      if
       get_local $2
       return
      end
      get_local $2
      i32.const 1
      i32.add
      set_local $2
     end
     br $continue|0
    end
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<i32>#splice (; 28 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $2
  i32.const 1
  i32.lt_s
  if
   return
  end
  get_local $0
  i32.load offset=4
  set_local $3
  get_local $1
  i32.const 0
  i32.lt_s
  if
   get_local $3
   get_local $1
   i32.add
   tee_local $4
   i32.const 0
   tee_local $5
   get_local $4
   get_local $5
   i32.gt_s
   select
   set_local $1
  end
  get_local $1
  get_local $3
  i32.ge_s
  if
   return
  end
  get_local $2
  tee_local $4
  get_local $3
  get_local $1
  i32.sub
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $2
  get_local $0
  i32.load
  set_local $6
  block $~lib/memory/memory.copy|inlined.5
   get_local $6
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   set_local $4
   get_local $6
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   get_local $1
   get_local $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   set_local $5
   get_local $2
   i32.const 2
   i32.shl
   set_local $7
   get_local $4
   get_local $5
   get_local $7
   call $~lib/internal/memory/memmove
  end
  get_local $0
  get_local $3
  get_local $2
  i32.sub
  i32.store offset=4
 )
 (func $~lib/array/Array<i32>#__set (; 29 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 101
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.5
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $start~anonymous|1 (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.eq
 )
 (func $~lib/array/Array<i32>#findIndex (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.8 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiii)
    end
    i32.const 1
    i32.and
    if
     get_local $3
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $start~anonymous|2 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 1
  i32.eq
 )
 (func $start~anonymous|3 (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|4 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|5 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|6 (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  i32.const 100
  i32.eq
 )
 (func $start~anonymous|7 (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#every (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.10 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiii)
    end
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $start~anonymous|8 (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 0
  i32.le_s
 )
 (func $start~anonymous|9 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  i32.const 10
  i32.lt_s
 )
 (func $start~anonymous|10 (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 10
  i32.lt_s
 )
 (func $start~anonymous|11 (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  i32.const 3
  i32.lt_s
 )
 (func $start~anonymous|12 (; 43 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 3
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#some (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.12 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiii)
    end
    i32.const 1
    i32.and
    if
     i32.const 1
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
 )
 (func $start~anonymous|13 (; 45 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const -1
  i32.le_s
 )
 (func $start~anonymous|14 (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  i32.const 10
  i32.gt_s
 )
 (func $start~anonymous|15 (; 47 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 10
  i32.gt_s
 )
 (func $start~anonymous|16 (; 48 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  i32.const 3
  i32.gt_s
 )
 (func $start~anonymous|17 (; 49 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $~lib/array/Array<i32>#forEach (; 50 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load
  set_local $2
  block $break|0
   block
    i32.const 0
    set_local $3
    get_local $0
    i32.load offset=4
    set_local $4
   end
   loop $repeat|0
    get_local $3
    get_local $4
    i32.lt_s
    tee_local $5
    if (result i32)
     get_local $3
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $5
    end
    i32.eqz
    br_if $break|0
    block
     i32.const 3
     set_global $~argc
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.13 (result i32)
      get_local $2
      get_local $3
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $3
     get_local $0
     get_local $1
     call_indirect (type $iiiv)
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $start~anonymous|18 (; 51 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $start~anonymous|19 (; 52 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $start~anonymous|20 (; 53 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
 )
 (func $start~anonymous|21 (; 54 ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  get_local $0
  f32.convert_s/i32
 )
 (func $~lib/array/Array<f32>#constructor (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.4
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<i32>#map<f32> (; 56 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/array/Array<f32>#constructor
  set_local $4
  get_local $4
  i32.load
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $6
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.0
     block (result f32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.14 (result i32)
       get_local $2
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      get_local $6
      get_local $0
      get_local $1
      call_indirect (type $iiif)
     end
     set_local $8
     get_local $5
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $8
     f32.store offset=8
    end
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $4
 )
 (func $~lib/array/Array<f32>#__get (; 57 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result f32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   f32.load offset=8
  else   
   unreachable
  end
 )
 (func $start~anonymous|22 (; 58 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
 )
 (func $~lib/array/Array<i32>#map<i32> (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  get_local $3
  call $~lib/array/Array<i32>#constructor
  set_local $4
  get_local $4
  i32.load
  set_local $5
  block $break|0
   i32.const 0
   set_local $6
   loop $repeat|0
    get_local $6
    get_local $3
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $6
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.6
     block (result i32)
      i32.const 3
      set_global $~argc
      block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.15 (result i32)
       get_local $2
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      get_local $6
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     set_local $7
     get_local $5
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $7
     i32.store offset=8
    end
    get_local $6
    i32.const 1
    i32.add
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $4
 )
 (func $start~anonymous|23 (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
 )
 (func $start~anonymous|24 (; 61 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
 )
 (func $start~anonymous|25 (; 62 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $~lib/array/Array<i32>#filter (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $0
  i32.load offset=4
  set_local $3
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  set_local $4
  block $break|0
   i32.const 0
   set_local $5
   loop $repeat|0
    get_local $5
    get_local $3
    i32.lt_s
    tee_local $6
    if (result i32)
     get_local $5
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $6
    end
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.16 (result i32)
      get_local $2
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $6
     block (result i32)
      i32.const 3
      set_global $~argc
      get_local $6
      get_local $5
      get_local $0
      get_local $1
      call_indirect (type $iiii)
     end
     i32.const 1
     i32.and
     if
      get_local $4
      get_local $6
      call $~lib/array/Array<i32>#push
      drop
     end
    end
    get_local $5
    i32.const 1
    i32.add
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $4
 )
 (func $start~anonymous|26 (; 64 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  i32.const 100
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $start~anonymous|27 (; 65 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $start~anonymous|28 (; 66 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $2
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/i
  get_local $0
  i32.add
  set_global $std/array/i
  get_local $0
  i32.const 2
  i32.ge_s
 )
 (func $start~anonymous|29 (; 67 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 68 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   block
    i32.const 0
    set_local $5
    get_local $0
    i32.load offset=4
    set_local $6
   end
   loop $repeat|0
    get_local $5
    get_local $6
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $5
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.17 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.add
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|30 (; 69 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|31 (; 70 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 2
   i32.gt_s
  end
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 71 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   block
    i32.const 0
    set_local $5
    get_local $0
    i32.load offset=4
    set_local $6
   end
   loop $repeat|0
    get_local $5
    get_local $6
    i32.lt_s
    tee_local $7
    if (result i32)
     get_local $5
     get_local $0
     i32.load offset=4
     i32.lt_s
    else     
     get_local $7
    end
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.18 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.add
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|32 (; 72 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 100
   i32.gt_s
  end
 )
 (func $start~anonymous|33 (; 73 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|34 (; 74 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|35 (; 75 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|36 (; 76 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 77 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   get_local $0
   i32.load offset=4
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.19 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|37 (; 78 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|38 (; 79 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 2
   i32.gt_s
  end
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 80 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $2
  set_local $3
  get_local $0
  i32.load
  set_local $4
  block $break|0
   get_local $0
   i32.load offset=4
   i32.const 1
   i32.sub
   set_local $5
   loop $repeat|0
    get_local $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     set_global $~argc
     get_local $3
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.20 (result i32)
      get_local $4
      get_local $5
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     get_local $5
     get_local $0
     get_local $1
     call_indirect (type $iiiii)
    end
    set_local $3
    get_local $5
    i32.const 1
    i32.sub
    set_local $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $3
 )
 (func $start~anonymous|39 (; 81 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  i32.const 1
  i32.and
  if (result i32)
   get_local $0
  else   
   get_local $1
   i32.const 100
   i32.gt_s
  end
 )
 (func $start~anonymous|40 (; 82 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|41 (; 83 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $0
  get_local $1
  i32.add
 )
 (func $start~anonymous|42 (; 84 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  get_local $3
  call $~lib/array/Array<i32>#pop
  drop
  get_local $0
  get_local $1
  i32.add
 )
 (func $~lib/math/murmurHash3 (; 85 ;) (type $II) (param $0 i64) (result i64)
  get_local $0
  get_local $0
  i64.const 33
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  i64.const -49064778989728563
  i64.mul
  set_local $0
  get_local $0
  get_local $0
  i64.const 33
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  i64.const -4265267296055464877
  i64.mul
  set_local $0
  get_local $0
  get_local $0
  i64.const 33
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
 )
 (func $~lib/math/splitMix32 (; 86 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 1831565813
  i32.add
  set_local $0
  get_local $0
  get_local $0
  i32.const 15
  i32.shr_u
  i32.xor
  get_local $0
  i32.const 1
  i32.or
  i32.mul
  set_local $0
  get_local $0
  get_local $0
  get_local $0
  get_local $0
  i32.const 7
  i32.shr_u
  i32.xor
  get_local $0
  i32.const 61
  i32.or
  i32.mul
  i32.add
  i32.xor
  set_local $0
  get_local $0
  get_local $0
  i32.const 14
  i32.shr_u
  i32.xor
 )
 (func $~lib/math/NativeMath.seedRandom (; 87 ;) (type $Iv) (param $0 i64)
  get_local $0
  i64.eqz
  if
   i32.const 0
   i32.const 552
   i32.const 955
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  set_global $~lib/math/random_seeded
  get_local $0
  call $~lib/math/murmurHash3
  set_global $~lib/math/random_state0_64
  get_global $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  call $~lib/math/murmurHash3
  set_global $~lib/math/random_state1_64
  get_local $0
  i32.wrap/i64
  call $~lib/math/splitMix32
  set_global $~lib/math/random_state0_32
  get_global $~lib/math/random_state0_32
  call $~lib/math/splitMix32
  set_global $~lib/math/random_state1_32
 )
 (func $~lib/internal/array/insertionSort<f32> (; 88 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.0 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.1 (result f32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          f32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $ffi)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          f32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      f32.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/allocator/arena/__memory_free (; 89 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/internal/array/weakHeapSort<f32> (; 90 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  set_local $5
  block $~lib/memory/memory.fill|inlined.5
   i32.const 0
   set_local $6
   get_local $5
   get_local $6
   get_local $4
   call $~lib/internal/memory/memset
  end
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.2 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.3 (result f32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $ffi)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.2
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       get_local $9
       f32.store offset=8
      end
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.3
       get_local $0
       get_local $1
       i32.add
       get_local $8
       i32.const 2
       i32.shl
       i32.add
       get_local $10
       f32.store offset=8
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.4 (result f32)
      i32.const 0
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      f32.load offset=8
     end
     set_local $10
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.4
      i32.const 0
      set_local $8
      block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.5 (result f32)
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       f32.load offset=8
      end
      set_local $9
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      get_local $9
      f32.store offset=8
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.5
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $10
      f32.store offset=8
     end
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $7
       get_local $6
       i32.lt_s
       if
        get_local $7
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.6 (result f32)
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 2
          i32.shl
          i32.add
          f32.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.7 (result f32)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          f32.load offset=8
         end
         set_local $9
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $9
          get_local $3
          call_indirect (type $ffi)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.6
           get_local $0
           get_local $1
           i32.add
           get_local $8
           i32.const 2
           i32.shl
           i32.add
           get_local $10
           f32.store offset=8
          end
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.7
           i32.const 0
           set_local $11
           get_local $0
           get_local $1
           i32.add
           get_local $11
           i32.const 2
           i32.shl
           i32.add
           get_local $9
           f32.store offset=8
          end
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.0
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.8 (result f32)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   f32.load offset=8
  end
  set_local $12
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.8
   i32.const 1
   set_local $6
   block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.9 (result f32)
    i32.const 0
    set_local $7
    get_local $0
    get_local $1
    i32.add
    get_local $7
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
   end
   set_local $10
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   get_local $10
   f32.store offset=8
  end
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.9
   i32.const 0
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   get_local $12
   f32.store offset=8
  end
 )
 (func $~lib/array/Array<f32>#sort (; 91 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.1 (result f32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
   end
   set_local $5
   block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.2 (result f32)
    i32.const 0
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    f32.load offset=8
   end
   set_local $6
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $5
    get_local $6
    get_local $1
    call_indirect (type $ffi)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.1
     i32.const 1
     set_local $4
     get_local $3
     get_local $4
     i32.const 2
     i32.shl
     i32.add
     get_local $6
     f32.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.2
     i32.const 0
     set_local $4
     get_local $3
     get_local $4
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     f32.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<f32>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<f32>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<f32>#sort|trampoline~anonymous|43 (; 92 ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.reinterpret/f32
  set_local $2
  get_local $1
  i32.reinterpret/f32
  set_local $3
  get_local $2
  get_local $2
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  set_local $2
  get_local $3
  get_local $3
  i32.const 31
  i32.shr_s
  i32.const 1
  i32.shr_u
  i32.xor
  set_local $3
  get_local $2
  get_local $3
  i32.gt_s
  get_local $2
  get_local $3
  i32.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 93 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<f32>|inlined.0 (result i32)
    i32.const 43
    br $~lib/internal/array/defaultComparator<f32>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<f32>#sort
 )
 (func $~lib/builtins/isNaN<f32> (; 94 ;) (type $fi) (param $0 f32) (result i32)
  get_local $0
  get_local $0
  f32.ne
 )
 (func $std/array/isArraysEqual<f32> (; 95 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<f32>#get:length|inlined.1 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<f32>#get:length|inlined.3 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    block $continue|0
     get_local $3
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      get_local $0
      get_local $3
      call $~lib/array/Array<f32>#__get
      call $~lib/builtins/isNaN<f32>
      get_local $1
      get_local $3
      call $~lib/array/Array<f32>#__get
      call $~lib/builtins/isNaN<f32>
      i32.eq
      if
       br $continue|0
      end
      get_local $0
      get_local $3
      call $~lib/array/Array<f32>#__get
      get_local $1
      get_local $3
      call $~lib/array/Array<f32>#__get
      f32.ne
      if
       i32.const 0
       return
      end
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/internal/array/insertionSort<f64> (; 96 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.0 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.1 (result f64)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 3
          i32.shl
          i32.add
          f64.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          get_local $7
          f64.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      get_local $5
      f64.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<f64> (; 97 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  set_local $5
  block $~lib/memory/memory.fill|inlined.6
   i32.const 0
   set_local $6
   get_local $5
   get_local $6
   get_local $4
   call $~lib/internal/memory/memset
  end
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.2 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.3 (result f64)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $FFi)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.2
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 3
       i32.shl
       i32.add
       get_local $9
       f64.store offset=8
      end
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.3
       get_local $0
       get_local $1
       i32.add
       get_local $8
       i32.const 3
       i32.shl
       i32.add
       get_local $10
       f64.store offset=8
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.4 (result f64)
      i32.const 0
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $10
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.4
      i32.const 0
      set_local $8
      block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.5 (result f64)
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 3
       i32.shl
       i32.add
       f64.load offset=8
      end
      set_local $9
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 3
      i32.shl
      i32.add
      get_local $9
      f64.store offset=8
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.5
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 3
      i32.shl
      i32.add
      get_local $10
      f64.store offset=8
     end
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $7
       get_local $6
       i32.lt_s
       if
        get_local $7
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.6 (result f64)
          i32.const 0
          set_local $11
          get_local $0
          get_local $1
          i32.add
          get_local $11
          i32.const 3
          i32.shl
          i32.add
          f64.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.7 (result f64)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 3
          i32.shl
          i32.add
          f64.load offset=8
         end
         set_local $9
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $9
          get_local $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.6
           get_local $0
           get_local $1
           i32.add
           get_local $8
           i32.const 3
           i32.shl
           i32.add
           get_local $10
           f64.store offset=8
          end
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.7
           i32.const 0
           set_local $11
           get_local $0
           get_local $1
           i32.add
           get_local $11
           i32.const 3
           i32.shl
           i32.add
           get_local $9
           f64.store offset=8
          end
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.1
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.1
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.8 (result f64)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 3
   i32.shl
   i32.add
   f64.load offset=8
  end
  set_local $12
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.8
   i32.const 1
   set_local $6
   block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.9 (result f64)
    i32.const 0
    set_local $7
    get_local $0
    get_local $1
    i32.add
    get_local $7
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
   end
   set_local $10
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 3
   i32.shl
   i32.add
   get_local $10
   f64.store offset=8
  end
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.9
   i32.const 0
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 3
   i32.shl
   i32.add
   get_local $12
   f64.store offset=8
  end
 )
 (func $~lib/array/Array<f64>#sort (; 98 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.0 (result f64)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
   end
   set_local $5
   block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.1 (result f64)
    i32.const 0
    set_local $4
    get_local $3
    get_local $4
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
   end
   set_local $6
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $5
    get_local $6
    get_local $1
    call_indirect (type $FFi)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<f64,f64>|inlined.0
     i32.const 1
     set_local $4
     get_local $3
     get_local $4
     i32.const 3
     i32.shl
     i32.add
     get_local $6
     f64.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<f64,f64>|inlined.1
     i32.const 0
     set_local $4
     get_local $3
     get_local $4
     i32.const 3
     i32.shl
     i32.add
     get_local $5
     f64.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<f64>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<f64>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<f64>#sort|trampoline~anonymous|44 (; 99 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  get_local $0
  i64.reinterpret/f64
  set_local $2
  get_local $1
  i64.reinterpret/f64
  set_local $3
  get_local $2
  get_local $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  set_local $2
  get_local $3
  get_local $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  set_local $3
  get_local $2
  get_local $3
  i64.gt_s
  get_local $2
  get_local $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 100 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<f64>|inlined.0 (result i32)
    i32.const 44
    br $~lib/internal/array/defaultComparator<f64>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<f64>#sort
 )
 (func $~lib/array/Array<f64>#__get (; 101 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 3
  i32.shr_u
  i32.lt_u
  if (result f64)
   get_local $2
   get_local $1
   i32.const 3
   i32.shl
   i32.add
   f64.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/builtins/isNaN<f64> (; 102 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  get_local $0
  f64.ne
 )
 (func $std/array/isArraysEqual<f64> (; 103 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<f64>#get:length|inlined.0 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<f64>#get:length|inlined.2 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    block $continue|0
     get_local $3
     get_local $2
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      get_local $0
      get_local $3
      call $~lib/array/Array<f64>#__get
      call $~lib/builtins/isNaN<f64>
      get_local $1
      get_local $3
      call $~lib/array/Array<f64>#__get
      call $~lib/builtins/isNaN<f64>
      i32.eq
      if
       br $continue|0
      end
      get_local $0
      get_local $3
      call $~lib/array/Array<f64>#__get
      get_local $1
      get_local $3
      call $~lib/array/Array<f64>#__get
      f64.ne
      if
       i32.const 0
       return
      end
     end
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/internal/array/insertionSort<i32> (; 104 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $7
      get_local $0
      get_local $1
      i32.add
      get_local $7
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<i32> (; 105 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.3 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.3
  end
  set_local $5
  block $~lib/memory/memory.fill|inlined.7
   i32.const 0
   set_local $6
   get_local $5
   get_local $6
   get_local $4
   call $~lib/internal/memory/memset
  end
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.2 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.3 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $iii)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.2
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       get_local $9
       i32.store offset=8
      end
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.3
       get_local $0
       get_local $1
       i32.add
       get_local $8
       i32.const 2
       i32.shl
       i32.add
       get_local $10
       i32.store offset=8
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.4 (result i32)
      i32.const 0
      set_local $10
      get_local $0
      get_local $1
      i32.add
      get_local $10
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.4
      i32.const 0
      set_local $9
      block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.5 (result i32)
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $9
      i32.const 2
      i32.shl
      i32.add
      get_local $8
      i32.store offset=8
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.5
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $10
      i32.store offset=8
     end
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $9
       get_local $6
       i32.lt_s
       if
        get_local $9
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.6 (result i32)
          i32.const 0
          set_local $7
          get_local $0
          get_local $1
          i32.add
          get_local $7
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.7 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.6
           get_local $0
           get_local $1
           i32.add
           get_local $8
           i32.const 2
           i32.shl
           i32.add
           get_local $10
           i32.store offset=8
          end
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.7
           i32.const 0
           set_local $11
           get_local $0
           get_local $1
           i32.add
           get_local $11
           i32.const 2
           i32.shl
           i32.add
           get_local $7
           i32.store offset=8
          end
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.2
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.2
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.8 (result i32)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $12
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.8
   i32.const 1
   set_local $6
   block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.9 (result i32)
    i32.const 0
    set_local $9
    get_local $0
    get_local $1
    i32.add
    get_local $9
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $9
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   get_local $9
   i32.store offset=8
  end
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.9
   i32.const 0
   set_local $9
   get_local $0
   get_local $1
   i32.add
   get_local $9
   i32.const 2
   i32.shl
   i32.add
   get_local $12
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<i32>#sort (; 106 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.21 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.22 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.7
     i32.const 1
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.8
     i32.const 0
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $4
     i32.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<i32>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<i32>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<i32>#sort|trampoline~anonymous|45 (; 107 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 108 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<i32>|inlined.0 (result i32)
    i32.const 45
    br $~lib/internal/array/defaultComparator<i32>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<i32>#sort
 )
 (func $std/array/isArraysEqual<i32> (; 109 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<i32>#get:length|inlined.38 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<i32>#get:length|inlined.40 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<i32>#__get
    get_local $1
    get_local $3
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/internal/array/insertionSort<u32> (; 110 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $7
      get_local $0
      get_local $1
      i32.add
      get_local $7
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/internal/array/weakHeapSort<u32> (; 111 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  get_local $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  set_local $4
  block $~lib/memory/memory.allocate|inlined.4 (result i32)
   get_local $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.4
  end
  set_local $5
  block $~lib/memory/memory.fill|inlined.8
   i32.const 0
   set_local $6
   get_local $5
   get_local $6
   get_local $4
   call $~lib/internal/memory/memset
  end
  block $break|0
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|0
    get_local $6
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     get_local $6
     set_local $7
     block $break|1
      loop $continue|1
       get_local $7
       i32.const 1
       i32.and
       get_local $5
       get_local $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        get_local $7
        i32.const 1
        i32.shr_s
        set_local $7
        br $continue|1
       end
      end
     end
     get_local $7
     i32.const 1
     i32.shr_s
     set_local $8
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.2 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $9
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.3 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     block (result i32)
      i32.const 2
      set_global $~argc
      get_local $9
      get_local $10
      get_local $3
      call_indirect (type $iii)
     end
     i32.const 0
     i32.lt_s
     if
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      get_local $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      get_local $6
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.2
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       get_local $9
       i32.store offset=8
      end
      block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.3
       get_local $0
       get_local $1
       i32.add
       get_local $8
       i32.const 2
       i32.shl
       i32.add
       get_local $10
       i32.store offset=8
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   get_local $2
   i32.const 1
   i32.sub
   set_local $6
   loop $repeat|2
    get_local $6
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.4 (result i32)
      i32.const 0
      set_local $10
      get_local $0
      get_local $1
      i32.add
      get_local $10
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $10
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.4
      i32.const 0
      set_local $9
      block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.5 (result i32)
       get_local $0
       get_local $1
       i32.add
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i32.load offset=8
      end
      set_local $8
      get_local $0
      get_local $1
      i32.add
      get_local $9
      i32.const 2
      i32.shl
      i32.add
      get_local $8
      i32.store offset=8
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.5
      get_local $0
      get_local $1
      i32.add
      get_local $6
      i32.const 2
      i32.shl
      i32.add
      get_local $10
      i32.store offset=8
     end
     i32.const 1
     set_local $8
     block $break|3
      loop $continue|3
       get_local $8
       i32.const 1
       i32.shl
       get_local $5
       get_local $8
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       get_local $8
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       tee_local $9
       get_local $6
       i32.lt_s
       if
        get_local $9
        set_local $8
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       get_local $8
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.6 (result i32)
          i32.const 0
          set_local $7
          get_local $0
          get_local $1
          i32.add
          get_local $7
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $10
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.7 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $10
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          get_local $5
          get_local $8
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          get_local $8
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.6
           get_local $0
           get_local $1
           i32.add
           get_local $8
           i32.const 2
           i32.shl
           i32.add
           get_local $10
           i32.store offset=8
          end
          block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.7
           i32.const 0
           set_local $11
           get_local $0
           get_local $1
           i32.add
           get_local $11
           i32.const 2
           i32.shl
           i32.add
           get_local $7
           i32.store offset=8
          end
         end
         get_local $8
         i32.const 1
         i32.shr_s
         set_local $8
        end
        br $continue|4
       end
      end
     end
    end
    get_local $6
    i32.const 1
    i32.sub
    set_local $6
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.3
   block
    get_local $5
    call $~lib/allocator/arena/__memory_free
    br $~lib/memory/memory.free|inlined.3
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.8 (result i32)
   i32.const 1
   set_local $6
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $12
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.8
   i32.const 1
   set_local $6
   block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.9 (result i32)
    i32.const 0
    set_local $9
    get_local $0
    get_local $1
    i32.add
    get_local $9
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $9
   get_local $0
   get_local $1
   i32.add
   get_local $6
   i32.const 2
   i32.shl
   i32.add
   get_local $9
   i32.store offset=8
  end
  block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.9
   i32.const 0
   set_local $9
   get_local $0
   get_local $1
   i32.add
   get_local $9
   i32.const 2
   i32.shl
   i32.add
   get_local $12
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u32>#sort (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.1 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.2 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.1
     i32.const 1
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.2
     i32.const 0
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $4
     i32.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $2
  i32.const 256
  i32.lt_s
  if
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/insertionSort<u32>
  else   
   get_local $3
   i32.const 0
   get_local $2
   get_local $1
   call $~lib/internal/array/weakHeapSort<u32>
  end
  get_local $0
  return
 )
 (func $~lib/array/Array<u32>#sort|trampoline~anonymous|46 (; 113 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.gt_u
  get_local $0
  get_local $1
  i32.lt_u
  i32.sub
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 114 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     get_global $~argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/array/defaultComparator<u32>|inlined.0 (result i32)
    i32.const 46
    br $~lib/internal/array/defaultComparator<u32>|inlined.0
   end
   set_local $1
  end
  get_local $0
  get_local $1
  call $~lib/array/Array<u32>#sort
 )
 (func $std/array/createReverseOrderedArray (; 115 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<i32>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<i32>#get:length|inlined.42 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    block $~lib/array/Array<i32>#get:length|inlined.43 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    get_local $2
    i32.sub
    call $~lib/array/Array<i32>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $~lib/math/NativeMath.random (; 116 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  get_global $~lib/math/random_seeded
  i32.eqz
  if
   i32.const 0
   i32.const 552
   i32.const 964
   i32.const 24
   call $~lib/env/abort
   unreachable
  end
  get_global $~lib/math/random_state0_64
  set_local $0
  get_global $~lib/math/random_state1_64
  set_local $1
  get_local $1
  set_global $~lib/math/random_state0_64
  get_local $0
  get_local $0
  i64.const 23
  i64.shl
  i64.xor
  set_local $0
  get_local $0
  get_local $0
  i64.const 17
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  get_local $1
  i64.xor
  set_local $0
  get_local $0
  get_local $1
  i64.const 26
  i64.shr_u
  i64.xor
  set_local $0
  get_local $0
  set_global $~lib/math/random_state1_64
  get_local $1
  get_local $0
  i64.add
  i64.const 4503599627370495
  i64.and
  i64.const 4607182418800017408
  i64.or
  set_local $2
  get_local $2
  f64.reinterpret/i64
  f64.const 1
  f64.sub
 )
 (func $std/array/createRandomOrderedArray (; 117 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<i32>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<i32>#get:length|inlined.45 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    call $~lib/math/NativeMath.random
    block $~lib/array/Array<i32>#get:length|inlined.46 (result i32)
     get_local $1
     i32.load offset=4
    end
    f64.convert_s/i32
    f64.mul
    i32.trunc_s/f64
    call $~lib/array/Array<i32>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $std/array/assertSortedDefault<i32>~anonymous|47 (; 118 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $std/array/isSorted<i32> (; 119 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<i32>#get:length|inlined.47 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<i32>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<i32>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<i32> (; 120 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<i32>#sort
  get_local $1
  call $std/array/isSorted<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 688
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/array/assertSortedDefault<i32> (; 121 ;) (type $iv) (param $0 i32)
  get_local $0
  block $~lib/internal/array/defaultComparator<i32>|inlined.1 (result i32)
   i32.const 47
   br $~lib/internal/array/defaultComparator<i32>|inlined.1
  end
  call $std/array/assertSorted<i32>
 )
 (func $start~anonymous|48 (; 122 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $start~anonymous|49 (; 123 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.sub
 )
 (func $start~anonymous|50 (; 124 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  i32.sub
 )
 (func $start~anonymous|51 (; 125 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $1
  get_local $0
  i32.sub
 )
 (func $~lib/array/Array<Array<i32>>#constructor (; 126 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.9
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<Array<i32>>#__set (; 127 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 101
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.0
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<Array<i32>>#__get (; 128 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/createReverseOrderedNestedArray (; 129 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<Array<i32>>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<Array<i32>>#get:length|inlined.1 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     get_local $1
     get_local $2
     i32.const 0
     i32.const 1
     call $~lib/array/Array<i32>#constructor
     call $~lib/array/Array<Array<i32>>#__set
     get_local $1
     get_local $2
     call $~lib/array/Array<Array<i32>>#__get
     i32.const 0
     block $~lib/array/Array<Array<i32>>#get:length|inlined.2 (result i32)
      get_local $1
      i32.load offset=4
     end
     i32.const 1
     i32.sub
     get_local $2
     i32.sub
     call $~lib/array/Array<i32>#__set
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $start~anonymous|52 (; 130 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.const 0
  call $~lib/array/Array<i32>#__get
  get_local $1
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.sub
 )
 (func $~lib/internal/array/insertionSort<Array<i32>> (; 131 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $7
      get_local $0
      get_local $1
      i32.add
      get_local $7
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<Array<i32>>#sort (; 132 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.1 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.2 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.1
     i32.const 1
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.2
     i32.const 0
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $4
     i32.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $3
  i32.const 0
  get_local $2
  get_local $1
  call $~lib/internal/array/insertionSort<Array<i32>>
  get_local $0
  return
 )
 (func $std/array/isSorted<Array<i32>> (; 133 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<Array<i32>>#get:length|inlined.3 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<Array<i32>>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<Array<i32>>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<Array<i32>> (; 134 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<Array<i32>>#sort
  get_local $1
  call $std/array/isSorted<Array<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 688
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/array/Array<Proxy<i32>>#constructor (; 135 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.10
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $std/array/Proxy<i32>#constructor (; 136 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 4
    call $~lib/memory/memory.allocate
    set_local $2
    get_local $2
    get_local $1
    i32.store
    get_local $2
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $~lib/array/Array<Proxy<i32>>#__set (; 137 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 101
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $std/array/createReverseOrderedElementsArray (; 138 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<Proxy<i32>>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<Proxy<i32>>#get:length|inlined.1 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    i32.const 0
    block $~lib/array/Array<Proxy<i32>>#get:length|inlined.2 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    get_local $2
    i32.sub
    call $std/array/Proxy<i32>#constructor
    call $~lib/array/Array<Proxy<i32>>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $start~anonymous|53 (; 139 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.load
  get_local $1
  i32.load
  i32.sub
 )
 (func $~lib/internal/array/insertionSort<Proxy<i32>> (; 140 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $7
      get_local $0
      get_local $1
      i32.add
      get_local $7
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<Proxy<i32>>#sort (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1
     i32.const 1
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.2
     i32.const 0
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $4
     i32.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $3
  i32.const 0
  get_local $2
  get_local $1
  call $~lib/internal/array/insertionSort<Proxy<i32>>
  get_local $0
  return
 )
 (func $~lib/array/Array<Proxy<i32>>#__get (; 142 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isSorted<Proxy<i32>> (; 143 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<Proxy<i32>>#get:length|inlined.3 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<Proxy<i32>>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<Proxy<i32>>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<Proxy<i32>> (; 144 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<Proxy<i32>>#sort
  get_local $1
  call $std/array/isSorted<Proxy<i32>>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 688
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/internal/string/compareUnsafe (; 145 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  set_local $5
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $6
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  set_local $7
  block $break|0
   loop $continue|0
    get_local $4
    if (result i32)
     get_local $6
     i32.load16_u offset=4
     get_local $7
     i32.load16_u offset=4
     i32.sub
     tee_local $5
     i32.eqz
    else     
     get_local $4
    end
    if
     block
      get_local $4
      i32.const 1
      i32.sub
      set_local $4
      get_local $6
      i32.const 1
      i32.add
      set_local $6
      get_local $7
      i32.const 1
      i32.add
      set_local $7
     end
     br $continue|0
    end
   end
  end
  get_local $5
 )
 (func $~lib/string/String.__gt (; 146 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_local $1
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $0
   i32.const 0
   i32.eq
  end
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $1
  i32.load
  set_local $4
  get_local $3
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $4
  i32.eqz
  if
   i32.const 1
   return
  end
  get_local $3
  tee_local $2
  get_local $4
  tee_local $5
  get_local $2
  get_local $5
  i32.lt_s
  select
  set_local $6
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $6
  call $~lib/internal/string/compareUnsafe
  i32.const 0
  i32.gt_s
 )
 (func $~lib/string/String.__lt (; 147 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  get_local $1
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $0
   i32.const 0
   i32.eq
  end
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $1
  i32.load
  set_local $4
  get_local $4
  i32.eqz
  if
   i32.const 0
   return
  end
  get_local $3
  i32.eqz
  if
   i32.const 1
   return
  end
  get_local $3
  tee_local $2
  get_local $4
  tee_local $5
  get_local $2
  get_local $5
  i32.lt_s
  select
  set_local $6
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $6
  call $~lib/internal/string/compareUnsafe
  i32.const 0
  i32.lt_s
 )
 (func $start~anonymous|54 (; 148 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  call $~lib/string/String.__gt
  get_local $0
  get_local $1
  call $~lib/string/String.__lt
  i32.sub
 )
 (func $~lib/internal/array/insertionSort<String> (; 149 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $break|0
   i32.const 0
   set_local $4
   loop $repeat|0
    get_local $4
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.0 (result i32)
      get_local $0
      get_local $1
      i32.add
      get_local $4
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $5
     get_local $4
     i32.const 1
     i32.sub
     set_local $6
     block $break|1
      loop $continue|1
       get_local $6
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.1 (result i32)
          get_local $0
          get_local $1
          i32.add
          get_local $6
          i32.const 2
          i32.shl
          i32.add
          i32.load offset=8
         end
         set_local $7
         block (result i32)
          i32.const 2
          set_global $~argc
          get_local $5
          get_local $7
          get_local $3
          call_indirect (type $iii)
         end
         i32.const 0
         i32.lt_s
         if
          block (result i32)
           get_local $6
           tee_local $8
           i32.const 1
           i32.sub
           set_local $6
           get_local $8
          end
          i32.const 1
          i32.add
          set_local $8
          get_local $0
          get_local $1
          i32.add
          get_local $8
          i32.const 2
          i32.shl
          i32.add
          get_local $7
          i32.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/storeUnsafeWithOffset<String,String>|inlined.1
      get_local $6
      i32.const 1
      i32.add
      set_local $7
      get_local $0
      get_local $1
      i32.add
      get_local $7
      i32.const 2
      i32.shl
      i32.add
      get_local $5
      i32.store offset=8
     end
    end
    get_local $4
    i32.const 1
    i32.add
    set_local $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/array/Array<String>#sort (; 150 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load offset=4
  set_local $2
  get_local $2
  i32.const 1
  i32.le_s
  if
   get_local $0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $2
  i32.const 2
  i32.eq
  if
   block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.0 (result i32)
    i32.const 1
    set_local $4
    get_local $3
    get_local $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.1 (result i32)
    i32.const 0
    set_local $5
    get_local $3
    get_local $5
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   block (result i32)
    i32.const 2
    set_global $~argc
    get_local $4
    get_local $5
    get_local $1
    call_indirect (type $iii)
   end
   i32.const 0
   i32.lt_s
   if
    block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.0
     i32.const 1
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $5
     i32.store offset=8
    end
    block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.1
     i32.const 0
     set_local $6
     get_local $3
     get_local $6
     i32.const 2
     i32.shl
     i32.add
     get_local $4
     i32.store offset=8
    end
   end
   get_local $0
   return
  end
  get_local $3
  i32.const 0
  get_local $2
  get_local $1
  call $~lib/internal/array/insertionSort<String>
  get_local $0
  return
 )
 (func $~lib/array/Array<String>#__get (; 151 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.load
  set_local $2
  get_local $1
  get_local $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $2
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/array/isSorted<String> (; 152 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $break|0
   block
    i32.const 1
    set_local $2
    block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
     get_local $0
     i32.load offset=4
    end
    set_local $3
   end
   loop $repeat|0
    get_local $2
    get_local $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 2
     set_global $~argc
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     call $~lib/array/Array<String>#__get
     get_local $0
     get_local $2
     call $~lib/array/Array<String>#__get
     get_local $1
     call_indirect (type $iii)
    end
    i32.const 0
    i32.gt_s
    if
     i32.const 0
     return
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $std/array/assertSorted<String> (; 153 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  call $~lib/array/Array<String>#sort
  get_local $1
  call $std/array/isSorted<String>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 688
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/string/String.__eq (; 154 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   i32.const 1
   return
  end
  get_local $0
  i32.const 0
  i32.eq
  tee_local $2
  if (result i32)
   get_local $2
  else   
   get_local $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  get_local $0
  i32.load
  set_local $3
  get_local $3
  get_local $1
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  get_local $0
  i32.const 0
  get_local $1
  i32.const 0
  get_local $3
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $~lib/string/String.__ne (; 155 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $std/array/isArraysEqual<String> (; 156 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $2
  i32.eqz
  if
   block $~lib/array/Array<String>#get:length|inlined.1 (result i32)
    get_local $0
    i32.load offset=4
   end
   set_local $2
   get_local $2
   block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
    get_local $1
    i32.load offset=4
   end
   i32.ne
   if
    i32.const 0
    return
   end
   get_local $0
   get_local $1
   i32.eq
   if
    i32.const 1
    return
   end
  end
  block $break|0
   i32.const 0
   set_local $3
   loop $repeat|0
    get_local $3
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $0
    get_local $3
    call $~lib/array/Array<String>#__get
    get_local $1
    get_local $3
    call $~lib/array/Array<String>#__get
    call $~lib/string/String.__ne
    if
     i32.const 0
     return
    end
    get_local $3
    i32.const 1
    i32.add
    set_local $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/array/Array<String>#constructor (; 157 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.11
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/internal/string/allocateUnsafe (; 158 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.const 0
  i32.gt_s
  tee_local $1
  if (result i32)
   get_local $0
   get_global $~lib/internal/string/MAX_LENGTH
   i32.le_s
  else   
   get_local $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1744
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.5 (result i32)
   get_global $~lib/internal/string/HEADER_SIZE
   get_local $0
   i32.const 1
   i32.shl
   i32.add
   set_local $1
   get_local $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.5
  end
  set_local $2
  get_local $2
  get_local $0
  i32.store
  get_local $2
 )
 (func $~lib/string/String#charAt (; 159 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 58
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  get_local $0
  i32.load
  i32.ge_u
  if
   i32.const 1560
   return
  end
  i32.const 1
  call $~lib/internal/string/allocateUnsafe
  set_local $2
  get_local $2
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u offset=4
  i32.store16 offset=4
  get_local $2
 )
 (func $~lib/internal/string/copyUnsafe (; 160 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  get_global $~lib/internal/string/HEADER_SIZE
  i32.add
  set_local $5
  get_local $2
  get_local $3
  i32.const 1
  i32.shl
  i32.add
  get_global $~lib/internal/string/HEADER_SIZE
  i32.add
  set_local $6
  get_local $4
  i32.const 1
  i32.shl
  set_local $7
  get_local $5
  get_local $6
  get_local $7
  call $~lib/internal/memory/memmove
 )
 (func $~lib/string/String#concat (; 161 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 110
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 0
  i32.eq
  if
   i32.const 1800
   set_local $1
  end
  get_local $0
  i32.load
  set_local $2
  get_local $1
  i32.load
  set_local $3
  get_local $2
  get_local $3
  i32.add
  set_local $4
  get_local $4
  i32.const 0
  i32.eq
  if
   i32.const 1560
   return
  end
  get_local $4
  call $~lib/internal/string/allocateUnsafe
  set_local $5
  get_local $5
  i32.const 0
  get_local $0
  i32.const 0
  get_local $2
  call $~lib/internal/string/copyUnsafe
  get_local $5
  get_local $2
  get_local $1
  i32.const 0
  get_local $3
  call $~lib/internal/string/copyUnsafe
  get_local $5
 )
 (func $~lib/string/String.__concat (; 162 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 1800
   set_local $0
  end
  get_local $0
  get_local $1
  call $~lib/string/String#concat
 )
 (func $std/array/createRandomString (; 163 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  i32.const 1560
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    get_local $0
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_global $std/array/charset
    block $~lib/math/NativeMath.floor|inlined.0 (result f64)
     call $~lib/math/NativeMath.random
     get_global $std/array/charset
     i32.load
     f64.convert_s/i32
     f64.mul
     set_local $3
     get_local $3
     f64.floor
    end
    i32.trunc_s/f64
    call $~lib/string/String#charAt
    call $~lib/string/String.__concat
    set_local $1
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $~lib/array/Array<String>#__set (; 164 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  i32.load
  i32.const 2
  i32.shr_u
  set_local $4
  get_local $1
  get_local $4
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 101
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.2
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   get_local $2
   i32.store offset=8
  end
 )
 (func $std/array/createRandomStringArray (; 165 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  get_local $0
  call $~lib/array/Array<String>#constructor
  set_local $1
  block $break|0
   i32.const 0
   set_local $2
   loop $repeat|0
    get_local $2
    block $~lib/array/Array<String>#get:length|inlined.5 (result i32)
     get_local $1
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $1
    get_local $2
    call $~lib/math/NativeMath.random
    f64.const 32
    f64.mul
    i32.trunc_s/f64
    call $std/array/createRandomString
    call $~lib/array/Array<String>#__set
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  get_local $1
 )
 (func $start~anonymous|55 (; 166 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  get_local $1
  call $~lib/string/String.__gt
  get_local $0
  get_local $1
  call $~lib/string/String.__lt
  i32.sub
 )
 (func $~lib/string/String#substring (; 167 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  get_local $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 1712
   i32.const 269
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.load
  set_local $3
  get_local $1
  tee_local $4
  i32.const 0
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_s
  select
  tee_local $4
  get_local $3
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $6
  get_local $2
  tee_local $4
  i32.const 0
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_s
  select
  tee_local $4
  get_local $3
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $7
  get_local $6
  tee_local $4
  get_local $7
  tee_local $5
  get_local $4
  get_local $5
  i32.lt_s
  select
  set_local $8
  get_local $6
  tee_local $4
  get_local $7
  tee_local $5
  get_local $4
  get_local $5
  i32.gt_s
  select
  set_local $9
  get_local $9
  get_local $8
  i32.sub
  set_local $3
  get_local $3
  i32.eqz
  if
   i32.const 1560
   return
  end
  get_local $8
  i32.eqz
  tee_local $4
  if (result i32)
   get_local $9
   get_local $0
   i32.load
   i32.eq
  else   
   get_local $4
  end
  if
   get_local $0
   return
  end
  get_local $3
  call $~lib/internal/string/allocateUnsafe
  set_local $10
  get_local $10
  i32.const 0
  get_local $0
  get_local $8
  get_local $3
  call $~lib/internal/string/copyUnsafe
  get_local $10
 )
 (func $~lib/array/Array<bool>#join (; 168 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   i32.const 1840
   i32.const 1856
   block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u offset=8
   end
   i32.const 1
   i32.and
   select
   return
  end
  i32.const 5
  set_local $8
  get_local $8
  get_local $6
  i32.add
  get_local $2
  i32.mul
  get_local $8
  i32.add
  set_local $9
  get_local $9
  call $~lib/internal/string/allocateUnsafe
  set_local $10
  i32.const 0
  set_local $11
  block $break|0
   i32.const 0
   set_local $12
   loop $repeat|0
    get_local $12
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.1 (result i32)
      get_local $5
      get_local $12
      i32.const 0
      i32.shl
      i32.add
      i32.load8_u offset=8
     end
     set_local $4
     i32.const 4
     get_local $4
     i32.const 1
     i32.and
     i32.eqz
     i32.add
     set_local $8
     get_local $10
     get_local $11
     i32.const 1840
     i32.const 1856
     get_local $4
     i32.const 1
     i32.and
     select
     i32.const 0
     get_local $8
     call $~lib/internal/string/copyUnsafe
     get_local $11
     get_local $8
     i32.add
     set_local $11
     get_local $7
     if
      get_local $10
      get_local $11
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $11
      get_local $6
      i32.add
      set_local $11
     end
    end
    get_local $12
    i32.const 1
    i32.add
    set_local $12
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<bool,bool>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  end
  set_local $4
  i32.const 4
  get_local $4
  i32.const 1
  i32.and
  i32.eqz
  i32.add
  set_local $8
  get_local $10
  get_local $11
  i32.const 1840
  i32.const 1856
  get_local $4
  i32.const 1
  i32.and
  select
  i32.const 0
  get_local $8
  call $~lib/internal/string/copyUnsafe
  get_local $11
  get_local $8
  i32.add
  set_local $11
  get_local $10
  set_local $12
  get_local $9
  get_local $11
  i32.gt_s
  if
   get_local $10
   i32.const 0
   get_local $11
   call $~lib/string/String#substring
   set_local $12
   block $~lib/internal/string/freeUnsafe|inlined.0
    block
     get_local $10
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.4
      block
       get_local $10
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.4
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $12
  return
 )
 (func $~lib/internal/number/decimalCount32 (; 169 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 100000
  i32.lt_u
  if
   get_local $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    get_local $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    get_local $0
    i32.const 10000
    i32.lt_u
    select
    set_local $1
    i32.const 3
    get_local $1
    get_local $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
   unreachable
  else   
   get_local $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    get_local $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    get_local $0
    i32.const 1000000000
    i32.lt_u
    select
    set_local $1
    i32.const 8
    get_local $1
    get_local $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/internal/number/utoa32_lut (; 170 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  block $~lib/internal/number/DIGITS|inlined.0 (result i32)
   i32.const 2488
  end
  i32.load
  set_local $3
  block $break|0
   loop $continue|0
    get_local $1
    i32.const 10000
    i32.ge_u
    if
     block
      get_local $1
      i32.const 10000
      i32.div_u
      set_local $4
      get_local $1
      i32.const 10000
      i32.rem_u
      set_local $5
      get_local $4
      set_local $1
      get_local $5
      i32.const 100
      i32.div_u
      set_local $6
      get_local $5
      i32.const 100
      i32.rem_u
      set_local $7
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.0 (result i64)
       get_local $3
       get_local $6
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $8
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.1 (result i64)
       get_local $3
       get_local $7
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $9
      get_local $2
      i32.const 4
      i32.sub
      set_local $2
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      get_local $8
      get_local $9
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
     end
     br $continue|0
    end
   end
  end
  get_local $1
  i32.const 100
  i32.ge_u
  if
   get_local $1
   i32.const 100
   i32.div_u
   set_local $7
   get_local $1
   i32.const 100
   i32.rem_u
   set_local $6
   get_local $7
   set_local $1
   get_local $2
   i32.const 2
   i32.sub
   set_local $2
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.3 (result i32)
    get_local $3
    get_local $6
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   get_local $0
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   get_local $5
   i32.store offset=4
  end
  get_local $1
  i32.const 10
  i32.ge_u
  if
   get_local $2
   i32.const 2
   i32.sub
   set_local $2
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.4 (result i32)
    get_local $3
    get_local $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $5
   get_local $0
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   get_local $5
   i32.store offset=4
  else   
   get_local $2
   i32.const 1
   i32.sub
   set_local $2
   get_global $~lib/internal/string/CharCode._0
   get_local $1
   i32.add
   set_local $5
   get_local $0
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   get_local $5
   i32.store16 offset=4
  end
 )
 (func $~lib/internal/number/itoa32 (; 171 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.eqz
  if
   i32.const 1968
   return
  end
  get_local $0
  i32.const 0
  i32.lt_s
  set_local $1
  get_local $1
  if
   i32.const 0
   get_local $0
   i32.sub
   set_local $0
  end
  get_local $0
  call $~lib/internal/number/decimalCount32
  get_local $1
  i32.add
  set_local $2
  get_local $2
  call $~lib/internal/string/allocateUnsafe
  set_local $3
  block $~lib/internal/number/utoa32_core|inlined.0
   get_local $3
   get_local $0
   get_local $2
   call $~lib/internal/number/utoa32_lut
  end
  get_local $1
  if
   get_local $3
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/internal/number/itoa<i32> (; 172 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/internal/number/itoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<i32> (; 173 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 0
  i32.lt_s
  set_local $4
  get_local $4
  if
   i32.const 0
   get_local $2
   i32.sub
   set_local $2
  end
  get_local $2
  call $~lib/internal/number/decimalCount32
  get_local $4
  i32.add
  set_local $3
  block $~lib/internal/number/utoa32_core|inlined.1
   get_local $0
   get_local $2
   get_local $3
   call $~lib/internal/number/utoa32_lut
  end
  get_local $4
  if
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/array/Array<i32>#join (; 174 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.23 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   call $~lib/internal/number/itoa<i32>
   return
  end
  i32.const 11
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 11
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.24 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<i32>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.25 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<i32>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.1
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.5
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.5
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/utoa32 (; 175 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  i32.eqz
  if
   i32.const 1968
   return
  end
  get_local $0
  call $~lib/internal/number/decimalCount32
  set_local $1
  get_local $1
  call $~lib/internal/string/allocateUnsafe
  set_local $2
  block $~lib/internal/number/utoa32_core|inlined.2
   get_local $2
   get_local $0
   get_local $1
   call $~lib/internal/number/utoa32_lut
  end
  get_local $2
 )
 (func $~lib/internal/number/itoa<u32> (; 176 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/internal/number/utoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<u32> (; 177 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  call $~lib/internal/number/decimalCount32
  set_local $3
  block $~lib/internal/number/utoa32_core|inlined.3
   get_local $0
   get_local $2
   get_local $3
   call $~lib/internal/number/utoa32_lut
  end
  get_local $3
 )
 (func $~lib/array/Array<u32>#join (; 178 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.5 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   call $~lib/internal/number/itoa<u32>
   return
  end
  i32.const 10
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 10
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.6 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u32>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.7 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u32>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.2
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.6
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.6
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/builtins/isFinite<f64> (; 179 ;) (type $Fi) (param $0 f64) (result i32)
  get_local $0
  get_local $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/internal/number/genDigits (; 180 ;) (type $iIiIiIii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  (local $21 i32)
  (local $22 i32)
  i32.const 0
  get_local $4
  i32.sub
  set_local $7
  i64.const 1
  get_local $7
  i64.extend_s/i32
  i64.shl
  set_local $8
  get_local $8
  i64.const 1
  i64.sub
  set_local $9
  get_local $3
  get_local $1
  i64.sub
  set_local $10
  get_local $4
  set_local $11
  get_local $3
  get_local $7
  i64.extend_s/i32
  i64.shr_u
  i32.wrap/i64
  set_local $12
  get_local $3
  get_local $9
  i64.and
  set_local $13
  get_local $12
  call $~lib/internal/number/decimalCount32
  set_local $14
  get_local $6
  set_local $15
  block $~lib/internal/number/POWERS10|inlined.0 (result i32)
   i32.const 4272
  end
  i32.load
  set_local $16
  block $break|0
   loop $continue|0
    get_local $14
    i32.const 0
    i32.gt_s
    if
     block
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
                  get_local $14
                  set_local $18
                  get_local $18
                  i32.const 10
                  i32.eq
                  br_if $case0|1
                  get_local $18
                  i32.const 9
                  i32.eq
                  br_if $case1|1
                  get_local $18
                  i32.const 8
                  i32.eq
                  br_if $case2|1
                  get_local $18
                  i32.const 7
                  i32.eq
                  br_if $case3|1
                  get_local $18
                  i32.const 6
                  i32.eq
                  br_if $case4|1
                  get_local $18
                  i32.const 5
                  i32.eq
                  br_if $case5|1
                  get_local $18
                  i32.const 4
                  i32.eq
                  br_if $case6|1
                  get_local $18
                  i32.const 3
                  i32.eq
                  br_if $case7|1
                  get_local $18
                  i32.const 2
                  i32.eq
                  br_if $case8|1
                  get_local $18
                  i32.const 1
                  i32.eq
                  br_if $case9|1
                  br $case10|1
                 end
                 block
                  get_local $12
                  i32.const 1000000000
                  i32.div_u
                  set_local $17
                  get_local $12
                  i32.const 1000000000
                  i32.rem_u
                  set_local $12
                  br $break|1
                  unreachable
                 end
                 unreachable
                end
                block
                 get_local $12
                 i32.const 100000000
                 i32.div_u
                 set_local $17
                 get_local $12
                 i32.const 100000000
                 i32.rem_u
                 set_local $12
                 br $break|1
                 unreachable
                end
                unreachable
               end
               block
                get_local $12
                i32.const 10000000
                i32.div_u
                set_local $17
                get_local $12
                i32.const 10000000
                i32.rem_u
                set_local $12
                br $break|1
                unreachable
               end
               unreachable
              end
              block
               get_local $12
               i32.const 1000000
               i32.div_u
               set_local $17
               get_local $12
               i32.const 1000000
               i32.rem_u
               set_local $12
               br $break|1
               unreachable
              end
              unreachable
             end
             block
              get_local $12
              i32.const 100000
              i32.div_u
              set_local $17
              get_local $12
              i32.const 100000
              i32.rem_u
              set_local $12
              br $break|1
              unreachable
             end
             unreachable
            end
            block
             get_local $12
             i32.const 10000
             i32.div_u
             set_local $17
             get_local $12
             i32.const 10000
             i32.rem_u
             set_local $12
             br $break|1
             unreachable
            end
            unreachable
           end
           block
            get_local $12
            i32.const 1000
            i32.div_u
            set_local $17
            get_local $12
            i32.const 1000
            i32.rem_u
            set_local $12
            br $break|1
            unreachable
           end
           unreachable
          end
          block
           get_local $12
           i32.const 100
           i32.div_u
           set_local $17
           get_local $12
           i32.const 100
           i32.rem_u
           set_local $12
           br $break|1
           unreachable
          end
          unreachable
         end
         block
          get_local $12
          i32.const 10
          i32.div_u
          set_local $17
          get_local $12
          i32.const 10
          i32.rem_u
          set_local $12
          br $break|1
          unreachable
         end
         unreachable
        end
        block
         get_local $12
         set_local $17
         i32.const 0
         set_local $12
         br $break|1
         unreachable
        end
        unreachable
       end
       block
        i32.const 0
        set_local $17
        br $break|1
        unreachable
       end
       unreachable
      end
      get_local $17
      get_local $15
      i32.or
      if
       get_local $0
       block (result i32)
        get_local $15
        tee_local $18
        i32.const 1
        i32.add
        set_local $15
        get_local $18
       end
       i32.const 1
       i32.shl
       i32.add
       get_global $~lib/internal/string/CharCode._0
       get_local $17
       i32.const 65535
       i32.and
       i32.add
       i32.store16 offset=4
      end
      get_local $14
      i32.const 1
      i32.sub
      set_local $14
      get_local $12
      i64.extend_u/i32
      get_local $7
      i64.extend_s/i32
      i64.shl
      get_local $13
      i64.add
      set_local $19
      get_local $19
      get_local $5
      i64.le_u
      if
       get_global $~lib/internal/number/_K
       get_local $14
       i32.add
       set_global $~lib/internal/number/_K
       block $~lib/internal/number/grisuRound|inlined.0
        block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.2 (result i64)
         get_local $16
         get_local $14
         i32.const 2
         i32.shl
         i32.add
         i64.load32_u offset=8
        end
        get_local $7
        i64.extend_s/i32
        i64.shl
        set_local $20
        get_local $0
        get_local $15
        i32.const 1
        i32.sub
        i32.const 1
        i32.shl
        i32.add
        set_local $18
        get_local $18
        i32.load16_u offset=4
        set_local $21
        block $break|2
         loop $continue|2
          get_local $19
          get_local $10
          i64.lt_u
          tee_local $22
          if (result i32)
           get_local $5
           get_local $19
           i64.sub
           get_local $20
           i64.ge_u
          else           
           get_local $22
          end
          tee_local $22
          if (result i32)
           get_local $19
           get_local $20
           i64.add
           get_local $10
           i64.lt_u
           tee_local $22
           if (result i32)
            get_local $22
           else            
            get_local $10
            get_local $19
            i64.sub
            get_local $19
            get_local $20
            i64.add
            get_local $10
            i64.sub
            i64.gt_u
           end
          else           
           get_local $22
          end
          if
           block
            get_local $21
            i32.const 1
            i32.sub
            set_local $21
            get_local $19
            get_local $20
            i64.add
            set_local $19
           end
           br $continue|2
          end
         end
        end
        get_local $18
        get_local $21
        i32.store16 offset=4
       end
       get_local $15
       return
      end
     end
     br $continue|0
    end
   end
  end
  block $break|3
   loop $continue|3
    i32.const 1
    if
     block
      get_local $13
      i64.const 10
      i64.mul
      set_local $13
      get_local $5
      i64.const 10
      i64.mul
      set_local $5
      get_local $13
      get_local $7
      i64.extend_s/i32
      i64.shr_u
      set_local $19
      get_local $19
      get_local $15
      i64.extend_s/i32
      i64.or
      i64.const 0
      i64.ne
      if
       get_local $0
       block (result i32)
        get_local $15
        tee_local $17
        i32.const 1
        i32.add
        set_local $15
        get_local $17
       end
       i32.const 1
       i32.shl
       i32.add
       get_global $~lib/internal/string/CharCode._0
       get_local $19
       i32.wrap/i64
       i32.const 65535
       i32.and
       i32.add
       i32.store16 offset=4
      end
      get_local $13
      get_local $9
      i64.and
      set_local $13
      get_local $14
      i32.const 1
      i32.sub
      set_local $14
      get_local $13
      get_local $5
      i64.lt_u
      if
       get_global $~lib/internal/number/_K
       get_local $14
       i32.add
       set_global $~lib/internal/number/_K
       get_local $10
       block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.3 (result i64)
        i32.const 0
        get_local $14
        i32.sub
        set_local $17
        get_local $16
        get_local $17
        i32.const 2
        i32.shl
        i32.add
        i64.load32_u offset=8
       end
       i64.mul
       set_local $10
       block $~lib/internal/number/grisuRound|inlined.1
        get_local $0
        get_local $15
        i32.const 1
        i32.sub
        i32.const 1
        i32.shl
        i32.add
        set_local $17
        get_local $17
        i32.load16_u offset=4
        set_local $21
        block $break|4
         loop $continue|4
          get_local $13
          get_local $10
          i64.lt_u
          tee_local $18
          if (result i32)
           get_local $5
           get_local $13
           i64.sub
           get_local $8
           i64.ge_u
          else           
           get_local $18
          end
          tee_local $18
          if (result i32)
           get_local $13
           get_local $8
           i64.add
           get_local $10
           i64.lt_u
           tee_local $18
           if (result i32)
            get_local $18
           else            
            get_local $10
            get_local $13
            i64.sub
            get_local $13
            get_local $8
            i64.add
            get_local $10
            i64.sub
            i64.gt_u
           end
          else           
           get_local $18
          end
          if
           block
            get_local $21
            i32.const 1
            i32.sub
            set_local $21
            get_local $13
            get_local $8
            i64.add
            set_local $13
           end
           br $continue|4
          end
         end
        end
        get_local $17
        get_local $21
        i32.store16 offset=4
       end
       get_local $15
       return
      end
     end
     br $continue|3
    end
   end
  end
  get_local $15
 )
 (func $~lib/internal/number/prettify (; 181 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $2
  i32.eqz
  if
   get_local $0
   get_local $1
   i32.const 1
   i32.shl
   i32.add
   get_global $~lib/internal/string/CharCode.DOT
   get_global $~lib/internal/string/CharCode._0
   i32.const 16
   i32.shl
   i32.or
   i32.store offset=4
   get_local $1
   i32.const 2
   i32.add
   return
  end
  get_local $1
  get_local $2
  i32.add
  set_local $3
  get_local $1
  get_local $3
  i32.le_s
  tee_local $4
  if (result i32)
   get_local $3
   i32.const 21
   i32.le_s
  else   
   get_local $4
  end
  if
   block $break|0
    get_local $1
    set_local $4
    loop $repeat|0
     get_local $4
     get_local $3
     i32.lt_s
     i32.eqz
     br_if $break|0
     get_local $0
     get_local $4
     i32.const 1
     i32.shl
     i32.add
     get_global $~lib/internal/string/CharCode._0
     i32.store16 offset=4
     get_local $4
     i32.const 1
     i32.add
     set_local $4
     br $repeat|0
     unreachable
    end
    unreachable
   end
   get_local $0
   get_local $3
   i32.const 1
   i32.shl
   i32.add
   get_global $~lib/internal/string/CharCode.DOT
   get_global $~lib/internal/string/CharCode._0
   i32.const 16
   i32.shl
   i32.or
   i32.store offset=4
   get_local $3
   i32.const 2
   i32.add
   return
  else   
   get_local $3
   i32.const 0
   i32.gt_s
   tee_local $4
   if (result i32)
    get_local $3
    i32.const 21
    i32.le_s
   else    
    get_local $4
   end
   if
    get_local $0
    get_local $3
    i32.const 1
    i32.shl
    i32.add
    set_local $4
    block $~lib/memory/memory.copy|inlined.7
     get_local $4
     get_global $~lib/internal/string/HEADER_SIZE
     i32.add
     i32.const 2
     i32.add
     set_local $5
     get_local $4
     get_global $~lib/internal/string/HEADER_SIZE
     i32.add
     set_local $6
     i32.const 0
     get_local $2
     i32.sub
     i32.const 1
     i32.shl
     set_local $7
     get_local $5
     get_local $6
     get_local $7
     call $~lib/internal/memory/memmove
    end
    get_local $0
    get_local $3
    i32.const 1
    i32.shl
    i32.add
    get_global $~lib/internal/string/CharCode.DOT
    i32.store16 offset=4
    get_local $1
    i32.const 1
    i32.add
    return
   else    
    i32.const -6
    get_local $3
    i32.lt_s
    tee_local $4
    if (result i32)
     get_local $3
     i32.const 0
     i32.le_s
    else     
     get_local $4
    end
    if
     i32.const 2
     get_local $3
     i32.sub
     set_local $4
     block $~lib/memory/memory.copy|inlined.8
      get_local $0
      get_global $~lib/internal/string/HEADER_SIZE
      i32.add
      get_local $4
      i32.const 1
      i32.shl
      i32.add
      set_local $7
      get_local $0
      get_global $~lib/internal/string/HEADER_SIZE
      i32.add
      set_local $6
      get_local $1
      i32.const 1
      i32.shl
      set_local $5
      get_local $7
      get_local $6
      get_local $5
      call $~lib/internal/memory/memmove
     end
     get_local $0
     get_global $~lib/internal/string/CharCode._0
     get_global $~lib/internal/string/CharCode.DOT
     i32.const 16
     i32.shl
     i32.or
     i32.store offset=4
     block $break|1
      i32.const 2
      set_local $5
      loop $repeat|1
       get_local $5
       get_local $4
       i32.lt_s
       i32.eqz
       br_if $break|1
       get_local $0
       get_local $5
       i32.const 1
       i32.shl
       i32.add
       get_global $~lib/internal/string/CharCode._0
       i32.store16 offset=4
       get_local $5
       i32.const 1
       i32.add
       set_local $5
       br $repeat|1
       unreachable
      end
      unreachable
     end
     get_local $1
     get_local $4
     i32.add
     return
    else     
     get_local $1
     i32.const 1
     i32.eq
     if
      get_local $0
      get_global $~lib/internal/string/CharCode.e
      i32.store16 offset=6
      block $~lib/internal/number/genExponent|inlined.0 (result i32)
       get_local $0
       i32.const 4
       i32.add
       set_local $4
       get_local $3
       i32.const 1
       i32.sub
       set_local $5
       get_local $5
       i32.const 0
       i32.lt_s
       set_local $6
       get_local $6
       if
        i32.const 0
        get_local $5
        i32.sub
        set_local $5
       end
       get_local $5
       call $~lib/internal/number/decimalCount32
       i32.const 1
       i32.add
       set_local $7
       block $~lib/internal/number/utoa32_core|inlined.4
        get_local $4
        get_local $5
        get_local $7
        call $~lib/internal/number/utoa32_lut
       end
       get_local $4
       get_global $~lib/internal/string/CharCode.MINUS
       get_global $~lib/internal/string/CharCode.PLUS
       get_local $6
       select
       i32.store16 offset=4
       get_local $7
      end
      set_local $1
      get_local $1
      i32.const 2
      i32.add
      return
     else      
      get_local $1
      i32.const 1
      i32.shl
      set_local $7
      block $~lib/memory/memory.copy|inlined.9
       get_local $0
       get_global $~lib/internal/string/HEADER_SIZE
       i32.add
       i32.const 4
       i32.add
       set_local $6
       get_local $0
       get_global $~lib/internal/string/HEADER_SIZE
       i32.add
       i32.const 2
       i32.add
       set_local $5
       get_local $7
       i32.const 2
       i32.sub
       set_local $4
       get_local $6
       get_local $5
       get_local $4
       call $~lib/internal/memory/memmove
      end
      get_local $0
      get_global $~lib/internal/string/CharCode.DOT
      i32.store16 offset=6
      get_local $0
      get_local $7
      i32.add
      get_global $~lib/internal/string/CharCode.e
      i32.store16 offset=6
      get_local $1
      block $~lib/internal/number/genExponent|inlined.1 (result i32)
       get_local $0
       get_local $7
       i32.add
       i32.const 4
       i32.add
       set_local $4
       get_local $3
       i32.const 1
       i32.sub
       set_local $5
       get_local $5
       i32.const 0
       i32.lt_s
       set_local $6
       get_local $6
       if
        i32.const 0
        get_local $5
        i32.sub
        set_local $5
       end
       get_local $5
       call $~lib/internal/number/decimalCount32
       i32.const 1
       i32.add
       set_local $8
       block $~lib/internal/number/utoa32_core|inlined.5
        get_local $4
        get_local $5
        get_local $8
        call $~lib/internal/number/utoa32_lut
       end
       get_local $4
       get_global $~lib/internal/string/CharCode.MINUS
       get_global $~lib/internal/string/CharCode.PLUS
       get_local $6
       select
       i32.store16 offset=4
       get_local $8
      end
      i32.add
      set_local $1
      get_local $1
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
  unreachable
 )
 (func $~lib/internal/number/dtoa_core (; 182 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 f64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  get_local $1
  f64.const 0
  f64.lt
  set_local $2
  get_local $2
  if
   get_local $1
   f64.neg
   set_local $1
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  block $~lib/internal/number/grisu2|inlined.0 (result i32)
   get_local $1
   i64.reinterpret/f64
   set_local $3
   get_local $3
   i64.const 9218868437227405312
   i64.and
   i64.const 52
   i64.shr_u
   i32.wrap/i64
   set_local $4
   get_local $3
   i64.const 4503599627370495
   i64.and
   set_local $5
   get_local $4
   i32.const 0
   i32.ne
   i64.extend_u/i32
   i64.const 52
   i64.shl
   get_local $5
   i64.add
   set_local $6
   get_local $4
   i32.const 1
   get_local $4
   i32.const 0
   i32.ne
   select
   i32.const 1023
   i32.const 52
   i32.add
   i32.sub
   set_local $4
   block $~lib/internal/number/normalizedBoundaries|inlined.0
    get_local $6
    i64.const 1
    i64.shl
    i64.const 1
    i64.add
    set_local $7
    get_local $4
    i32.const 1
    i32.sub
    set_local $8
    get_local $7
    i64.clz
    i32.wrap/i64
    set_local $9
    get_local $7
    get_local $9
    i64.extend_s/i32
    i64.shl
    set_local $7
    get_local $8
    get_local $9
    i32.sub
    set_local $8
    i32.const 1
    get_local $6
    i64.const 4503599627370496
    i64.eq
    i32.add
    set_local $10
    get_local $7
    set_global $~lib/internal/number/_frc_plus
    get_local $6
    get_local $10
    i64.extend_s/i32
    i64.shl
    i64.const 1
    i64.sub
    get_local $4
    get_local $10
    i32.sub
    get_local $8
    i32.sub
    i64.extend_s/i32
    i64.shl
    set_global $~lib/internal/number/_frc_minus
    get_local $8
    set_global $~lib/internal/number/_exp
   end
   block $~lib/internal/number/getCachedPower|inlined.0
    get_global $~lib/internal/number/_exp
    set_local $10
    i32.const -61
    get_local $10
    i32.sub
    f64.convert_s/i32
    f64.const 0.30102999566398114
    f64.mul
    f64.const 347
    f64.add
    set_local $11
    get_local $11
    i32.trunc_s/f64
    set_local $9
    get_local $9
    get_local $9
    f64.convert_s/i32
    get_local $11
    f64.ne
    i32.add
    set_local $9
    get_local $9
    i32.const 3
    i32.shr_s
    i32.const 1
    i32.add
    set_local $8
    i32.const 348
    get_local $8
    i32.const 3
    i32.shl
    i32.sub
    set_global $~lib/internal/number/_K
    block $~lib/internal/number/FRC_POWERS|inlined.0 (result i32)
     i32.const 3936
    end
    i32.load
    set_local $12
    block $~lib/internal/number/EXP_POWERS|inlined.0 (result i32)
     i32.const 4200
    end
    i32.load
    set_local $13
    block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.0 (result i64)
     get_local $12
     get_local $8
     i32.const 3
     i32.shl
     i32.add
     i64.load offset=8
    end
    set_global $~lib/internal/number/_frc_pow
    block $~lib/internal/arraybuffer/loadUnsafe<i16,i32>|inlined.0 (result i32)
     get_local $13
     get_local $8
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s offset=8
    end
    set_global $~lib/internal/number/_exp_pow
   end
   get_local $6
   i64.clz
   i32.wrap/i64
   set_local $13
   get_local $6
   get_local $13
   i64.extend_s/i32
   i64.shl
   set_local $6
   get_local $4
   get_local $13
   i32.sub
   set_local $4
   get_global $~lib/internal/number/_frc_pow
   set_local $7
   get_global $~lib/internal/number/_exp_pow
   set_local $12
   block $~lib/internal/number/umul64f|inlined.0 (result i64)
    get_local $6
    i64.const 4294967295
    i64.and
    set_local $14
    get_local $7
    i64.const 4294967295
    i64.and
    set_local $15
    get_local $6
    i64.const 32
    i64.shr_u
    set_local $16
    get_local $7
    i64.const 32
    i64.shr_u
    set_local $17
    get_local $14
    get_local $15
    i64.mul
    set_local $18
    get_local $16
    get_local $15
    i64.mul
    get_local $18
    i64.const 32
    i64.shr_u
    i64.add
    set_local $19
    get_local $14
    get_local $17
    i64.mul
    get_local $19
    i64.const 4294967295
    i64.and
    i64.add
    set_local $20
    get_local $20
    i64.const 2147483647
    i64.add
    set_local $20
    get_local $19
    i64.const 32
    i64.shr_u
    set_local $19
    get_local $20
    i64.const 32
    i64.shr_u
    set_local $20
    get_local $16
    get_local $17
    i64.mul
    get_local $19
    i64.add
    get_local $20
    i64.add
   end
   set_local $20
   block $~lib/internal/number/umul64e|inlined.0 (result i32)
    get_local $4
    get_local $12
    i32.add
    i32.const 64
    i32.add
   end
   set_local $8
   block $~lib/internal/number/umul64f|inlined.1 (result i64)
    get_global $~lib/internal/number/_frc_plus
    set_local $19
    get_local $19
    i64.const 4294967295
    i64.and
    set_local $18
    get_local $7
    i64.const 4294967295
    i64.and
    set_local $17
    get_local $19
    i64.const 32
    i64.shr_u
    set_local $16
    get_local $7
    i64.const 32
    i64.shr_u
    set_local $15
    get_local $18
    get_local $17
    i64.mul
    set_local $14
    get_local $16
    get_local $17
    i64.mul
    get_local $14
    i64.const 32
    i64.shr_u
    i64.add
    set_local $21
    get_local $18
    get_local $15
    i64.mul
    get_local $21
    i64.const 4294967295
    i64.and
    i64.add
    set_local $22
    get_local $22
    i64.const 2147483647
    i64.add
    set_local $22
    get_local $21
    i64.const 32
    i64.shr_u
    set_local $21
    get_local $22
    i64.const 32
    i64.shr_u
    set_local $22
    get_local $16
    get_local $15
    i64.mul
    get_local $21
    i64.add
    get_local $22
    i64.add
   end
   i64.const 1
   i64.sub
   set_local $22
   block $~lib/internal/number/umul64e|inlined.1 (result i32)
    get_global $~lib/internal/number/_exp
    set_local $9
    get_local $9
    get_local $12
    i32.add
    i32.const 64
    i32.add
   end
   set_local $9
   block $~lib/internal/number/umul64f|inlined.2 (result i64)
    get_global $~lib/internal/number/_frc_minus
    set_local $21
    get_local $21
    i64.const 4294967295
    i64.and
    set_local $14
    get_local $7
    i64.const 4294967295
    i64.and
    set_local $15
    get_local $21
    i64.const 32
    i64.shr_u
    set_local $16
    get_local $7
    i64.const 32
    i64.shr_u
    set_local $17
    get_local $14
    get_local $15
    i64.mul
    set_local $18
    get_local $16
    get_local $15
    i64.mul
    get_local $18
    i64.const 32
    i64.shr_u
    i64.add
    set_local $19
    get_local $14
    get_local $17
    i64.mul
    get_local $19
    i64.const 4294967295
    i64.and
    i64.add
    set_local $23
    get_local $23
    i64.const 2147483647
    i64.add
    set_local $23
    get_local $19
    i64.const 32
    i64.shr_u
    set_local $19
    get_local $23
    i64.const 32
    i64.shr_u
    set_local $23
    get_local $16
    get_local $17
    i64.mul
    get_local $19
    i64.add
    get_local $23
    i64.add
   end
   i64.const 1
   i64.add
   set_local $23
   get_local $22
   get_local $23
   i64.sub
   set_local $19
   get_local $0
   get_local $20
   get_local $8
   get_local $22
   get_local $9
   get_local $19
   get_local $2
   call $~lib/internal/number/genDigits
  end
  set_local $24
  get_local $0
  get_local $2
  i32.const 1
  i32.shl
  i32.add
  get_local $24
  get_local $2
  i32.sub
  get_global $~lib/internal/number/_K
  call $~lib/internal/number/prettify
  set_local $24
  get_local $24
  get_local $2
  i32.add
 )
 (func $~lib/internal/number/dtoa (; 183 ;) (type $Fi) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  f64.const 0
  f64.eq
  if
   i32.const 2832
   return
  end
  get_local $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   get_local $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 2848
    return
   end
   i32.const 2864
   i32.const 2888
   get_local $0
   f64.const 0
   f64.lt
   select
   return
  end
  get_global $~lib/internal/number/MAX_DOUBLE_LENGTH
  call $~lib/internal/string/allocateUnsafe
  set_local $1
  get_local $1
  get_local $0
  call $~lib/internal/number/dtoa_core
  set_local $2
  get_local $1
  i32.const 0
  get_local $2
  call $~lib/string/String#substring
  set_local $3
  block $~lib/internal/string/freeUnsafe|inlined.3
   block
    get_local $1
    i32.eqz
    if
     i32.const 0
     i32.const 1744
     i32.const 28
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    block $~lib/memory/memory.free|inlined.7
     block
      get_local $1
      call $~lib/allocator/arena/__memory_free
      br $~lib/memory/memory.free|inlined.7
      unreachable
     end
     unreachable
    end
   end
  end
  get_local $3
 )
 (func $~lib/internal/number/dtoa_stream (; 184 ;) (type $iiFi) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  f64.const 0
  f64.eq
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   get_local $0
   get_global $~lib/internal/string/CharCode.DOT
   i32.store16 offset=6
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=8
   i32.const 3
   return
  end
  get_local $2
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   get_local $2
   call $~lib/builtins/isNaN<f64>
   if
    get_local $0
    get_global $~lib/internal/string/CharCode.N
    i32.store16 offset=4
    get_local $0
    get_global $~lib/internal/string/CharCode.a
    i32.store16 offset=6
    get_local $0
    get_global $~lib/internal/string/CharCode.N
    i32.store16 offset=8
    i32.const 3
    return
   else    
    get_local $2
    f64.const 0
    f64.lt
    set_local $3
    i32.const 8
    get_local $3
    i32.add
    set_local $4
    i32.const 2864
    i32.const 2888
    get_local $3
    select
    set_local $5
    block $~lib/memory/memory.copy|inlined.10
     get_local $0
     get_global $~lib/internal/string/HEADER_SIZE
     i32.add
     set_local $6
     get_local $4
     i32.const 1
     i32.shl
     set_local $7
     get_local $6
     get_local $5
     get_local $7
     call $~lib/internal/memory/memmove
    end
    get_local $4
    return
   end
   unreachable
   unreachable
  end
  get_local $0
  get_local $2
  call $~lib/internal/number/dtoa_core
 )
 (func $~lib/array/Array<f64>#join (; 185 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.3 (result f64)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 3
    i32.shl
    i32.add
    f64.load offset=8
   end
   call $~lib/internal/number/dtoa
   return
  end
  i32.const 28
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 28
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.4 (result f64)
      get_local $5
      get_local $11
      i32.const 3
      i32.shl
      i32.add
      f64.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/dtoa_stream
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.5 (result f64)
   get_local $5
   get_local $2
   i32.const 3
   i32.shl
   i32.add
   f64.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/dtoa_stream
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.4
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.8
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.8
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/array/Array<String>#join (; 186 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.3 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   return
  end
  i32.const 0
  set_local $8
  block $break|0
   block
    i32.const 0
    set_local $9
    get_local $2
    i32.const 1
    i32.add
    set_local $10
   end
   loop $repeat|0
    get_local $9
    get_local $10
    i32.lt_s
    i32.eqz
    br_if $break|0
    get_local $8
    block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.4 (result i32)
     get_local $5
     get_local $9
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=8
    end
    i32.load
    i32.add
    set_local $8
    get_local $9
    i32.const 1
    i32.add
    set_local $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  set_local $10
  get_local $8
  get_local $6
  get_local $2
  i32.mul
  i32.add
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  block $break|1
   i32.const 0
   set_local $11
   loop $repeat|1
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|1
    block
     block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.5 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $4
      i32.load
      set_local $12
      get_local $9
      get_local $10
      get_local $4
      i32.const 0
      get_local $12
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $12
      i32.add
      set_local $10
     end
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.6 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $4
   i32.load
   set_local $11
   get_local $9
   get_local $10
   get_local $4
   i32.const 0
   get_local $11
   call $~lib/internal/string/copyUnsafe
  end
  get_local $9
  return
 )
 (func $std/array/Ref#constructor (; 187 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 0
    call $~lib/memory/memory.allocate
    set_local $1
    get_local $1
   end
   tee_local $0
  end
  tee_local $0
 )
 (func $~lib/array/Array<Ref>#constructor (; 188 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 8
   i32.const 37
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.const 2
  i32.shl
  set_local $2
  get_local $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $3
  get_local $0
  if (result i32)
   get_local $0
  else   
   block (result i32)
    i32.const 8
    call $~lib/memory/memory.allocate
    set_local $4
    get_local $4
    i32.const 0
    i32.store
    get_local $4
    i32.const 0
    i32.store offset=4
    get_local $4
   end
   tee_local $0
  end
  tee_local $0
  get_local $3
  i32.store
  get_local $0
  get_local $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.12
   get_local $3
   get_global $~lib/internal/arraybuffer/HEADER_SIZE
   i32.add
   set_local $4
   i32.const 0
   set_local $5
   get_local $4
   get_local $5
   get_local $2
   call $~lib/internal/memory/memset
  end
  get_local $0
 )
 (func $~lib/array/Array<Ref>#__unchecked_set (; 189 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  set_local $3
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/array/Array<Ref>#join (; 190 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   i32.const 4528
   return
  end
  i32.const 15
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 15
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Ref,Ref>|inlined.0 (result i32)
      get_local $5
      get_local $11
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $9
      get_local $10
      i32.const 4528
      i32.const 0
      i32.const 15
      call $~lib/internal/string/copyUnsafe
      get_local $10
      i32.const 15
      i32.add
      set_local $10
     end
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Ref,Ref>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  if
   get_local $9
   get_local $10
   i32.const 4528
   i32.const 0
   i32.const 15
   call $~lib/internal/string/copyUnsafe
   get_local $10
   i32.const 15
   i32.add
   set_local $10
  end
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.5
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.9
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.9
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/itoa<i8> (; 191 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/number/itoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<i8> (; 192 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.lt_s
  set_local $4
  get_local $4
  if
   i32.const 0
   get_local $2
   i32.sub
   set_local $2
  end
  get_local $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/number/decimalCount32
  get_local $4
  i32.add
  set_local $3
  block $~lib/internal/number/utoa32_core|inlined.6
   get_local $2
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   set_local $5
   get_local $0
   get_local $5
   get_local $3
   call $~lib/internal/number/utoa32_lut
  end
  get_local $4
  if
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/array/Array<i8>#join (; 193 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s offset=8
   end
   call $~lib/internal/number/itoa<i8>
   return
  end
  i32.const 11
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 11
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.1 (result i32)
      get_local $5
      get_local $11
      i32.const 0
      i32.shl
      i32.add
      i32.load8_s offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<i8>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i8,i8>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   i32.load8_s offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<i8>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.6
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.10
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.10
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/itoa<u16> (; 194 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 65535
  i32.and
  call $~lib/internal/number/utoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<u16> (; 195 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.const 65535
  i32.and
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 65535
  i32.and
  call $~lib/internal/number/decimalCount32
  set_local $3
  block $~lib/internal/number/utoa32_core|inlined.7
   get_local $2
   i32.const 65535
   i32.and
   set_local $4
   get_local $0
   get_local $4
   get_local $3
   call $~lib/internal/number/utoa32_lut
  end
  get_local $3
 )
 (func $~lib/array/Array<u16>#join (; 196 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u offset=8
   end
   call $~lib/internal/number/itoa<u16>
   return
  end
  i32.const 10
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 10
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.1 (result i32)
      get_local $5
      get_local $11
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u16>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u16,u16>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 1
   i32.shl
   i32.add
   i32.load16_u offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u16>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.7
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.11
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.11
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/decimalCount64 (; 197 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  get_local $0
  i64.const 1000000000000000
  i64.lt_u
  if
   get_local $0
   i64.const 1000000000000
   i64.lt_u
   if
    i32.const 11
    i32.const 12
    get_local $0
    i64.const 100000000000
    i64.lt_u
    select
    return
   else    
    i32.const 14
    i32.const 15
    get_local $0
    i64.const 100000000000000
    i64.lt_u
    select
    set_local $1
    i32.const 13
    get_local $1
    get_local $0
    i64.const 10000000000000
    i64.lt_u
    select
    return
   end
   unreachable
   unreachable
  else   
   get_local $0
   i64.const 100000000000000000
   i64.lt_u
   if
    i32.const 16
    i32.const 17
    get_local $0
    i64.const 10000000000000000
    i64.lt_u
    select
    return
   else    
    i32.const 19
    i32.const 20
    get_local $0
    i64.const -8446744073709551616
    i64.lt_u
    select
    set_local $1
    i32.const 18
    get_local $1
    get_local $0
    i64.const 1000000000000000000
    i64.lt_u
    select
    return
   end
   unreachable
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/internal/number/utoa64_lut (; 198 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
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
  block $~lib/internal/number/DIGITS|inlined.1 (result i32)
   i32.const 5368
  end
  i32.load
  set_local $3
  block $break|0
   loop $continue|0
    get_local $1
    i64.const 100000000
    i64.ge_u
    if
     block
      get_local $1
      i64.const 100000000
      i64.div_u
      set_local $4
      get_local $1
      get_local $4
      i64.const 100000000
      i64.mul
      i64.sub
      i32.wrap/i64
      set_local $5
      get_local $4
      set_local $1
      get_local $5
      i32.const 10000
      i32.div_u
      set_local $6
      get_local $5
      i32.const 10000
      i32.rem_u
      set_local $7
      get_local $6
      i32.const 100
      i32.div_u
      set_local $8
      get_local $6
      i32.const 100
      i32.rem_u
      set_local $9
      get_local $7
      i32.const 100
      i32.div_u
      set_local $10
      get_local $7
      i32.const 100
      i32.rem_u
      set_local $11
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.4 (result i64)
       get_local $3
       get_local $10
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $12
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.5 (result i64)
       get_local $3
       get_local $11
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $13
      get_local $2
      i32.const 4
      i32.sub
      set_local $2
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      get_local $12
      get_local $13
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.6 (result i64)
       get_local $3
       get_local $8
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $12
      block $~lib/internal/arraybuffer/loadUnsafe<u32,u64>|inlined.7 (result i64)
       get_local $3
       get_local $9
       i32.const 2
       i32.shl
       i32.add
       i64.load32_u offset=8
      end
      set_local $13
      get_local $2
      i32.const 4
      i32.sub
      set_local $2
      get_local $0
      get_local $2
      i32.const 1
      i32.shl
      i32.add
      get_local $12
      get_local $13
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
     end
     br $continue|0
    end
   end
  end
  get_local $0
  get_local $1
  i32.wrap/i64
  get_local $2
  call $~lib/internal/number/utoa32_lut
 )
 (func $~lib/internal/number/utoa64 (; 199 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i64.eqz
  if
   i32.const 1968
   return
  end
  get_local $0
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $0
   i32.wrap/i64
   set_local $2
   get_local $2
   call $~lib/internal/number/decimalCount32
   set_local $3
   get_local $3
   call $~lib/internal/string/allocateUnsafe
   set_local $1
   block $~lib/internal/number/utoa32_core|inlined.8
    get_local $1
    get_local $2
    get_local $3
    call $~lib/internal/number/utoa32_lut
   end
  else   
   get_local $0
   call $~lib/internal/number/decimalCount64
   set_local $3
   get_local $3
   call $~lib/internal/string/allocateUnsafe
   set_local $1
   block $~lib/internal/number/utoa64_core|inlined.0
    get_local $1
    get_local $0
    get_local $3
    call $~lib/internal/number/utoa64_lut
   end
  end
  get_local $1
 )
 (func $~lib/internal/number/itoa<u64> (; 200 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/internal/number/utoa64
  return
 )
 (func $~lib/internal/number/itoa_stream<u64> (; 201 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i64.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $2
   i32.wrap/i64
   set_local $4
   get_local $4
   call $~lib/internal/number/decimalCount32
   set_local $3
   block $~lib/internal/number/utoa32_core|inlined.9
    get_local $0
    get_local $4
    get_local $3
    call $~lib/internal/number/utoa32_lut
   end
  else   
   get_local $2
   call $~lib/internal/number/decimalCount64
   set_local $3
   block $~lib/internal/number/utoa64_core|inlined.1
    get_local $0
    get_local $2
    get_local $3
    call $~lib/internal/number/utoa64_lut
   end
  end
  get_local $3
 )
 (func $~lib/array/Array<u64>#join (; 202 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.1 (result i64)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
   end
   call $~lib/internal/number/itoa<u64>
   return
  end
  i32.const 20
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 20
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.2 (result i64)
      get_local $5
      get_local $11
      i32.const 3
      i32.shl
      i32.add
      i64.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u64>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u64,u64>|inlined.3 (result i64)
   get_local $5
   get_local $2
   i32.const 3
   i32.shl
   i32.add
   i64.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u64>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.8
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.12
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.12
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/internal/number/itoa64 (; 203 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i64.eqz
  if
   i32.const 1968
   return
  end
  get_local $0
  i64.const 0
  i64.lt_s
  set_local $1
  get_local $1
  if
   i64.const 0
   get_local $0
   i64.sub
   set_local $0
  end
  get_local $0
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $0
   i32.wrap/i64
   set_local $3
   get_local $3
   call $~lib/internal/number/decimalCount32
   get_local $1
   i32.add
   set_local $4
   get_local $4
   call $~lib/internal/string/allocateUnsafe
   set_local $2
   block $~lib/internal/number/utoa32_core|inlined.10
    get_local $2
    get_local $3
    get_local $4
    call $~lib/internal/number/utoa32_lut
   end
  else   
   get_local $0
   call $~lib/internal/number/decimalCount64
   get_local $1
   i32.add
   set_local $4
   get_local $4
   call $~lib/internal/string/allocateUnsafe
   set_local $2
   block $~lib/internal/number/utoa64_core|inlined.2
    get_local $2
    get_local $0
    get_local $4
    call $~lib/internal/number/utoa64_lut
   end
  end
  get_local $1
  if
   get_local $2
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $2
 )
 (func $~lib/internal/number/itoa<i64> (; 204 ;) (type $Ii) (param $0 i64) (result i32)
  get_local $0
  call $~lib/internal/number/itoa64
  return
 )
 (func $~lib/internal/number/itoa_stream<i64> (; 205 ;) (type $iiIi) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i64.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i64.const 0
  i64.lt_s
  set_local $4
  get_local $4
  if
   i64.const 0
   get_local $2
   i64.sub
   set_local $2
  end
  get_local $2
  get_global $~lib/builtins/u32.MAX_VALUE
  i64.extend_u/i32
  i64.le_u
  if
   get_local $2
   i32.wrap/i64
   set_local $5
   get_local $5
   call $~lib/internal/number/decimalCount32
   get_local $4
   i32.add
   set_local $3
   block $~lib/internal/number/utoa32_core|inlined.11
    get_local $0
    get_local $5
    get_local $3
    call $~lib/internal/number/utoa32_lut
   end
  else   
   get_local $2
   call $~lib/internal/number/decimalCount64
   get_local $4
   i32.add
   set_local $3
   block $~lib/internal/number/utoa64_core|inlined.3
    get_local $0
    get_local $2
    get_local $3
    call $~lib/internal/number/utoa64_lut
   end
  end
  get_local $4
  if
   get_local $0
   get_global $~lib/internal/string/CharCode.MINUS
   i32.store16 offset=4
  end
  get_local $3
 )
 (func $~lib/array/Array<i64>#join (; 206 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.0 (result i64)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
   end
   call $~lib/internal/number/itoa<i64>
   return
  end
  i32.const 21
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 21
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.1 (result i64)
      get_local $5
      get_local $11
      i32.const 3
      i32.shl
      i32.add
      i64.load offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<i64>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<i64,i64>|inlined.2 (result i64)
   get_local $5
   get_local $2
   i32.const 3
   i32.shl
   i32.add
   i64.load offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<i64>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.9
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.13
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.13
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/array/Array<Array<i32>>#join (; 207 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.3 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<i32>#join
   else    
    i32.const 1560
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.4 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<i32>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.5 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<i32>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $~lib/internal/number/itoa<u8> (; 208 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 255
  i32.and
  call $~lib/internal/number/utoa32
  return
 )
 (func $~lib/internal/number/itoa_stream<u8> (; 209 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.const 1
  i32.shl
  i32.add
  set_local $0
  get_local $2
  i32.const 255
  i32.and
  i32.eqz
  if
   get_local $0
   get_global $~lib/internal/string/CharCode._0
   i32.store16 offset=4
   i32.const 1
   return
  end
  i32.const 0
  set_local $3
  get_local $2
  i32.const 255
  i32.and
  call $~lib/internal/number/decimalCount32
  set_local $3
  block $~lib/internal/number/utoa32_core|inlined.12
   get_local $2
   i32.const 255
   i32.and
   set_local $4
   get_local $0
   get_local $4
   get_local $3
   call $~lib/internal/number/utoa32_lut
  end
  get_local $3
 )
 (func $~lib/array/Array<u8>#join (; 210 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.1 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u offset=8
   end
   call $~lib/internal/number/itoa<u8>
   return
  end
  i32.const 10
  get_local $6
  i32.add
  get_local $2
  i32.mul
  i32.const 10
  i32.add
  set_local $8
  get_local $8
  call $~lib/internal/string/allocateUnsafe
  set_local $9
  i32.const 0
  set_local $10
  block $break|0
   i32.const 0
   set_local $11
   loop $repeat|0
    get_local $11
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.2 (result i32)
      get_local $5
      get_local $11
      i32.const 0
      i32.shl
      i32.add
      i32.load8_u offset=8
     end
     set_local $4
     get_local $10
     get_local $9
     get_local $10
     get_local $4
     call $~lib/internal/number/itoa_stream<u8>
     i32.add
     set_local $10
     get_local $7
     if
      get_local $9
      get_local $10
      get_local $1
      i32.const 0
      get_local $6
      call $~lib/internal/string/copyUnsafe
      get_local $10
      get_local $6
      i32.add
      set_local $10
     end
    end
    get_local $11
    i32.const 1
    i32.add
    set_local $11
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<u8,u8>|inlined.3 (result i32)
   get_local $5
   get_local $2
   i32.const 0
   i32.shl
   i32.add
   i32.load8_u offset=8
  end
  set_local $4
  get_local $10
  get_local $9
  get_local $10
  get_local $4
  call $~lib/internal/number/itoa_stream<u8>
  i32.add
  set_local $10
  get_local $9
  set_local $11
  get_local $8
  get_local $10
  i32.gt_s
  if
   get_local $9
   i32.const 0
   get_local $10
   call $~lib/string/String#substring
   set_local $11
   block $~lib/internal/string/freeUnsafe|inlined.10
    block
     get_local $9
     i32.eqz
     if
      i32.const 0
      i32.const 1744
      i32.const 28
      i32.const 4
      call $~lib/env/abort
      unreachable
     end
     block $~lib/memory/memory.free|inlined.14
      block
       get_local $9
       call $~lib/allocator/arena/__memory_free
       br $~lib/memory/memory.free|inlined.14
       unreachable
      end
      unreachable
     end
    end
   end
  end
  get_local $11
  return
 )
 (func $~lib/array/Array<Array<u8>>#join (; 211 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<u8>#join
   else    
    i32.const 1560
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.1 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<u8>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<u8>,Array<u8>>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<u8>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $~lib/array/Array<Array<u32>>#join (; 212 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<u32>,Array<u32>>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<u32>#join
   else    
    i32.const 1560
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<u32>,Array<u32>>|inlined.1 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<u32>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<u32>,Array<u32>>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<u32>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $~lib/array/Array<Array<Array<u32>>>#join (; 213 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $0
  i32.load offset=4
  i32.const 1
  i32.sub
  set_local $2
  get_local $2
  i32.const 0
  i32.lt_s
  if
   i32.const 1560
   return
  end
  i32.const 1560
  set_local $3
  get_local $0
  i32.load
  set_local $5
  get_local $1
  i32.load
  set_local $6
  get_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $2
  i32.eqz
  if
   block $~lib/internal/arraybuffer/loadUnsafe<Array<Array<u32>>,Array<Array<u32>>>|inlined.0 (result i32)
    i32.const 0
    set_local $8
    get_local $5
    get_local $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=8
   end
   set_local $4
   get_local $4
   if (result i32)
    get_local $4
    get_local $1
    call $~lib/array/Array<Array<u32>>#join
   else    
    i32.const 1560
   end
   return
  end
  block $break|0
   i32.const 0
   set_local $8
   loop $repeat|0
    get_local $8
    get_local $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/loadUnsafe<Array<Array<u32>>,Array<Array<u32>>>|inlined.1 (result i32)
      get_local $5
      get_local $8
      i32.const 2
      i32.shl
      i32.add
      i32.load offset=8
     end
     set_local $4
     get_local $4
     if
      get_local $3
      get_local $4
      get_local $1
      call $~lib/array/Array<Array<u32>>#join
      call $~lib/string/String.__concat
      set_local $3
     end
     get_local $7
     if
      get_local $3
      get_local $1
      call $~lib/string/String.__concat
      set_local $3
     end
    end
    get_local $8
    i32.const 1
    i32.add
    set_local $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/internal/arraybuffer/loadUnsafe<Array<Array<u32>>,Array<Array<u32>>>|inlined.2 (result i32)
   get_local $5
   get_local $2
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
  end
  set_local $4
  get_local $4
  if
   get_local $3
   get_local $4
   get_local $1
   call $~lib/array/Array<Array<u32>>#join
   call $~lib/string/String.__concat
   set_local $3
  end
  get_local $3
  return
 )
 (func $start (; 214 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_global $HEAP_BASE
  get_global $~lib/internal/allocator/AL_MASK
  i32.add
  get_global $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  set_global $std/array/arr
  get_global $std/array/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u8>#fill
  drop
  get_global $std/array/arr8
  i32.const 144
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/array/arr8
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u8>#fill|trampoline
  end
  drop
  get_global $std/array/arr8
  i32.const 200
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u8>#fill
  drop
  get_global $std/array/arr8
  i32.const 224
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/arr8
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/array/Array<u8>#fill|trampoline
  end
  drop
  get_global $std/array/arr8
  i32.const 248
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 45
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u8>#fill
  drop
  get_global $std/array/arr8
  i32.const 272
  i32.const 0
  call $std/array/isArraysEqual<u8>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/array/Array<u32>#fill
  drop
  get_global $std/array/arr32
  i32.const 352
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 53
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   set_global $~argc
   get_global $std/array/arr32
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/array/Array<u32>#fill|trampoline
  end
  drop
  get_global $std/array/arr32
  i32.const 392
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/array/Array<u32>#fill
  drop
  get_global $std/array/arr32
  i32.const 432
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 59
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 2
   set_global $~argc
   get_global $std/array/arr32
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/array/Array<u32>#fill|trampoline
  end
  drop
  get_global $std/array/arr32
  i32.const 472
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/array/Array<u32>#fill
  drop
  get_global $std/array/arr32
  i32.const 512
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 65
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.0 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 70
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 74
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 75
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 76
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  set_global $std/array/i
  get_global $std/array/i
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.2 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 82
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  block $~lib/array/Array<i32>#get:length|inlined.3 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 86
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 87
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 88
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  block $~lib/array/Array<i32>#get:length|inlined.4 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 92
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 93
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 94
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 95
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 45
  call $~lib/array/Array<i32>#push
  drop
  block $~lib/array/Array<i32>#get:length|inlined.5 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#constructor
  set_global $std/array/other
  get_global $std/array/arr
  get_global $std/array/other
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 110
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.6 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 111
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.7 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 112
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 528
  call $~lib/array/Array<i32>#concat
  drop
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 115
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 117
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 118
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 119
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/other
  i32.const 46
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/other
  i32.const 47
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  get_global $std/array/other
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 126
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.8 (result i32)
   get_global $std/array/other
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 127
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.9 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 128
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 129
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 130
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 46
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 132
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 47
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  call $~lib/array/Array<i32>#pop
  drop
  block $~lib/array/Array<i32>#get:length|inlined.10 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 136
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  block $~lib/array/Array<i32>#get:length|inlined.11 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 139
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/out
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 140
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.12 (result i32)
   get_global $std/array/source
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/source
  get_global $std/array/arr
  call $~lib/array/Array<i32>#concat
  set_global $std/array/out
  block $~lib/array/Array<i32>#get:length|inlined.13 (result i32)
   get_global $std/array/out
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 145
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.14 (result i32)
   get_global $std/array/source
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 146
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 42
  call $~lib/array/Array<i32>#unshift
  drop
  block $~lib/array/Array<i32>#get:length|inlined.15 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 154
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 155
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 156
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 41
  call $~lib/array/Array<i32>#unshift
  drop
  block $~lib/array/Array<i32>#get:length|inlined.16 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 161
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 162
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 163
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 164
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 166
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 4
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 167
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#shift
  set_global $std/array/i
  get_global $std/array/i
  i32.const 41
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 173
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.17 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 174
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 175
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 176
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 177
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 178
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#__get
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 179
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  set_global $std/array/i
  get_global $std/array/i
  i32.const 45
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 183
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.18 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 184
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 185
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 186
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 187
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 188
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#reverse
  drop
  block $~lib/array/Array<i32>#get:length|inlined.19 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 196
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 43
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 197
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 198
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 44
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 44
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 207
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 211
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 45
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 100
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 219
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const -100
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 223
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const -2
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const -4
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 231
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 0
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 235
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 1
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 239
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 43
  i32.const 2
  call $~lib/array/Array<i32>#indexOf
  set_global $std/array/i
  get_global $std/array/i
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 243
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.0 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 44
   set_local $1
   i32.const 0
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 249
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.1 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 42
   set_local $1
   i32.const 0
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 253
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.2 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 45
   set_local $1
   i32.const 0
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 257
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.3 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const 100
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 261
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.4 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 43
   set_local $1
   i32.const -100
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 265
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.5 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const -2
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 269
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.6 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 43
   set_local $1
   i32.const -4
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 273
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.7 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const 0
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 277
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.8 (result i32)
   get_global $std/array/arr
   set_local $0
   i32.const 43
   set_local $1
   i32.const 1
   set_local $2
   get_local $0
   get_local $1
   get_local $2
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 281
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#includes|inlined.9 (result i32)
   get_global $std/array/arr
   set_local $2
   i32.const 43
   set_local $1
   i32.const 2
   set_local $0
   get_local $2
   get_local $1
   get_local $0
   call $~lib/array/Array<i32>#indexOf
   i32.const 0
   i32.ge_s
  end
  i32.const 1
  i32.and
  set_global $std/array/includes
  get_global $std/array/includes
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 285
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#splice
  block $~lib/array/Array<i32>#get:length|inlined.20 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 289
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $std/array/internalCapacity<i32>
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 290
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 291
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 292
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  i32.const 0
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 1
  i32.const 1
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 2
  i32.const 2
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 3
  i32.const 3
  call $~lib/array/Array<i32>#__set
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 302
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 305
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 308
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 4
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 316
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.21 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 317
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 5
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 319
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 6
  call $~lib/array/Array<i32>#findIndex
  set_global $std/array/i
  get_global $std/array/i
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 332
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.22 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 333
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 7
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 341
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 8
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 344
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 9
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 352
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.23 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 353
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 10
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 355
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 11
  call $~lib/array/Array<i32>#every
  set_global $std/array/every
  get_global $std/array/every
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 368
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.24 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 369
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 12
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 377
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 13
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 380
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 14
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 388
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.25 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 389
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 15
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 391
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 16
  call $~lib/array/Array<i32>#some
  set_global $std/array/some
  get_global $std/array/some
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 404
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.26 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 405
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 17
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 414
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 18
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 423
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.27 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 424
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 19
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 427
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 20
  call $~lib/array/Array<i32>#forEach
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 441
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.28 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 442
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 21
  call $~lib/array/Array<i32>#map<f32>
  set_global $std/array/newArr
  block $~lib/array/Array<f32>#get:length|inlined.0 (result i32)
   get_global $std/array/newArr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 451
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/newArr
  i32.const 0
  call $~lib/array/Array<f32>#__get
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_s/i32
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 452
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 22
  call $~lib/array/Array<i32>#map<i32>
  drop
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 461
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.29 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 462
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 23
  call $~lib/array/Array<i32>#map<i32>
  drop
  get_global $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 469
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 24
  call $~lib/array/Array<i32>#map<i32>
  drop
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 484
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.30 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 485
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 25
  call $~lib/array/Array<i32>#filter
  set_global $std/array/filteredArr
  block $~lib/array/Array<i32>#get:length|inlined.31 (result i32)
   get_global $std/array/filteredArr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 493
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 26
  call $~lib/array/Array<i32>#filter
  drop
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 502
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.32 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 503
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 27
  call $~lib/array/Array<i32>#filter
  drop
  get_global $std/array/i
  i32.const 406
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 510
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  i32.const 0
  set_global $std/array/i
  get_global $std/array/arr
  i32.const 28
  call $~lib/array/Array<i32>#filter
  drop
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 525
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.33 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 526
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 29
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 534
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 30
  i32.const 4
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 538
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 31
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 541
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 32
  i32.const 0
  call $~lib/array/Array<i32>#reduce<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 544
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 33
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 552
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.34 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 553
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 34
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 555
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 35
  i32.const 0
  call $~lib/array/Array<i32>#reduce<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 568
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.35 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 569
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 36
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 577
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 37
  i32.const 4
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 581
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 38
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 584
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 39
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<bool>
  i32.const 1
  i32.and
  set_global $std/array/boolVal
  get_global $std/array/boolVal
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 587
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 40
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 595
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.36 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 596
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 41
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 598
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  call $~lib/array/Array<i32>#pop
  drop
  get_global $std/array/arr
  i32.const 42
  i32.const 0
  call $~lib/array/Array<i32>#reduceRight<i32>
  set_global $std/array/i
  get_global $std/array/i
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 611
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#get:length|inlined.37 (result i32)
   get_global $std/array/arr
   set_local $0
   get_local $0
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 612
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/arr
  i32.const 0
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 1
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 2
  call $~lib/array/Array<i32>#push
  drop
  get_global $std/array/arr
  i32.const 3
  call $~lib/array/Array<i32>#push
  drop
  call $~lib/bindings/Math/random
  i64.reinterpret/f64
  call $~lib/math/NativeMath.seedRandom
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/f32ArrayTyped
   i32.const 0
   call $~lib/array/Array<f32>#sort|trampoline
  end
  drop
  get_global $std/array/f32ArrayTyped
  i32.const 896
  i32.const 0
  call $std/array/isArraysEqual<f32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 699
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/f64ArrayTyped
   i32.const 0
   call $~lib/array/Array<f64>#sort|trampoline
  end
  drop
  get_global $std/array/f64ArrayTyped
  i32.const 1168
  i32.const 0
  call $std/array/isArraysEqual<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 703
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/i32ArrayTyped
   i32.const 0
   call $~lib/array/Array<i32>#sort|trampoline
  end
  drop
  get_global $std/array/i32ArrayTyped
  i32.const 1248
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 707
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   set_global $~argc
   get_global $std/array/u32ArrayTyped
   i32.const 0
   call $~lib/array/Array<u32>#sort|trampoline
  end
  drop
  get_global $std/array/u32ArrayTyped
  i32.const 1328
  i32.const 0
  call $std/array/isArraysEqual<u32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 711
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 64
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed64
  i32.const 128
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed128
  i32.const 1024
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed1024
  i32.const 10000
  call $std/array/createReverseOrderedArray
  set_global $std/array/reversed10000
  i32.const 512
  call $std/array/createRandomOrderedArray
  set_global $std/array/randomized512
  get_global $std/array/reversed0
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed1
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed1
  i32.const 1496
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 731
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed2
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed2
  i32.const 1520
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 734
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed4
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed4
  get_global $std/array/expected4
  i32.const 0
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 737
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed64
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed64
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 740
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed128
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed128
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 743
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed1024
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed1024
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 746
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/reversed10000
  call $std/array/assertSortedDefault<i32>
  get_global $std/array/reversed10000
  get_global $std/array/expected4
  i32.const 4
  call $std/array/isArraysEqual<i32>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 749
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $std/array/randomized512
  call $std/array/assertSortedDefault<i32>
  i32.const 64
  call $std/array/createRandomOrderedArray
  set_global $std/array/randomized64
  i32.const 257
  call $std/array/createRandomOrderedArray
  set_global $std/array/randomized257
  get_global $std/array/randomized64
  i32.const 48
  call $std/array/assertSorted<i32>
  get_global $std/array/randomized64
  i32.const 49
  call $std/array/assertSorted<i32>
  get_global $std/array/randomized257
  i32.const 50
  call $std/array/assertSorted<i32>
  get_global $std/array/randomized257
  i32.const 51
  call $std/array/assertSorted<i32>
  i32.const 512
  call $std/array/createReverseOrderedNestedArray
  set_global $std/array/reversedNested512
  get_global $std/array/reversedNested512
  i32.const 52
  call $std/array/assertSorted<Array<i32>>
  i32.const 512
  call $std/array/createReverseOrderedElementsArray
  set_global $std/array/reversedElements512
  get_global $std/array/reversedElements512
  i32.const 53
  call $std/array/assertSorted<Proxy<i32>>
  get_global $std/array/randomStringsActual
  i32.const 54
  call $std/array/assertSorted<String>
  get_global $std/array/randomStringsActual
  get_global $std/array/randomStringsExpected
  i32.const 0
  call $std/array/isArraysEqual<String>
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 778
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 400
  call $std/array/createRandomStringArray
  set_global $std/array/randomStrings400
  get_global $std/array/randomStrings400
  i32.const 55
  call $std/array/assertSorted<String>
  i32.const 1896
  i32.const 1872
  call $~lib/array/Array<bool>#join
  i32.const 1904
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 787
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2528
  i32.const 1560
  call $~lib/array/Array<i32>#join
  i32.const 2536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 788
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2632
  i32.const 2592
  call $~lib/array/Array<u32>#join
  i32.const 2536
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 789
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2688
  i32.const 2664
  call $~lib/array/Array<i32>#join
  i32.const 2696
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 790
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4344
  i32.const 2824
  call $~lib/array/Array<f64>#join
  i32.const 4352
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 791
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4520
  i32.const 1560
  call $~lib/array/Array<String>#join
  i32.const 4440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 792
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   i32.const 3
   call $~lib/array/Array<Ref>#constructor
   set_local $3
   get_local $3
   i32.const 0
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<Ref>#__unchecked_set
   get_local $3
   i32.const 1
   i32.const 0
   call $~lib/array/Array<Ref>#__unchecked_set
   get_local $3
   i32.const 2
   i32.const 0
   call $std/array/Ref#constructor
   call $~lib/array/Array<Ref>#__unchecked_set
   get_local $3
  end
  set_global $std/array/refArr
  get_global $std/array/refArr
  i32.const 1872
  call $~lib/array/Array<Ref>#join
  i32.const 4568
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 794
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.1 (result i32)
   get_global $std/array/reversed0
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<i32>#join
  end
  i32.const 1560
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 798
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.3 (result i32)
   get_global $std/array/reversed1
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<i32>#join
  end
  i32.const 4440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 799
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.5 (result i32)
   get_global $std/array/reversed2
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<i32>#join
  end
  i32.const 4640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 800
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i32>#toString|inlined.7 (result i32)
   get_global $std/array/reversed4
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<i32>#join
  end
  i32.const 4656
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 801
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i8>#toString|inlined.1 (result i32)
   i32.const 4720
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<i8>#join
  end
  i32.const 4728
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 803
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<u16>#toString|inlined.1 (result i32)
   i32.const 4784
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<u16>#join
  end
  i32.const 4792
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 804
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<u64>#toString|inlined.1 (result i32)
   i32.const 5408
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<u64>#join
  end
  i32.const 5416
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 805
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<i64>#toString|inlined.1 (result i32)
   i32.const 5608
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<i64>#join
  end
  i32.const 5616
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 806
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<String>#toString|inlined.1 (result i32)
   get_global $std/array/randomStringsExpected
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<String>#join
  end
  i32.const 5704
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 807
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<String>#toString|inlined.3 (result i32)
   i32.const 5824
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<String>#join
  end
  i32.const 5832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 808
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<Array<i32>>#toString|inlined.1 (result i32)
   get_global $std/array/subarr32
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<Array<i32>>#join
  end
  i32.const 5920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 811
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<Array<u8>>#toString|inlined.1 (result i32)
   get_global $std/array/subarr8
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<Array<u8>>#join
  end
  i32.const 5920
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 814
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/array/Array<Array<Array<u32>>>#toString|inlined.1 (result i32)
   get_global $std/array/subarrU32
   set_local $3
   get_local $3
   i32.const 1872
   call $~lib/array/Array<Array<Array<u32>>>#join
  end
  i32.const 4440
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 152
   i32.const 817
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 215 ;) (type $v)
 )
)
