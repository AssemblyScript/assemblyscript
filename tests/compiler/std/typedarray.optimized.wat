(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$viid (func (param i32 i32 f64)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$jjjii (func (param i64 i64 i32 i32) (result i64)))
 (type $FUNCSIG$viif (func (param i32 i32 f32)))
 (type $FUNCSIG$fffii (func (param f32 f32 i32 i32) (result f32)))
 (type $FUNCSIG$dddii (func (param f64 f64 i32 i32) (result f64)))
 (type $FUNCSIG$jjii (func (param i64 i32 i32) (result i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$ffii (func (param f32 i32 i32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$ddii (func (param f64 i32 i32) (result f64)))
 (type $FUNCSIG$ijii (func (param i64 i32 i32) (result i32)))
 (type $FUNCSIG$ifii (func (param f32 i32 i32) (result i32)))
 (type $FUNCSIG$idii (func (param f64 i32 i32) (result i32)))
 (type $FUNCSIG$vjii (func (param i64 i32 i32)))
 (type $FUNCSIG$vfii (func (param f32 i32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$iifi (func (param i32 f32 i32) (result i32)))
 (type $FUNCSIG$iidi (func (param i32 f64 i32) (result i32)))
 (type $FUNCSIG$ij (func (param i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iiij (func (param i32 i32 i64) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iid (func (param i32 f64) (result i32)))
 (type $FUNCSIG$iijijiji (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $FUNCSIG$iiid (func (param i32 i32 f64) (result i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 160) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 216) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 264) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 320) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 360) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 416) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 472) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 496) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 544) "\05\00\00\00\01\00\00\00\00\00\00\00\05")
 (data (i32.const 568) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01")
 (data (i32.const 592) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 616) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 640) "\03\00\00\00\01\00\00\00\00\00\00\00\03")
 (data (i32.const 664) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00\02")
 (data (i32.const 688) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 728) "\14\00\00\00\01\00\00\00\00\00\00\00\14")
 (data (i32.const 768) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01")
 (data (i32.const 808) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 848) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 888) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c")
 (data (i32.const 920) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01")
 (data (i32.const 952) "\02")
 (data (i32.const 960) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1000) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 1040) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1080) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1120) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1160) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1200) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1240) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1280) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1320) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1360) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1400) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1440) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\n\00\00\00\0c\00\00\00\0e")
 (data (i32.const 1472) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\b0\05\00\00\b0\05\00\00\0c\00\00\00\03")
 (data (i32.const 1504) "$\00\00\00\01\00\00\00\00\00\00\00$\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 1560) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\f0\05\00\00\f0\05\00\00$\00\00\00\t")
 (data (i32.const 1592) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n")
 (data (i32.const 1656) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00H\06\00\00H\06\00\00,\00\00\00\0b")
 (data (i32.const 1692) "\01\00\00\00\01")
 (data (i32.const 1704) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1728) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 1752) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\002\00,\003\00,\004\00,\005")
 (data (i32.const 1792) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 1816) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 1840) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 1880) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 1912) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 2624) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00\88\07\00\00\88\07\00\00\b8\02\00\00W")
 (data (i32.const 2656) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 2848) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00p\n\00\00p\n\00\00\ae\00\00\00W")
 (data (i32.const 2880) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 2936) "\10\00\00\00\01\00\00\00\12\00\00\00\10\00\00\00P\0b\00\00P\0b\00\00(\00\00\00\n")
 (data (i32.const 2968) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\001\00.\000\00,\002\00.\000\00,\003\00.\000\00,\004\00.\000\00,\005\00.\000")
 (data (i32.const 3024) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n")
 (data (i32.const 3088) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\e0\0b\00\00\e0\0b\00\00,\00\00\00\0b")
 (data (i32.const 3120) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 3152) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00@\0c\00\00@\0c\00\00\0c\00\00\00\03")
 (data (i32.const 3184) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80@\00\00\a0@\00\00\c0@")
 (data (i32.const 3216) "\10\00\00\00\01\00\00\00\13\00\00\00\10\00\00\00\80\0c\00\00\80\0c\00\00\0c\00\00\00\03")
 (data (i32.const 3248) "\18\00\00\00\01\00\00\00\00\00\00\00\18")
 (data (i32.const 3270) "\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff")
 (data (i32.const 3288) "\10\00\00\00\01\00\00\00\14\00\00\00\10\00\00\00\c0\0c\00\00\c0\0c\00\00\18\00\00\00\03")
 (data (i32.const 3320) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 3352) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00I\00n\00t\008\00A\00r\00r\00a\00y")
 (data (i32.const 3392) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 3424) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 3456) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 3488) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 3520) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y")
 (data (i32.const 3560) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 3592) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 3624) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 3656) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 3688) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00U\00i\00n\00t\008\00C\00l\00a\00m\00p\00e\00d\00A\00r\00r\00a\00y")
 (data (i32.const 3744) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 3776) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 3808) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 3840) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03")
 (data (i32.const 3880) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\001\006\00A\00r\00r\00a\00y")
 (data (i32.const 3920) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06")
 (data (i32.const 3960) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\t")
 (data (i32.const 4000) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\00\00\00\00\00\00\06\00\07\00\08\00\t")
 (data (i32.const 4040) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03")
 (data (i32.const 4080) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\001\006\00A\00r\00r\00a\00y")
 (data (i32.const 4120) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06")
 (data (i32.const 4160) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\t")
 (data (i32.const 4200) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\00\00\00\00\00\00\06\00\07\00\08\00\t")
 (data (i32.const 4240) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4296) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 4336) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 4392) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 4448) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02")
 (data (i32.const 4484) "\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 4504) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4560) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 4600) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 4656) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 4712) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02")
 (data (i32.const 4748) "\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 4768) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03")
 (data (i32.const 4864) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 4904) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06")
 (data (i32.const 5000) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 5096) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02")
 (data (i32.const 5152) "\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 5192) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03")
 (data (i32.const 5288) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 5328) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06")
 (data (i32.const 5424) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 5520) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02")
 (data (i32.const 5576) "\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 5616) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 5672) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00F\00l\00o\00a\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 5712) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\a0@\00\00\c0@")
 (data (i32.const 5768) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\a0@\00\00\c0@\00\00\e0@\00\00\00A\00\00\10A")
 (data (i32.const 5824) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 5846) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 5920) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00F\00l\00o\00a\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 5960) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 5982) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\10@\00\00\00\00\00\00\14@\00\00\00\00\00\00\18@")
 (data (i32.const 6056) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 6078) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\10@\00\00\00\00\00\00\14@\00\00\00\00\00\00\18@\00\00\00\00\00\00\1c@\00\00\00\00\00\00 @\00\00\00\00\00\00\"@")
 (data (i32.const 6152) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\00\ff\00\00\00d\n\ff\ff")
 (data (i32.const 6184) "\18\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\003\04\00\00\02\00\00\00\93\04\00\00\02\00\00\00\13\01\00\00\02\00\00\00S\04\00\00\02\00\00\00\93\00\00\00\02\00\00\00\93\0c\00\00\02\00\00\00\13\0d\00\00\02\00\00\003\00\00\00\02\00\00\00S\00\00\00\02\00\00\00\13\05\00\00\02")
 (table $0 123 funcref)
 (elem (i32.const 0) $null $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/tlsf/removeBlock (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
   i32.const 0
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
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    i32.const 3
    i32.and
    local.get $2
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $3
    i32.store
    local.get $2
   else
    local.get $1
   end
   local.set $1
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 8 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 128
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $3
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
    i32.const 128
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
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
 (func $~lib/rt/tlsf/initializeRoot (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  memory.size
  local.tee $0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
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
  i32.const 6384
  i32.const 0
  i32.store
  i32.const 7952
  i32.const 0
  i32.store
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 23
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    i32.const 6384
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $loop|1
     block $break|1
      local.get $1
      i32.const 16
      i32.ge_u
      br_if $break|1
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 6384
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  i32.const 6384
  i32.const 7968
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 6384
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 176
   i32.const 128
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
   i32.const 0
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
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
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 128
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/pure/markGray (; 12 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const -1879048193
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
 (func $~lib/rt/tlsf/freeBlock (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 128
   i32.const 563
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
 (func $~lib/rt/pure/scanBlack (; 14 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -1879048193
  i32.and
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 15 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
    i32.const -1879048193
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
 (func $~lib/rt/pure/collectWhite (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
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
   i32.const -1879048193
   i32.and
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
 (func $~lib/rt/pure/__collect (; 17 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.tee $5
  local.tee $2
  local.set $3
  global.get $~lib/rt/pure/CUR
  local.set $0
  loop $loop|0
   block $break|0
    local.get $3
    local.get $0
    i32.ge_u
    br_if $break|0
    local.get $3
    i32.load
    local.tee $4
    i32.load offset=4
    local.tee $1
    i32.const 1879048192
    i32.and
    i32.const 805306368
    i32.eq
    if (result i32)
     local.get $1
     i32.const 268435455
     i32.and
     i32.const 0
     i32.gt_u
    else
     i32.const 0
    end
    if
     local.get $4
     call $~lib/rt/pure/markGray
     local.get $2
     local.get $4
     i32.store
     local.get $2
     i32.const 4
     i32.add
     local.set $2
    else
     i32.const 0
     local.get $1
     i32.const 268435455
     i32.and
     i32.eqz
     local.get $1
     i32.const 1879048192
     i32.and
     select
     if
      global.get $~lib/rt/tlsf/ROOT
      local.get $4
      call $~lib/rt/tlsf/freeBlock
     else
      local.get $4
      local.get $1
      i32.const 2147483647
      i32.and
      i32.store offset=4
     end
    end
    local.get $3
    i32.const 4
    i32.add
    local.set $3
    br $loop|0
   end
  end
  local.get $2
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|1
    local.get $0
    i32.load
    call $~lib/rt/pure/scan
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|1
   end
  end
  local.get $5
  local.set $0
  loop $loop|2
   block $break|2
    local.get $0
    local.get $2
    i32.ge_u
    br_if $break|2
    local.get $0
    i32.load
    local.tee $1
    local.get $1
    i32.load offset=4
    i32.const 2147483647
    i32.and
    i32.store offset=4
    local.get $1
    call $~lib/rt/pure/collectWhite
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    br $loop|2
   end
  end
  local.get $5
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/tlsf/growMemory (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
  i32.const 16
  local.get $0
  i32.load offset=1568
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  i32.ne
  i32.shl
  i32.const 1
  i32.const 27
  local.get $1
  i32.clz
  i32.sub
  i32.shl
  i32.const 1
  i32.sub
  local.get $1
  i32.add
  local.get $1
  local.get $1
  i32.const 536870904
  i32.lt_u
  select
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $1
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 19 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 128
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   i32.const 16
   i32.add
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
 )
 (func $~lib/rt/tlsf/allocateBlock (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 128
   i32.const 486
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   call $~lib/rt/pure/__collect
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 128
     i32.const 498
     i32.const 19
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 128
   i32.const 506
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
  call $~lib/rt/rtrace/onalloc
  local.get $2
 )
 (func $~lib/rt/tlsf/__alloc (; 21 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $2
  if (result i32)
   local.get $2
  else
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
  end
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.tee $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 22 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   local.tee $3
   i32.const 2
   i32.sub
   local.get $1
   i32.store8
   local.get $3
   i32.const 3
   i32.sub
   local.get $1
   i32.store8
   local.get $2
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.sub
   local.get $0
   local.get $2
   i32.add
   local.tee $2
   local.get $1
   i32.const 255
   i32.and
   i32.const 16843009
   i32.mul
   local.tee $0
   i32.store
   i32.const -4
   i32.and
   local.tee $3
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $0
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 4
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.add
   local.get $0
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 12
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   local.get $0
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 12
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 16
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 20
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 24
   i32.add
   local.get $0
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 28
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   local.get $0
   i32.store
   local.get $2
   local.get $2
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $1
   local.get $3
   local.get $2
   i32.sub
   local.set $2
   local.get $0
   i64.extend_i32_u
   local.get $0
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $4
   loop $continue|0
    local.get $2
    i32.const 32
    i32.lt_u
    i32.eqz
    if
     local.get $1
     local.get $4
     i64.store
     local.get $1
     i32.const 8
     i32.add
     local.get $4
     i64.store
     local.get $1
     i32.const 16
     i32.add
     local.get $4
     i64.store
     local.get $1
     i32.const 24
     i32.add
     local.get $4
     i64.store
     local.get $2
     i32.const 32
     i32.sub
     local.set $2
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
 )
 (func $~lib/rt/pure/increment (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 232
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
  if
   i32.const 0
   i32.const 232
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 24 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 6380
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/__typeinfo (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 6184
  i32.load
  i32.gt_u
  if
   i32.const 280
   i32.const 336
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 6188
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.copy (; 26 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 27 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 593
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 594
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
 (func $~lib/rt/pure/growRoots (; 28 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/pure/CUR
  global.get $~lib/rt/pure/ROOTS
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 256
  local.get $0
  i32.const 256
  i32.gt_u
  select
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $1
   call $~lib/rt/tlsf/__free
  end
  local.get $0
  global.set $~lib/rt/pure/ROOTS
  local.get $0
  local.get $2
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.get $3
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 29 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.tee $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
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
 (func $~lib/rt/pure/decrement (; 30 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 232
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    local.get $0
    i32.const -2147483648
    i32.store offset=4
   else
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   end
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 232
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $2
    i32.const -268435456
    i32.and
    i32.or
    i32.store offset=4
   else
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    i32.const -1342177280
    i32.or
    i32.store offset=4
    local.get $2
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   end
  end
 )
 (func $~lib/rt/pure/__release (; 31 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 6380
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 32 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 23
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
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
  local.get $2
  local.set $1
  local.get $0
  i32.load
  local.tee $4
  local.get $2
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   local.set $1
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $3
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 33 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 35 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 36 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int16Array#constructor (; 37 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int16Array#get:length (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 39 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int32Array#constructor (; 40 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int32Array#get:length (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 42 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int64Array#constructor (; 43 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int64Array#get:length (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 45 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float32Array#constructor (; 46 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float64Array#constructor (; 47 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $std/typedarray/testInstantiate (; 48 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 39
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  local.get $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/typedarray/Int16Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 52
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.load offset=8
  local.get $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/typedarray/Int16Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 58
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 62
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 72
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 74
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.tee $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 77
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 78
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 79
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.tee $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 82
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 83
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 84
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
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
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#__set (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 675
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/typedarray/Int32Array#__get (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 664
   i32.const 63
   call $~lib/builtins/abort
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
 (func $~lib/typedarray/Int32Array#subarray (; 51 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $4
  call $~lib/typedarray/Int32Array#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $4
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.load offset=4
  local.get $0
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Float64Array#__set (; 52 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1315
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/typedarray/Float64Array#subarray (; 53 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $4
  call $~lib/typedarray/Int64Array#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $4
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.load offset=4
  local.get $0
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/sort/insertionSort<f64> (; 54 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   loop $loop|0
    local.get $3
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $4
    loop $continue|1
     block $break|1
      local.get $4
      i32.const 0
      i32.lt_s
      br_if $break|1
      local.get $4
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $5
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.ge_s
      br_if $break|1
      local.get $4
      local.tee $7
      i32.const 1
      i32.sub
      local.set $4
      local.get $7
      i32.const 1
      i32.add
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      local.get $6
      f64.store
      br $continue|1
     end
    end
    local.get $4
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $5
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
 (func $~lib/util/sort/weakHeapSort<f64> (; 55 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $6
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $loop|0
   block $break|0
    local.get $4
    i32.const 0
    i32.le_s
    br_if $break|0
    local.get $4
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $3
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.get $3
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.ne
     i32.eqz
     if
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|1
     end
    end
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $5
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $7
    i32.const 2
    global.set $~lib/argc
    local.get $5
    local.get $7
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     local.tee $8
     local.get $8
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $5
     f64.store
     local.get $3
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $7
     f64.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $loop|2
   block $break|2
    local.get $4
    i32.const 2
    i32.lt_s
    br_if $break|2
    local.get $0
    f64.load
    local.set $5
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    f64.load
    f64.store
    local.get $1
    local.get $5
    f64.store
    i32.const 1
    local.set $1
    loop $continue|3
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.get $1
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $3
     local.get $4
     i32.ge_s
     i32.eqz
     if
      local.get $3
      local.set $1
      br $continue|3
     end
    end
    loop $continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f64.load
      local.set $5
      local.get $1
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
      local.set $7
      i32.const 2
      global.set $~lib/argc
      local.get $5
      local.get $7
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $6
       i32.add
       local.tee $3
       local.get $3
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $1
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $5
       f64.store
       local.get $0
       local.get $7
       f64.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|2
   end
  end
  local.get $6
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $5
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $5
  f64.store
 )
 (func $~lib/typedarray/Float64Array#sort (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  block $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $3
   i32.const 1
   i32.le_s
   if
    local.get $0
    call $~lib/rt/pure/__release
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $3
   i32.const 2
   i32.eq
   if
    local.get $2
    f64.load offset=8
    local.set $4
    local.get $2
    f64.load
    local.set $5
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $2
     local.get $5
     f64.store offset=8
     local.get $2
     local.get $4
     f64.store
    end
    local.get $0
    call $~lib/rt/pure/__release
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $3
   i32.const 256
   i32.lt_s
   if
    local.get $2
    local.get $3
    local.get $1
    call $~lib/util/sort/insertionSort<f64>
   else
    local.get $2
    local.get $3
    local.get $1
    call $~lib/util/sort/weakHeapSort<f64>
   end
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 57 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  local.get $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.tee $2
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  local.get $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.tee $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/typedarray/Float64Array#__get (; 58 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1304
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 59 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 291
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.const 255
  local.get $2
  i32.sub
  i32.const 31
  i32.shr_s
  local.get $2
  i32.or
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const -1
  i32.xor
  i32.and
  i32.store8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__get (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 280
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Int8Array#__set (; 61 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 35
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
 (func $~lib/typedarray/Int8Array#fill (; 62 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.set $6
  local.get $5
  i32.load offset=8
  local.set $4
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $4
   local.get $2
   local.get $4
   i32.lt_s
   select
  end
  local.tee $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $3
   local.get $4
   local.get $3
   local.get $4
   i32.lt_s
   select
  end
  local.tee $0
  i32.lt_s
  if
   local.get $2
   local.get $6
   i32.add
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $5
 )
 (func $~lib/rt/__allocArray (; 63 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $4
   local.get $3
   local.get $1
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#__get (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 24
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 65 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 66 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 512
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
 )
 (func $std/typedarray/isInt8ArrayEqual (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=8
  local.set $3
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i8>#__get
    i32.ne
    if
     i32.const 0
     return
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int8Array#subarray (; 68 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $4
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $4
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.load offset=4
  local.get $0
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int32Array#fill (; 69 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.set $6
  local.get $4
  call $~lib/typedarray/Int32Array#get:length
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $1
   local.get $2
   local.get $1
   i32.lt_s
   select
  end
  local.set $0
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $3
   local.get $1
   local.get $3
   local.get $1
   i32.lt_s
   select
  end
  local.set $1
  loop $loop|0
   local.get $0
   local.get $1
   i32.ge_s
   i32.eqz
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $6
    i32.add
    local.get $5
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 71 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 280
   i32.const 512
   i32.const 93
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $std/typedarray/isInt32ArrayEqual (; 72 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $3
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     return
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int32Array#slice (; 73 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $4
  call $~lib/typedarray/Int32Array#constructor
  local.tee $3
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#copyWithin (; 74 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $3
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  call $~lib/typedarray/Int32Array#get:length
  local.tee $4
  local.get $3
  local.get $4
  i32.lt_s
  select
  local.set $3
  local.get $5
  i32.load offset=4
  local.tee $6
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $4
   local.get $1
   local.get $4
   i32.lt_s
   select
  end
  local.tee $0
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $4
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $4
   local.get $2
   local.get $4
   i32.lt_s
   select
  end
  local.tee $1
  i32.const 2
  i32.shl
  local.get $6
  i32.add
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $3
   local.get $4
   local.get $3
   local.get $4
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $1
  local.get $4
  local.get $0
  i32.sub
  local.tee $0
  local.get $1
  local.get $0
  i32.lt_s
  select
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $5
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 75 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 76 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  loop $loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    local.get $3
    i32.add
    i32.load8_s
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 77 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#reduce<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__set (; 78 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 163
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
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 79 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  loop $loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 80 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#reduce<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 81 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 4
  call $~lib/typedarray/Uint8Array#reduce<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__set (; 82 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 419
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 83 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  loop $loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_s
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 84 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#reduce<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#__set (; 85 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 547
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 86 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  loop $loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_u
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 87 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 88 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $5
  loop $loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 89 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 7
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#__set (; 90 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 803
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 91 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 8
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__set (; 92 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 931
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 93 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 94 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $5
  loop $loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    i64.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 95 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#__set (; 96 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1059
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 97 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 10
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__set (; 98 ;) (type $FUNCSIG$viif) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1187
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 99 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 100 ;) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  loop $loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    f32.load
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 101 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#reduce<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 102 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 103 ;) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  loop $loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    f64.load
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 104 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#reduce<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 105 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    local.get $3
    i32.add
    i32.load8_s
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 106 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 107 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $2
  loop $loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 108 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 14
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 109 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 15
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 110 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_s
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 111 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 112 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_u
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 113 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 114 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $2
  loop $loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 115 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 18
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 116 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 19
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 117 ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $2
  loop $loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    i64.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 118 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 20
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 119 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 21
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 120 ;) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    f32.load
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 121 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 122 ;) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    f64.load
    local.get $1
    local.get $0
    call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 123 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 124 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 125 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $4
    i32.add
    local.get $1
    local.get $5
    i32.add
    i32.load8_s
    local.get $1
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 126 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#map (; 127 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $4
    i32.add
    local.get $1
    local.get $5
    i32.add
    i32.load8_u
    local.get $1
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint8Array#__get (; 128 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 152
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 129 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  call $~lib/typedarray/Uint8Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 130 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $4
    i32.add
    local.get $1
    local.get $5
    i32.add
    i32.load8_u
    local.get $1
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $2
  local.get $4
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $4
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 131 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#map (; 132 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 1
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 1
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    i32.load16_s
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    i32.store16
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int16Array#__get (; 133 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 408
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 134 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#map (; 135 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 1
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 1
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    i32.load16_u
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    i32.store16
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint16Array#__get (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 536
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 137 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#map (; 138 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 2
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    i32.load
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 139 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  call $~lib/typedarray/Int32Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#map (; 140 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 2
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    i32.load
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint32Array#__get (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 792
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 142 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  call $~lib/typedarray/Uint32Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 143 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 144 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 3
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    i64.load
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int64Array#__get (; 145 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 920
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 146 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  call $~lib/typedarray/Int64Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#map (; 147 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 3
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    i64.load
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint64Array#__get (; 148 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1048
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 149 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  call $~lib/typedarray/Uint64Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 150 ;) (type $FUNCSIG$ffii) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 151 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 2
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    f32.load
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    f32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Float32Array#__get (; 152 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1176
   i32.const 63
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 153 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 4
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 9
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 154 ;) (type $FUNCSIG$ddii) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 155 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 3
  i32.shl
  local.tee $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
    local.get $5
    i32.add
    f64.load
    local.get $2
    local.get $0
    call $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0
    local.set $8
    local.get $3
    local.get $7
    i32.add
    local.get $8
    f64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $6
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 156 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 365
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 366
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 9
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 367
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 157 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.gt_s
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 158 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 521
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
  local.get $3
 )
 (func $~lib/rt/tlsf/__realloc (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 585
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 586
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
  i32.const 16
  i32.add
 )
 (func $~lib/typedarray/Int8Array#filter (; 160 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $7
    i32.add
    i32.load8_s
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $5
     local.get $8
     i32.add
     local.get $6
     i32.store8
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  call $~lib/rt/tlsf/__realloc
  local.tee $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8> (; 161 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 162 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint8Array#filter (; 163 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $7
    i32.add
    i32.load8_u
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $5
     local.get $8
     i32.add
     local.get $6
     i32.store8
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  call $~lib/rt/tlsf/__realloc
  local.tee $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8> (; 164 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  call $~lib/typedarray/Uint8Array#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#filter (; 165 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $7
    i32.add
    i32.load8_u
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $5
     local.get $8
     i32.add
     local.get $6
     i32.store8
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  call $~lib/rt/tlsf/__realloc
  local.tee $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8> (; 166 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#filter
  local.tee $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 167 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.gt_s
 )
 (func $~lib/typedarray/Int16Array#filter (; 168 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $7
    i32.add
    i32.load16_s
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 1
     i32.shl
     local.get $5
     i32.add
     local.get $6
     i32.store16
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 1
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16> (; 169 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 170 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint16Array#filter (; 171 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $7
    i32.add
    i32.load16_u
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 1
     i32.shl
     local.get $5
     i32.add
     local.get $6
     i32.store16
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 1
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16> (; 172 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 173 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.gt_s
 )
 (func $~lib/typedarray/Int32Array#filter (; 174 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $7
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.get $6
     i32.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32> (; 175 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  call $~lib/typedarray/Int32Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 176 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint32Array#filter (; 177 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $7
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.get $6
     i32.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32> (; 178 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  call $~lib/typedarray/Uint32Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 179 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.gt_s
 )
 (func $~lib/typedarray/Int64Array#filter (; 180 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 3
    i32.shl
    local.get $7
    i32.add
    i64.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 3
     i32.shl
     local.get $5
     i32.add
     local.get $6
     i64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 3
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64> (; 181 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 5
  i64.const 5
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  call $~lib/typedarray/Int64Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 182 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.gt_u
 )
 (func $~lib/typedarray/Uint64Array#filter (; 183 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 3
    i32.shl
    local.get $7
    i32.add
    i64.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 3
     i32.shl
     local.get $5
     i32.add
     local.get $6
     i64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 3
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64> (; 184 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 5
  i64.const 5
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  call $~lib/typedarray/Uint64Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 3
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 185 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.gt
 )
 (func $~lib/typedarray/Float32Array#filter (; 186 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $7
    i32.add
    f32.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     local.get $6
     f32.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 2
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32> (; 187 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 3
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 5
  f32.const 5
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 3
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 4
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 188 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.gt
 )
 (func $~lib/typedarray/Float64Array#filter (; 189 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.set $1
  local.get $4
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $7
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $2
    i32.const 3
    i32.shl
    local.get $7
    i32.add
    f64.load
    local.set $6
    i32.const 3
    global.set $~lib/argc
    local.get $6
    local.get $2
    local.get $0
    call $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0
    if
     local.get $3
     local.tee $8
     i32.const 1
     i32.add
     local.set $3
     local.get $8
     i32.const 3
     i32.shl
     local.get $5
     i32.add
     local.get $6
     f64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
  local.get $1
  local.get $5
  local.get $3
  i32.const 3
  i32.shl
  local.tee $0
  call $~lib/rt/tlsf/__realloc
  local.tee $3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64> (; 190 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 6
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 3
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 5
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#filter
  local.tee $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 390
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 391
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 3
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 392
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 393
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 394
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 191 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 193 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 194 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 46
  call $~lib/typedarray/Int8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 47
  call $~lib/typedarray/Int8Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#some (; 195 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 196 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 48
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 49
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 197 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 50
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 51
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 198 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 199 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 200 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 201 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 52
  call $~lib/typedarray/Int16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 53
  call $~lib/typedarray/Int16Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#some (; 202 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 203 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 54
  call $~lib/typedarray/Uint16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 55
  call $~lib/typedarray/Uint16Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 204 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 205 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 206 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 207 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 56
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 57
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 208 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 58
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 59
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 209 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 210 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 211 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 212 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 60
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 61
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 213 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 62
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 63
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 214 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 215 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 216 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 217 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 64
  call $~lib/typedarray/Float32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 65
  call $~lib/typedarray/Float32Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 218 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 219 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 220 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 221 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 66
  call $~lib/typedarray/Float64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 415
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 67
  call $~lib/typedarray/Float64Array#some
  if
   i32.const 0
   i32.const 376
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 222 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 223 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 224 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 68
  call $~lib/typedarray/Int8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 69
  call $~lib/typedarray/Int8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 225 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 226 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 70
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 71
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 227 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 72
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 73
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 228 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 229 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 230 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 74
  call $~lib/typedarray/Int16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 75
  call $~lib/typedarray/Int16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 231 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 232 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 76
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 77
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 233 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 234 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 235 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 78
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 79
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 236 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 80
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 81
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 237 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 238 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 239 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 82
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 83
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 240 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 84
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 85
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 241 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 242 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 243 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 86
  call $~lib/typedarray/Float32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 87
  call $~lib/typedarray/Float32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 244 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 245 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 246 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 88
  call $~lib/typedarray/Float64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 438
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 89
  call $~lib/typedarray/Float64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 247 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int8Array#every (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 249 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 90
  call $~lib/typedarray/Int8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 91
  call $~lib/typedarray/Int8Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 250 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 251 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 252 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 92
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 93
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 253 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 94
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 95
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 254 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int16Array#every (; 255 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 256 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 96
  call $~lib/typedarray/Int16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 97
  call $~lib/typedarray/Int16Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#every (; 257 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 258 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 98
  call $~lib/typedarray/Uint16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 99
  call $~lib/typedarray/Uint16Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 259 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int32Array#every (; 260 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 261 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 100
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 101
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 262 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 102
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 103
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 263 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_s
  i64.eqz
 )
 (func $~lib/typedarray/Int64Array#every (; 264 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     i32.eqz
     if
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 265 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 104
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 105
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 266 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_u
  i64.eqz
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 267 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 106
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 107
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/math/NativeMathf.mod (; 268 ;) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $2
  local.get $1
  i32.const -2147483648
  i32.and
  local.set $4
  i32.const 1
  i32.const 0
  local.get $2
  i32.const 255
  i32.eq
  select
  if
   local.get $0
   f32.const 2
   f32.mul
   local.tee $0
   local.get $0
   f32.div
   return
  end
  block $folding-inner0
   local.get $1
   i32.const 1
   i32.shl
   local.tee $3
   i32.const -2147483648
   i32.le_u
   if
    local.get $3
    i32.const -2147483648
    i32.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   if (result i32)
    local.get $1
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else
    local.get $1
    i32.const 1
    local.get $2
    local.get $1
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    local.tee $2
    i32.sub
    i32.shl
   end
   local.set $1
   loop $continue|0
    local.get $2
    i32.const 128
    i32.gt_s
    if
     local.get $1
     i32.const 8388608
     i32.ge_u
     if
      local.get $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      local.get $1
      i32.const 8388608
      i32.sub
      local.set $1
     end
     local.get $1
     i32.const 1
     i32.shl
     local.set $1
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i32.const 8388608
   i32.ge_u
   if
    local.get $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    local.get $1
    i32.const 8388608
    i32.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i32.const 8
   i32.shl
   i32.clz
   local.tee $3
   i32.shl
   local.set $1
   local.get $2
   local.get $3
   i32.sub
   local.tee $2
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $1
    i32.const 8388608
    i32.sub
    local.get $2
    i32.const 23
    i32.shl
    i32.or
   else
    local.get $1
    i32.const 1
    local.get $2
    i32.sub
    i32.shr_u
   end
   local.get $4
   i32.or
   f32.reinterpret_i32
   return
  end
  f32.const 0
  local.get $0
  f32.mul
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 269 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 270 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     i32.eqz
     if
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 271 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 108
  call $~lib/typedarray/Float32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 109
  call $~lib/typedarray/Float32Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/math/NativeMath.mod (; 272 ;) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $2
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $4
  i32.const 1
  i32.const 0
  local.get $2
  i64.const 2047
  i64.eq
  select
  if
   local.get $0
   f64.const 2
   f64.mul
   local.tee $0
   local.get $0
   f64.div
   return
  end
  block $folding-inner0
   local.get $1
   i64.const 1
   i64.shl
   local.tee $3
   i64.const -9223372036854775808
   i64.le_u
   if
    local.get $3
    i64.const -9223372036854775808
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   i64.eqz
   if (result i64)
    local.get $1
    i64.const 0
    local.get $2
    local.get $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else
    local.get $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   loop $continue|0
    local.get $2
    i64.const 1024
    i64.gt_s
    if
     local.get $1
     i64.const 4503599627370496
     i64.ge_u
     if
      local.get $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      local.get $1
      i64.const 4503599627370496
      i64.sub
      local.set $1
     end
     local.get $1
     i64.const 1
     i64.shl
     local.set $1
     local.get $2
     i64.const 1
     i64.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i64.const 4503599627370496
   i64.ge_u
   if
    local.get $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $1
   local.get $2
   local.get $3
   i64.sub
   local.tee $2
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.get $2
    i64.const 52
    i64.shl
    i64.or
   else
    local.get $1
    i64.const 0
    local.get $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   local.get $4
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  f64.const 0
  local.get $0
  f64.mul
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 273 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 274 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $2
     local.get $4
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     i32.eqz
     if
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 275 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 110
  call $~lib/typedarray/Float64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 461
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 111
  call $~lib/typedarray/Float64Array#every
  if
   i32.const 0
   i32.const 376
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 276 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 1488
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 492
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int8Array#forEach (; 277 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  local.set $3
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $2
    i32.add
    i32.load8_s
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 278 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#forEach (; 279 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    local.get $3
    i32.add
    i32.load8_u
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$viii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 280 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 113
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 281 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 114
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 282 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 1488
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 492
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int16Array#forEach (; 283 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $3
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    i32.load16_s
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 284 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#forEach (; 285 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $3
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    i32.load16_u
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 286 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 287 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 1488
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 492
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int32Array#forEach (; 288 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  loop $loop|0
   block $break|0
    local.get $2
    local.get $4
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$viii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 289 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 117
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 290 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 118
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 291 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 1488
  local.get $1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 492
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int64Array#forEach (; 292 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  loop $loop|0
   block $break|0
    local.get $2
    local.get $4
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$vjii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 293 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 119
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 294 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 120
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 295 ;) (type $FUNCSIG$vfii) (param $0 f32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 1488
  local.get $1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 492
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Float32Array#forEach (; 296 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $3
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    f32.load
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 297 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 298 ;) (type $FUNCSIG$vdii) (param $0 f64) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 1488
  local.get $1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 490
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 491
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 492
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Float64Array#forEach (; 299 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $3
  loop $loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 3
    i32.shl
    local.get $2
    i32.add
    f64.load
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 300 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  i32.const 1488
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  i32.const 1488
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  i32.const 1488
  i32.const 2
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reverse (; 301 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $0
    local.get $4
    i32.add
    local.tee $2
    i32.load8_s
    local.set $5
    local.get $2
    local.get $1
    local.get $4
    i32.add
    local.tee $2
    i32.load8_s
    i32.store8
    local.get $2
    local.get $5
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 302 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  call $~lib/typedarray/Int8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reverse (; 303 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $0
    local.get $4
    i32.add
    local.tee $2
    i32.load8_u
    local.set $5
    local.get $2
    local.get $1
    local.get $4
    i32.add
    local.tee $2
    i32.load8_u
    i32.store8
    local.get $2
    local.get $5
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 304 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $1
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $3
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $3
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 305 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $1
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#subarray (; 306 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $1
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $3
  i32.add
  i32.store offset=4
  local.get $2
  local.get $1
  local.get $3
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.store offset=8
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 307 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $1
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reverse (; 308 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_s
    local.set $5
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_s
    i32.store16
    local.get $2
    local.get $5
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#subarray (; 309 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 310 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Int16Array#subarray
  local.tee $1
  call $~lib/typedarray/Int16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reverse (; 311 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_u
    local.set $5
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_u
    i32.store16
    local.get $2
    local.get $5
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#subarray (; 312 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 313 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $1
  call $~lib/typedarray/Uint16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reverse (; 314 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load
    i32.store
    local.get $2
    local.get $5
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 315 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  local.tee $1
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#subarray (; 316 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32> (; 317 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint32Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $1
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reverse (; 318 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i64.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i64.load
    i64.store
    local.get $2
    local.get $5
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#subarray (; 319 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 320 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Int64Array#subarray
  local.tee $1
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 8
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 7
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#subarray (; 321 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64> (; 322 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint64Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $1
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 8
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 7
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reverse (; 323 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f32.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f32.load
    f32.store
    local.get $2
    local.get $5
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#subarray (; 324 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.tee $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.lt_s
   select
  end
  local.set $2
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $2
  local.get $3
  local.get $2
  local.get $3
  i32.gt_s
  select
  local.get $3
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 325 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    f32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 8
  call $~lib/typedarray/Float32Array#subarray
  local.tee $1
  call $~lib/typedarray/Float32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 8
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 7
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reverse (; 326 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f64.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f64.load
    f64.store
    local.get $2
    local.get $5
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 327 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1588
  i32.load
  local.tee $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $5
  local.set $3
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $3
    local.get $0
    i32.const 1576
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    i32.const 1576
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    f64.ne
    if
     i32.const 0
     i32.const 376
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  local.tee $1
  call $~lib/typedarray/Float64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 8
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 7
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.ne
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#indexOf (; 328 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   local.get $0
   i32.load offset=8
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
    local.set $2
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf (; 329 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.eqz
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     local.get $1
     i32.const 255
     i32.and
     i32.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf|trampoline (; 330 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   local.get $0
   i32.load offset=8
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int8Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8> (; 331 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int8Array#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8> (; 332 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8> (; 333 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#indexOf (; 334 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
    local.set $2
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf (; 335 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.tee $3
   i32.eqz
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.load16_u
     local.get $1
     i32.const 65535
     i32.and
     i32.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf|trampoline (; 336 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int16Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16> (; 337 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int16Array#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16> (; 338 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#indexOf (; 339 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
    local.set $2
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.get $1
     i32.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf (; 340 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.tee $3
   i32.eqz
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     i32.load
     local.get $1
     i32.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf|trampoline (; 341 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32> (; 342 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int32Array#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32> (; 343 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#indexOf (; 344 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
    local.set $2
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $2
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     i64.load
     local.get $1
     i64.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf (; 345 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $3
   i32.eqz
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     i64.load
     local.get $1
     i64.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf|trampoline (; 346 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
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
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64> (; 347 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 10
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -100
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const 11
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const -1
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 100
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -10
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -11
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int64Array#subarray
  local.tee $0
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 4
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 5
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 9
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 10
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 5
  i32.const 1
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 5
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64> (; 348 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 10
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -100
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const 11
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const -1
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  i64.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const 100
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -10
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 1
  i32.const -11
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $0
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 4
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 5
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 9
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 10
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 5
  i32.const 1
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i64.const 5
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#indexOf (; 349 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
    local.set $2
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load
     local.get $1
     f32.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf (; 350 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.tee $3
   i32.eqz
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load
     local.get $1
     f32.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf|trampoline (; 351 ;) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
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
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32> (; 352 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  f32.const 0
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const -1
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 2
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 3
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 4
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const 10
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const -100
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f32.const 11
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f32.const -1
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f32.const 3
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 4
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 3
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 3
  i32.const 2
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const 100
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const -10
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 1
  i32.const -11
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Float32Array#subarray
  local.tee $0
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 4
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 5
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 9
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 10
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 5
  i32.const 1
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f32.const 5
  i32.const 2
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#indexOf (; 353 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $3
   if (result i32)
    local.get $2
    local.get $3
    i32.ge_s
   else
    i32.const 1
   end
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $2
   i32.const 0
   i32.lt_s
   if
    local.get $2
    local.get $3
    i32.add
    local.tee $2
    i32.const 0
    local.get $2
    i32.const 0
    i32.gt_s
    select
    local.set $2
   end
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $2
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load
     local.get $1
     f64.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf (; 354 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $3
   i32.eqz
   if
    i32.const -1
    local.set $2
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $2
   local.get $3
   i32.add
   local.get $3
   i32.const 1
   i32.sub
   local.get $2
   local.get $2
   local.get $3
   i32.ge_s
   select
   local.get $2
   i32.const 0
   i32.lt_s
   select
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $2
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load
     local.get $1
     f64.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf|trampoline (; 355 ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
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
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64> (; 356 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1684
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.tee $3
  local.set $0
  loop $loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1672
    local.get $1
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $loop|0
   end
  end
  local.get $0
  f64.const 0
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 557
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 558
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const -1
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 559
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 560
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 2
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 561
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 3
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 4
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 563
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const 10
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 564
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const -100
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f64.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 376
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f64.const 11
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f64.const -1
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $0
  f64.const 3
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 4
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 571
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 3
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 572
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 3
  i32.const 2
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 573
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const 100
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 574
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const -10
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 575
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 1
  i32.const -11
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 576
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Float64Array#subarray
  local.tee $0
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 580
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 4
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  if
   i32.const 0
   i32.const 376
   i32.const 581
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 5
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 582
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 9
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 583
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 10
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 584
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 585
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 5
  i32.const 1
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 586
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 5
  i32.const 2
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 587
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#includes (; 357 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  block $~lib/typedarray/INCLUDES<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   i32.const 0
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $2
   if (result i32)
    i32.const 0
    local.get $2
    i32.ge_s
   else
    i32.const 1
   end
   br_if $~lib/typedarray/INCLUDES<~lib/typedarray/Float64Array,f64>|inlined.0
   drop
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 1
     local.get $1
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     f64.load
     local.tee $3
     f64.const nan:0x8000000000000
     f64.eq
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $3
      f64.ne
     end
     br_if $~lib/typedarray/INCLUDES<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $continue|0
    end
   end
   i32.const 0
  end
 )
 (func $~lib/typedarray/Float32Array#includes (; 358 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  block $~lib/typedarray/INCLUDES<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   i32.const 0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.tee $2
   if (result i32)
    i32.const 0
    local.get $2
    i32.ge_s
   else
    i32.const 1
   end
   br_if $~lib/typedarray/INCLUDES<~lib/typedarray/Float32Array,f32>|inlined.0
   drop
   local.get $0
   i32.load offset=4
   local.set $0
   loop $continue|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 1
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     f32.load
     local.tee $3
     f32.const nan:0x400000
     f32.eq
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $3
      f32.ne
     end
     br_if $~lib/typedarray/INCLUDES<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $continue|0
    end
   end
   i32.const 0
  end
 )
 (func $~lib/util/number/decimalCount32 (; 359 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 2
  local.get $0
  i32.const 10
  i32.lt_u
  select
  i32.const 3
  i32.const 4
  i32.const 5
  local.get $0
  i32.const 10000
  i32.lt_u
  select
  local.get $0
  i32.const 1000
  i32.lt_u
  select
  local.get $0
  i32.const 100
  i32.lt_u
  select
  i32.const 6
  i32.const 7
  local.get $0
  i32.const 1000000
  i32.lt_u
  select
  i32.const 8
  i32.const 9
  i32.const 10
  local.get $0
  i32.const 1000000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000000
  i32.lt_u
  select
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/util/number/utoa_simple<u32> (; 360 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $continue|0
  end
 )
 (func $~lib/util/number/itoa32 (; 361 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1720
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.tee $1
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
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $3
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $2
   i32.const 45
   i32.store16
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/string/String#get:length (; 362 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/number/itoa_stream<i8> (; 363 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.lt_s
  local.tee $1
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
  local.tee $3
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $0
  local.get $3
  local.get $2
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/string/String#substring (; 364 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  i32.const 0
  local.get $2
  i32.lt_s
  select
  local.tee $3
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.lt_s
  select
  local.tee $1
  local.get $3
  local.get $1
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  local.get $1
  local.get $3
  local.get $1
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $1
  i32.sub
  local.tee $3
  i32.eqz
  if
   i32.const 1704
   return
  end
  i32.const 0
  local.get $2
  i32.const 1
  i32.shl
  local.get $4
  i32.eq
  local.get $1
  select
  if
   local.get $0
   call $~lib/rt/pure/__retain
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/string/joinIntegerArray<i8> (; 365 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load8_s
   call $~lib/util/number/itoa32
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
  local.get $3
  i32.mul
  i32.const 11
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.add
    i32.load8_s
    call $~lib/util/number/itoa_stream<i8>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.add
  i32.load8_s
  call $~lib/util/number/itoa_stream<i8>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#join (; 366 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<i8>
 )
 (func $~lib/util/string/compareImpl (; 367 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 7
  i32.and
  local.get $1
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  i32.const 0
  local.get $2
  i32.const 4
  i32.ge_u
  select
  if
   loop $continue|0
    local.get $0
    i64.load
    local.get $1
    i64.load
    i64.eq
    if
     local.get $0
     i32.const 8
     i32.add
     local.set $0
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 4
     i32.sub
     local.tee $2
     i32.const 4
     i32.ge_u
     br_if $continue|0
    end
   end
  end
  loop $continue|1
   block $break|1
    local.get $2
    local.tee $3
    i32.const 1
    i32.sub
    local.set $2
    local.get $3
    i32.eqz
    br_if $break|1
    local.get $0
    i32.load16_u
    local.tee $3
    local.get $1
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $3
     local.get $4
     i32.sub
     return
    else
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $continue|1
    end
    unreachable
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 368 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int8Array,i8> (; 369 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int8Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/utoa32 (; 370 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1720
   return
  end
  local.get $0
  call $~lib/util/number/decimalCount32
  local.tee $1
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<u8> (; 371 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  i32.const 255
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u8> (; 372 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load8_u
   call $~lib/util/number/utoa32
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.add
    i32.load8_u
    call $~lib/util/number/itoa_stream<u8>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.add
  i32.load8_u
  call $~lib/util/number/itoa_stream<u8>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#join (; 373 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<u8>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint8Array,u8> (; 374 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  call $~lib/typedarray/Uint8Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint8Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint8ClampedArray,u8> (; 375 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  call $~lib/typedarray/Uint8Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint8Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa_stream<i16> (; 376 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.lt_s
  local.tee $1
  if
   i32.const 0
   local.get $2
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.tee $3
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $0
  local.get $3
  local.get $2
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<i16> (; 377 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load16_s
   call $~lib/util/number/itoa32
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
  local.get $3
  i32.mul
  i32.const 11
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.load16_s
    call $~lib/util/number/itoa_stream<i16>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  i32.load16_s
  call $~lib/util/number/itoa_stream<i16>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#join (; 378 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  call $~lib/util/string/joinIntegerArray<i16>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int16Array,i16> (; 379 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int16Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa_stream<u16> (; 380 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  i32.const 65535
  i32.and
  local.tee $2
  call $~lib/util/number/decimalCount32
  local.set $1
  local.get $0
  local.get $2
  local.get $1
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u16> (; 381 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load16_u
   call $~lib/util/number/utoa32
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    i32.load16_u
    call $~lib/util/number/itoa_stream<u16>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  i32.load16_u
  call $~lib/util/number/itoa_stream<u16>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint16Array#join (; 382 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  call $~lib/util/string/joinIntegerArray<u16>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint16Array,u16> (; 383 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint16Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa_stream<i32> (; 384 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $0
  local.get $2
  i32.const 0
  i32.lt_s
  local.tee $1
  if
   i32.const 0
   local.get $2
   i32.sub
   local.set $2
  end
  local.get $2
  local.get $2
  call $~lib/util/number/decimalCount32
  local.get $1
  i32.add
  local.tee $2
  call $~lib/util/number/utoa_simple<u32>
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $2
 )
 (func $~lib/util/string/joinIntegerArray<i32> (; 385 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/itoa32
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
  local.get $3
  i32.mul
  i32.const 11
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<i32>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  call $~lib/util/number/itoa_stream<i32>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#join (; 386 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  call $~lib/util/string/joinIntegerArray<i32>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int32Array,i32> (; 387 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  call $~lib/typedarray/Int32Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int32Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/itoa_stream<u32> (; 388 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $0
  local.get $2
  local.get $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  call $~lib/util/number/utoa_simple<u32>
  local.get $0
 )
 (func $~lib/util/string/joinIntegerArray<u32> (; 389 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/utoa32
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 10
  i32.add
  local.get $3
  i32.mul
  i32.const 10
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<u32>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load
  call $~lib/util/number/itoa_stream<u32>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint32Array#join (; 390 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  call $~lib/util/string/joinIntegerArray<u32>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint32Array,u32> (; 391 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  call $~lib/typedarray/Uint32Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint32Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/decimalCount64 (; 392 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  i32.const 10
  i32.const 11
  i32.const 12
  local.get $0
  i64.const 100000000000
  i64.lt_u
  select
  local.get $0
  i64.const 10000000000
  i64.lt_u
  select
  i32.const 13
  i32.const 14
  i32.const 15
  local.get $0
  i64.const 100000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 10000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 1000000000000
  i64.lt_u
  select
  i32.const 16
  i32.const 17
  local.get $0
  i64.const 10000000000000000
  i64.lt_u
  select
  i32.const 18
  i32.const 19
  i32.const 20
  local.get $0
  i64.const -8446744073709551616
  i64.lt_u
  select
  local.get $0
  i64.const 1000000000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 100000000000000000
  i64.lt_u
  select
  local.get $0
  i64.const 1000000000000000
  i64.lt_u
  select
 )
 (func $~lib/util/number/utoa_simple<u64> (; 393 ;) (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $continue|0
   local.get $1
   i64.const 10
   i64.rem_u
   i32.wrap_i64
   local.set $3
   local.get $1
   i64.const 10
   i64.div_u
   local.set $1
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   i64.const 0
   i64.ne
   br_if $continue|0
  end
 )
 (func $~lib/util/number/itoa64 (; 394 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1720
   return
  end
  local.get $0
  i64.const 0
  i64.lt_s
  local.tee $1
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
   local.tee $2
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.tee $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $3
   local.get $2
   local.get $4
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $2
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $3
   local.get $0
   local.get $2
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<i64> (; 395 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  i64.const 0
  i64.lt_s
  local.tee $1
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
   local.tee $4
   call $~lib/util/number/decimalCount32
   local.get $1
   i32.add
   local.set $3
   local.get $0
   local.get $4
   local.get $3
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   local.get $2
   local.get $2
   call $~lib/util/number/decimalCount64
   local.get $1
   i32.add
   local.tee $3
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $1
  if
   local.get $0
   i32.const 45
   i32.store16
  end
  local.get $3
 )
 (func $~lib/util/string/joinIntegerArray<i64> (; 396 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i64.load
   call $~lib/util/number/itoa64
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 21
  i32.add
  local.get $3
  i32.mul
  i32.const 21
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<i64>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  i64.load
  call $~lib/util/number/itoa_stream<i64>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#join (; 397 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  call $~lib/util/string/joinIntegerArray<i64>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int64Array,i64> (; 398 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 4
  i64.const 5
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  call $~lib/typedarray/Int64Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int64Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/number/utoa64 (; 399 ;) (type $FUNCSIG$ij) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1720
   return
  end
  local.get $0
  i64.const 4294967295
  i64.le_u
  if
   local.get $0
   i32.wrap_i64
   local.tee $1
   call $~lib/util/number/decimalCount32
   local.tee $3
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $2
   local.get $1
   local.get $3
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   call $~lib/util/number/decimalCount64
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/tlsf/__alloc
   local.tee $2
   local.get $0
   local.get $1
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $~lib/util/number/itoa_stream<u64> (; 400 ;) (type $FUNCSIG$iiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  i64.const 4294967295
  i64.le_u
  if
   local.get $2
   i32.wrap_i64
   local.tee $3
   call $~lib/util/number/decimalCount32
   local.set $1
   local.get $0
   local.get $3
   local.get $1
   call $~lib/util/number/utoa_simple<u32>
  else
   local.get $0
   local.get $2
   local.get $2
   call $~lib/util/number/decimalCount64
   local.tee $1
   call $~lib/util/number/utoa_simple<u64>
  end
  local.get $1
 )
 (func $~lib/util/string/joinIntegerArray<u64> (; 401 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i64.load
   call $~lib/util/number/utoa64
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 20
  i32.add
  local.get $3
  i32.mul
  i32.const 20
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<u64>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  i64.load
  call $~lib/util/number/itoa_stream<u64>
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint64Array#join (; 402 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  call $~lib/util/string/joinIntegerArray<u64>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint64Array,u64> (; 403 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 4
  i64.const 5
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  call $~lib/typedarray/Uint64Array#join
  local.tee $2
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint64Array#join
  local.tee $1
  local.get $1
  i32.const 1768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 630
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u64>#__unchecked_get (; 404 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 405 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 406 ;) (type $FUNCSIG$iijijiji) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  local.get $3
  local.get $1
  i64.sub
  local.set $9
  i64.const 1
  i32.const 0
  local.get $4
  i32.sub
  local.tee $10
  i64.extend_i32_s
  i64.shl
  local.tee $11
  i64.const 1
  i64.sub
  local.tee $14
  local.get $3
  i64.and
  local.set $12
  local.get $3
  local.get $10
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $7
  call $~lib/util/number/decimalCount32
  local.set $4
  i32.const 2956
  i32.load
  local.set $13
  loop $continue|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
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
               local.get $4
               i32.const 10
               i32.ne
               if
                local.get $4
                i32.const 9
                i32.eq
                br_if $case1|1
                block $tablify|0
                 local.get $4
                 i32.const 1
                 i32.sub
                 br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $tablify|0
                end
                br $case10|1
               end
               local.get $7
               i32.const 1000000000
               i32.div_u
               local.set $8
               local.get $7
               i32.const 1000000000
               i32.rem_u
               local.set $7
               br $break|1
              end
              local.get $7
              i32.const 100000000
              i32.div_u
              local.set $8
              local.get $7
              i32.const 100000000
              i32.rem_u
              local.set $7
              br $break|1
             end
             local.get $7
             i32.const 10000000
             i32.div_u
             local.set $8
             local.get $7
             i32.const 10000000
             i32.rem_u
             local.set $7
             br $break|1
            end
            local.get $7
            i32.const 1000000
            i32.div_u
            local.set $8
            local.get $7
            i32.const 1000000
            i32.rem_u
            local.set $7
            br $break|1
           end
           local.get $7
           i32.const 100000
           i32.div_u
           local.set $8
           local.get $7
           i32.const 100000
           i32.rem_u
           local.set $7
           br $break|1
          end
          local.get $7
          i32.const 10000
          i32.div_u
          local.set $8
          local.get $7
          i32.const 10000
          i32.rem_u
          local.set $7
          br $break|1
         end
         local.get $7
         i32.const 1000
         i32.div_u
         local.set $8
         local.get $7
         i32.const 1000
         i32.rem_u
         local.set $7
         br $break|1
        end
        local.get $7
        i32.const 100
        i32.div_u
        local.set $8
        local.get $7
        i32.const 100
        i32.rem_u
        local.set $7
        br $break|1
       end
       local.get $7
       i32.const 10
       i32.div_u
       local.set $8
       local.get $7
       i32.const 10
       i32.rem_u
       local.set $7
       br $break|1
      end
      local.get $7
      local.set $8
      i32.const 0
      local.set $7
      br $break|1
     end
     i32.const 0
     local.set $8
    end
    local.get $6
    local.get $8
    i32.or
    if
     local.get $6
     local.tee $2
     i32.const 1
     i32.add
     local.set $6
     local.get $2
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $8
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    local.get $12
    i64.add
    local.tee $1
    local.get $5
    i64.gt_u
    br_if $continue|0
    global.get $~lib/util/number/_K
    local.get $4
    i32.add
    global.set $~lib/util/number/_K
    local.get $4
    i32.const 2
    i32.shl
    local.get $13
    i32.add
    i64.load32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    local.set $3
    local.get $6
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.tee $2
    i32.load16_u
    local.set $4
    loop $continue|2
     i32.const 1
     local.get $9
     local.get $1
     i64.sub
     local.get $1
     local.get $3
     i64.add
     local.get $9
     i64.sub
     i64.gt_u
     local.get $1
     local.get $3
     i64.add
     local.get $9
     i64.lt_u
     select
     i32.const 0
     local.get $5
     local.get $1
     i64.sub
     local.get $3
     i64.ge_u
     i32.const 0
     local.get $1
     local.get $9
     i64.lt_u
     select
     select
     if
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      local.get $1
      local.get $3
      i64.add
      local.set $1
      br $continue|2
     end
    end
    local.get $2
    local.get $4
    i32.store16
    local.get $6
    return
   end
  end
  loop $continue|3 (result i32)
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $12
   i64.const 10
   i64.mul
   local.tee $3
   local.get $10
   i64.extend_i32_s
   i64.shr_u
   local.tee $1
   local.get $6
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $6
    local.tee $2
    i32.const 1
    i32.add
    local.set $6
    local.get $2
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $4
   i32.const 1
   i32.sub
   local.set $4
   local.get $3
   local.get $14
   i64.and
   local.tee $12
   local.get $5
   i64.ge_u
   br_if $continue|3
   global.get $~lib/util/number/_K
   local.get $4
   i32.add
   global.set $~lib/util/number/_K
   local.get $12
   local.set $1
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   local.get $13
   i32.add
   i64.load32_u
   local.get $9
   i64.mul
   local.set $3
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   local.tee $2
   i32.load16_u
   local.set $4
   loop $continue|4
    i32.const 1
    local.get $3
    local.get $1
    i64.sub
    local.get $1
    local.get $11
    i64.add
    local.get $3
    i64.sub
    i64.gt_u
    local.get $1
    local.get $11
    i64.add
    local.get $3
    i64.lt_u
    select
    i32.const 0
    local.get $5
    local.get $1
    i64.sub
    local.get $11
    i64.ge_u
    i32.const 0
    local.get $1
    local.get $3
    i64.lt_u
    select
    select
    if
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     local.get $1
     local.get $11
     i64.add
     local.set $1
     br $continue|4
    end
   end
   local.get $2
   local.get $4
   i32.store16
   local.get $6
  end
 )
 (func $~lib/util/number/prettify (; 407 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store
   local.get $1
   i32.const 2
   i32.add
   return
  end
  local.get $1
  local.get $1
  local.get $2
  i32.add
  local.tee $3
  i32.le_s
  if (result i32)
   local.get $3
   i32.const 21
   i32.le_s
  else
   i32.const 0
  end
  if (result i32)
   loop $loop|0
    block $break|0
     local.get $1
     local.get $3
     i32.ge_s
     br_if $break|0
     local.get $1
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $3
   i32.const 1
   i32.shl
   local.get $0
   i32.add
   i32.const 3145774
   i32.store
   local.get $3
   i32.const 2
   i32.add
  else
   local.get $3
   i32.const 21
   i32.le_s
   i32.const 0
   local.get $3
   i32.const 0
   i32.gt_s
   select
   if (result i32)
    local.get $3
    i32.const 1
    i32.shl
    local.get $0
    i32.add
    local.tee $0
    i32.const 2
    i32.add
    local.get $0
    i32.const 0
    local.get $2
    i32.sub
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $0
    i32.const 46
    i32.store16
    local.get $1
    i32.const 1
    i32.add
   else
    local.get $3
    i32.const 0
    i32.le_s
    i32.const 0
    i32.const -6
    local.get $3
    i32.lt_s
    select
    if (result i32)
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $0
     i32.const 3014704
     i32.store
     i32.const 2
     local.set $2
     loop $loop|1
      block $break|1
       local.get $2
       local.get $3
       i32.ge_s
       br_if $break|1
       local.get $2
       i32.const 1
       i32.shl
       local.get $0
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $loop|1
      end
     end
     local.get $1
     local.get $3
     i32.add
    else
     local.get $1
     i32.const 1
     i32.eq
     if (result i32)
      local.get $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $2
      i32.const 0
      i32.lt_s
      local.tee $1
      if
       i32.const 0
       local.get $2
       i32.sub
       local.set $2
      end
      local.get $2
      local.get $2
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $2
      call $~lib/util/number/utoa_simple<u32>
      local.get $0
      i32.const 45
      i32.const 43
      local.get $1
      select
      i32.store16
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $0
      i32.const 4
      i32.add
      local.get $0
      i32.const 2
      i32.add
      local.get $1
      i32.const 1
      i32.shl
      local.tee $2
      i32.const 2
      i32.sub
      call $~lib/memory/memory.copy
      local.get $0
      i32.const 46
      i32.store16 offset=2
      local.get $0
      local.get $2
      i32.add
      local.tee $0
      i32.const 101
      i32.store16 offset=2
      local.get $0
      i32.const 4
      i32.add
      local.tee $2
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $3
      if
       i32.const 0
       local.get $0
       i32.sub
       local.set $0
      end
      local.get $0
      local.get $0
      call $~lib/util/number/decimalCount32
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa_simple<u32>
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16
      local.get $0
      local.get $1
      i32.add
      i32.const 2
      i32.add
     end
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (; 408 ;) (type $FUNCSIG$iid) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $9
  if (result f64)
   local.get $0
   i32.const 45
   i32.store16
   local.get $1
   f64.neg
  else
   local.get $1
  end
  i64.reinterpret_f64
  local.tee $2
  i64.const 9218868437227405312
  i64.and
  i64.const 52
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  i64.const 4503599627370495
  i64.and
  local.get $5
  i32.const 0
  i32.ne
  local.tee $10
  i64.extend_i32_u
  i64.const 52
  i64.shl
  i64.add
  local.tee $2
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $6
  i64.clz
  i32.wrap_i64
  local.set $3
  local.get $6
  local.get $3
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $5
  i32.const 1
  local.get $10
  select
  i32.const 1075
  i32.sub
  local.tee $5
  i32.const 1
  i32.sub
  local.get $3
  i32.sub
  local.set $3
  local.get $2
  local.get $2
  i64.const 4503599627370496
  i64.eq
  i32.const 1
  i32.add
  local.tee $10
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $5
  local.get $10
  i32.sub
  local.get $3
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $3
  global.set $~lib/util/number/_exp
  i32.const 348
  i32.const -61
  global.get $~lib/util/number/_exp
  i32.sub
  f64.convert_i32_s
  f64.const 0.30102999566398114
  f64.mul
  f64.const 347
  f64.add
  local.tee $1
  i32.trunc_f64_s
  local.tee $3
  local.get $3
  f64.convert_i32_s
  local.get $1
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $3
  i32.const 3
  i32.shl
  i32.sub
  global.set $~lib/util/number/_K
  i32.const 2640
  local.get $3
  call $~lib/array/Array<u64>#__unchecked_get
  global.set $~lib/util/number/_frc_pow
  i32.const 2864
  local.get $3
  call $~lib/array/Array<i16>#__unchecked_get
  global.set $~lib/util/number/_exp_pow
  local.get $2
  local.get $2
  i64.clz
  i32.wrap_i64
  local.tee $3
  i64.extend_i32_s
  i64.shl
  local.tee $6
  i64.const 4294967295
  i64.and
  local.tee $11
  global.get $~lib/util/number/_frc_pow
  local.tee $2
  i64.const 4294967295
  i64.and
  local.tee $13
  i64.mul
  local.set $14
  global.get $~lib/util/number/_frc_plus
  local.tee $7
  i64.const 4294967295
  i64.and
  local.tee $4
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $8
  i64.mul
  local.set $12
  global.get $~lib/util/number/_frc_minus
  local.tee $15
  i64.const 4294967295
  i64.and
  local.tee $16
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $17
  i64.mul
  local.set $18
  local.get $4
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $7
  i64.const 32
  i64.shr_u
  local.tee $7
  local.get $8
  i64.mul
  local.get $12
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $8
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $4
  local.get $7
  i64.mul
  local.get $8
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.sub
  local.tee $7
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  local.get $16
  i64.mul
  local.get $15
  i64.const 32
  i64.shr_u
  local.tee $8
  local.get $17
  i64.mul
  local.get $18
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $12
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $4
  local.get $8
  i64.mul
  local.get $12
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.set $4
  local.get $9
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $0
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  local.get $11
  i64.mul
  local.get $6
  i64.const 32
  i64.shr_u
  local.tee $6
  local.get $13
  i64.mul
  local.get $14
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $11
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  local.get $2
  local.get $6
  i64.mul
  local.get $11
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $0
  local.get $5
  local.get $3
  i32.sub
  i32.add
  i32.const -64
  i32.sub
  local.get $7
  global.get $~lib/util/number/_exp
  local.get $0
  i32.add
  i32.const -64
  i32.sub
  local.get $4
  local.get $9
  call $~lib/util/number/genDigits
  local.get $9
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $9
  i32.add
 )
 (func $~lib/util/number/dtoa (; 409 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 1808
   return
  end
  local.get $0
  local.get $0
  f64.sub
  f64.const 0
  f64.ne
  if
   local.get $0
   local.get $0
   f64.ne
   if
    i32.const 1832
    return
   end
   i32.const 1856
   i32.const 1896
   local.get $0
   f64.const 0
   f64.lt
   select
   call $~lib/rt/pure/__retain
   return
  end
  i32.const 56
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/util/number/dtoa_core
  local.tee $2
  i32.const 28
  i32.eq
  if
   local.get $1
   call $~lib/rt/pure/__retain
   return
  end
  local.get $1
  local.get $2
  call $~lib/string/String#substring
  local.get $1
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/util/number/dtoa_stream (; 410 ;) (type $FUNCSIG$iiid) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
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
  local.get $2
  f64.sub
  f64.const 0
  f64.ne
  if
   local.get $2
   local.get $2
   f64.ne
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
    local.tee $3
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 1856
    i32.const 1896
    local.get $3
    select
    local.get $1
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
    local.get $1
    return
   end
   unreachable
  end
  local.get $0
  local.get $2
  call $~lib/util/number/dtoa_core
 )
 (func $~lib/util/string/joinFloatArray<f32> (; 411 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   f32.load
   f64.promote_f32
   call $~lib/util/number/dtoa
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 28
  i32.add
  local.get $3
  i32.mul
  i32.const 28
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load
    f64.promote_f32
    call $~lib/util/number/dtoa_stream
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  f32.load
  f64.promote_f32
  call $~lib/util/number/dtoa_stream
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#join (; 412 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  call $~lib/util/string/joinFloatArray<f32>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Float32Array,f32> (; 413 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 3
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 4
  f32.const 5
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#join
  local.tee $2
  i32.const 2984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 626
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Float32Array#join
  local.tee $1
  local.get $1
  i32.const 2984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 627
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/util/string/joinFloatArray<f64> (; 414 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1704
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   f64.load
   call $~lib/util/number/dtoa
   local.tee $0
   call $~lib/rt/pure/__retain
   local.get $0
   call $~lib/rt/pure/__release
   return
  end
  i32.const 1744
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 28
  i32.add
  local.get $3
  i32.mul
  i32.const 28
  i32.add
  local.tee $6
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $5
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    call $~lib/util/number/dtoa_stream
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $1
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.const 1744
     local.get $4
     i32.const 1
     i32.shl
     call $~lib/memory/memory.copy
     local.get $1
     local.get $4
     i32.add
     local.set $1
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $3
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  f64.load
  call $~lib/util/number/dtoa_stream
  local.get $1
  i32.add
  local.tee $0
  i32.gt_s
  if
   local.get $2
   local.get $0
   call $~lib/string/String#substring
   local.get $2
   call $~lib/rt/pure/__release
   return
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#join (; 415 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  call $~lib/util/string/joinFloatArray<f64>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Float64Array,f64> (; 416 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 5
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  local.get $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 3
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 4
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#join
  local.tee $2
  i32.const 2984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 626
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Float64Array#join
  local.tee $1
  local.get $1
  i32.const 2984
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 627
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 417 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 418 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $3
  local.get $0
  local.get $1
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int8Array.wrap (; 419 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.set $1
  end
  local.get $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8> (; 420 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Int8Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 421 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.set $1
  end
  local.get $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8> (; 422 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Uint8Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Uint8Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8Array#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray.wrap (; 423 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.set $1
  end
  local.get $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8> (; 424 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Uint8ClampedArray.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array.wrap (; 425 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 1
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 1
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16> (; 426 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Int16Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array.wrap (; 427 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 1
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 1
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16> (; 428 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Uint16Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array.wrap (; 429 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 2
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 2
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32> (; 430 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Int32Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array.wrap (; 431 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 2
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 2
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32> (; 432 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Uint32Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Uint32Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint32Array#__get
    local.get $6
    i32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array.wrap (; 433 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 4
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 3
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64> (; 434 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Int64Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    local.get $6
    i64.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array.wrap (; 435 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 4
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 3
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64> (; 436 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Uint64Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Uint64Array#__get
    local.set $6
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint64Array#__get
    local.get $6
    i64.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array.wrap (; 437 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 2
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 2
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32> (; 438 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Float32Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    f32.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array.wrap (; 439 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1739
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   i32.const -1
   i32.eq
   if (result i32)
    local.get $0
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 4
    i32.and
    if (result i32)
     i32.const 24
     i32.const 432
     i32.const 1746
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    end
   else
    i32.const 24
    i32.const 432
    i32.const 1751
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else
   local.get $1
   i32.const 3
   i32.shl
  end
  local.tee $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   i32.const 24
   i32.const 432
   i32.const 1757
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.tee $2
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=4
  local.get $2
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64> (; 440 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  i32.const 3116
  i32.load
  local.tee $3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $4
  local.set $1
  loop $loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3104
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $1
  i32.load
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $1
  i32.load offset=8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  i32.const 1
  global.set $~lib/argc
  local.tee $5
  i32.const -1
  call $~lib/typedarray/Float64Array.wrap
  local.set $2
  i32.const 0
  local.set $0
  loop $loop|1
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    local.get $2
    i32.eqz
    if
     unreachable
    end
    local.get $2
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    f64.ne
    if
     i32.const 0
     i32.const 376
     i32.const 681
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>> (; 441 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int8Array> (; 442 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i8>#__unchecked_get
    local.tee $5
    i32.ne
    if
     i32.const 3368
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_s
     local.get $5
     f64.convert_i32_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<f32>> (; 443 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $2
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array> (; 444 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    i64.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<f64>> (; 445 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $2
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int8Array> (; 446 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3336
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3408
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 447 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array> (; 448 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<u8>#__unchecked_get
    local.tee $5
    i32.ne
    if
     i32.const 3536
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<f32>> (; 449 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $2
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<f64>> (; 450 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $2
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8Array> (; 451 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3504
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3640
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i32>> (; 452 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $4
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
    local.tee $1
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    i32.const 255
    i32.and
    i32.const 255
    local.get $1
    i32.sub
    i32.const 31
    i32.shr_s
    local.get $1
    i32.or
    i32.and
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray> (; 453 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<u8>#__unchecked_get
    local.tee $5
    i32.ne
    if
     i32.const 3704
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f32>> (; 454 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     f32.const 0
     f32.const 255
     local.get $2
     f32.min
     f32.max
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array> (; 455 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1775
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.get $2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $2
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    i64.load
    local.tee $3
    i32.wrap_i64
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    i32.const 255
    i32.and
    i64.extend_i32_u
    i32.const 255
    local.get $3
    i32.wrap_i64
    i32.sub
    i32.const 31
    i32.shr_s
    i64.extend_i32_s
    local.get $3
    i64.or
    i64.and
    i64.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f64>> (; 456 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     f64.const 0
     f64.const 255
     local.get $2
     f64.min
     f64.max
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8ClampedArray> (; 457 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3760
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  local.get $1
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>> (; 458 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int16Array> (; 459 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int16Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i16>#__unchecked_get
    local.tee $5
    i32.ne
    if
     i32.const 3896
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_s
     local.get $5
     f64.convert_i32_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<f32>> (; 460 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $2
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array> (; 461 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    i64.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<f64>> (; 462 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $2
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int16Array> (; 463 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 3856
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 3936
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 3976
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 4016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array> (; 464 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.tee $4
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint16Array#__get
    local.set $3
    local.get $1
    i32.load offset=4
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.tee $5
    local.set $6
    local.get $3
    local.get $5
    i32.ne
    if
     i32.const 4096
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $3
     f64.convert_i32_u
     local.get $6
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<~lib/array/Array<f32>> (; 465 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $2
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<~lib/array/Array<f64>> (; 466 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $2
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint16Array> (; 467 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4056
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Uint16Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4136
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Uint16Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>> (; 468 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1775
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=12
  local.get $2
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int32Array> (; 469 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__unchecked_get
    local.tee $5
    i32.ne
    if
     i32.const 4312
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_s
     local.get $5
     f64.convert_i32_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<f32>> (; 470 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $5
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $1
    local.get $3
    i32.add
    local.get $1
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $2
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array> (; 471 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    i64.store32
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<f64>> (; 472 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $2
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int32Array> (; 473 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 3168
  i32.const 0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 4256
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 4352
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 4408
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 4464
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array> (; 474 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint32Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__unchecked_get
    local.tee $5
    i32.ne
    if
     i32.const 4576
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i32_u
     local.get $5
     f64.convert_i32_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<~lib/array/Array<f32>> (; 475 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $5
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $1
    local.get $3
    i32.add
    local.get $1
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $2
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<~lib/array/Array<f64>> (; 476 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $2
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint32Array> (; 477 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 3168
  i32.const 0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 4520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Uint32Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 4616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 4672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Uint32Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 4728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>> (; 478 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i64.load32_s
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int64Array> (; 479 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Int64Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<u64>#__unchecked_get
    local.tee $5
    i64.ne
    if
     i32.const 4880
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i64_s
     local.get $5
     f64.convert_i64_s
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<f32>> (; 480 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i64)
     local.get $2
     i64.trunc_f32_s
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array> (; 481 ;) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 48
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<f64>> (; 482 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.tee $5
    local.get $3
    i32.add
    local.get $4
    local.get $5
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i64)
     local.get $2
     i64.trunc_f64_s
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int64Array> (; 483 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 4784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 4920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 5016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 5112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array> (; 484 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.tee $3
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint64Array#__get
    local.tee $4
    local.get $1
    local.get $2
    call $~lib/array/Array<u64>#__unchecked_get
    local.tee $5
    i64.ne
    if
     i32.const 5304
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $4
     f64.convert_i64_u
     local.get $5
     f64.convert_i64_u
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<~lib/array/Array<f32>> (; 485 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i64)
     local.get $2
     i64.trunc_f32_u
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<~lib/array/Array<f64>> (; 486 ;) (param $0 i32) (param $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load offset=12
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.tee $5
    local.get $3
    i32.add
    local.get $4
    local.get $5
    i32.add
    f64.load
    local.tee $2
    local.get $2
    f64.sub
    f64.const 0
    f64.eq
    if (result i64)
     local.get $2
     i64.trunc_f64_u
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint64Array> (; 487 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 5208
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Uint64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 5344
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 5440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  i32.const 3304
  call $~lib/typedarray/Uint64Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 5536
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#set<~lib/array/Array<i32>> (; 488 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=12
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.tee $4
    local.get $2
    i32.add
    local.get $3
    local.get $4
    i32.add
    i32.load
    f32.convert_i32_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Float32Array> (; 489 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.tee $4
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Float32Array#__get
    local.set $3
    local.get $1
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $5
    local.set $6
    local.get $3
    local.get $5
    f32.ne
    if
     i32.const 5688
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $3
     f64.promote_f32
     local.get $6
     f64.promote_f32
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<~lib/typedarray/Int64Array> (; 490 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
    f32.convert_i64_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Float32Array> (; 491 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Float32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 5632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $0
  i32.const 3232
  i32.const 3
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 5728
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Float32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 5784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#set<~lib/array/Array<i32>> (; 492 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
    f64.convert_i32_s
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Float64Array> (; 493 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.tee $4
  local.get $1
  i32.load offset=12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 699
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/typedarray/Float64Array#__get
    local.set $3
    local.get $1
    i32.load offset=4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $5
    local.set $6
    local.get $3
    local.get $5
    f64.ne
    if
     i32.const 5936
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $3
     local.get $6
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 376
     i32.const 705
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    else
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
    unreachable
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/array/Array<f32>> (; 494 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=12
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    f32.load
    f64.promote_f32
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/typedarray/Int64Array> (; 495 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 48
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    local.tee $4
    i32.add
    local.get $3
    local.get $4
    i32.add
    i64.load
    f64.convert_i64_s
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Float64Array> (; 496 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 10
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 3168
  call $~lib/typedarray/Float64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 5840
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $0
  i32.const 3232
  call $~lib/typedarray/Float64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 5976
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Float64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 6072
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Float32Array> (; 497 ;) (param $0 i32) (param $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.add
  local.set $3
  local.get $1
  i32.load offset=4
  local.set $4
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.tee $2
    local.get $2
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     f32.const 0
     f32.const 255
     local.get $2
     f32.min
     f32.max
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int32Array> (; 498 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  i32.const 8
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 280
   i32.const 432
   i32.const 1776
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  i32.const 0
  local.set $0
  loop $loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
    local.tee $1
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    i32.const 255
    i32.and
    i32.const 255
    local.get $1
    i32.sub
    i32.const 31
    i32.shr_s
    local.get $1
    i32.or
    i32.and
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
 )
 (func $start:std/typedarray (; 499 ;) (type $FUNCSIG$v)
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
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 95
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 96
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 97
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 98
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 99
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 100
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 103
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 105
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 106
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 8
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 7
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 3
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 4
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 5
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 6
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 7
  f64.const 8
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Float64Array#subarray
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 122
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 123
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=8
  i32.const 32
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 124
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#sort
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.eq
  if (result i32)
   local.get $0
   i32.const 1
   call $~lib/typedarray/Float64Array#__get
   f64.const 5
   f64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.const 2
   call $~lib/typedarray/Float64Array#__get
   f64.const 6
   f64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.const 3
   call $~lib/typedarray/Float64Array#__get
   f64.const 7
   f64.eq
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 126
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  i32.const 0
  i32.const -32
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 256
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  if
   i32.const 0
   i32.const 376
   i32.const 135
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 137
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 149
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 560
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 152
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 155
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 158
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 165
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 166
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 167
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  i32.const 14
  i32.const 656
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 168
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 169
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 704
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 181
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 744
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 184
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 187
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 190
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 864
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 193
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  local.tee $1
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 197
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 198
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 199
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 200
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 936
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 201
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 5
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 222
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 223
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 224
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 225
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 228
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 229
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 230
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 231
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  local.tee $3
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 234
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 235
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 236
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 237
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.set $2
  local.get $1
  i32.const 0
  i32.const 3
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $3
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 976
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 248
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 3
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $5
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 250
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $7
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1056
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 252
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 2
  i32.const 2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1096
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 254
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $11
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1136
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 256
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $13
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 258
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 1
  i32.const 2
  i32.const 4
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $15
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 260
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $17
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1256
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 262
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const 0
  i32.const -2
  i32.const -1
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $19
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1296
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 264
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.get $1
  call $~lib/rt/pure/__release
  local.tee $1
  i32.const -4
  i32.const -3
  i32.const -2
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $21
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1336
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 266
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const -4
  i32.const -3
  i32.const -1
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $23
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1376
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $24
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 268
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  i32.const -4
  i32.const -3
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1416
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 270
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
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
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  local.tee $2
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 282
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 283
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 284
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#slice
  local.tee $1
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 287
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 288
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 289
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 291
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#slice
  local.tee $3
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 294
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 295
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 376
   i32.const 296
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 297
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.tee $4
  local.get $0
  i32.eq
  if
   i32.const 0
   i32.const 376
   i32.const 300
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 301
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 302
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 303
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64>
  i32.const 1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const nan:0x8000000000000
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  f64.const nan:0x8000000000000
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 607
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float64Array#includes
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 608
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  i32.const 0
  f32.const nan:0x400000
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  f32.const nan:0x400000
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 613
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/typedarray/Float32Array#includes
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 376
   i32.const 614
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Int8Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8ClampedArray>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Int16Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint16Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Int32Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint32Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Int64Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Uint64Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Float32Array>
  call $std/typedarray/testTypedArraySet<~lib/typedarray/Float64Array>
  i32.const 10
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $2
  i32.const 0
  f32.const 400
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  i32.const 1
  f32.const nan:0x400000
  call $~lib/typedarray/Float32Array#__set
  local.get $2
  i32.const 2
  f32.const inf
  call $~lib/typedarray/Float32Array#__set
  i32.const 4
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.const 0
  i64.const -10
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 100
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 10
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 3
  i64.const 300
  call $~lib/typedarray/Int64Array#__set
  i32.const 2
  call $~lib/typedarray/Int32Array#constructor
  local.tee $3
  i32.const 0
  i32.const 300
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  i32.const 1
  i32.const -1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Float32Array>
  local.get $0
  local.get $1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int32Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 6168
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $start (; 500 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/typedarray
 )
 (func $~lib/rt/pure/__visit (; 501 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 6380
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.eq
         br_if $case1|0
         block $tablify|0
          local.get $1
          i32.const 3
          i32.sub
          br_table $case2|0 $case3|0 $case4|0 $tablify|0
         end
         br $case5|0
        end
        local.get $0
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 232
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $0
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $0
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 232
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $0
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 232
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/__visit_members (; 502 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$2
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $switch$1$default
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   local.get $1
   call $~lib/rt/pure/__visit
  end
 )
 (func $null (; 503 ;) (type $FUNCSIG$v)
  unreachable
 )
)
