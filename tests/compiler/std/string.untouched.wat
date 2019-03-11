(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 \00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 48) "\01\00\00\00\1a\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 88) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 128) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 168) "\01\00\00\00\02\00\00\00\00\00")
 (data (i32.const 184) "\01\00\00\00\02\00\00\006\00")
 (data (i32.const 200) "\01\00\00\00\04\00\00\004\d8\06\df")
 (data (i32.const 216) "\01\00\00\00\04\00\00\00h\00i\00")
 (data (i32.const 232) "\01\00\00\00\08\00\00\00n\00u\00l\00l\00")
 (data (i32.const 248) "\01\00\00\00\0c\00\00\00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 272) "\01\00\00\00\06\00\00\00I\00\'\00m\00")
 (data (i32.const 288) "\01\00\00\00\02\00\00\00 \00")
 (data (i32.const 304) "\01\00\00\00\00\00\00\00")
 (data (i32.const 312) "\01\00\00\00\06\00\00\00 \00 \00 \00")
 (data (i32.const 328) "\01\00\00\00\02\00\00\00a\00")
 (data (i32.const 344) "\01\00\00\00\06\00\00\00a\00b\00c\00")
 (data (i32.const 360) "\01\00\00\00\n\00\00\00 \00 \00a\00b\00c\00")
 (data (i32.const 384) "\01\00\00\00\06\00\00\001\002\003\00")
 (data (i32.const 400) "\01\00\00\00\0c\00\00\001\002\003\00a\00b\00c\00")
 (data (i32.const 424) "\01\00\00\00\10\00\00\001\002\003\001\002\00a\00b\00c\00")
 (data (i32.const 448) "\01\00\00\00\n\00\00\00a\00b\00c\00 \00 \00")
 (data (i32.const 472) "\01\00\00\00\0c\00\00\00a\00b\00c\00a\00b\00c\00")
 (data (i32.const 496) "\01\00\00\00\10\00\00\00a\00b\00c\00a\00b\00c\00a\00b\00")
 (data (i32.const 520) "\01\00\00\00\02\00\00\00,\00")
 (data (i32.const 536) "\01\00\00\00\02\00\00\00x\00")
 (data (i32.const 552) "\01\00\00\00\06\00\00\00,\00 \00I\00")
 (data (i32.const 568) "\01\00\00\00\02\00\00\00g\00")
 (data (i32.const 584) "\01\00\00\00\02\00\00\00i\00")
 (data (i32.const 600) "\01\00\00\00\02\00\00\000\00")
 (data (i32.const 616) "\01\00\00\00\02\00\00\001\00")
 (data (i32.const 632) "\01\00\00\00\n\00\00\000\00b\001\000\001\00")
 (data (i32.const 656) "\01\00\00\00\n\00\00\000\00o\007\000\007\00")
 (data (i32.const 680) "\01\00\00\00\n\00\00\000\00x\00f\000\00f\00")
 (data (i32.const 704) "\01\00\00\00\n\00\00\000\00x\00F\000\00F\00")
 (data (i32.const 728) "\01\00\00\00\06\00\00\000\001\001\00")
 (data (i32.const 744) "\01\00\00\00\08\00\00\000\00x\001\00g\00")
 (data (i32.const 760) "\01\00\00\00\06\00\00\000\00.\001\00")
 (data (i32.const 776) "\01\00\00\00\06\00\00\00.\002\005\00")
 (data (i32.const 792) "\01\00\00\00\10\00\00\00.\001\00f\00o\00o\00b\00a\00r\00")
 (data (i32.const 816) "\01\00\00\00\02\00\00\00b\00")
 (data (i32.const 832) "\01\00\00\00\04\00\00\00a\00b\00")
 (data (i32.const 848) "\01\00\00\00\08\00\00\00k\00e\00y\001\00")
 (data (i32.const 864) "\01\00\00\00\08\00\00\00k\00e\00y\002\00")
 (data (i32.const 880) "\01\00\00\00\06\00\00\00k\00e\001\00")
 (data (i32.const 896) "\01\00\00\00\06\00\00\00k\00e\002\00")
 (data (i32.const 912) "\01\00\00\00\n\00\00\00k\00e\00y\001\002\00")
 (data (i32.const 936) "\01\00\00\00\n\00\00\00k\00e\00y\001\001\00")
 (data (i32.const 960) "\01\00\00\00\0e\00\00\00\a40\ed0\cf0\cb0\db0\d80\c80")
 (data (i32.const 984) "\01\00\00\00\0e\00\00\00\a60\f00\ce0\aa0\af0\e40\de0")
 (data (i32.const 1008) "\01\00\00\00\16\00\00\00D\00\19 f\00h\00u\00a\00s\00c\00a\00i\00l\00")
 (data (i32.const 1040) "\01\00\00\00\14\00\00\00D\00\19 \1f\1eu\00a\00s\00c\00a\00i\00l\00")
 (data (i32.const 1072) "\01\00\00\00\04\00\00\00b\00a\00")
 (data (i32.const 1088) "\01\00\00\00\04\00\00\00a\00a\00")
 (data (i32.const 1104) "\01\00\00\00\06\00\00\00a\00a\00a\00")
 (data (i32.const 1120) "\01\00\00\00\10\00\00\00a\00b\00a\00b\00a\00b\00a\00b\00")
 (data (i32.const 1144) "\01\00\00\00\n\00\00\00a\00a\00a\00a\00a\00")
 (data (i32.const 1168) "\01\00\00\00\0c\00\00\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 1192) "\01\00\00\00\0e\00\00\00a\00a\00a\00a\00a\00a\00a\00")
 (data (i32.const 1216) "\01\00\00\00\1c\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00")
 (data (i32.const 1256) "\01\00\00\00\02\00\00\00n\00")
 (data (i32.const 1272) "\01\00\00\00\n\00\00\00j\00k\00l\00m\00n\00")
 (data (i32.const 1296) "\01\00\00\00\n\00\00\00c\00d\00e\00f\00g\00")
 (data (i32.const 1320) "\01\00\00\00\n\00\00\00d\00e\00f\00g\00h\00")
 (data (i32.const 1344) "\01\00\00\00\1a\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00")
 (data (i32.const 1384) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1424) "\01\00\00\008\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1488) "\01\00\00\00\n\00\00\00a\00,\00b\00,\00c\00")
 (data (i32.const 1512) "\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 1528) "\01\00\00\00\02\00\00\00c\00")
 (data (i32.const 1544) "\01\00\00\00\0e\00\00\00a\00,\00 \00b\00,\00 \00c\00")
 (data (i32.const 1568) "\01\00\00\00\04\00\00\00,\00 \00")
 (data (i32.const 1584) "\01\00\00\00\0c\00\00\00a\00,\00b\00,\00,\00c\00")
 (data (i32.const 1608) "\01\00\00\00\0c\00\00\00,\00a\00,\00b\00,\00c\00")
 (data (i32.const 1632) "\01\00\00\00\0c\00\00\00a\00,\00b\00,\00c\00,\00")
 (data (i32.const 1656) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2168) "x\06\00\00d\00\00\00")
 (data (i32.const 2176) "\01\00\00\00\02\00\00\008\00")
 (data (i32.const 2192) "\01\00\00\00\n\00\00\00-\001\000\000\000\00")
 (data (i32.const 2216) "\01\00\00\00\08\00\00\001\002\003\004\00")
 (data (i32.const 2232) "\01\00\00\00\n\00\00\001\002\003\004\005\00")
 (data (i32.const 2256) "\01\00\00\00\0c\00\00\001\002\003\004\005\006\00")
 (data (i32.const 2280) "\01\00\00\00\0e\00\00\001\001\001\001\001\001\001\00")
 (data (i32.const 2304) "\01\00\00\00\0e\00\00\001\002\003\004\005\006\007\00")
 (data (i32.const 2328) "\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\006\00")
 (data (i32.const 2360) "\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\007\00")
 (data (i32.const 2392) "\01\00\00\00\16\00\00\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 2424) "\01\00\00\00\04\00\00\00-\001\00")
 (data (i32.const 2440) "\01\00\00\00\08\00\00\001\000\000\000\00")
 (data (i32.const 2456) "\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 2488) "\01\00\00\00\14\00\00\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 2520) "\01\00\00\00\10\00\00\009\009\009\009\009\009\009\009\00")
 (data (i32.const 2544) "\01\00\00\00\12\00\00\001\000\000\000\000\000\000\000\000\00")
 (data (i32.const 2576) "\01\00\00\00\16\00\00\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2608) "\01\00\00\00\18\00\00\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2640) "\01\00\00\00\1e\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2680) "\01\00\00\00 \00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2720) "\01\00\00\00\"\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2768) "\01\00\00\00(\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00")
 (data (i32.const 2816) "\01\00\00\00\n\00\00\00-\001\002\003\004\00")
 (data (i32.const 2840) "\01\00\00\00\16\00\00\00-\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 2872) "\01\00\00\00\18\00\00\00-\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2904) "\01\00\00\00\1a\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2944) "\01\00\00\00 \00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2984) "\01\00\00\00$\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 3032) "\01\00\00\00&\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 3080) "\01\00\00\00(\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008\00")
 (data (i32.const 3128) "\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 3144) "\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 3160) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 3192) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 3216) "\b8\02\00\00\00\00\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4240) "\90\0c\00\00W\00\00\00")
 (data (i32.const 4248) "\ae\00\00\00\00\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4504) "\98\10\00\00W\00\00\00")
 (data (i32.const 4512) "(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4576) "\a0\11\00\00\n\00\00\00")
 (data (i32.const 4584) "\01\00\00\00*\00\00\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 4640) "\01\00\00\00,\00\00\00-\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 4696) "\01\00\00\00.\00\00\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 4752) "\01\00\00\000\00\00\00-\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 4808) "\01\00\00\00,\00\00\004\00.\001\008\005\005\008\000\004\009\006\008\002\001\003\005\007\00e\00+\002\009\008\00")
 (data (i32.const 4864) "\01\00\00\00.\00\00\002\00.\002\002\005\000\007\003\008\005\008\005\000\007\002\000\001\004\00e\00-\003\000\008\00")
 (data (i32.const 4920) "\01\00\00\00\1a\00\00\004\00.\009\004\000\006\005\006\00e\00-\003\001\008\00")
 (data (i32.const 4960) "\01\00\00\00$\00\00\009\000\006\000\008\000\001\001\005\003\004\003\003\006\000\000\00.\000\00")
 (data (i32.const 5008) "\01\00\00\00*\00\00\004\007\000\008\003\005\006\000\002\004\007\001\001\005\001\002\000\000\000\00.\000\00")
 (data (i32.const 5064) "\01\00\00\00*\00\00\009\004\000\009\003\004\000\000\001\002\005\006\008\002\004\008\000\000\000\00.\000\00")
 (data (i32.const 5120) "\01\00\00\00\0c\00\00\005\00e\00-\003\002\004\00")
 (data (i32.const 5144) "\01\00\00\00\06\00\00\001\00.\000\00")
 (data (i32.const 5160) "\01\00\00\00\08\00\00\00-\001\00.\000\00")
 (data (i32.const 5176) "\01\00\00\00\08\00\00\00-\000\00.\001\00")
 (data (i32.const 5192) "\01\00\00\00\12\00\00\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 5224) "\01\00\00\00\10\00\00\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 5248) "\01\00\00\00\14\00\00\00-\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 5280) "\01\00\00\00\12\00\00\00-\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 5312) "\01\00\00\00\14\00\00\001\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 5344) "\01\00\00\00\08\00\00\001\00e\00-\007\00")
 (data (i32.const 5360) "\01\00\00\00\0c\00\00\001\00e\00+\003\000\008\00")
 (data (i32.const 5384) "\01\00\00\00\0e\00\00\00-\001\00e\00+\003\000\008\00")
 (data (i32.const 5408) "\01\00\00\00\0c\00\00\001\00e\00-\003\000\008\00")
 (data (i32.const 5432) "\01\00\00\00\0e\00\00\00-\001\00e\00-\003\000\008\00")
 (data (i32.const 5456) "\01\00\00\00\0c\00\00\001\00e\00-\003\002\003\00")
 (data (i32.const 5480) "\01\00\00\00\0e\00\00\00-\001\00e\00-\003\002\003\00")
 (data (i32.const 5504) "\01\00\00\00\18\00\00\004\002\009\004\009\006\007\002\007\002\00.\000\00")
 (data (i32.const 5536) "\01\00\00\00*\00\00\001\00.\002\003\001\002\001\004\005\006\007\003\004\005\006\002\003\004\00e\00-\008\00")
 (data (i32.const 5592) "\01\00\00\00\"\00\00\005\005\005\005\005\005\005\005\005\00.\005\005\005\005\005\005\006\00")
 (data (i32.const 5640) "\01\00\00\00$\00\00\000\00.\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\00")
 (data (i32.const 5688) "\01\00\00\00\n\00\00\001\002\00.\003\004\00")
 (data (i32.const 5712) "\01\00\00\00$\00\00\000\00.\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\00")
 (data (i32.const 5760) "\01\00\00\00.\00\00\001\002\003\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 5816) "\01\00\00\00\12\00\00\001\00.\002\003\004\00e\00+\002\001\00")
 (data (i32.const 5848) "\01\00\00\00\0e\00\00\002\00.\007\001\008\002\008\00")
 (data (i32.const 5872) "\01\00\00\00\12\00\00\000\00.\000\002\007\001\008\002\008\00")
 (data (i32.const 5904) "\01\00\00\00\0e\00\00\002\007\001\00.\008\002\008\00")
 (data (i32.const 5928) "\01\00\00\00\10\00\00\001\00.\001\00e\00+\001\002\008\00")
 (data (i32.const 5952) "\01\00\00\00\0e\00\00\001\00.\001\00e\00-\006\004\00")
 (data (i32.const 5976) "\01\00\00\00\16\00\00\000\00.\000\000\000\000\003\005\006\008\009\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string/str (mut i32) (i32.const 16))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~lib/runtime/StringBase.MAX_LENGTH i32 (i32.const 536870908))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/string/c (mut i32) (i32.const 0))
 (global $std/string/a (mut i32) (i32.const 0))
 (global $std/string/b (mut i32) (i32.const 0))
 (global $std/string/sa (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $~lib/internal/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp (mut i32) (i32.const 0))
 (global $~lib/internal/number/_K (mut i32) (i32.const 0))
 (global $~lib/internal/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/internal/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/builtins/f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $~lib/runtime/HEAP_BASE i32 (i32.const 6008))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getString" (func $std/string/getString))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $FUNCSIG$v)
  global.get $~lib/runtime/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/runtime/StringBase#get:length (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 76
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $~lib/runtime/StringBase#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $~lib/runtime/ADJUST (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/memory.allocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 6 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/runtime/ALLOC (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/runtime/ADJUST
  call $~lib/allocator/arena/memory.allocate
  local.set $1
  local.get $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 8
  i32.add
  local.set $2
  block $~lib/runtime/memory.fill|inlined.0
   local.get $2
   local.set $3
   i32.const 0
   local.set $4
   local.get $0
   local.set $5
   local.get $3
   local.get $4
   local.get $5
   call $~lib/internal/memory/memset
  end
  local.get $2
 )
 (func $~lib/runtime/unref (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/runtime/HEAP_BASE
  i32.const 8
  i32.add
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 101
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  i32.sub
  local.set $1
  local.get $1
  i32.load
  i32.const -1520547049
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 136
   i32.const 103
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/string/String.fromCharCode (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 2
  call $~lib/runtime/ALLOC
  local.set $1
  local.get $1
  local.get $0
  i32.store16
  block $~lib/runtime/REGISTER<String>|inlined.0 (result i32)
   local.get $1
   local.set $2
   local.get $2
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $2
  end
 )
 (func $~lib/string/compareImpl (; 10 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
     local.get $4
    end
    if
     block
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
     end
     br $continue|0
    end
   end
  end
  local.get $5
 )
 (func $~lib/string/String.eq (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/runtime/StringBase#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String.fromCodePoint (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 1114111
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 53
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 65535
  i32.gt_s
  local.set $1
  local.get $1
  i32.const 1
  i32.add
  i32.const 1
  i32.shl
  call $~lib/runtime/ALLOC
  local.set $2
  local.get $1
  i32.eqz
  if
   local.get $2
   local.get $0
   i32.store16
  else   
   local.get $0
   i32.const 65536
   i32.sub
   local.set $0
   local.get $0
   i32.const 10
   i32.shr_u
   i32.const 55296
   i32.add
   local.set $3
   local.get $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.add
   local.set $4
   local.get $2
   local.get $3
   i32.const 16
   i32.shl
   local.get $4
   i32.or
   i32.store
  end
  block $~lib/runtime/REGISTER<String>|inlined.1 (result i32)
   local.get $2
   local.set $4
   local.get $4
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $4
  end
 )
 (func $~lib/string/String#startsWith (; 13 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 191
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 240
   local.set $1
  end
  local.get $2
  local.set $3
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $4
  local.get $3
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $5
  local.get $4
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  local.set $7
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $8
  local.get $8
  local.get $7
  i32.add
  local.get $4
  i32.gt_s
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $7
  local.get $1
  i32.const 0
  local.get $8
  call $~lib/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String#endsWith (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 110
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 0
   return
  end
  local.get $2
  local.tee $3
  i32.const 0
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $3
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $5
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $6
  local.get $5
  local.get $6
  i32.sub
  local.set $7
  local.get $7
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $7
  local.get $1
  i32.const 0
  local.get $6
  call $~lib/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String#endsWith|trampoline (; 15 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   global.get $~lib/runtime/StringBase.MAX_LENGTH
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#endsWith
 )
 (func $~lib/string/String#indexOf (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 162
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 240
   local.set $1
  end
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $5
  local.get $4
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  local.set $7
  local.get $4
  local.get $3
  i32.sub
  local.set $4
  block $break|0
   local.get $7
   local.set $5
   loop $repeat|0
    local.get $5
    local.get $4
    i32.le_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $5
    local.get $1
    i32.const 0
    local.get $3
    call $~lib/string/compareImpl
    i32.eqz
    if
     local.get $5
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/internal/memory/memcpy (; 17 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
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
     if
      block
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
      end
      br $continue|1
     end
    end
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
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
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
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
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
         if
          block
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
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
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
        if
         block
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
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
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
       if
        block
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
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 18 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.le_u
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
  end
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/internal/memory/memcpy
   return
  end
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
    block $break|0
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
        block (result i32)
         local.get $0
         local.tee $3
         i32.const 1
         i32.add
         local.set $0
         local.get $3
        end
        block (result i32)
         local.get $1
         local.tee $3
         i32.const 1
         i32.add
         local.set $1
         local.get $3
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
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $0
        local.get $1
        i64.load
        i64.store
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        i32.const 8
        i32.add
        local.set $0
        local.get $1
        i32.const 8
        i32.add
        local.set $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     local.get $2
     if
      block
       block (result i32)
        local.get $0
        local.tee $3
        i32.const 1
        i32.add
        local.set $0
        local.get $3
       end
       block (result i32)
        local.get $1
        local.tee $3
        i32.const 1
        i32.add
        local.set $1
        local.get $3
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
      end
      br $continue|2
     end
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
    block $break|3
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $0
        local.get $2
        i32.const 1
        i32.sub
        local.tee $2
        i32.add
        local.get $1
        local.get $2
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
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        local.get $2
        i32.add
        local.get $1
        local.get $2
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
     local.get $2
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/runtime/memory.repeat (; 19 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.mul
  local.set $5
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i32.lt_u
    if
     block
      block $~lib/runtime/memory.copy|inlined.0
       local.get $0
       local.get $4
       i32.add
       local.set $6
       local.get $1
       local.set $7
       local.get $2
       local.set $8
       local.get $6
       local.get $7
       local.get $8
       call $~lib/internal/memory/memmove
      end
      local.get $4
      local.get $2
      i32.add
      local.set $4
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/string/String#padStart (; 20 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 307
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  local.get $2
  call $~lib/runtime/StringBase#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $3
  i32.lt_u
  local.tee $6
  if (result i32)
   local.get $6
  else   
   local.get $5
   i32.eqz
  end
  if
   local.get $0
   return
  end
  local.get $4
  local.get $3
  i32.sub
  local.set $7
  local.get $4
  call $~lib/runtime/ALLOC
  local.set $8
  local.get $7
  local.get $5
  i32.gt_u
  if
   local.get $7
   i32.const 2
   i32.sub
   local.get $5
   i32.div_u
   local.set $6
   local.get $6
   local.get $5
   i32.mul
   local.set $9
   local.get $7
   local.get $9
   i32.sub
   local.set $10
   local.get $8
   local.get $2
   local.get $5
   local.get $6
   call $~lib/runtime/memory.repeat
   block $~lib/runtime/memory.copy|inlined.1
    local.get $8
    local.get $9
    i32.add
    local.set $11
    local.get $2
    local.set $12
    local.get $10
    local.set $13
    local.get $11
    local.get $12
    local.get $13
    call $~lib/internal/memory/memmove
   end
  else   
   local.get $8
   local.set $10
   local.get $2
   local.set $9
   local.get $7
   local.set $6
   local.get $10
   local.get $9
   local.get $6
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/memory.copy|inlined.3
   local.get $8
   local.get $7
   i32.add
   local.set $6
   local.get $0
   local.set $9
   local.get $3
   local.set $10
   local.get $6
   local.get $9
   local.get $10
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/REGISTER<String>|inlined.2 (result i32)
   local.get $8
   local.set $10
   local.get $10
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $10
  end
 )
 (func $~lib/string/String#padEnd (; 21 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 328
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  local.get $2
  call $~lib/runtime/StringBase#get:length
  i32.const 1
  i32.shl
  local.set $5
  local.get $4
  local.get $3
  i32.lt_u
  local.tee $6
  if (result i32)
   local.get $6
  else   
   local.get $5
   i32.eqz
  end
  if
   local.get $0
   return
  end
  local.get $4
  local.get $3
  i32.sub
  local.set $7
  local.get $4
  call $~lib/runtime/ALLOC
  local.set $8
  block $~lib/runtime/memory.copy|inlined.4
   local.get $8
   local.set $6
   local.get $0
   local.set $9
   local.get $3
   local.set $10
   local.get $6
   local.get $9
   local.get $10
   call $~lib/internal/memory/memmove
  end
  local.get $7
  local.get $5
  i32.gt_u
  if
   local.get $7
   i32.const 2
   i32.sub
   local.get $5
   i32.div_u
   local.set $10
   local.get $10
   local.get $5
   i32.mul
   local.set $9
   local.get $7
   local.get $9
   i32.sub
   local.set $6
   local.get $8
   local.get $3
   i32.add
   local.get $2
   local.get $5
   local.get $10
   call $~lib/runtime/memory.repeat
   block $~lib/runtime/memory.copy|inlined.5
    local.get $8
    local.get $3
    i32.add
    local.get $9
    i32.add
    local.set $11
    local.get $2
    local.set $12
    local.get $6
    local.set $13
    local.get $11
    local.get $12
    local.get $13
    call $~lib/internal/memory/memmove
   end
  else   
   local.get $8
   local.get $3
   i32.add
   local.set $6
   local.get $2
   local.set $9
   local.get $7
   local.set $10
   local.get $6
   local.get $9
   local.get $10
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/REGISTER<String>|inlined.3 (result i32)
   local.get $8
   local.set $10
   local.get $10
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $10
  end
 )
 (func $~lib/string/String#lastIndexOf (; 22 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 177
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 240
   local.set $1
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $3
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $3
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $5
  local.get $3
  local.get $4
  i32.sub
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  local.set $7
  block $break|0
   local.get $7
   local.set $5
   loop $repeat|0
    local.get $5
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $5
    local.get $1
    i32.const 0
    local.get $4
    call $~lib/string/compareImpl
    i32.eqz
    if
     local.get $5
     return
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const -1
 )
 (func $~lib/string/String#lastIndexOf|trampoline (; 23 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#lastIndexOf
 )
 (func $~lib/internal/string/parse<f64> (; 24 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $2
  local.get $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   return
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load16_u
  local.set $4
  local.get $4
  i32.const 45
  i32.eq
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    return
   end
   local.get $3
   i32.const 2
   i32.add
   local.tee $3
   i32.load16_u
   local.set $4
   f64.const -1
   local.set $5
  else   
   local.get $4
   i32.const 43
   i32.eq
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    if
     f64.const nan:0x8000000000000
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.tee $3
    i32.load16_u
    local.set $4
    f64.const 1
    local.set $5
   else    
    f64.const 1
    local.set $5
   end
  end
  local.get $1
  i32.eqz
  if
   local.get $4
   i32.const 48
   i32.eq
   local.tee $6
   if (result i32)
    local.get $2
    i32.const 2
    i32.gt_s
   else    
    local.get $6
   end
   if
    block $break|0
     block $case6|0
      block $case5|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $3
            i32.const 2
            i32.add
            i32.load16_u
            local.set $6
            local.get $6
            i32.const 66
            i32.eq
            br_if $case0|0
            local.get $6
            i32.const 98
            i32.eq
            br_if $case1|0
            local.get $6
            i32.const 79
            i32.eq
            br_if $case2|0
            local.get $6
            i32.const 111
            i32.eq
            br_if $case3|0
            local.get $6
            i32.const 88
            i32.eq
            br_if $case4|0
            local.get $6
            i32.const 120
            i32.eq
            br_if $case5|0
            br $case6|0
           end
          end
          block
           local.get $3
           i32.const 4
           i32.add
           local.set $3
           local.get $2
           i32.const 2
           i32.sub
           local.set $2
           i32.const 2
           local.set $1
           br $break|0
           unreachable
          end
          unreachable
         end
        end
        block
         local.get $3
         i32.const 4
         i32.add
         local.set $3
         local.get $2
         i32.const 2
         i32.sub
         local.set $2
         i32.const 8
         local.set $1
         br $break|0
         unreachable
        end
        unreachable
       end
      end
      block
       local.get $3
       i32.const 4
       i32.add
       local.set $3
       local.get $2
       i32.const 2
       i32.sub
       local.set $2
       i32.const 16
       local.set $1
       br $break|0
       unreachable
      end
      unreachable
     end
     i32.const 10
     local.set $1
    end
   else    
    i32.const 10
    local.set $1
   end
  else   
   local.get $1
   i32.const 2
   i32.lt_s
   local.tee $6
   if (result i32)
    local.get $6
   else    
    local.get $1
    i32.const 36
    i32.gt_s
   end
   if
    f64.const nan:0x8000000000000
    return
   end
  end
  f64.const 0
  local.set $7
  block $break|1
   loop $continue|1
    block (result i32)
     local.get $2
     local.tee $6
     i32.const 1
     i32.sub
     local.set $2
     local.get $6
    end
    if
     block
      local.get $3
      i32.load16_u
      local.set $4
      local.get $4
      i32.const 48
      i32.ge_s
      local.tee $6
      if (result i32)
       local.get $4
       i32.const 57
       i32.le_s
      else       
       local.get $6
      end
      if
       local.get $4
       i32.const 48
       i32.sub
       local.set $4
      else       
       local.get $4
       i32.const 65
       i32.ge_s
       local.tee $6
       if (result i32)
        local.get $4
        i32.const 90
        i32.le_s
       else        
        local.get $6
       end
       if
        local.get $4
        i32.const 65
        i32.const 10
        i32.sub
        i32.sub
        local.set $4
       else        
        local.get $4
        i32.const 97
        i32.ge_s
        local.tee $6
        if (result i32)
         local.get $4
         i32.const 122
         i32.le_s
        else         
         local.get $6
        end
        if
         local.get $4
         i32.const 97
         i32.const 10
         i32.sub
         i32.sub
         local.set $4
        else         
         br $break|1
        end
       end
      end
      local.get $4
      local.get $1
      i32.ge_s
      if
       br $break|1
      end
      local.get $7
      local.get $1
      f64.convert_i32_s
      f64.mul
      local.get $4
      f64.convert_i32_s
      f64.add
      local.set $7
      local.get $3
      i32.const 2
      i32.add
      local.set $3
     end
     br $continue|1
    end
   end
  end
  local.get $5
  local.get $7
  f64.mul
 )
 (func $~lib/string/parseInt (; 25 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  local.get $1
  call $~lib/internal/string/parse<f64>
 )
 (func $~lib/string/parseFloat (; 26 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $1
  local.get $1
  i32.eqz
  if
   f64.const nan:0x8000000000000
   return
  end
  local.get $0
  local.set $2
  local.get $2
  i32.load16_u
  local.set $3
  local.get $3
  i32.const 45
  i32.eq
  if
   local.get $1
   i32.const 1
   i32.sub
   local.tee $1
   i32.eqz
   if
    f64.const nan:0x8000000000000
    return
   end
   local.get $2
   i32.const 2
   i32.add
   local.tee $2
   i32.load16_u
   local.set $3
   f64.const -1
   local.set $4
  else   
   local.get $3
   i32.const 43
   i32.eq
   if
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    if
     f64.const nan:0x8000000000000
     return
    end
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u
    local.set $3
    f64.const 1
    local.set $4
   else    
    f64.const 1
    local.set $4
   end
  end
  f64.const 0
  local.set $5
  block $break|0
   loop $continue|0
    block (result i32)
     local.get $1
     local.tee $6
     i32.const 1
     i32.sub
     local.set $1
     local.get $6
    end
    if
     block
      local.get $2
      i32.load16_u
      local.set $3
      local.get $3
      i32.const 46
      i32.eq
      if
       local.get $2
       i32.const 2
       i32.add
       local.set $2
       f64.const 0.1
       local.set $7
       block $break|1
        loop $continue|1
         block (result i32)
          local.get $1
          local.tee $6
          i32.const 1
          i32.sub
          local.set $1
          local.get $6
         end
         if
          block
           local.get $2
           i32.load16_u
           local.set $3
           local.get $3
           i32.const 69
           i32.eq
           local.tee $6
           if (result i32)
            local.get $6
           else            
            local.get $3
            i32.const 101
            i32.eq
           end
           if
            i32.const 0
            i32.eqz
            if
             i32.const 0
             i32.const 96
             i32.const 591
             i32.const 10
             call $~lib/env/abort
             unreachable
            end
           end
           local.get $3
           i32.const 48
           i32.sub
           local.set $3
           local.get $3
           i32.const 9
           i32.gt_u
           if
            br $break|1
           end
           local.get $5
           local.get $3
           f64.convert_i32_s
           local.get $7
           f64.mul
           f64.add
           local.set $5
           local.get $7
           f64.const 0.1
           f64.mul
           local.set $7
           local.get $2
           i32.const 2
           i32.add
           local.set $2
          end
          br $continue|1
         end
        end
       end
       br $break|0
      end
      local.get $3
      i32.const 48
      i32.sub
      local.set $3
      local.get $3
      i32.const 10
      i32.ge_u
      if
       br $break|0
      end
      local.get $5
      f64.const 10
      f64.mul
      local.get $3
      f64.convert_i32_s
      f64.add
      local.set $5
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $4
  local.get $5
  f64.mul
 )
 (func $~lib/string/String#concat (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 97
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 240
   local.set $1
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/runtime/StringBase#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 312
   return
  end
  local.get $4
  call $~lib/runtime/ALLOC
  local.set $5
  block $~lib/runtime/memory.copy|inlined.7
   local.get $5
   local.set $6
   local.get $0
   local.set $7
   local.get $2
   local.set $8
   local.get $6
   local.get $7
   local.get $8
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/memory.copy|inlined.8
   local.get $5
   local.get $2
   i32.add
   local.set $8
   local.get $1
   local.set $7
   local.get $3
   local.set $6
   local.get $8
   local.get $7
   local.get $6
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/REGISTER<String>|inlined.4 (result i32)
   local.get $5
   local.set $6
   local.get $6
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $6
  end
 )
 (func $~lib/string/String.concat (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 240
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/string/String.ne (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.eq
  i32.eqz
 )
 (func $~lib/string/String.gt (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $3
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $4
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 1
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
  call $~lib/string/compareImpl
  i32.const 0
  i32.gt_s
 )
 (func $~lib/string/String.lt (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $0
   i32.const 0
   i32.eq
  end
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $3
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $4
  local.get $4
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $3
  i32.eqz
  if
   i32.const 1
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
  call $~lib/string/compareImpl
  i32.const 0
  i32.lt_s
 )
 (func $~lib/string/String.gte (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.lt
  i32.eqz
 )
 (func $~lib/string/String.lte (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.gt
  i32.eqz
 )
 (func $~lib/string/String#repeat (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 349
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $2
   i64.extend_i32_s
   local.get $1
   i64.extend_i32_s
   i64.mul
   i64.const 1
   i64.const 28
   i64.shl
   i64.gt_u
  end
  if
   i32.const 0
   i32.const 96
   i32.const 354
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $2
   i32.eqz
  end
  if
   i32.const 312
   return
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   return
  end
  local.get $2
  local.get $1
  i32.mul
  i32.const 1
  i32.shl
  call $~lib/runtime/ALLOC
  local.set $4
  local.get $4
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  local.get $1
  call $~lib/runtime/memory.repeat
  block $~lib/runtime/REGISTER<String>|inlined.5 (result i32)
   local.get $4
   local.set $3
   local.get $3
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $3
  end
 )
 (func $~lib/string/String#slice (; 35 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
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
  local.set $6
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $7
  local.get $7
  local.get $6
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.le_s
  if
   i32.const 312
   return
  end
  local.get $3
  i32.const 1
  i32.shl
  call $~lib/runtime/ALLOC
  local.set $8
  block $~lib/runtime/memory.copy|inlined.9
   local.get $8
   local.set $4
   local.get $0
   local.get $6
   i32.const 1
   i32.shl
   i32.add
   local.set $5
   local.get $3
   i32.const 1
   i32.shl
   local.set $9
   local.get $4
   local.get $5
   local.get $9
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/REGISTER<String>|inlined.6 (result i32)
   local.get $8
   local.set $9
   local.get $9
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $9
  end
 )
 (func $~lib/string/String#slice|trampoline (; 36 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#slice
 )
 (func $~lib/internal/arraybuffer/computeSize (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741816
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 1432
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/internal/arraybuffer/computeSize
  call $~lib/allocator/arena/memory.allocate
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/array/Array<String>#constructor (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/allocator/arena/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/runtime/memory.fill|inlined.1
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $~lib/array/Array<String>#__unchecked_set (; 40 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  i32.const 0
  local.set $6
  local.get $3
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.add
  local.get $5
  i32.store offset=8
 )
 (func $~lib/array/Array<String>#__unchecked_get (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.set $3
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  i32.add
  i32.load offset=8
 )
 (func $~lib/allocator/arena/memory.free (; 42 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.gt_s
  if
   local.get $1
   i32.const 1073741816
   i32.le_s
   i32.eqz
   if
    i32.const 0
    i32.const 1432
    i32.const 40
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   local.get $1
   local.get $2
   call $~lib/internal/arraybuffer/computeSize
   i32.const 8
   i32.sub
   i32.le_s
   if
    local.get $0
    local.get $1
    i32.store
   else    
    local.get $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    local.set $3
    block $~lib/runtime/memory.copy|inlined.11
     local.get $3
     i32.const 8
     i32.add
     local.set $4
     local.get $0
     i32.const 8
     i32.add
     local.set $5
     local.get $2
     local.set $6
     local.get $4
     local.get $5
     local.get $6
     call $~lib/internal/memory/memmove
    end
    local.get $0
    call $~lib/allocator/arena/memory.free
    local.get $3
    local.set $0
   end
   block $~lib/runtime/memory.fill|inlined.2
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    i32.add
    local.set $3
    i32.const 0
    local.set $6
    local.get $1
    local.get $2
    i32.sub
    local.set $5
    local.get $3
    local.get $6
    local.get $5
    call $~lib/internal/memory/memset
   end
  else   
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     i32.const 0
     i32.const 1432
     i32.const 62
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    local.get $0
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<String>#push (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $2
  i32.const 1
  i32.add
  local.set $5
  local.get $2
  local.get $4
  i32.ge_u
  if
   local.get $2
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 1392
    i32.const 182
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   local.get $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
  end
  local.get $0
  local.get $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/STORE<String,String>|inlined.1
   local.get $3
   local.set $6
   local.get $2
   local.set $7
   local.get $1
   local.set $8
   i32.const 0
   local.set $9
   local.get $6
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   local.get $9
   i32.add
   local.get $8
   i32.store offset=8
  end
  local.get $5
 )
 (func $~lib/string/String#split (; 45 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 376
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/array/Array<String>#constructor
   return
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   block (result i32)
    i32.const 0
    i32.const 1
    call $~lib/array/Array<String>#constructor
    local.set $3
    local.get $3
    i32.const 0
    local.get $0
    call $~lib/array/Array<String>#__unchecked_set
    local.get $3
   end
   return
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
  local.set $4
  local.get $1
  call $~lib/runtime/StringBase#get:length
  local.set $5
  local.get $2
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $2
  end
  local.get $5
  i32.eqz
  if
   local.get $4
   i32.eqz
   if
    i32.const 0
    i32.const 0
    call $~lib/array/Array<String>#constructor
    return
   end
   local.get $4
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_s
   select
   local.set $4
   i32.const 0
   local.get $4
   call $~lib/array/Array<String>#constructor
   local.set $3
   local.get $3
   i32.load
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      i32.const 2
      call $~lib/runtime/ALLOC
      local.set $8
      local.get $8
      local.get $0
      local.get $7
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u
      i32.store16
      block $~lib/internal/arraybuffer/STORE<usize,usize>|inlined.0
       local.get $6
       local.set $9
       local.get $7
       local.set $10
       local.get $8
       local.set $11
       i32.const 0
       local.set $12
       local.get $9
       local.get $10
       i32.const 2
       i32.shl
       i32.add
       local.get $12
       i32.add
       local.get $11
       i32.store offset=8
      end
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   local.get $3
   return
  else   
   local.get $4
   i32.eqz
   if
    i32.const 0
    i32.const 1
    call $~lib/array/Array<String>#constructor
    local.set $6
    block (result i32)
     local.get $6
     local.tee $3
     i32.const 0
     local.tee $7
     i32.const 312
     call $~lib/array/Array<String>#__unchecked_set
     local.get $3
     local.get $7
     call $~lib/array/Array<String>#__unchecked_get
    end
    drop
    local.get $6
    return
   end
  end
  i32.const 0
  i32.const 0
  call $~lib/array/Array<String>#constructor
  local.set $13
  i32.const 0
  local.set $14
  i32.const 0
  local.set $15
  i32.const 0
  local.set $16
  block $break|1
   loop $continue|1
    local.get $0
    local.get $1
    local.get $15
    call $~lib/string/String#indexOf
    local.tee $14
    i32.const -1
    i32.ne
    if
     block
      local.get $14
      local.get $15
      i32.sub
      local.set $6
      local.get $6
      i32.const 0
      i32.gt_s
      if
       local.get $6
       i32.const 1
       i32.shl
       call $~lib/runtime/ALLOC
       local.set $3
       block $~lib/runtime/memory.copy|inlined.10
        local.get $3
        local.set $7
        local.get $0
        local.get $15
        i32.const 1
        i32.shl
        i32.add
        local.set $8
        local.get $6
        i32.const 1
        i32.shl
        local.set $12
        local.get $7
        local.get $8
        local.get $12
        call $~lib/internal/memory/memmove
       end
       local.get $13
       block $~lib/runtime/REGISTER<String>|inlined.7 (result i32)
        local.get $3
        local.set $12
        local.get $12
        call $~lib/runtime/unref
        i32.const 1
        i32.store
        local.get $12
       end
       call $~lib/array/Array<String>#push
       drop
      else       
       local.get $13
       i32.const 312
       call $~lib/array/Array<String>#push
       drop
      end
      local.get $16
      i32.const 1
      i32.add
      local.tee $16
      local.get $2
      i32.eq
      if
       local.get $13
       return
      end
      local.get $14
      local.get $5
      i32.add
      local.set $15
     end
     br $continue|1
    end
   end
  end
  local.get $15
  i32.eqz
  if
   i32.const 0
   i32.const 1
   call $~lib/array/Array<String>#constructor
   local.set $6
   block (result i32)
    local.get $6
    local.tee $3
    i32.const 0
    local.tee $12
    local.get $0
    call $~lib/array/Array<String>#__unchecked_set
    local.get $3
    local.get $12
    call $~lib/array/Array<String>#__unchecked_get
   end
   drop
   local.get $6
   return
  end
  local.get $4
  local.get $15
  i32.sub
  local.set $17
  local.get $17
  i32.const 0
  i32.gt_s
  if
   local.get $17
   i32.const 1
   i32.shl
   call $~lib/runtime/ALLOC
   local.set $6
   block $~lib/runtime/memory.copy|inlined.12
    local.get $6
    local.set $3
    local.get $0
    local.get $15
    i32.const 1
    i32.shl
    i32.add
    local.set $12
    local.get $17
    i32.const 1
    i32.shl
    local.set $8
    local.get $3
    local.get $12
    local.get $8
    call $~lib/internal/memory/memmove
   end
   local.get $13
   block $~lib/runtime/REGISTER<String>|inlined.8 (result i32)
    local.get $6
    local.set $8
    local.get $8
    call $~lib/runtime/unref
    i32.const 1
    i32.store
    local.get $8
   end
   call $~lib/array/Array<String>#push
   drop
  else   
   local.get $13
   i32.const 312
   call $~lib/array/Array<String>#push
   drop
  end
  local.get $13
 )
 (func $~lib/string/String#split|trampoline (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/string/String#split
 )
 (func $~lib/array/Array<String>#__get (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/internal/number/decimalCount32 (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/internal/number/utoa32_lut (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  i32.const 2168
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    if
     block
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
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.0 (result i64)
       local.get $3
       local.set $8
       local.get $6
       local.set $9
       i32.const 0
       local.set $10
       local.get $8
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $10
       i32.add
       i64.load32_u offset=8
      end
      local.set $11
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.1 (result i64)
       local.get $3
       local.set $10
       local.get $7
       local.set $9
       i32.const 0
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       i64.load32_u offset=8
      end
      local.set $12
      local.get $2
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $11
      local.get $12
      i64.const 32
      i64.shl
      i64.or
      i64.store
     end
     br $continue|0
    end
   end
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
   block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.0 (result i32)
    local.get $3
    local.set $5
    local.get $6
    local.set $4
    i32.const 0
    local.set $8
    local.get $5
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.add
    i32.load offset=8
   end
   local.set $8
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $8
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
   block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.1 (result i32)
    local.get $3
    local.set $8
    local.get $1
    local.set $6
    i32.const 0
    local.set $7
    local.get $8
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $7
    i32.add
    i32.load offset=8
   end
   local.set $7
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   i32.store
  else   
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $7
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   i32.store16
  end
 )
 (func $~lib/internal/number/itoa32 (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 608
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
  call $~lib/internal/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  i32.const 1
  i32.shl
  call $~lib/runtime/ALLOC
  local.set $3
  block $~lib/internal/number/utoa32_core|inlined.0
   local.get $3
   local.set $4
   local.get $0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/number/utoa32_lut
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<String>|inlined.9 (result i32)
   local.get $3
   local.set $6
   local.get $6
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $6
  end
 )
 (func $~lib/internal/number/utoa32 (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 608
   return
  end
  local.get $0
  call $~lib/internal/number/decimalCount32
  local.set $1
  local.get $1
  i32.const 1
  i32.shl
  call $~lib/runtime/ALLOC
  local.set $2
  block $~lib/internal/number/utoa32_core|inlined.1
   local.get $2
   local.set $3
   local.get $0
   local.set $4
   local.get $1
   local.set $5
   local.get $3
   local.get $4
   local.get $5
   call $~lib/internal/number/utoa32_lut
  end
  block $~lib/runtime/REGISTER<String>|inlined.10 (result i32)
   local.get $2
   local.set $5
   local.get $5
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $5
  end
 )
 (func $~lib/internal/number/decimalCount64 (; 52 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/internal/number/utoa64_lut (; 53 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
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
  (local $15 i64)
  (local $16 i64)
  i32.const 2168
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i64.const 100000000
    i64.ge_u
    if
     block
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
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.2 (result i64)
       local.get $3
       local.set $12
       local.get $10
       local.set $13
       i32.const 0
       local.set $14
       local.get $12
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $14
       i32.add
       i64.load32_u offset=8
      end
      local.set $15
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.3 (result i64)
       local.get $3
       local.set $14
       local.get $11
       local.set $13
       i32.const 0
       local.set $12
       local.get $14
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $12
       i32.add
       i64.load32_u offset=8
      end
      local.set $16
      local.get $2
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $15
      local.get $16
      i64.const 32
      i64.shl
      i64.or
      i64.store
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.4 (result i64)
       local.get $3
       local.set $12
       local.get $8
       local.set $13
       i32.const 0
       local.set $14
       local.get $12
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $14
       i32.add
       i64.load32_u offset=8
      end
      local.set $15
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.5 (result i64)
       local.get $3
       local.set $14
       local.get $9
       local.set $13
       i32.const 0
       local.set $12
       local.get $14
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $12
       i32.add
       i64.load32_u offset=8
      end
      local.set $16
      local.get $2
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $15
      local.get $16
      i64.const 32
      i64.shl
      i64.or
      i64.store
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/internal/number/utoa32_lut
 )
 (func $~lib/internal/number/utoa64 (; 54 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 608
   return
  end
  local.get $0
  global.get $~lib/builtins/u32.MAX_VALUE
  i64.extend_i32_u
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $2
   local.get $2
   call $~lib/internal/number/decimalCount32
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   call $~lib/runtime/ALLOC
   local.set $1
   block $~lib/internal/number/utoa32_core|inlined.2
    local.get $1
    local.set $4
    local.get $2
    local.set $5
    local.get $3
    local.set $6
    local.get $4
    local.get $5
    local.get $6
    call $~lib/internal/number/utoa32_lut
   end
  else   
   local.get $0
   call $~lib/internal/number/decimalCount64
   local.set $3
   local.get $3
   i32.const 1
   i32.shl
   call $~lib/runtime/ALLOC
   local.set $1
   block $~lib/internal/number/utoa64_core|inlined.0
    local.get $1
    local.set $2
    local.get $0
    local.set $7
    local.get $3
    local.set $6
    local.get $2
    local.get $7
    local.get $6
    call $~lib/internal/number/utoa64_lut
   end
  end
  block $~lib/runtime/REGISTER<String>|inlined.11 (result i32)
   local.get $1
   local.set $3
   local.get $3
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $3
  end
 )
 (func $~lib/internal/number/itoa64 (; 55 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   i32.const 608
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
  global.get $~lib/builtins/u32.MAX_VALUE
  i64.extend_i32_u
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.set $3
   local.get $3
   call $~lib/internal/number/decimalCount32
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   call $~lib/runtime/ALLOC
   local.set $2
   block $~lib/internal/number/utoa32_core|inlined.3
    local.get $2
    local.set $5
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.get $6
    local.get $7
    call $~lib/internal/number/utoa32_lut
   end
  else   
   local.get $0
   call $~lib/internal/number/decimalCount64
   local.get $1
   i32.add
   local.set $4
   local.get $4
   i32.const 1
   i32.shl
   call $~lib/runtime/ALLOC
   local.set $2
   block $~lib/internal/number/utoa64_core|inlined.1
    local.get $2
    local.set $3
    local.get $0
    local.set $8
    local.get $4
    local.set $7
    local.get $3
    local.get $8
    local.get $7
    call $~lib/internal/number/utoa64_lut
   end
  end
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<String>|inlined.12 (result i32)
   local.get $2
   local.set $4
   local.get $4
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $4
  end
 )
 (func $~lib/builtins/isFinite<f64> (; 56 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/builtins/isNaN<f64> (; 57 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/internal/number/genDigits (; 58 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  (local $20 i32)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i64)
  (local $27 i64)
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
  call $~lib/internal/number/decimalCount32
  local.set $14
  local.get $6
  local.set $15
  i32.const 4576
  i32.load
  local.set $16
  block $break|0
   loop $continue|0
    local.get $14
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
                 block
                  local.get $12
                  i32.const 1000000000
                  i32.div_u
                  local.set $17
                  local.get $12
                  i32.const 1000000000
                  i32.rem_u
                  local.set $12
                  br $break|1
                  unreachable
                 end
                 unreachable
                end
                block
                 local.get $12
                 i32.const 100000000
                 i32.div_u
                 local.set $17
                 local.get $12
                 i32.const 100000000
                 i32.rem_u
                 local.set $12
                 br $break|1
                 unreachable
                end
                unreachable
               end
               block
                local.get $12
                i32.const 10000000
                i32.div_u
                local.set $17
                local.get $12
                i32.const 10000000
                i32.rem_u
                local.set $12
                br $break|1
                unreachable
               end
               unreachable
              end
              block
               local.get $12
               i32.const 1000000
               i32.div_u
               local.set $17
               local.get $12
               i32.const 1000000
               i32.rem_u
               local.set $12
               br $break|1
               unreachable
              end
              unreachable
             end
             block
              local.get $12
              i32.const 100000
              i32.div_u
              local.set $17
              local.get $12
              i32.const 100000
              i32.rem_u
              local.set $12
              br $break|1
              unreachable
             end
             unreachable
            end
            block
             local.get $12
             i32.const 10000
             i32.div_u
             local.set $17
             local.get $12
             i32.const 10000
             i32.rem_u
             local.set $12
             br $break|1
             unreachable
            end
            unreachable
           end
           block
            local.get $12
            i32.const 1000
            i32.div_u
            local.set $17
            local.get $12
            i32.const 1000
            i32.rem_u
            local.set $12
            br $break|1
            unreachable
           end
           unreachable
          end
          block
           local.get $12
           i32.const 100
           i32.div_u
           local.set $17
           local.get $12
           i32.const 100
           i32.rem_u
           local.set $12
           br $break|1
           unreachable
          end
          unreachable
         end
         block
          local.get $12
          i32.const 10
          i32.div_u
          local.set $17
          local.get $12
          i32.const 10
          i32.rem_u
          local.set $12
          br $break|1
          unreachable
         end
         unreachable
        end
        block
         local.get $12
         local.set $17
         i32.const 0
         local.set $12
         br $break|1
         unreachable
        end
        unreachable
       end
       block
        i32.const 0
        local.set $17
        br $break|1
        unreachable
       end
       unreachable
      end
      local.get $17
      local.get $15
      i32.or
      if
       local.get $0
       block (result i32)
        local.get $15
        local.tee $18
        i32.const 1
        i32.add
        local.set $15
        local.get $18
       end
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
       global.get $~lib/internal/number/_K
       local.get $14
       i32.add
       global.set $~lib/internal/number/_K
       block $~lib/internal/number/grisuRound|inlined.0
        local.get $0
        local.set $18
        local.get $15
        local.set $20
        local.get $5
        local.set $21
        local.get $19
        local.set $22
        block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.6 (result i64)
         local.get $16
         local.set $23
         local.get $14
         local.set $24
         i32.const 0
         local.set $25
         local.get $23
         local.get $24
         i32.const 2
         i32.shl
         i32.add
         local.get $25
         i32.add
         i64.load32_u offset=8
        end
        local.get $7
        i64.extend_i32_s
        i64.shl
        local.set $26
        local.get $10
        local.set $27
        local.get $18
        local.get $20
        i32.const 1
        i32.sub
        i32.const 1
        i32.shl
        i32.add
        local.set $25
        local.get $25
        i32.load16_u
        local.set $24
        block $break|2
         loop $continue|2
          local.get $22
          local.get $27
          i64.lt_u
          local.tee $23
          if (result i32)
           local.get $21
           local.get $22
           i64.sub
           local.get $26
           i64.ge_u
          else           
           local.get $23
          end
          local.tee $23
          if (result i32)
           local.get $22
           local.get $26
           i64.add
           local.get $27
           i64.lt_u
           local.tee $23
           if (result i32)
            local.get $23
           else            
            local.get $27
            local.get $22
            i64.sub
            local.get $22
            local.get $26
            i64.add
            local.get $27
            i64.sub
            i64.gt_u
           end
          else           
           local.get $23
          end
          if
           block
            local.get $24
            i32.const 1
            i32.sub
            local.set $24
            local.get $22
            local.get $26
            i64.add
            local.set $22
           end
           br $continue|2
          end
         end
        end
        local.get $25
        local.get $24
        i32.store16
       end
       local.get $15
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
       block (result i32)
        local.get $15
        local.tee $17
        i32.const 1
        i32.add
        local.set $15
        local.get $17
       end
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
       global.get $~lib/internal/number/_K
       local.get $14
       i32.add
       global.set $~lib/internal/number/_K
       local.get $10
       block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.7 (result i64)
        local.get $16
        local.set $17
        i32.const 0
        local.get $14
        i32.sub
        local.set $24
        i32.const 0
        local.set $25
        local.get $17
        local.get $24
        i32.const 2
        i32.shl
        i32.add
        local.get $25
        i32.add
        i64.load32_u offset=8
       end
       i64.mul
       local.set $10
       block $~lib/internal/number/grisuRound|inlined.1
        local.get $0
        local.set $25
        local.get $15
        local.set $24
        local.get $5
        local.set $27
        local.get $13
        local.set $26
        local.get $8
        local.set $22
        local.get $10
        local.set $21
        local.get $25
        local.get $24
        i32.const 1
        i32.sub
        i32.const 1
        i32.shl
        i32.add
        local.set $17
        local.get $17
        i32.load16_u
        local.set $20
        block $break|4
         loop $continue|4
          local.get $26
          local.get $21
          i64.lt_u
          local.tee $18
          if (result i32)
           local.get $27
           local.get $26
           i64.sub
           local.get $22
           i64.ge_u
          else           
           local.get $18
          end
          local.tee $18
          if (result i32)
           local.get $26
           local.get $22
           i64.add
           local.get $21
           i64.lt_u
           local.tee $18
           if (result i32)
            local.get $18
           else            
            local.get $21
            local.get $26
            i64.sub
            local.get $26
            local.get $22
            i64.add
            local.get $21
            i64.sub
            i64.gt_u
           end
          else           
           local.get $18
          end
          if
           block
            local.get $20
            i32.const 1
            i32.sub
            local.set $20
            local.get $26
            local.get $22
            i64.add
            local.set $26
           end
           br $continue|4
          end
         end
        end
        local.get $17
        local.get $20
        i32.store16
       end
       local.get $15
       return
      end
     end
     br $continue|3
    end
   end
  end
  local.get $15
 )
 (func $~lib/internal/number/prettify (; 59 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.tee $4
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else   
   local.get $4
  end
  if
   block $break|0
    local.get $1
    local.set $4
    loop $repeat|0
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
     br $repeat|0
     unreachable
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
   local.tee $4
   if (result i32)
    local.get $3
    i32.const 21
    i32.le_s
   else    
    local.get $4
   end
   if
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.set $4
    block $~lib/runtime/memory.copy|inlined.13
     local.get $4
     i32.const 2
     i32.add
     local.set $5
     local.get $4
     local.set $6
     i32.const 0
     local.get $2
     i32.sub
     i32.const 1
     i32.shl
     local.set $7
     local.get $5
     local.get $6
     local.get $7
     call $~lib/internal/memory/memmove
    end
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
    local.tee $4
    if (result i32)
     local.get $3
     i32.const 0
     i32.le_s
    else     
     local.get $4
    end
    if
     i32.const 2
     local.get $3
     i32.sub
     local.set $4
     block $~lib/runtime/memory.copy|inlined.14
      local.get $0
      local.get $4
      i32.const 1
      i32.shl
      i32.add
      local.set $7
      local.get $0
      local.set $6
      local.get $1
      i32.const 1
      i32.shl
      local.set $5
      local.get $7
      local.get $6
      local.get $5
      call $~lib/internal/memory/memmove
     end
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
      loop $repeat|1
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
       br $repeat|1
       unreachable
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
      block $~lib/internal/number/genExponent|inlined.0 (result i32)
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
       call $~lib/internal/number/decimalCount32
       i32.const 1
       i32.add
       local.set $7
       block $~lib/internal/number/utoa32_core|inlined.4
        local.get $4
        local.set $8
        local.get $5
        local.set $9
        local.get $7
        local.set $10
        local.get $8
        local.get $9
        local.get $10
        call $~lib/internal/number/utoa32_lut
       end
       local.get $4
       i32.const 45
       i32.const 43
       local.get $6
       select
       i32.store16
       local.get $7
      end
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
      block $~lib/runtime/memory.copy|inlined.15
       local.get $0
       i32.const 4
       i32.add
       local.set $6
       local.get $0
       i32.const 2
       i32.add
       local.set $5
       local.get $7
       i32.const 2
       i32.sub
       local.set $4
       local.get $6
       local.get $5
       local.get $4
       call $~lib/internal/memory/memmove
      end
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $7
      i32.add
      i32.const 101
      i32.store16 offset=2
      local.get $1
      block $~lib/internal/number/genExponent|inlined.1 (result i32)
       local.get $0
       local.get $7
       i32.add
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
       call $~lib/internal/number/decimalCount32
       i32.const 1
       i32.add
       local.set $10
       block $~lib/internal/number/utoa32_core|inlined.5
        local.get $4
        local.set $9
        local.get $5
        local.set $8
        local.get $10
        local.set $11
        local.get $9
        local.get $8
        local.get $11
        call $~lib/internal/number/utoa32_lut
       end
       local.get $4
       i32.const 45
       i32.const 43
       local.get $6
       select
       i32.store16
       local.get $10
      end
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
  unreachable
 )
 (func $~lib/internal/number/dtoa_core (; 60 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i64)
  (local $26 i64)
  (local $27 i64)
  (local $28 i64)
  (local $29 i64)
  (local $30 i64)
  (local $31 i32)
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
  block $~lib/internal/number/grisu2|inlined.0 (result i32)
   local.get $1
   local.set $3
   local.get $0
   local.set $4
   local.get $2
   local.set $5
   local.get $3
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
   block $~lib/internal/number/normalizedBoundaries|inlined.0
    local.get $9
    local.set $10
    local.get $7
    local.set $11
    local.get $10
    i64.const 1
    i64.shl
    i64.const 1
    i64.add
    local.set $12
    local.get $11
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
    local.get $10
    i64.const 4503599627370496
    i64.eq
    i32.add
    local.set $15
    local.get $12
    global.set $~lib/internal/number/_frc_plus
    local.get $10
    local.get $15
    i64.extend_i32_s
    i64.shl
    i64.const 1
    i64.sub
    local.get $11
    local.get $15
    i32.sub
    local.get $13
    i32.sub
    i64.extend_i32_s
    i64.shl
    global.set $~lib/internal/number/_frc_minus
    local.get $13
    global.set $~lib/internal/number/_exp
   end
   block $~lib/internal/number/getCachedPower|inlined.0
    global.get $~lib/internal/number/_exp
    local.set $15
    i32.const -61
    local.get $15
    i32.sub
    f64.convert_i32_s
    f64.const 0.30102999566398114
    f64.mul
    f64.const 347
    f64.add
    local.set $16
    local.get $16
    i32.trunc_f64_s
    local.set $14
    local.get $14
    local.get $14
    f64.convert_i32_s
    local.get $16
    f64.ne
    i32.add
    local.set $14
    local.get $14
    i32.const 3
    i32.shr_s
    i32.const 1
    i32.add
    local.set $13
    i32.const 348
    local.get $13
    i32.const 3
    i32.shl
    i32.sub
    global.set $~lib/internal/number/_K
    i32.const 4240
    i32.load
    local.set $11
    i32.const 4504
    i32.load
    local.set $17
    block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.0 (result i64)
     local.get $11
     local.set $18
     local.get $13
     local.set $19
     i32.const 0
     local.set $20
     local.get $18
     local.get $19
     i32.const 3
     i32.shl
     i32.add
     local.get $20
     i32.add
     i64.load offset=8
    end
    global.set $~lib/internal/number/_frc_pow
    block $~lib/internal/arraybuffer/LOAD<i16,i32>|inlined.0 (result i32)
     local.get $17
     local.set $20
     local.get $13
     local.set $19
     i32.const 0
     local.set $18
     local.get $20
     local.get $19
     i32.const 1
     i32.shl
     i32.add
     local.get $18
     i32.add
     i32.load16_s offset=8
    end
    global.set $~lib/internal/number/_exp_pow
   end
   local.get $9
   i64.clz
   i32.wrap_i64
   local.set $17
   local.get $9
   local.get $17
   i64.extend_i32_s
   i64.shl
   local.set $9
   local.get $7
   local.get $17
   i32.sub
   local.set $7
   global.get $~lib/internal/number/_frc_pow
   local.set $12
   global.get $~lib/internal/number/_exp_pow
   local.set $11
   block $~lib/internal/number/umul64f|inlined.0 (result i64)
    local.get $9
    local.set $10
    local.get $12
    local.set $21
    local.get $10
    i64.const 4294967295
    i64.and
    local.set $22
    local.get $21
    i64.const 4294967295
    i64.and
    local.set $23
    local.get $10
    i64.const 32
    i64.shr_u
    local.set $24
    local.get $21
    i64.const 32
    i64.shr_u
    local.set $25
    local.get $22
    local.get $23
    i64.mul
    local.set $26
    local.get $24
    local.get $23
    i64.mul
    local.get $26
    i64.const 32
    i64.shr_u
    i64.add
    local.set $27
    local.get $22
    local.get $25
    i64.mul
    local.get $27
    i64.const 4294967295
    i64.and
    i64.add
    local.set $28
    local.get $28
    i64.const 2147483647
    i64.add
    local.set $28
    local.get $27
    i64.const 32
    i64.shr_u
    local.set $27
    local.get $28
    i64.const 32
    i64.shr_u
    local.set $28
    local.get $24
    local.get $25
    i64.mul
    local.get $27
    i64.add
    local.get $28
    i64.add
   end
   local.set $28
   block $~lib/internal/number/umul64e|inlined.0 (result i32)
    local.get $7
    local.set $13
    local.get $11
    local.set $14
    local.get $13
    local.get $14
    i32.add
    i32.const 64
    i32.add
   end
   local.set $14
   block $~lib/internal/number/umul64f|inlined.1 (result i64)
    global.get $~lib/internal/number/_frc_plus
    local.set $27
    local.get $12
    local.set $26
    local.get $27
    i64.const 4294967295
    i64.and
    local.set $25
    local.get $26
    i64.const 4294967295
    i64.and
    local.set $24
    local.get $27
    i64.const 32
    i64.shr_u
    local.set $23
    local.get $26
    i64.const 32
    i64.shr_u
    local.set $22
    local.get $25
    local.get $24
    i64.mul
    local.set $21
    local.get $23
    local.get $24
    i64.mul
    local.get $21
    i64.const 32
    i64.shr_u
    i64.add
    local.set $10
    local.get $25
    local.get $22
    i64.mul
    local.get $10
    i64.const 4294967295
    i64.and
    i64.add
    local.set $29
    local.get $29
    i64.const 2147483647
    i64.add
    local.set $29
    local.get $10
    i64.const 32
    i64.shr_u
    local.set $10
    local.get $29
    i64.const 32
    i64.shr_u
    local.set $29
    local.get $23
    local.get $22
    i64.mul
    local.get $10
    i64.add
    local.get $29
    i64.add
   end
   i64.const 1
   i64.sub
   local.set $29
   block $~lib/internal/number/umul64e|inlined.1 (result i32)
    global.get $~lib/internal/number/_exp
    local.set $13
    local.get $11
    local.set $15
    local.get $13
    local.get $15
    i32.add
    i32.const 64
    i32.add
   end
   local.set $15
   block $~lib/internal/number/umul64f|inlined.2 (result i64)
    global.get $~lib/internal/number/_frc_minus
    local.set $10
    local.get $12
    local.set $21
    local.get $10
    i64.const 4294967295
    i64.and
    local.set $22
    local.get $21
    i64.const 4294967295
    i64.and
    local.set $23
    local.get $10
    i64.const 32
    i64.shr_u
    local.set $24
    local.get $21
    i64.const 32
    i64.shr_u
    local.set $25
    local.get $22
    local.get $23
    i64.mul
    local.set $26
    local.get $24
    local.get $23
    i64.mul
    local.get $26
    i64.const 32
    i64.shr_u
    i64.add
    local.set $27
    local.get $22
    local.get $25
    i64.mul
    local.get $27
    i64.const 4294967295
    i64.and
    i64.add
    local.set $30
    local.get $30
    i64.const 2147483647
    i64.add
    local.set $30
    local.get $27
    i64.const 32
    i64.shr_u
    local.set $27
    local.get $30
    i64.const 32
    i64.shr_u
    local.set $30
    local.get $24
    local.get $25
    i64.mul
    local.get $27
    i64.add
    local.get $30
    i64.add
   end
   i64.const 1
   i64.add
   local.set $30
   local.get $29
   local.get $30
   i64.sub
   local.set $27
   local.get $4
   local.get $28
   local.get $14
   local.get $29
   local.get $15
   local.get $27
   local.get $5
   call $~lib/internal/number/genDigits
  end
  local.set $31
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $31
  local.get $2
  i32.sub
  global.get $~lib/internal/number/_K
  call $~lib/internal/number/prettify
  local.set $31
  local.get $31
  local.get $2
  i32.add
 )
 (func $~lib/string/String#substring (; 61 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 215
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/StringBase#get:length
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
   i32.const 312
   return
  end
  local.get $8
  i32.eqz
  local.tee $4
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/runtime/StringBase#get:length
   i32.const 1
   i32.shl
   i32.eq
  else   
   local.get $4
  end
  if
   local.get $0
   return
  end
  local.get $3
  call $~lib/runtime/ALLOC
  local.set $10
  block $~lib/runtime/memory.copy|inlined.16
   local.get $10
   local.set $4
   local.get $0
   local.get $8
   i32.add
   local.set $5
   local.get $3
   local.set $11
   local.get $4
   local.get $5
   local.get $11
   call $~lib/internal/memory/memmove
  end
  block $~lib/runtime/REGISTER<String>|inlined.13 (result i32)
   local.get $10
   local.set $11
   local.get $11
   call $~lib/runtime/unref
   i32.const 1
   i32.store
   local.get $11
  end
 )
 (func $~lib/runtime/FREE (; 62 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/runtime/unref
  call $~lib/allocator/arena/memory.free
 )
 (func $~lib/internal/number/dtoa (; 63 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 3136
   return
  end
  local.get $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 3152
    return
   end
   i32.const 3168
   i32.const 3200
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  i32.const 28
  i32.const 1
  i32.shl
  call $~lib/runtime/ALLOC
  local.set $1
  local.get $1
  local.get $0
  call $~lib/internal/number/dtoa_core
  local.set $2
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/string/String#substring
  local.set $3
  local.get $1
  call $~lib/runtime/FREE
  local.get $3
 )
 (func $start:std/string (; 64 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $start:~lib/allocator/arena
  global.get $std/string/str
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 16
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  call $~lib/runtime/StringBase#get:length
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 18
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  call $~lib/string/String#charCodeAt
  i32.const 104
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 19
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/string/String.fromCharCode
  i32.const 176
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 21
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 54
  call $~lib/string/String.fromCharCode
  i32.const 192
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 65536
  i32.const 54
  i32.add
  call $~lib/string/String.fromCharCode
  i32.const 192
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 23
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/string/String.fromCodePoint
  i32.const 176
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 25
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 54
  call $~lib/string/String.fromCodePoint
  i32.const 192
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 26
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 119558
  call $~lib/string/String.fromCodePoint
  i32.eqz
  if
   i32.const 208
   i32.const 56
   i32.const 27
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 224
  i32.const 0
  call $~lib/string/String#startsWith
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const 256
   i32.const 0
   call $~lib/string/String#endsWith|trampoline
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 30
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block $~lib/string/String#includes|inlined.0 (result i32)
   global.get $std/string/str
   local.set $0
   i32.const 280
   local.set $1
   i32.const 0
   local.set $2
   local.get $0
   local.get $1
   local.get $2
   call $~lib/string/String#indexOf
   i32.const -1
   i32.ne
  end
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 31
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const 296
  call $~lib/string/String#padStart
  global.get $std/string/str
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 33
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 15
  i32.const 296
  call $~lib/string/String#padStart
  global.get $std/string/str
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 34
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 3
  i32.const 296
  call $~lib/string/String#padStart
  i32.const 320
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 10
  i32.const 312
  call $~lib/string/String#padStart
  i32.const 312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 100
  i32.const 312
  call $~lib/string/String#padStart
  i32.const 336
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 37
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 5
  i32.const 296
  call $~lib/string/String#padStart
  i32.const 368
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 38
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 6
  i32.const 392
  call $~lib/string/String#padStart
  i32.const 408
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 39
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 8
  i32.const 392
  call $~lib/string/String#padStart
  i32.const 432
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 40
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const 296
  call $~lib/string/String#padEnd
  global.get $std/string/str
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 15
  i32.const 296
  call $~lib/string/String#padEnd
  global.get $std/string/str
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 3
  i32.const 296
  call $~lib/string/String#padEnd
  i32.const 320
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 44
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 10
  i32.const 312
  call $~lib/string/String#padEnd
  i32.const 312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 45
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 100
  i32.const 312
  call $~lib/string/String#padEnd
  i32.const 336
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 46
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 5
  i32.const 296
  call $~lib/string/String#padEnd
  i32.const 456
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 47
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 6
  i32.const 352
  call $~lib/string/String#padEnd
  i32.const 480
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 48
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 8
  i32.const 352
  call $~lib/string/String#padEnd
  i32.const 504
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 51
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 224
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 52
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 336
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 53
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  global.get $std/string/str
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 54
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 312
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 55
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 544
  i32.const 0
  call $~lib/string/String#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 57
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 2
  call $~lib/string/String#indexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 58
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 3
  call $~lib/string/String#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 59
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 560
  i32.const -1
  call $~lib/string/String#indexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 60
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 312
   i32.const 312
   i32.const 0
   call $~lib/string/String#lastIndexOf|trampoline
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 312
   i32.const 224
   i32.const 0
   call $~lib/string/String#lastIndexOf|trampoline
  end
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 63
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const 312
   i32.const 0
   call $~lib/string/String#lastIndexOf|trampoline
  end
  global.get $std/string/str
  call $~lib/runtime/StringBase#get:length
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 64
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const 528
   i32.const 0
   call $~lib/string/String#lastIndexOf|trampoline
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 65
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const 544
   i32.const 0
   call $~lib/string/String#lastIndexOf|trampoline
  end
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 66
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const 576
   i32.const 0
   call $~lib/string/String#lastIndexOf|trampoline
  end
  i32.const 15
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 67
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 2
  call $~lib/string/String#lastIndexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 68
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 528
  i32.const 3
  call $~lib/string/String#lastIndexOf
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 560
  i32.const -1
  call $~lib/string/String#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 70
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 592
  i32.const 0
  call $~lib/string/String#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 71
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 224
  i32.const 0
  call $~lib/string/String#lastIndexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 608
  i32.const 0
  call $~lib/string/parseInt
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 624
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 79
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 640
  i32.const 0
  call $~lib/string/parseInt
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 80
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 664
  i32.const 0
  call $~lib/string/parseInt
  f64.const 455
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 81
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 688
  i32.const 0
  call $~lib/string/parseInt
  f64.const 3855
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 82
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 712
  i32.const 0
  call $~lib/string/parseInt
  f64.const 3855
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 83
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 736
  i32.const 0
  call $~lib/string/parseInt
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 84
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 752
  i32.const 0
  call $~lib/string/parseInt
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 85
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 608
  call $~lib/string/parseFloat
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 87
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 624
  call $~lib/string/parseFloat
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 88
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 768
  call $~lib/string/parseFloat
  f64.const 0.1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 89
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 784
  call $~lib/string/parseFloat
  f64.const 0.25
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 800
  call $~lib/string/parseFloat
  f64.const 0.1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 91
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 824
  call $~lib/string/String.concat
  global.set $std/string/c
  global.get $std/string/c
  i32.const 840
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 94
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/c
  i32.const 336
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 95
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 96
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  global.get $std/string/nullStr
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/nullStr
  i32.const 312
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 98
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 824
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 336
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 856
  i32.const 872
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 856
  i32.const 856
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 888
  i32.const 904
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 103
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 920
  i32.const 944
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 104
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 968
  i32.const 968
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 968
  i32.const 992
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1016
  i32.const 1048
  call $~lib/string/String.ne
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 824
  i32.const 336
  call $~lib/string/String.gt
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 109
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1080
  i32.const 336
  call $~lib/string/String.gt
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 110
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1080
  i32.const 1096
  call $~lib/string/String.gte
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 111
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1080
  i32.const 840
  call $~lib/string/String.gt
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 112
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1080
  i32.const 840
  call $~lib/string/String.lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 113
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 824
  global.get $std/string/nullStr
  call $~lib/string/String.lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 115
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/nullStr
  i32.const 824
  call $~lib/string/String.lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 116
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  call $~lib/string/String.gt
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 118
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 352
  call $~lib/string/String.lt
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 119
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  call $~lib/string/String.gte
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 120
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 352
  call $~lib/string/String.lte
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 121
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  call $~lib/string/String.lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 122
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 352
  call $~lib/string/String.gt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 123
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  call $~lib/string/String.lt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 124
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  call $~lib/string/String.gt
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 125
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  call $~lib/string/String.gte
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 126
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 312
  call $~lib/string/String.lte
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 127
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 65377
  call $~lib/string/String.fromCodePoint
  global.set $std/string/a
  i32.const 55296
  call $~lib/string/String.fromCodePoint
  i32.const 56322
  call $~lib/string/String.fromCodePoint
  call $~lib/string/String.concat
  global.set $std/string/b
  global.get $std/string/a
  global.get $std/string/b
  call $~lib/string/String.gt
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 131
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 392
  call $~lib/runtime/StringBase#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 100
  call $~lib/string/String#repeat
  i32.const 312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 135
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 0
  call $~lib/string/String#repeat
  i32.const 312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 136
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 1
  call $~lib/string/String#repeat
  i32.const 336
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 137
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 2
  call $~lib/string/String#repeat
  i32.const 1096
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 138
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 3
  call $~lib/string/String#repeat
  i32.const 1112
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 139
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 840
  i32.const 4
  call $~lib/string/String#repeat
  i32.const 1128
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 140
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 5
  call $~lib/string/String#repeat
  i32.const 1152
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 141
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 6
  call $~lib/string/String#repeat
  i32.const 1176
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 142
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 336
  i32.const 7
  call $~lib/string/String#repeat
  i32.const 1200
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 143
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1224
  global.set $std/string/str
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const 0
   i32.const 0
   call $~lib/string/String#slice|trampoline
  end
  i32.const 1224
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const -1
   i32.const 0
   call $~lib/string/String#slice|trampoline
  end
  i32.const 1264
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 148
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/string/str
   i32.const -5
   i32.const 0
   call $~lib/string/String#slice|trampoline
  end
  i32.const 1280
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 149
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 2
  i32.const 7
  call $~lib/string/String#slice
  i32.const 1304
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 150
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -11
  i32.const -6
  call $~lib/string/String#slice
  i32.const 1328
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 4
  i32.const 3
  call $~lib/string/String#slice
  i32.const 312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const 0
  i32.const -1
  call $~lib/string/String#slice
  i32.const 1352
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 0
   global.set $~lib/argc
   i32.const 312
   i32.const 0
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 158
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 312
   i32.const 312
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.1 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 160
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 312
   i32.const 528
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.2 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 162
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1496
   i32.const 1520
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 1496
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 164
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1496
   i32.const 528
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.4 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 166
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1552
   i32.const 1576
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.5 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 168
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1592
   i32.const 528
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.6 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 3
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 170
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1616
   i32.const 528
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.7 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 3
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 172
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 1640
   i32.const 528
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.8 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 4
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 3
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 174
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   i32.const 352
   i32.const 312
   i32.const 0
   call $~lib/string/String#split|trampoline
  end
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.9 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 176
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  i32.const 0
  call $~lib/string/String#split
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.10 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 178
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  i32.const 1
  call $~lib/string/String#split
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.11 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 180
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1496
  i32.const 528
  i32.const 1
  call $~lib/string/String#split
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.12 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 1
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 182
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  i32.const 4
  call $~lib/string/String#split
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.13 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 184
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 352
  i32.const 312
  i32.const -1
  call $~lib/string/String#split
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.14 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 186
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1496
  i32.const 528
  i32.const -1
  call $~lib/string/String#split
  global.set $std/string/sa
  block $~lib/array/Array<String>#get:length|inlined.15 (result i32)
   global.get $std/string/sa
   local.set $2
   local.get $2
   i32.load offset=4
  end
  i32.const 3
  i32.eq
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  local.tee $2
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1536
   call $~lib/string/String.eq
  else   
   local.get $2
  end
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 188
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/internal/number/itoa32
  i32.const 608
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 190
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  call $~lib/internal/number/itoa32
  i32.const 624
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 191
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  call $~lib/internal/number/itoa32
  i32.const 2184
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 192
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 123
  call $~lib/internal/number/itoa32
  i32.const 392
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 193
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1000
  call $~lib/internal/number/itoa32
  i32.const 2200
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1234
  call $~lib/internal/number/itoa32
  i32.const 2224
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 12345
  call $~lib/internal/number/itoa32
  i32.const 2240
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 196
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 123456
  call $~lib/internal/number/itoa32
  i32.const 2264
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 197
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1111111
  call $~lib/internal/number/itoa32
  i32.const 2288
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 198
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1234567
  call $~lib/internal/number/itoa32
  i32.const 2312
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 199
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2147483646
  call $~lib/internal/number/itoa32
  i32.const 2336
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 200
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/internal/number/itoa32
  i32.const 2368
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 201
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -2147483648
  call $~lib/internal/number/itoa32
  i32.const 2400
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 202
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  call $~lib/internal/number/itoa32
  i32.const 2432
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 203
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $~lib/internal/number/utoa32
  i32.const 608
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 205
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1000
  call $~lib/internal/number/utoa32
  i32.const 2448
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 206
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 2147483647
  call $~lib/internal/number/utoa32
  i32.const 2368
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 207
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const -2147483648
  call $~lib/internal/number/utoa32
  i32.const 2464
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 208
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u32.MAX_VALUE
  call $~lib/internal/number/utoa32
  i32.const 2496
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 209
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 0
  call $~lib/internal/number/utoa64
  i32.const 608
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 211
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 1234
  call $~lib/internal/number/utoa64
  i32.const 2224
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 212
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 99999999
  call $~lib/internal/number/utoa64
  i32.const 2528
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 213
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 100000000
  call $~lib/internal/number/utoa64
  i32.const 2552
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 214
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 4294967295
  call $~lib/internal/number/utoa64
  i32.const 2496
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 215
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 68719476735
  call $~lib/internal/number/utoa64
  i32.const 2584
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 216
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 868719476735
  call $~lib/internal/number/utoa64
  i32.const 2616
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 217
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 999868719476735
  call $~lib/internal/number/utoa64
  i32.const 2648
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 218
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 9999868719476735
  call $~lib/internal/number/utoa64
  i32.const 2688
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 219
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 19999868719476735
  call $~lib/internal/number/utoa64
  i32.const 2728
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 220
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/u64.MAX_VALUE
  call $~lib/internal/number/utoa64
  i32.const 2776
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 221
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 0
  call $~lib/internal/number/itoa64
  i32.const 608
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 223
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const -1234
  call $~lib/internal/number/itoa64
  i32.const 2824
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 224
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 4294967295
  call $~lib/internal/number/itoa64
  i32.const 2496
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 225
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const -4294967295
  call $~lib/internal/number/itoa64
  i32.const 2848
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 226
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const 68719476735
  call $~lib/internal/number/itoa64
  i32.const 2584
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 227
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const -68719476735
  call $~lib/internal/number/itoa64
  i32.const 2880
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 228
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const -868719476735
  call $~lib/internal/number/itoa64
  i32.const 2912
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 229
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const -999868719476735
  call $~lib/internal/number/itoa64
  i32.const 2952
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 230
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i64.const -19999868719476735
  call $~lib/internal/number/itoa64
  i32.const 2992
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 231
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i64.MAX_VALUE
  call $~lib/internal/number/itoa64
  i32.const 3040
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 232
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/i64.MIN_VALUE
  call $~lib/internal/number/itoa64
  i32.const 3088
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 233
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0
  call $~lib/internal/number/dtoa
  i32.const 3136
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 236
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -0
  call $~lib/internal/number/dtoa
  i32.const 3136
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 237
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const nan:0x8000000000000
  call $~lib/internal/number/dtoa
  i32.const 3152
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 238
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const inf
  call $~lib/internal/number/dtoa
  i32.const 3200
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 239
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const inf
  f64.neg
  call $~lib/internal/number/dtoa
  i32.const 3168
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 240
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.EPSILON
  call $~lib/internal/number/dtoa
  i32.const 4592
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 241
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.EPSILON
  f64.neg
  call $~lib/internal/number/dtoa
  i32.const 4648
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 242
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  call $~lib/internal/number/dtoa
  i32.const 4704
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 243
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $~lib/builtins/f64.MAX_VALUE
  f64.neg
  call $~lib/internal/number/dtoa
  i32.const 4760
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 244
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 4185580496821356722454785e274
  call $~lib/internal/number/dtoa
  i32.const 4816
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 245
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 2.2250738585072014e-308
  call $~lib/internal/number/dtoa
  i32.const 4872
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 246
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 4.940656e-318
  call $~lib/internal/number/dtoa
  i32.const 4928
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 249
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 9060801153433600
  call $~lib/internal/number/dtoa
  i32.const 4968
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 250
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 4708356024711512064
  call $~lib/internal/number/dtoa
  i32.const 5016
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 251
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 9409340012568248320
  call $~lib/internal/number/dtoa
  i32.const 5072
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 252
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 5e-324
  call $~lib/internal/number/dtoa
  i32.const 5128
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 253
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1
  call $~lib/internal/number/dtoa
  i32.const 5152
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 259
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0.1
  call $~lib/internal/number/dtoa
  i32.const 768
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 260
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -1
  call $~lib/internal/number/dtoa
  i32.const 5168
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 261
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -0.1
  call $~lib/internal/number/dtoa
  i32.const 5184
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 262
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1e6
  call $~lib/internal/number/dtoa
  i32.const 5200
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 264
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1e-06
  call $~lib/internal/number/dtoa
  i32.const 5232
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 265
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -1e6
  call $~lib/internal/number/dtoa
  i32.const 5256
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 266
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -1e-06
  call $~lib/internal/number/dtoa
  i32.const 5288
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 267
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1e7
  call $~lib/internal/number/dtoa
  i32.const 5320
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 268
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1e-07
  call $~lib/internal/number/dtoa
  i32.const 5352
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 269
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1.e+308
  call $~lib/internal/number/dtoa
  i32.const 5368
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 271
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -1.e+308
  call $~lib/internal/number/dtoa
  i32.const 5392
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 272
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const inf
  call $~lib/internal/number/dtoa
  i32.const 3200
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 273
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -inf
  call $~lib/internal/number/dtoa
  i32.const 3168
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 274
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1e-308
  call $~lib/internal/number/dtoa
  i32.const 5416
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 275
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -1e-308
  call $~lib/internal/number/dtoa
  i32.const 5440
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 276
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1e-323
  call $~lib/internal/number/dtoa
  i32.const 5464
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 277
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const -1e-323
  call $~lib/internal/number/dtoa
  i32.const 5488
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 278
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0
  call $~lib/internal/number/dtoa
  i32.const 3136
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 279
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 4294967272
  call $~lib/internal/number/dtoa
  i32.const 5512
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 281
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1.2312145673456234e-08
  call $~lib/internal/number/dtoa
  i32.const 5544
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 282
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 555555555.5555556
  call $~lib/internal/number/dtoa
  i32.const 5600
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 284
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0.9999999999999999
  call $~lib/internal/number/dtoa
  i32.const 5648
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 285
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1
  call $~lib/internal/number/dtoa
  i32.const 5152
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 286
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 12.34
  call $~lib/internal/number/dtoa
  i32.const 5696
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 287
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1
  f64.const 3
  f64.div
  call $~lib/internal/number/dtoa
  i32.const 5720
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 289
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1234e17
  call $~lib/internal/number/dtoa
  i32.const 5768
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 290
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1234e18
  call $~lib/internal/number/dtoa
  i32.const 5824
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 291
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 2.71828
  call $~lib/internal/number/dtoa
  i32.const 5856
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 292
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0.0271828
  call $~lib/internal/number/dtoa
  i32.const 5880
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 293
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 271.828
  call $~lib/internal/number/dtoa
  i32.const 5912
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 294
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1.1e+128
  call $~lib/internal/number/dtoa
  i32.const 5936
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 295
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 1.1e-64
  call $~lib/internal/number/dtoa
  i32.const 5960
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 296
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  f64.const 0.000035689
  call $~lib/internal/number/dtoa
  i32.const 5984
  call $~lib/string/String.eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 297
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/string/getString (; 65 ;) (type $FUNCSIG$i) (result i32)
  global.get $std/string/str
 )
 (func $start (; 66 ;) (type $FUNCSIG$v)
  call $start:std/string
 )
 (func $null (; 67 ;) (type $FUNCSIG$v)
 )
)
