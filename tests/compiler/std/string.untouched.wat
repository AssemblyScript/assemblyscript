(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 \00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g\00")
 (data (i32.const 48) "\01\00\00\00\1a\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 88) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s\00")
 (data (i32.const 128) "\01\00\00\00\02\00\00\00\00\00")
 (data (i32.const 144) "\01\00\00\00\02\00\00\006\00")
 (data (i32.const 160) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
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
 (data (i32.const 1424) "\01\00\00\00\n\00\00\00a\00,\00b\00,\00c\00")
 (data (i32.const 1448) "\01\00\00\00\02\00\00\00.\00")
 (data (i32.const 1464) "\01\00\00\00\02\00\00\00c\00")
 (data (i32.const 1480) "\01\00\00\00\0e\00\00\00a\00,\00 \00b\00,\00 \00c\00")
 (data (i32.const 1504) "\01\00\00\00\04\00\00\00,\00 \00")
 (data (i32.const 1520) "\01\00\00\00\0c\00\00\00a\00,\00b\00,\00,\00c\00")
 (data (i32.const 1544) "\01\00\00\00\0c\00\00\00,\00a\00,\00b\00,\00c\00")
 (data (i32.const 1568) "\01\00\00\00\0c\00\00\00a\00,\00b\00,\00c\00,\00")
 (data (i32.const 1592) "\03\00\00\00\90\01\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2000) "\04\00\00\00\10\00\00\00@\06\00\00@\06\00\00\90\01\00\00d\00\00\00")
 (data (i32.const 2024) "\01\00\00\00\02\00\00\008\00")
 (data (i32.const 2040) "\01\00\00\00\n\00\00\00-\001\000\000\000\00")
 (data (i32.const 2064) "\01\00\00\00\08\00\00\001\002\003\004\00")
 (data (i32.const 2080) "\01\00\00\00\n\00\00\001\002\003\004\005\00")
 (data (i32.const 2104) "\01\00\00\00\0c\00\00\001\002\003\004\005\006\00")
 (data (i32.const 2128) "\01\00\00\00\0e\00\00\001\001\001\001\001\001\001\00")
 (data (i32.const 2152) "\01\00\00\00\0e\00\00\001\002\003\004\005\006\007\00")
 (data (i32.const 2176) "\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\006\00")
 (data (i32.const 2208) "\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\007\00")
 (data (i32.const 2240) "\01\00\00\00\16\00\00\00-\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 2272) "\01\00\00\00\04\00\00\00-\001\00")
 (data (i32.const 2288) "\01\00\00\00\08\00\00\001\000\000\000\00")
 (data (i32.const 2304) "\01\00\00\00\14\00\00\002\001\004\007\004\008\003\006\004\008\00")
 (data (i32.const 2336) "\01\00\00\00\14\00\00\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 2368) "\01\00\00\00\10\00\00\009\009\009\009\009\009\009\009\00")
 (data (i32.const 2392) "\01\00\00\00\12\00\00\001\000\000\000\000\000\000\000\000\00")
 (data (i32.const 2424) "\01\00\00\00\16\00\00\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2456) "\01\00\00\00\18\00\00\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2488) "\01\00\00\00\1e\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2528) "\01\00\00\00 \00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2568) "\01\00\00\00\"\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2616) "\01\00\00\00(\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005\00")
 (data (i32.const 2664) "\01\00\00\00\n\00\00\00-\001\002\003\004\00")
 (data (i32.const 2688) "\01\00\00\00\16\00\00\00-\004\002\009\004\009\006\007\002\009\005\00")
 (data (i32.const 2720) "\01\00\00\00\18\00\00\00-\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2752) "\01\00\00\00\1a\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2792) "\01\00\00\00 \00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2832) "\01\00\00\00$\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005\00")
 (data (i32.const 2880) "\01\00\00\00&\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007\00")
 (data (i32.const 2928) "\01\00\00\00(\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008\00")
 (data (i32.const 2976) "\01\00\00\00\06\00\00\000\00.\000\00")
 (data (i32.const 2992) "\01\00\00\00\06\00\00\00N\00a\00N\00")
 (data (i32.const 3008) "\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 3040) "\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y\00")
 (data (i32.const 3064) "\03\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 3768) "\05\00\00\00\10\00\00\00\00\0c\00\00\00\0c\00\00\b8\02\00\00W\00\00\00")
 (data (i32.const 3792) "\03\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 3976) "\06\00\00\00\10\00\00\00\d8\0e\00\00\d8\0e\00\00\ae\00\00\00W\00\00\00")
 (data (i32.const 4000) "\03\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 4048) "\04\00\00\00\10\00\00\00\a8\0f\00\00\a8\0f\00\00(\00\00\00\n\00\00\00")
 (data (i32.const 4072) "\01\00\00\00*\00\00\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 4128) "\01\00\00\00,\00\00\00-\002\00.\002\002\000\004\004\006\000\004\009\002\005\000\003\001\003\00e\00-\001\006\00")
 (data (i32.const 4184) "\01\00\00\00.\00\00\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 4240) "\01\00\00\000\00\00\00-\001\00.\007\009\007\006\009\003\001\003\004\008\006\002\003\001\005\007\00e\00+\003\000\008\00")
 (data (i32.const 4296) "\01\00\00\00,\00\00\004\00.\001\008\005\005\008\000\004\009\006\008\002\001\003\005\007\00e\00+\002\009\008\00")
 (data (i32.const 4352) "\01\00\00\00.\00\00\002\00.\002\002\005\000\007\003\008\005\008\005\000\007\002\000\001\004\00e\00-\003\000\008\00")
 (data (i32.const 4408) "\01\00\00\00\1a\00\00\004\00.\009\004\000\006\005\006\00e\00-\003\001\008\00")
 (data (i32.const 4448) "\01\00\00\00$\00\00\009\000\006\000\008\000\001\001\005\003\004\003\003\006\000\000\00.\000\00")
 (data (i32.const 4496) "\01\00\00\00*\00\00\004\007\000\008\003\005\006\000\002\004\007\001\001\005\001\002\000\000\000\00.\000\00")
 (data (i32.const 4552) "\01\00\00\00*\00\00\009\004\000\009\003\004\000\000\001\002\005\006\008\002\004\008\000\000\000\00.\000\00")
 (data (i32.const 4608) "\01\00\00\00\0c\00\00\005\00e\00-\003\002\004\00")
 (data (i32.const 4632) "\01\00\00\00\06\00\00\001\00.\000\00")
 (data (i32.const 4648) "\01\00\00\00\08\00\00\00-\001\00.\000\00")
 (data (i32.const 4664) "\01\00\00\00\08\00\00\00-\000\00.\001\00")
 (data (i32.const 4680) "\01\00\00\00\12\00\00\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 4712) "\01\00\00\00\10\00\00\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 4736) "\01\00\00\00\14\00\00\00-\001\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 4768) "\01\00\00\00\12\00\00\00-\000\00.\000\000\000\000\000\001\00")
 (data (i32.const 4800) "\01\00\00\00\14\00\00\001\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 4832) "\01\00\00\00\08\00\00\001\00e\00-\007\00")
 (data (i32.const 4848) "\01\00\00\00\0c\00\00\001\00e\00+\003\000\008\00")
 (data (i32.const 4872) "\01\00\00\00\0e\00\00\00-\001\00e\00+\003\000\008\00")
 (data (i32.const 4896) "\01\00\00\00\0c\00\00\001\00e\00-\003\000\008\00")
 (data (i32.const 4920) "\01\00\00\00\0e\00\00\00-\001\00e\00-\003\000\008\00")
 (data (i32.const 4944) "\01\00\00\00\0c\00\00\001\00e\00-\003\002\003\00")
 (data (i32.const 4968) "\01\00\00\00\0e\00\00\00-\001\00e\00-\003\002\003\00")
 (data (i32.const 4992) "\01\00\00\00\18\00\00\004\002\009\004\009\006\007\002\007\002\00.\000\00")
 (data (i32.const 5024) "\01\00\00\00*\00\00\001\00.\002\003\001\002\001\004\005\006\007\003\004\005\006\002\003\004\00e\00-\008\00")
 (data (i32.const 5080) "\01\00\00\00\"\00\00\005\005\005\005\005\005\005\005\005\00.\005\005\005\005\005\005\006\00")
 (data (i32.const 5128) "\01\00\00\00$\00\00\000\00.\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\009\00")
 (data (i32.const 5176) "\01\00\00\00\n\00\00\001\002\00.\003\004\00")
 (data (i32.const 5200) "\01\00\00\00$\00\00\000\00.\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\00")
 (data (i32.const 5248) "\01\00\00\00.\00\00\001\002\003\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00.\000\00")
 (data (i32.const 5304) "\01\00\00\00\12\00\00\001\00.\002\003\004\00e\00+\002\001\00")
 (data (i32.const 5336) "\01\00\00\00\0e\00\00\002\00.\007\001\008\002\008\00")
 (data (i32.const 5360) "\01\00\00\00\12\00\00\000\00.\000\002\007\001\008\002\008\00")
 (data (i32.const 5392) "\01\00\00\00\0e\00\00\002\007\001\00.\008\002\008\00")
 (data (i32.const 5416) "\01\00\00\00\10\00\00\001\00.\001\00e\00+\001\002\008\00")
 (data (i32.const 5440) "\01\00\00\00\0e\00\00\001\00.\001\00e\00-\006\004\00")
 (data (i32.const 5464) "\01\00\00\00\16\00\00\000\00.\000\000\000\000\003\005\006\008\009\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/runtime/GC_IMPLEMENTED i32 (i32.const 0))
 (global $~lib/runtime/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/runtime/HEADER_MAGIC i32 (i32.const -1520547049))
 (global $std/string/str (mut i32) (i32.const 16))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_NO_ASSERT i32 (i32.const 0))
 (global $~lib/string/String.MAX_LENGTH i32 (i32.const 536870908))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/string/c (mut i32) (i32.const 0))
 (global $std/string/a (mut i32) (i32.const 0))
 (global $std/string/b (mut i32) (i32.const 0))
 (global $std/string/sa (mut i32) (i32.const 0))
 (global $~lib/runtime/MAX_BYTELENGTH i32 (i32.const 1073741816))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/builtins/u32.MAX_VALUE i32 (i32.const -1))
 (global $~lib/builtins/u64.MAX_VALUE i64 (i64.const -1))
 (global $~lib/builtins/i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $~lib/builtins/i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/builtins/f64.EPSILON f64 (f64.const 2.220446049250313e-16))
 (global $~lib/builtins/f64.MAX_VALUE f64 (f64.const 1797693134862315708145274e284))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 5496))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getString" (func $std/string/getString))
 (start $start)
 (func $~lib/string/String#get:length (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load offset=4
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (; 2 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
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
 (func $~lib/runtime/ADJUSTOBLOCK (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/memory/memory.allocate (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/allocator/arena/__memory_allocate|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 1073741824
   i32.gt_u
   if
    unreachable
   end
   global.get $~lib/allocator/arena/offset
   local.set $2
   local.get $2
   local.get $1
   local.tee $3
   i32.const 1
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_u
   select
   i32.add
   i32.const 7
   i32.add
   i32.const 7
   i32.const -1
   i32.xor
   i32.and
   local.set $3
   current_memory
   local.set $4
   local.get $3
   local.get $4
   i32.const 16
   i32.shl
   i32.gt_u
   if
    local.get $3
    local.get $2
    i32.sub
    i32.const 65535
    i32.add
    i32.const 65535
    i32.const -1
    i32.xor
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $4
    local.tee $6
    local.get $5
    local.tee $7
    local.get $6
    local.get $7
    i32.gt_s
    select
    local.set $6
    local.get $6
    grow_memory
    i32.const 0
    i32.lt_s
    if
     local.get $5
     grow_memory
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
   end
   local.get $3
   global.set $~lib/allocator/arena/offset
   local.get $2
  end
  return
 )
 (func $~lib/runtime/doAllocate (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/runtime/ADJUSTOBLOCK
  call $~lib/memory/memory.allocate
  local.set $1
  local.get $1
  global.get $~lib/runtime/HEADER_MAGIC
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  global.get $~lib/runtime/HEADER_SIZE
  i32.add
 )
 (func $~lib/runtime/assertUnregistered (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/memory/HEAP_BASE
  i32.gt_u
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 313
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  i32.load
  global.get $~lib/runtime/HEADER_MAGIC
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 314
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/runtime/doRegister (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/string/String.fromCharCode (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $~lib/runtime/ALLOCATE|inlined.0 (result i32)
   i32.const 2
   local.set $1
   local.get $1
   call $~lib/runtime/doAllocate
  end
  local.set $2
  local.get $2
  local.get $0
  i32.store16
  block $~lib/runtime/REGISTER<String>|inlined.0 (result i32)
   local.get $2
   local.set $1
   local.get $1
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/string/compareImpl (; 9 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  local.get $1
  call $~lib/string/String#get:length
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
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String.fromCodePoint (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
   i32.const 168
   i32.const 22
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 65535
  i32.gt_s
  local.set $1
  block $~lib/runtime/ALLOCATE|inlined.1 (result i32)
   local.get $1
   i32.const 1
   i32.add
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   call $~lib/runtime/doAllocate
  end
  local.set $3
  local.get $1
  i32.eqz
  if
   local.get $3
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
   local.set $2
   local.get $0
   i32.const 1023
   i32.and
   i32.const 56320
   i32.add
   local.set $4
   local.get $3
   local.get $2
   i32.const 16
   i32.shl
   local.get $4
   i32.or
   i32.store
  end
  block $~lib/runtime/REGISTER<String>|inlined.1 (result i32)
   local.get $3
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String#startsWith (; 12 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 168
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
  local.get $2
  local.set $3
  local.get $0
  call $~lib/string/String#get:length
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
  call $~lib/string/String#get:length
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
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String#endsWith (; 13 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 168
   i32.const 75
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
  call $~lib/string/String#get:length
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $5
  local.get $1
  call $~lib/string/String#get:length
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
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String#indexOf (; 14 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 168
   i32.const 131
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
  call $~lib/string/String#get:length
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
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
    call $~lib/util/string/compareImpl
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
 (func $~lib/util/memory/memcpy (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $5
   if (result i32)
    local.get $5
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
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
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
          br $~lib/util/memory/memmove|inlined.0
         end
         local.get $2
         i32.const 1
         i32.sub
         local.set $2
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
          br $~lib/util/memory/memmove|inlined.0
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
  end
 )
 (func $~lib/memory/memory.repeat (; 17 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
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
      local.get $0
      local.get $4
      i32.add
      local.get $1
      local.get $2
      call $~lib/memory/memory.copy
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
 (func $~lib/string/String#padStart (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 168
   i32.const 279
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  local.get $2
  call $~lib/string/String#get:length
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
  block $~lib/runtime/ALLOCATE|inlined.2 (result i32)
   local.get $4
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
  end
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
   call $~lib/memory/memory.repeat
   local.get $8
   local.get $9
   i32.add
   local.get $2
   local.get $10
   call $~lib/memory/memory.copy
  else   
   local.get $8
   local.get $2
   local.get $7
   call $~lib/memory/memory.copy
  end
  local.get $8
  local.get $7
  i32.add
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
  block $~lib/runtime/REGISTER<String>|inlined.2 (result i32)
   local.get $8
   local.set $10
   local.get $10
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String#padEnd (; 19 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 168
   i32.const 300
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $1
  i32.const 1
  i32.shl
  local.set $4
  local.get $2
  call $~lib/string/String#get:length
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
  block $~lib/runtime/ALLOCATE|inlined.3 (result i32)
   local.get $4
   local.set $6
   local.get $6
   call $~lib/runtime/doAllocate
  end
  local.set $8
  local.get $8
  local.get $0
  local.get $3
  call $~lib/memory/memory.copy
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
   local.get $3
   i32.add
   local.get $2
   local.get $5
   local.get $6
   call $~lib/memory/memory.repeat
   local.get $8
   local.get $3
   i32.add
   local.get $9
   i32.add
   local.get $2
   local.get $10
   call $~lib/memory/memory.copy
  else   
   local.get $8
   local.get $3
   i32.add
   local.get $2
   local.get $7
   call $~lib/memory/memory.copy
  end
  block $~lib/runtime/REGISTER<String>|inlined.3 (result i32)
   local.get $8
   local.set $10
   local.get $10
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String#lastIndexOf (; 20 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 168
   i32.const 147
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
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
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
    call $~lib/util/string/compareImpl
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
 (func $~lib/util/string/parse<f64> (; 21 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  call $~lib/string/String#get:length
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
 (func $~lib/string/parseInt (; 22 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  local.get $1
  call $~lib/util/string/parse<f64>
 )
 (func $~lib/string/parseFloat (; 23 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  call $~lib/string/String#get:length
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
             i32.const 168
             i32.const 570
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
 (func $~lib/string/String#concat (; 24 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 240
   local.set $1
  end
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
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
  block $~lib/runtime/ALLOCATE|inlined.4 (result i32)
   local.get $4
   local.set $5
   local.get $5
   call $~lib/runtime/doAllocate
  end
  local.set $6
  local.get $6
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $6
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  block $~lib/runtime/REGISTER<String>|inlined.4 (result i32)
   local.get $6
   local.set $5
   local.get $5
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String.__concat (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 240
  local.get $0
  i32.const 0
  i32.ne
  select
  local.get $1
  call $~lib/string/String#concat
 )
 (func $~lib/string/String.__ne (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $~lib/string/String.__gt (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
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
  call $~lib/util/string/compareImpl
  i32.const 0
  i32.gt_s
 )
 (func $~lib/string/String.__lt (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  call $~lib/string/String#get:length
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
  call $~lib/util/string/compareImpl
  i32.const 0
  i32.lt_s
 )
 (func $~lib/string/String.__gte (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__lt
  i32.eqz
 )
 (func $~lib/string/String.__lte (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__gt
  i32.eqz
 )
 (func $~lib/string/String#repeat (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 168
   i32.const 321
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/string/String#get:length
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
   i32.const 168
   i32.const 326
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
  block $~lib/runtime/ALLOCATE|inlined.5 (result i32)
   local.get $2
   local.get $1
   i32.mul
   i32.const 1
   i32.shl
   local.set $3
   local.get $3
   call $~lib/runtime/doAllocate
  end
  local.set $4
  local.get $4
  local.get $0
  local.get $2
  i32.const 1
  i32.shl
  local.get $1
  call $~lib/memory/memory.repeat
  block $~lib/runtime/REGISTER<String>|inlined.5 (result i32)
   local.get $4
   local.set $3
   local.get $3
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/string/String#slice (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/string/String#get:length
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
  block $~lib/runtime/ALLOCATE|inlined.6 (result i32)
   local.get $3
   i32.const 1
   i32.shl
   local.set $4
   local.get $4
   call $~lib/runtime/doAllocate
  end
  local.set $8
  local.get $8
  local.get $0
  local.get $6
  i32.const 1
  i32.shl
  i32.add
  local.get $3
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  block $~lib/runtime/REGISTER<String>|inlined.6 (result i32)
   local.get $8
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/runtime/doMakeArray (; 33 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  call $~lib/runtime/doAllocate
  local.get $2
  call $~lib/runtime/doRegister
  local.set $4
  local.get $0
  local.get $3
  i32.shl
  local.set $5
  local.get $0
  local.get $3
  i32.shl
  call $~lib/runtime/doAllocate
  i32.const 3
  call $~lib/runtime/doRegister
  local.set $6
  local.get $4
  local.get $6
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $1
  if
   local.get $6
   local.get $1
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/memory/memory.fill (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
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
    br $~lib/util/memory/memset|inlined.0
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
    br $~lib/util/memory/memset|inlined.0
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
   local.set $5
   local.get $0
   local.get $5
   i32.add
   local.set $0
   local.get $2
   local.get $5
   i32.sub
   local.set $2
   local.get $4
   i64.extend_i32_u
   local.get $4
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $6
   block $break|0
    loop $continue|0
     local.get $2
     i32.const 32
     i32.ge_u
     if
      block
       local.get $0
       local.get $6
       i64.store
       local.get $0
       i32.const 8
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 16
       i32.add
       local.get $6
       i64.store
       local.get $0
       i32.const 24
       i32.add
       local.get $6
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
  end
 )
 (func $~lib/memory/memory.free (; 35 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  local.set $1
 )
 (func $~lib/runtime/doReallocate (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  local.set $2
  local.get $2
  i32.load offset=4
  local.set $3
  local.get $3
  local.get $1
  i32.lt_u
  if
   local.get $1
   call $~lib/runtime/ADJUSTOBLOCK
   local.set $4
   local.get $3
   call $~lib/runtime/ADJUSTOBLOCK
   i32.const 0
   local.get $0
   global.get $~lib/memory/HEAP_BASE
   i32.gt_u
   select
   local.get $4
   i32.lt_u
   if
    local.get $4
    call $~lib/memory/memory.allocate
    local.set $5
    local.get $5
    local.get $2
    i32.load
    i32.store
    local.get $5
    global.get $~lib/runtime/HEADER_SIZE
    i32.add
    local.set $6
    local.get $6
    local.get $0
    local.get $3
    call $~lib/memory/memory.copy
    local.get $6
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
    local.get $2
    i32.load
    global.get $~lib/runtime/HEADER_MAGIC
    i32.eq
    if
     local.get $0
     global.get $~lib/memory/HEAP_BASE
     i32.gt_u
     i32.eqz
     if
      i32.const 0
      i32.const 96
      i32.const 133
      i32.const 8
      call $~lib/env/abort
      unreachable
     end
     local.get $2
     call $~lib/memory/memory.free
    else     
     nop
    end
    local.get $5
    local.set $2
    local.get $6
    local.set $0
   else    
    local.get $0
    local.get $3
    i32.add
    i32.const 0
    local.get $1
    local.get $3
    i32.sub
    call $~lib/memory/memory.fill
   end
  else   
   nop
  end
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $~lib/array/ensureCapacity (; 37 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   global.get $~lib/runtime/MAX_BYTELENGTH
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 14
    i32.const 64
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.get $2
   i32.shl
   local.set $4
   block $~lib/runtime/REALLOCATE|inlined.0 (result i32)
    local.get $3
    local.set $6
    local.get $4
    local.set $5
    local.get $6
    local.get $5
    call $~lib/runtime/doReallocate
   end
   local.set $5
   local.get $5
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $5
    i32.store
    local.get $0
    local.get $5
    i32.store offset=4
   end
   local.get $0
   local.get $4
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<String>#push (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  i32.const 1
  i32.add
  local.set $2
  local.get $0
  local.get $2
  i32.const 2
  call $~lib/array/ensureCapacity
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.sub
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $2
 )
 (func $~lib/string/String#split (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 168
   i32.const 348
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.eqz
  if
   block $~lib/runtime/MAKEARRAY<String>|inlined.0 (result i32)
    i32.const 0
    local.set $4
    i32.const 0
    local.set $3
    local.get $4
    local.get $3
    i32.const 2
    i32.const 2
    call $~lib/runtime/doMakeArray
   end
   return
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   block (result i32)
    block $~lib/runtime/MAKEARRAY<String>|inlined.1 (result i32)
     i32.const 1
     local.set $5
     i32.const 0
     local.set $6
     local.get $5
     local.get $6
     i32.const 2
     i32.const 2
     call $~lib/runtime/doMakeArray
    end
    local.set $3
    local.get $3
    i32.load offset=4
    local.set $4
    local.get $4
    local.get $0
    i32.store
    local.get $3
   end
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $7
  local.get $1
  call $~lib/string/String#get:length
  local.set $8
  local.get $2
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $2
  end
  local.get $8
  i32.eqz
  if
   local.get $7
   i32.eqz
   if
    block $~lib/runtime/MAKEARRAY<String>|inlined.2 (result i32)
     i32.const 0
     local.set $3
     i32.const 0
     local.set $4
     local.get $3
     local.get $4
     i32.const 2
     i32.const 2
     call $~lib/runtime/doMakeArray
    end
    return
   end
   local.get $7
   local.tee $4
   local.get $2
   local.tee $3
   local.get $4
   local.get $3
   i32.lt_s
   select
   local.set $7
   block $~lib/runtime/MAKEARRAY<String>|inlined.3 (result i32)
    local.get $7
    local.set $3
    i32.const 0
    local.set $4
    local.get $3
    local.get $4
    i32.const 2
    i32.const 2
    call $~lib/runtime/doMakeArray
   end
   local.set $4
   local.get $4
   i32.load offset=4
   local.set $3
   block $break|0
    i32.const 0
    local.set $6
    loop $repeat|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     block
      block $~lib/runtime/REGISTER<String>|inlined.7 (result i32)
       block $~lib/runtime/ALLOCATE|inlined.7 (result i32)
        i32.const 2
        local.set $9
        local.get $9
        call $~lib/runtime/doAllocate
       end
       local.set $5
       local.get $5
       i32.const 1
       call $~lib/runtime/doRegister
      end
      local.set $5
      local.get $5
      local.get $0
      local.get $6
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u
      i32.store16
      local.get $3
      local.get $6
      i32.const 2
      i32.shl
      i32.add
      local.get $5
      i32.store
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $repeat|0
     unreachable
    end
    unreachable
   end
   local.get $4
   return
  else   
   local.get $7
   i32.eqz
   if
    block $~lib/runtime/MAKEARRAY<String>|inlined.4 (result i32)
     i32.const 1
     local.set $4
     i32.const 0
     local.set $3
     local.get $4
     local.get $3
     i32.const 2
     i32.const 2
     call $~lib/runtime/doMakeArray
    end
    local.set $3
    local.get $3
    i32.load offset=4
    i32.const 312
    i32.store
    local.get $3
    return
   end
  end
  block $~lib/runtime/MAKEARRAY<String>|inlined.5 (result i32)
   i32.const 0
   local.set $4
   i32.const 0
   local.set $3
   local.get $4
   local.get $3
   i32.const 2
   i32.const 2
   call $~lib/runtime/doMakeArray
  end
  local.set $10
  i32.const 0
  local.set $11
  i32.const 0
  local.set $12
  i32.const 0
  local.set $13
  block $break|1
   loop $continue|1
    local.get $0
    local.get $1
    local.tee $3
    if (result i32)
     local.get $3
    else     
     unreachable
    end
    local.get $12
    call $~lib/string/String#indexOf
    local.tee $11
    i32.const -1
    i32.ne
    if
     block
      local.get $11
      local.get $12
      i32.sub
      local.set $3
      local.get $3
      i32.const 0
      i32.gt_s
      if
       block $~lib/runtime/ALLOCATE|inlined.8 (result i32)
        local.get $3
        i32.const 1
        i32.shl
        local.set $4
        local.get $4
        call $~lib/runtime/doAllocate
       end
       local.set $4
       local.get $4
       local.get $0
       local.get $12
       i32.const 1
       i32.shl
       i32.add
       local.get $3
       i32.const 1
       i32.shl
       call $~lib/memory/memory.copy
       local.get $10
       block $~lib/runtime/REGISTER<String>|inlined.8 (result i32)
        local.get $4
        local.set $6
        local.get $6
        i32.const 1
        call $~lib/runtime/doRegister
       end
       call $~lib/array/Array<String>#push
       drop
      else       
       local.get $10
       i32.const 312
       call $~lib/array/Array<String>#push
       drop
      end
      local.get $13
      i32.const 1
      i32.add
      local.tee $13
      local.get $2
      i32.eq
      if
       local.get $10
       return
      end
      local.get $11
      local.get $8
      i32.add
      local.set $12
     end
     br $continue|1
    end
   end
  end
  local.get $12
  i32.eqz
  if
   block $~lib/runtime/MAKEARRAY<String>|inlined.6 (result i32)
    i32.const 1
    local.set $4
    i32.const 0
    local.set $3
    local.get $4
    local.get $3
    i32.const 2
    i32.const 2
    call $~lib/runtime/doMakeArray
   end
   local.set $3
   local.get $3
   i32.load offset=4
   local.get $0
   i32.store
   local.get $3
   return
  end
  local.get $7
  local.get $12
  i32.sub
  local.set $14
  local.get $14
  i32.const 0
  i32.gt_s
  if
   block $~lib/runtime/ALLOCATE|inlined.9 (result i32)
    local.get $14
    i32.const 1
    i32.shl
    local.set $3
    local.get $3
    call $~lib/runtime/doAllocate
   end
   local.set $3
   local.get $3
   local.get $0
   local.get $12
   i32.const 1
   i32.shl
   i32.add
   local.get $14
   i32.const 1
   i32.shl
   call $~lib/memory/memory.copy
   local.get $10
   block $~lib/runtime/REGISTER<String>|inlined.9 (result i32)
    local.get $3
    local.set $4
    local.get $4
    i32.const 1
    call $~lib/runtime/doRegister
   end
   call $~lib/array/Array<String>#push
   drop
  else   
   local.get $10
   i32.const 312
   call $~lib/array/Array<String>#push
   drop
  end
  local.get $10
 )
 (func $~lib/array/Array<String>#get:length (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<String>#__get (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 0
   i32.const 1392
   i32.const 97
   i32.const 45
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 1392
   i32.const 100
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/util/number/decimalCount32 (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa32_lut (; 43 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  i32.const 2008
  i32.load offset=4
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
 (func $~lib/util/number/itoa32 (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  block $~lib/runtime/ALLOCATE|inlined.10 (result i32)
   local.get $2
   i32.const 1
   i32.shl
   local.set $3
   local.get $3
   call $~lib/runtime/doAllocate
  end
  local.set $4
  block $~lib/util/number/utoa32_core|inlined.0
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
  end
  local.get $1
  if
   local.get $4
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<String>|inlined.10 (result i32)
   local.get $4
   local.set $3
   local.get $3
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/utoa32 (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
  call $~lib/util/number/decimalCount32
  local.set $1
  block $~lib/runtime/ALLOCATE|inlined.11 (result i32)
   local.get $1
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   call $~lib/runtime/doAllocate
  end
  local.set $3
  block $~lib/util/number/utoa32_core|inlined.1
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
  end
  block $~lib/runtime/REGISTER<String>|inlined.11 (result i32)
   local.get $3
   local.set $2
   local.get $2
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/decimalCount64 (; 46 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa64_lut (; 47 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
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
  i32.const 2008
  i32.load offset=4
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
     end
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $1
  i32.wrap_i64
  local.get $2
  call $~lib/util/number/utoa32_lut
 )
 (func $~lib/util/number/utoa64 (; 48 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   call $~lib/util/number/decimalCount32
   local.set $3
   block $~lib/runtime/ALLOCATE|inlined.12 (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.set $4
    local.get $4
    call $~lib/runtime/doAllocate
   end
   local.set $1
   block $~lib/util/number/utoa32_core|inlined.2
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
   end
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.set $3
   block $~lib/runtime/ALLOCATE|inlined.13 (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.set $2
    local.get $2
    call $~lib/runtime/doAllocate
   end
   local.set $1
   block $~lib/util/number/utoa64_core|inlined.0
    local.get $1
    local.set $4
    local.get $0
    local.set $7
    local.get $3
    local.set $2
    local.get $4
    local.get $7
    local.get $2
    call $~lib/util/number/utoa64_lut
   end
  end
  block $~lib/runtime/REGISTER<String>|inlined.12 (result i32)
   local.get $1
   local.set $3
   local.get $3
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/util/number/itoa64 (; 49 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
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
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $4
   block $~lib/runtime/ALLOCATE|inlined.14 (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.set $5
    local.get $5
    call $~lib/runtime/doAllocate
   end
   local.set $2
   block $~lib/util/number/utoa32_core|inlined.3
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
   end
  else   
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.set $4
   block $~lib/runtime/ALLOCATE|inlined.15 (result i32)
    local.get $4
    i32.const 1
    i32.shl
    local.set $3
    local.get $3
    call $~lib/runtime/doAllocate
   end
   local.set $2
   block $~lib/util/number/utoa64_core|inlined.1
    local.get $2
    local.set $5
    local.get $0
    local.set $8
    local.get $4
    local.set $3
    local.get $5
    local.get $8
    local.get $3
    call $~lib/util/number/utoa64_lut
   end
  end
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  block $~lib/runtime/REGISTER<String>|inlined.13 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/builtins/isFinite<f64> (; 50 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.eq
 )
 (func $~lib/builtins/isNaN<f64> (; 51 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/util/number/genDigits (; 52 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  (local $23 i64)
  (local $24 i64)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
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
  i32.const 4056
  i32.load offset=4
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
       global.get $~lib/util/number/_K
       local.get $14
       i32.add
       global.set $~lib/util/number/_K
       block $~lib/util/number/grisuRound|inlined.0
        local.get $0
        local.set $20
        local.get $15
        local.set $18
        local.get $5
        local.set $24
        local.get $19
        local.set $23
        local.get $16
        local.get $14
        i32.const 2
        i32.shl
        i32.add
        i64.load32_u
        local.get $7
        i64.extend_i32_s
        i64.shl
        local.set $22
        local.get $10
        local.set $21
        local.get $20
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
          local.get $23
          local.get $21
          i64.lt_u
          local.tee $27
          if (result i32)
           local.get $24
           local.get $23
           i64.sub
           local.get $22
           i64.ge_u
          else           
           local.get $27
          end
          local.tee $27
          if (result i32)
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.lt_u
           local.tee $27
           if (result i32)
            local.get $27
           else            
            local.get $21
            local.get $23
            i64.sub
            local.get $23
            local.get $22
            i64.add
            local.get $21
            i64.sub
            i64.gt_u
           end
          else           
           local.get $27
          end
          if
           block
            local.get $26
            i32.const 1
            i32.sub
            local.set $26
            local.get $23
            local.get $22
            i64.add
            local.set $23
           end
           br $continue|2
          end
         end
        end
        local.get $25
        local.get $26
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
       block $~lib/util/number/grisuRound|inlined.1
        local.get $0
        local.set $26
        local.get $15
        local.set $17
        local.get $5
        local.set $24
        local.get $13
        local.set $23
        local.get $8
        local.set $22
        local.get $10
        local.set $21
        local.get $26
        local.get $17
        i32.const 1
        i32.sub
        i32.const 1
        i32.shl
        i32.add
        local.set $25
        local.get $25
        i32.load16_u
        local.set $18
        block $break|4
         loop $continue|4
          local.get $23
          local.get $21
          i64.lt_u
          local.tee $20
          if (result i32)
           local.get $24
           local.get $23
           i64.sub
           local.get $22
           i64.ge_u
          else           
           local.get $20
          end
          local.tee $20
          if (result i32)
           local.get $23
           local.get $22
           i64.add
           local.get $21
           i64.lt_u
           local.tee $20
           if (result i32)
            local.get $20
           else            
            local.get $21
            local.get $23
            i64.sub
            local.get $23
            local.get $22
            i64.add
            local.get $21
            i64.sub
            i64.gt_u
           end
          else           
           local.get $20
          end
          if
           block
            local.get $18
            i32.const 1
            i32.sub
            local.set $18
            local.get $23
            local.get $22
            i64.add
            local.set $23
           end
           br $continue|4
          end
         end
        end
        local.get $25
        local.get $18
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
 (func $~lib/util/number/prettify (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
      block $~lib/util/number/genExponent|inlined.0 (result i32)
       local.get $0
       i32.const 4
       i32.add
       local.set $5
       local.get $3
       i32.const 1
       i32.sub
       local.set $4
       local.get $4
       i32.const 0
       i32.lt_s
       local.set $6
       local.get $6
       if
        i32.const 0
        local.get $4
        i32.sub
        local.set $4
       end
       local.get $4
       call $~lib/util/number/decimalCount32
       i32.const 1
       i32.add
       local.set $7
       block $~lib/util/number/utoa32_core|inlined.4
        local.get $5
        local.set $10
        local.get $4
        local.set $9
        local.get $7
        local.set $8
        local.get $10
        local.get $9
        local.get $8
        call $~lib/util/number/utoa32_lut
       end
       local.get $5
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
      block $~lib/util/number/genExponent|inlined.1 (result i32)
       local.get $0
       local.get $7
       i32.add
       i32.const 4
       i32.add
       local.set $4
       local.get $3
       i32.const 1
       i32.sub
       local.set $6
       local.get $6
       i32.const 0
       i32.lt_s
       local.set $5
       local.get $5
       if
        i32.const 0
        local.get $6
        i32.sub
        local.set $6
       end
       local.get $6
       call $~lib/util/number/decimalCount32
       i32.const 1
       i32.add
       local.set $8
       block $~lib/util/number/utoa32_core|inlined.5
        local.get $4
        local.set $11
        local.get $6
        local.set $10
        local.get $8
        local.set $9
        local.get $11
        local.get $10
        local.get $9
        call $~lib/util/number/utoa32_lut
       end
       local.get $4
       i32.const 45
       i32.const 43
       local.get $5
       select
       i32.store16
       local.get $8
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
 (func $~lib/util/number/dtoa_core (; 54 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
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
  block $~lib/util/number/grisu2|inlined.0 (result i32)
   local.get $1
   local.set $3
   local.get $0
   local.set $5
   local.get $2
   local.set $4
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
   block $~lib/util/number/normalizedBoundaries|inlined.0
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
    global.set $~lib/util/number/_frc_plus
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
    global.set $~lib/util/number/_frc_minus
    local.get $13
    global.set $~lib/util/number/_exp
   end
   block $~lib/util/number/getCachedPower|inlined.0
    global.get $~lib/util/number/_exp
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
    global.set $~lib/util/number/_K
    i32.const 3776
    i32.load offset=4
    local.get $13
    i32.const 3
    i32.shl
    i32.add
    i64.load
    global.set $~lib/util/number/_frc_pow
    i32.const 3984
    i32.load offset=4
    local.get $13
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    global.set $~lib/util/number/_exp_pow
   end
   local.get $9
   i64.clz
   i32.wrap_i64
   local.set $13
   local.get $9
   local.get $13
   i64.extend_i32_s
   i64.shl
   local.set $9
   local.get $7
   local.get $13
   i32.sub
   local.set $7
   global.get $~lib/util/number/_frc_pow
   local.set $12
   global.get $~lib/util/number/_exp_pow
   local.set $14
   block $~lib/util/number/umul64f|inlined.0 (result i64)
    local.get $9
    local.set $17
    local.get $12
    local.set $10
    local.get $17
    i64.const 4294967295
    i64.and
    local.set $18
    local.get $10
    i64.const 4294967295
    i64.and
    local.set $19
    local.get $17
    i64.const 32
    i64.shr_u
    local.set $20
    local.get $10
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
   end
   local.set $24
   block $~lib/util/number/umul64e|inlined.0 (result i32)
    local.get $7
    local.set $11
    local.get $14
    local.set $15
    local.get $11
    local.get $15
    i32.add
    i32.const 64
    i32.add
   end
   local.set $15
   block $~lib/util/number/umul64f|inlined.1 (result i64)
    global.get $~lib/util/number/_frc_plus
    local.set $22
    local.get $12
    local.set $23
    local.get $22
    i64.const 4294967295
    i64.and
    local.set $21
    local.get $23
    i64.const 4294967295
    i64.and
    local.set $20
    local.get $22
    i64.const 32
    i64.shr_u
    local.set $19
    local.get $23
    i64.const 32
    i64.shr_u
    local.set $18
    local.get $21
    local.get $20
    i64.mul
    local.set $10
    local.get $19
    local.get $20
    i64.mul
    local.get $10
    i64.const 32
    i64.shr_u
    i64.add
    local.set $17
    local.get $21
    local.get $18
    i64.mul
    local.get $17
    i64.const 4294967295
    i64.and
    i64.add
    local.set $25
    local.get $25
    i64.const 2147483647
    i64.add
    local.set $25
    local.get $17
    i64.const 32
    i64.shr_u
    local.set $17
    local.get $25
    i64.const 32
    i64.shr_u
    local.set $25
    local.get $19
    local.get $18
    i64.mul
    local.get $17
    i64.add
    local.get $25
    i64.add
   end
   i64.const 1
   i64.sub
   local.set $25
   block $~lib/util/number/umul64e|inlined.1 (result i32)
    global.get $~lib/util/number/_exp
    local.set $26
    local.get $14
    local.set $11
    local.get $26
    local.get $11
    i32.add
    i32.const 64
    i32.add
   end
   local.set $11
   block $~lib/util/number/umul64f|inlined.2 (result i64)
    global.get $~lib/util/number/_frc_minus
    local.set $10
    local.get $12
    local.set $17
    local.get $10
    i64.const 4294967295
    i64.and
    local.set $18
    local.get $17
    i64.const 4294967295
    i64.and
    local.set $19
    local.get $10
    i64.const 32
    i64.shr_u
    local.set $20
    local.get $17
    i64.const 32
    i64.shr_u
    local.set $21
    local.get $18
    local.get $19
    i64.mul
    local.set $23
    local.get $20
    local.get $19
    i64.mul
    local.get $23
    i64.const 32
    i64.shr_u
    i64.add
    local.set $22
    local.get $18
    local.get $21
    i64.mul
    local.get $22
    i64.const 4294967295
    i64.and
    i64.add
    local.set $27
    local.get $27
    i64.const 2147483647
    i64.add
    local.set $27
    local.get $22
    i64.const 32
    i64.shr_u
    local.set $22
    local.get $27
    i64.const 32
    i64.shr_u
    local.set $27
    local.get $20
    local.get $21
    i64.mul
    local.get $22
    i64.add
    local.get $27
    i64.add
   end
   i64.const 1
   i64.add
   local.set $27
   local.get $25
   local.get $27
   i64.sub
   local.set $22
   local.get $5
   local.get $24
   local.get $15
   local.get $25
   local.get $11
   local.get $22
   local.get $4
   call $~lib/util/number/genDigits
  end
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
 (func $~lib/string/String#substring (; 55 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 168
   i32.const 187
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
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
   i32.const 312
   return
  end
  local.get $8
  i32.eqz
  local.tee $4
  if (result i32)
   local.get $9
   local.get $0
   call $~lib/string/String#get:length
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
  block $~lib/runtime/ALLOCATE|inlined.17 (result i32)
   local.get $3
   local.set $4
   local.get $4
   call $~lib/runtime/doAllocate
  end
  local.set $10
  local.get $10
  local.get $0
  local.get $8
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  block $~lib/runtime/REGISTER<String>|inlined.14 (result i32)
   local.get $10
   local.set $4
   local.get $4
   i32.const 1
   call $~lib/runtime/doRegister
  end
 )
 (func $~lib/runtime/doDiscard (; 56 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  call $~lib/runtime/assertUnregistered
  local.get $0
  global.get $~lib/runtime/HEADER_SIZE
  i32.sub
  call $~lib/memory/memory.free
 )
 (func $~lib/util/number/dtoa (; 57 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 2984
   return
  end
  local.get $0
  call $~lib/builtins/isFinite<f64>
  i32.eqz
  if
   local.get $0
   call $~lib/builtins/isNaN<f64>
   if
    i32.const 3000
    return
   end
   i32.const 3016
   i32.const 3048
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  block $~lib/runtime/ALLOCATE|inlined.16 (result i32)
   i32.const 28
   i32.const 1
   i32.shl
   local.set $1
   local.get $1
   call $~lib/runtime/doAllocate
  end
  local.set $2
  local.get $2
  local.get $0
  call $~lib/util/number/dtoa_core
  local.set $3
  local.get $2
  i32.const 0
  local.get $3
  call $~lib/string/String#substring
  local.set $4
  block $~lib/runtime/DISCARD|inlined.0
   local.get $2
   local.set $1
   local.get $1
   call $~lib/runtime/doDiscard
  end
  local.get $4
 )
 (func $start:std/string (; 58 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
  call $~lib/string/String#get:length
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
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $~lib/string/String.fromCharCode
  i32.const 136
  call $~lib/string/String.__eq
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
  i32.const 152
  call $~lib/string/String.__eq
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
  i32.const 152
  call $~lib/string/String.__eq
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
  i32.const 136
  call $~lib/string/String.__eq
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
  i32.const 152
  call $~lib/string/String.__eq
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
  global.get $std/string/str
  i32.const 256
  global.get $~lib/string/String.MAX_LENGTH
  call $~lib/string/String#endsWith
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
   local.set $2
   i32.const 280
   local.set $1
   i32.const 0
   local.set $0
   local.get $2
   local.get $1
   local.get $0
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  i32.const 312
  i32.const 312
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#lastIndexOf
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
  i32.const 312
  i32.const 224
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#lastIndexOf
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
  global.get $std/string/str
  i32.const 312
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#lastIndexOf
  global.get $std/string/str
  call $~lib/string/String#get:length
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
  global.get $std/string/str
  i32.const 528
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#lastIndexOf
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
  global.get $std/string/str
  i32.const 544
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#lastIndexOf
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
  global.get $std/string/str
  i32.const 576
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#lastIndexOf
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
  call $~lib/string/String.__concat
  global.set $std/string/c
  global.get $std/string/c
  i32.const 840
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__ne
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
  call $~lib/string/String.__gt
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
  call $~lib/string/String.__gt
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
  call $~lib/string/String.__gte
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
  call $~lib/string/String.__gt
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
  call $~lib/string/String.__lt
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
  call $~lib/string/String.__lt
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
  call $~lib/string/String.__lt
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
  call $~lib/string/String.__gt
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
  call $~lib/string/String.__lt
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
  call $~lib/string/String.__gte
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
  call $~lib/string/String.__lte
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
  call $~lib/string/String.__lt
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
  call $~lib/string/String.__gt
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
  call $~lib/string/String.__lt
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
  call $~lib/string/String.__gt
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
  call $~lib/string/String.__gte
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
  call $~lib/string/String.__lte
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
  call $~lib/string/String.__concat
  global.set $std/string/b
  global.get $std/string/a
  global.get $std/string/b
  call $~lib/string/String.__gt
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
  call $~lib/string/String#get:length
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  global.get $std/string/str
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  i32.const 1224
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 147
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -1
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 148
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/string/str
  i32.const -5
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  i32.const 1280
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
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
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 56
   i32.const 153
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 312
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 312
  i32.const 312
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
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
  i32.const 312
  i32.const 528
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1432
  i32.const 1456
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 1432
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1432
  i32.const 528
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1488
  i32.const 1512
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1528
  i32.const 528
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 4
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 3
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1552
  i32.const 528
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 4
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 3
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1576
  i32.const 528
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 4
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 3
   call $~lib/array/Array<String>#__get
   i32.const 312
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 352
  i32.const 312
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
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
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1432
  i32.const 528
  i32.const 1
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 1
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  i32.const 1432
  i32.const 528
  i32.const -1
  call $~lib/string/String#split
  global.set $std/string/sa
  global.get $std/string/sa
  call $~lib/array/Array<String>#get:length
  i32.const 3
  i32.eq
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 0
   call $~lib/array/Array<String>#__get
   i32.const 336
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 1
   call $~lib/array/Array<String>#__get
   i32.const 824
   call $~lib/string/String.__eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/string/sa
   i32.const 2
   call $~lib/array/Array<String>#__get
   i32.const 1472
   call $~lib/string/String.__eq
  else   
   local.get $0
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
  call $~lib/util/number/itoa32
  i32.const 608
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 624
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2032
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 392
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2048
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2072
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2088
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2112
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2136
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2160
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2184
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2216
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2248
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa32
  i32.const 2280
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa32
  i32.const 608
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa32
  i32.const 2296
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa32
  i32.const 2216
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa32
  i32.const 2312
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa32
  i32.const 2344
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 608
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2072
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2376
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2400
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2344
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2432
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2464
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2496
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2536
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2576
  call $~lib/string/String.__eq
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
  call $~lib/util/number/utoa64
  i32.const 2624
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 608
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2672
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2344
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2696
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2432
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2728
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2760
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2800
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2840
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2888
  call $~lib/string/String.__eq
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
  call $~lib/util/number/itoa64
  i32.const 2936
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 2984
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 2984
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 3000
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 3048
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 3016
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4080
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4136
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4192
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4248
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4304
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4360
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4416
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4456
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4504
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4560
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4616
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4640
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 768
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4656
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4672
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4688
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4720
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4744
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4776
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4808
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4840
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4856
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4880
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 3048
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 3016
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4904
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4928
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4952
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4976
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 2984
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5000
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5032
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5088
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5136
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 4640
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5184
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5208
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5256
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5312
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5344
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5368
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5400
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5424
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5448
  call $~lib/string/String.__eq
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
  call $~lib/util/number/dtoa
  i32.const 5472
  call $~lib/string/String.__eq
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
 (func $std/string/getString (; 59 ;) (type $FUNCSIG$i) (result i32)
  global.get $std/string/str
 )
 (func $start (; 60 ;) (type $FUNCSIG$v)
  call $start:std/string
 )
 (func $null (; 61 ;) (type $FUNCSIG$v)
 )
)
