(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i64_i32_i32_=>_i32 (func (param i64 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $f32_i32_i32_=>_i32 (func (param f32 i32 i32) (result i32)))
 (type $f64_i32_i32_=>_i32 (func (param f64 i32 i32) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i64_i64_i32_i32_=>_i64 (func (param i64 i64 i32 i32) (result i64)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i64_i32_i32_=>_none (func (param i64 i32 i32)))
 (type $i32_i32_i64_=>_i32 (func (param i32 i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_f32_i32_=>_i32 (func (param i32 f32 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_i32_=>_i32 (func (param i32 f64 i32) (result i32)))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $i32_i32_f64_f64_f64_f64_f64_=>_none (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $f32_i32_i32_=>_none (func (param f32 i32 i32)))
 (type $f64_i32_i32_=>_none (func (param f64 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_i64_i32_i64_i32_=>_i32 (func (param i32 i64 i32 i64 i32 i64 i32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i64_i32_i32_=>_i64 (func (param i64 i32 i32) (result i64)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $f32_i32_i32_=>_f32 (func (param f32 i32 i32) (result f32)))
 (type $f32_f32_i32_i32_=>_f32 (func (param f32 f32 i32 i32) (result f32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $f64_i32_i32_=>_f64 (func (param f64 i32 i32) (result f64)))
 (type $f64_f64_i32_i32_=>_f64 (func (param f64 f64 i32 i32) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "env" "trace" (func $~lib/builtins/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (memory $0 1)
 (data (i32.const 16) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 64) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 176) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 240) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 288) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 352) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 416) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 480) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 512) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 560) "\05\00\00\00\01\00\00\00\00\00\00\00\05")
 (data (i32.const 592) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01")
 (data (i32.const 624) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 656) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 688) "\03\00\00\00\01\00\00\00\00\00\00\00\03")
 (data (i32.const 720) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00\02")
 (data (i32.const 752) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 800) "\14\00\00\00\01\00\00\00\00\00\00\00\14")
 (data (i32.const 848) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01")
 (data (i32.const 896) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 944) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 992) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c")
 (data (i32.const 1024) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01")
 (data (i32.const 1056) "\02")
 (data (i32.const 1072) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1120) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00\04\00\00\00\05")
 (data (i32.const 1168) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1216) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1264) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1312) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1360) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1408) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\05\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1456) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1504) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\05")
 (data (i32.const 1552) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\04\00\00\00\05")
 (data (i32.const 1600) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\05")
 (data (i32.const 1648) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\n\00\00\00\0c\00\00\00\0e")
 (data (i32.const 1680) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\80\06\00\00\80\06\00\00\0c\00\00\00\03")
 (data (i32.const 1712) "$\00\00\00\01\00\00\00\00\00\00\00$\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 1776) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\c0\06\00\00\c0\06\00\00$\00\00\00\t")
 (data (i32.const 1808) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n")
 (data (i32.const 1872) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00 \07\00\00 \07\00\00,\00\00\00\0b")
 (data (i32.const 1908) "\01\00\00\00\01")
 (data (i32.const 1920) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1952) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00,")
 (data (i32.const 1984) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\001\00,\002\00,\003\00,\004\00,\005")
 (data (i32.const 2032) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 2064) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 2096) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 2144) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 2176) "\b8\02\00\00\01\00\00\00\00\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 2896) "\10\00\00\00\01\00\00\00\10\00\00\00\10\00\00\00\90\08\00\00\90\08\00\00\b8\02\00\00W")
 (data (i32.const 2928) "\ae\00\00\00\01\00\00\00\00\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 3120) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00\80\0b\00\00\80\0b\00\00\ae\00\00\00W")
 (data (i32.const 3152) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 3216) "\10\00\00\00\01\00\00\00\12\00\00\00\10\00\00\00`\0c\00\00`\0c\00\00(\00\00\00\n")
 (data (i32.const 3248) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\001\00.\000\00,\002\00.\000\00,\003\00.\000\00,\004\00.\000\00,\005\00.\000")
 (data (i32.const 3312) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n")
 (data (i32.const 3376) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\00\0d\00\00\00\0d\00\00,\00\00\00\0b")
 (data (i32.const 3408) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 3440) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00`\0d\00\00`\0d\00\00\0c\00\00\00\03")
 (data (i32.const 3472) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80@\00\00\a0@\00\00\c0@")
 (data (i32.const 3504) "\10\00\00\00\01\00\00\00\13\00\00\00\10\00\00\00\a0\0d\00\00\a0\0d\00\00\0c\00\00\00\03")
 (data (i32.const 3536) "\18\00\00\00\01\00\00\00\00\00\00\00\18")
 (data (i32.const 3558) "\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff")
 (data (i32.const 3584) "\10\00\00\00\01\00\00\00\14\00\00\00\10\00\00\00\e0\0d\00\00\e0\0d\00\00\18\00\00\00\03")
 (data (i32.const 3616) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\92\91\90")
 (data (i32.const 3648) "\10\00\00\00\01\00\00\00\0e\00\00\00\10\00\00\000\0e\00\000\0e\00\00\03\00\00\00\03")
 (data (i32.const 3680) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 3712) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00I\00n\00t\008\00A\00r\00r\00a\00y")
 (data (i32.const 3760) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 3792) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 3824) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 3856) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00defg\e8\e9\ea\92\91\90")
 (data (i32.const 3888) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 3920) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00U\00i\00n\00t\008\00A\00r\00r\00a\00y")
 (data (i32.const 3968) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 4000) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 4032) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 4064) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00defg\e8\e9\ea\92\91\90")
 (data (i32.const 4096) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03")
 (data (i32.const 4128) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00U\00i\00n\00t\008\00C\00l\00a\00m\00p\00e\00d\00A\00r\00r\00a\00y")
 (data (i32.const 4192) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06")
 (data (i32.const 4224) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\03\04\05\06\07\08\t")
 (data (i32.const 4256) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\02\00\00\00\06\07\08\t")
 (data (i32.const 4288) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00defg\ff\ff\ff")
 (data (i32.const 4320) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03")
 (data (i32.const 4368) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\001\006\00A\00r\00r\00a\00y")
 (data (i32.const 4416) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06")
 (data (i32.const 4464) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\t")
 (data (i32.const 4512) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\00\00\00\00\00\00\06\00\07\00\08\00\t")
 (data (i32.const 4560) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00d\00e\00f\00g\00\e8\03\e9\03\ea\03\92\ff\91\ff\90\ff")
 (data (i32.const 4608) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03")
 (data (i32.const 4656) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\001\006\00A\00r\00r\00a\00y")
 (data (i32.const 4704) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06")
 (data (i32.const 4752) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\03\00\04\00\05\00\06\00\07\00\08\00\t")
 (data (i32.const 4800) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\02\00\00\00\00\00\00\00\06\00\07\00\08\00\t")
 (data (i32.const 4848) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00d\00e\00f\00g\00\e8\03\e9\03\ea\03\92\ff\91\ff\90\ff")
 (data (i32.const 4896) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 4960) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 5008) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 5072) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 5136) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02")
 (data (i32.const 5172) "\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 5200) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00d\00\00\00e\00\00\00f\00\00\00g\00\00\00\e8\03\00\00\e9\03\00\00\ea\03\00\00\92\ff\ff\ff\91\ff\ff\ff\90\ff\ff\ff")
 (data (i32.const 5264) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03")
 (data (i32.const 5328) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 5376) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06")
 (data (i32.const 5440) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 5504) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\01\00\00\00\02")
 (data (i32.const 5540) "\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 5568) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00d\00\00\00e\00\00\00f\00\00\00g\00\00\00\e8\03\00\00\e9\03\00\00\ea\03\00\00\92\ff\ff\ff\91\ff\ff\ff\90\ff\ff\ff")
 (data (i32.const 5632) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03")
 (data (i32.const 5728) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00I\00n\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 5776) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06")
 (data (i32.const 5872) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 5968) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02")
 (data (i32.const 6024) "\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 6064) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00d\00\00\00\00\00\00\00e\00\00\00\00\00\00\00f\00\00\00\00\00\00\00g\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\e9\03\00\00\00\00\00\00\ea\03\00\00\00\00\00\00\92\ff\ff\ff\ff\ff\ff\ff\91\ff\ff\ff\ff\ff\ff\ff\90\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 6160) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03")
 (data (i32.const 6256) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00U\00i\00n\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 6304) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06")
 (data (i32.const 6400) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 6496) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\01\00\00\00\00\00\00\00\02")
 (data (i32.const 6552) "\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\t")
 (data (i32.const 6592) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00d\00\00\00\00\00\00\00e\00\00\00\00\00\00\00f\00\00\00\00\00\00\00g\00\00\00\00\00\00\00\e8\03\00\00\00\00\00\00\e9\03\00\00\00\00\00\00\ea\03\00\00\00\00\00\00\92\ff\ff\ff\ff\ff\ff\ff\91\ff\ff\ff\ff\ff\ff\ff\90\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 6688) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 6752) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00F\00l\00o\00a\00t\003\002\00A\00r\00r\00a\00y")
 (data (i32.const 6800) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\a0@\00\00\c0@")
 (data (i32.const 6864) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\a0@\00\00\c0@\00\00\e0@\00\00\00A\00\00\10A")
 (data (i32.const 6928) "(\00\00\00\01\00\00\00\00\00\00\00(\00\00\00\00\00\c8B\00\00\caB\00\00\ccB\00\00\ceB\00\00zD\00@zD\00\80zD\00\00\dc\c2\00\00\de\c2\00\00\e0\c2")
 (data (i32.const 6992) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 7014) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@")
 (data (i32.const 7088) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00F\00l\00o\00a\00t\006\004\00A\00r\00r\00a\00y")
 (data (i32.const 7136) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 7158) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\10@\00\00\00\00\00\00\14@\00\00\00\00\00\00\18@")
 (data (i32.const 7232) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 7254) "\f0?\00\00\00\00\00\00\00@\00\00\00\00\00\00\08@\00\00\00\00\00\00\10@\00\00\00\00\00\00\14@\00\00\00\00\00\00\18@\00\00\00\00\00\00\1c@\00\00\00\00\00\00 @\00\00\00\00\00\00\"@")
 (data (i32.const 7328) "P\00\00\00\01\00\00\00\00\00\00\00P")
 (data (i32.const 7350) "Y@\00\00\00\00\00@Y@\00\00\00\00\00\80Y@\00\00\00\00\00\c0Y@\00\00\00\00\00@\8f@\00\00\00\00\00H\8f@\00\00\00\00\00P\8f@\00\00\00\00\00\80[\c0\00\00\00\00\00\c0[\c0\00\00\00\00\00\00\\\c0")
 (data (i32.const 7424) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\00\ff\00\00\00d\n\ff\ff")
 (data (i32.const 7456) "\n\00\00\00\01\00\00\00\00\00\00\00\n\00\00\00\01\ffd\ff\00\00d\n\ff")
 (table $0 123 funcref)
 (elem (i32.const 1) $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~lib/rt/tlsf/removeBlock (; 7 ;) (param $0 i32) (param $1 i32)
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
   i32.const 144
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
   i32.const 144
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
   i32.const 144
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
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
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
 (func $~lib/rt/tlsf/insertBlock (; 8 ;) (param $0 i32) (param $1 i32)
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
   i32.const 144
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
   i32.const 144
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
    local.get $2
    local.get $3
    i32.const 3
    i32.and
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
    i32.const 144
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
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $7
    local.get $6
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
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
   i32.const 144
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 144
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
   i32.const 144
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $4
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
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
  local.get $0
  local.get $4
  local.get $3
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
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 9 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 144
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
    i32.const 144
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
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
    i32.const 144
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
 (func $~lib/rt/tlsf/maybeInitialize (; 10 ;) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
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
   i32.const 7488
   local.tee $0
   i32.const 0
   i32.store
   i32.const 9056
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 7488
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 7488
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 7488
   i32.const 9072
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 7488
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (; 11 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 192
   i32.const 144
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
 (func $~lib/rt/tlsf/searchBlock (; 12 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 144
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
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
     i32.const 144
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
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
 (func $~lib/rt/tlsf/growMemory (; 13 ;) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.const 1
  i32.const 27
  local.get $1
  i32.clz
  i32.sub
  i32.shl
  i32.const 1
  i32.sub
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
 (func $~lib/rt/tlsf/prepareBlock (; 14 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 144
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
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 16
   i32.add
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
 (func $~lib/rt/tlsf/allocateBlock (; 15 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 144
   i32.const 490
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 144
     i32.const 502
     i32.const 19
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 144
   i32.const 510
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 16 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 17 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
   local.set $3
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
   local.get $2
   local.get $3
   i32.const -4
   i32.and
   local.tee $3
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
   loop $while-continue|0
    local.get $2
    i32.const 32
    i32.ge_u
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
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/pure/increment (; 18 ;) (param $0 i32)
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
   i32.const 256
   i32.const 109
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
   i32.const 256
   i32.const 112
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 19 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 7484
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (; 20 ;) (param $0 i32)
  local.get $0
  i32.const 7484
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 21 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 32
   i32.const 80
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
  local.get $2
  local.get $0
  i32.load
  local.tee $4
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
 (func $~lib/typedarray/Int8Array#constructor (; 22 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 23 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 24 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 25 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int16Array#constructor (; 26 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int16Array#get:length (; 27 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 28 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int32Array#constructor (; 29 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int32Array#get:length (; 30 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 31 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int64Array#constructor (; 32 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int64Array#get:length (; 33 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 34 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float32Array#constructor (; 35 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float64Array#constructor (; 36 ;) (param $0 i32) (result i32)
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
 )
 (func $std/typedarray/testInstantiate (; 37 ;) (param $0 i32)
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
   i32.const 304
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.load offset=8
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int32Array#__set (; 38 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $~lib/typedarray/Int32Array#__get (; 39 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $~lib/typedarray/Int32Array#subarray (; 40 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float64Array#__set (; 41 ;) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $~lib/typedarray/Float64Array#subarray (; 42 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~setArgumentsLength (; 43 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~lib/util/sort/insertionSort<f64> (; 44 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.lt_s
   if
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
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 0
     i32.ge_s
     if
      block $while-break|1
       local.get $0
       local.get $2
       i32.const 3
       i32.shl
       i32.add
       f64.load
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $4
       local.get $5
       call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
       i32.const 0
       i32.ge_s
       br_if $while-break|1
       local.get $2
       local.tee $6
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.get $6
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $5
       f64.store
       br $while-continue|1
      end
     end
    end
    local.get $0
    local.get $2
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/rt/tlsf/checkUsedBlock (; 45 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 570
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (; 46 ;) (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/tlsf/__free (; 47 ;) (param $0 i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 48 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $5
  i32.const 0
  local.get $2
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 0
   i32.gt_s
   if
    local.get $3
    local.set $2
    loop $while-continue|1
     local.get $2
     i32.const 1
     i32.and
     local.get $5
     local.get $2
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $2
      i32.const 1
      i32.shr_s
      local.set $2
      br $while-continue|1
     end
    end
    local.get $0
    local.get $2
    i32.const 1
    i32.shr_s
    local.tee $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $4
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $6
    i32.const 2
    global.set $~argumentsLength
    local.get $4
    local.get $6
    call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $3
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.tee $7
     local.get $7
     i32.load
     i32.const 1
     local.get $3
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $3
     i32.const 3
     i32.shl
     i32.add
     local.get $4
     f64.store
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     f64.store
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $3
  loop $for-loop|2
   local.get $3
   i32.const 2
   i32.ge_s
   if
    local.get $0
    f64.load
    local.set $4
    local.get $0
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.tee $1
    f64.load
    f64.store
    local.get $1
    local.get $4
    f64.store
    i32.const 1
    local.set $1
    loop $while-continue|3
     local.get $5
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
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
     local.tee $2
     local.get $3
     i32.lt_s
     if
      local.get $2
      local.set $1
      br $while-continue|3
     end
    end
    loop $while-continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f64.load
      local.set $4
      local.get $0
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~argumentsLength
      local.get $4
      local.get $6
      call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.tee $2
       local.get $2
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $1
       i32.const 3
       i32.shl
       i32.add
       local.get $4
       f64.store
       local.get $0
       local.get $6
       f64.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $while-continue|4
     end
    end
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    br $for-loop|2
   end
  end
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $4
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $4
  f64.store
 )
 (func $~lib/typedarray/Float64Array#sort (; 49 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  block $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   call $~lib/typedarray/Int64Array#get:length
   local.tee $1
   i32.const 1
   i32.le_s
   br_if $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $2
   i32.load offset=4
   local.set $0
   local.get $1
   i32.const 2
   i32.eq
   if
    local.get $0
    f64.load offset=8
    local.set $3
    local.get $0
    f64.load
    local.set $4
    i32.const 2
    global.set $~argumentsLength
    local.get $3
    local.get $4
    call $~lib/util/sort/COMPARATOR<f64>~anonymous|0
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $4
     f64.store offset=8
     local.get $0
     local.get $3
     f64.store
    end
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $1
   i32.const 256
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/util/sort/insertionSort<f64>
   else
    local.get $0
    local.get $1
    call $~lib/util/sort/weakHeapSort<f64>
   end
  end
  local.get $2
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 50 ;) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/typedarray/Float64Array#__get (; 51 ;) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 52 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 368
   i32.const 432
   i32.const 291
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.const 255
  local.get $2
  i32.sub
  i32.const 31
  i32.shr_s
  i32.or
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const -1
  i32.xor
  i32.and
  i32.store8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__get (; 53 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 368
   i32.const 432
   i32.const 280
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Int8Array#__set (; 54 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 368
   i32.const 432
   i32.const 35
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Int8Array#fill (; 55 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/memory/memory.copy (; 56 ;) (param $0 i32) (param $1 i32) (param $2 i32)
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
     loop $while-continue|0
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
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
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
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
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
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      if
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       local.get $0
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     if
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      local.get $0
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__allocArray (; 57 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#__get (; 58 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 368
   i32.const 432
   i32.const 24
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 59 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 60 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 368
   i32.const 528
   i32.const 96
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
 )
 (func $std/typedarray/isInt8ArrayEqual (; 61 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
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
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int8Array#subarray (; 62 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  local.get $4
  i32.load offset=4
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
 (func $~lib/typedarray/Int32Array#fill (; 63 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $6
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $5
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $4
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 64 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 65 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 368
   i32.const 528
   i32.const 96
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $std/typedarray/isInt32ArrayEqual (; 66 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
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
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int32Array#slice (; 67 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#copyWithin (; 68 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  local.get $6
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 69 ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 70 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 71 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__set (; 72 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 368
   i32.const 432
   i32.const 163
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 73 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 74 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 75 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__set (; 76 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 77 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 78 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#__set (; 79 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 80 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 81 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 82 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 83 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#__set (; 84 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 85 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__set (; 86 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 87 ;) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 88 ;) (param $0 i32) (param $1 i32) (result i64)
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
  loop $for-loop|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i64_i64_i32_i32_=>_i64)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 89 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#__set (; 90 ;) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 91 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__set (; 92 ;) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 93 ;) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 94 ;) (param $0 i32) (result f32)
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
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 2
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 95 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 96 ;) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 97 ;) (param $0 i32) (result f64)
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
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 98 ;)
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
   i32.const 304
   i32.const 323
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 99 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 100 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 101 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 102 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 103 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 104 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 105 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 106 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 107 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 108 ;) (param $0 i32) (param $1 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_i32_=>_i32)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 109 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 110 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 111 ;) (param $0 i32) (param $1 i32) (result i64)
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
  loop $for-loop|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    local.get $4
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i64_i64_i32_i32_=>_i64)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 112 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 113 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 114 ;) (param $0 i32) (result f32)
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
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 2
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 115 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 116 ;) (param $0 i32) (result f64)
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
  loop $for-loop|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 117 ;)
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
   i32.const 304
   i32.const 344
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 118 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 119 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 120 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint8Array#map (; 121 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    br $for-loop|0
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
 (func $~lib/typedarray/Uint8Array#__get (; 122 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 368
   i32.const 432
   i32.const 152
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 123 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint8ClampedArray#map (; 124 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 125 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int16Array#map (; 126 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $~lib/typedarray/Int16Array#__get (; 127 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 128 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint16Array#map (; 129 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 1
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $~lib/typedarray/Uint16Array#__get (; 130 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 131 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int32Array#map (; 132 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 133 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint32Array#map (; 134 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $~lib/typedarray/Uint32Array#__get (; 135 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 136 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 137 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 138 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $~lib/typedarray/Int64Array#__get (; 139 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 140 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint64Array#map (; 141 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $~lib/typedarray/Uint64Array#__get (; 142 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 143 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 144 ;) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 145 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 2
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $~lib/typedarray/Float32Array#__get (; 146 ;) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 368
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 147 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 148 ;) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 149 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $2
    i32.const 3
    i32.shl
    local.tee $7
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 150 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 151 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.gt_s
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 152 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
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
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $5
    i32.const 3
    i32.and
    local.get $4
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
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 7484
  i32.ge_u
  if
   local.get $1
   local.get $3
   call $~lib/rt/rtrace/onrealloc
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/rt/tlsf/__realloc (; 153 ;) (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/typedarray/Int8Array#filter (; 154 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
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
    global.set $~argumentsLength
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8> (; 155 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 156 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint8Array#filter (; 157 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
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
    global.set $~argumentsLength
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8> (; 158 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint8ClampedArray#filter (; 159 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
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
    global.set $~argumentsLength
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
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8> (; 160 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 161 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.gt_s
 )
 (func $~lib/typedarray/Int16Array#filter (; 162 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     i32.store16
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16> (; 163 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 164 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint16Array#filter (; 165 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     i32.store16
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16> (; 166 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 167 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.gt_s
 )
 (func $~lib/typedarray/Int32Array#filter (; 168 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32> (; 169 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 170 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.gt_u
 )
 (func $~lib/typedarray/Uint32Array#filter (; 171 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     i32.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32> (; 172 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 173 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.gt_s
 )
 (func $~lib/typedarray/Int64Array#filter (; 174 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     i64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64> (; 175 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 176 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.gt_u
 )
 (func $~lib/typedarray/Uint64Array#filter (; 177 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     i64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64> (; 178 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 179 ;) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.gt
 )
 (func $~lib/typedarray/Float32Array#filter (; 180 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.get $6
     f32.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32> (; 181 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 182 ;) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.gt
 )
 (func $~lib/typedarray/Float64Array#filter (; 183 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    local.get $7
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
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
     local.get $5
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.get $6
     f64.store
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
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
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64> (; 184 ;)
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 185 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 186 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 187 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 188 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#some (; 189 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 190 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 191 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 192 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 193 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 194 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 195 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#some (; 196 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 197 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 198 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 199 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 200 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 201 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 202 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 203 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 204 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i64_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 205 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 206 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 207 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 208 ;) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 209 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $f32_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 210 ;) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 211 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 212 ;) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 213 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 1
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $f64_i32_i32_=>_i32)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 214 ;) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 215 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 417
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 216 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 217 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 218 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 219 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 220 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 221 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 222 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 223 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 224 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 225 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 226 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 227 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 228 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 229 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 230 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 231 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i64_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 232 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 233 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 234 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 235 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $f32_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 236 ;) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 237 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 238 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     local.get $2
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $f64_i32_i32_=>_i32)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 239 ;) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 240 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 440
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 241 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int8Array#every (; 242 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 243 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 244 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 245 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 246 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 247 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 248 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int16Array#every (; 249 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 250 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#every (; 251 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 252 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 253 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int32Array#every (; 254 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i32_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 255 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 256 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 257 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_s
  i64.eqz
 )
 (func $~lib/typedarray/Int64Array#every (; 258 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $i64_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 259 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 260 ;) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_u
  i64.eqz
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 261 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/math/NativeMathf.mod (; 262 ;) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  i32.const 0
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.tee $2
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
  local.get $1
  i32.const -2147483648
  i32.and
  local.set $4
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
   loop $while-continue|0
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
     br $while-continue|0
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 263 ;) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 264 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $f32_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 265 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/math/NativeMath.mod (; 266 ;) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  i32.const 1
  i32.const 0
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $2
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
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $4
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
   loop $while-continue|0
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
     br $while-continue|0
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 267 ;) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 268 ;) (param $0 i32) (param $1 i32) (result i32)
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
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~argumentsLength
     i32.const 0
     local.get $3
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $f64_i32_i32_=>_i32)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 269 ;)
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
   i32.const 304
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
   i32.const 304
   i32.const 463
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 270 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 1696
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int8Array#forEach (; 271 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
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
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 272 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#forEach (; 273 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $3
    i32.add
    i32.load8_u
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 274 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 275 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 276 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 1696
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int16Array#forEach (; 277 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 278 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#forEach (; 279 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 280 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 281 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  i32.const 1696
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int32Array#forEach (; 282 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i32_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 283 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 284 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 285 ;) (param $0 i64) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 1696
  local.get $1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  i64.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int64Array#forEach (; 286 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $3
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $i64_i32_i32_=>_none)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 287 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 288 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 289 ;) (param $0 f32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 1696
  local.get $1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float32Array#forEach (; 290 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 291 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 292 ;) (param $0 f64) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 1696
  local.get $1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  f64.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float64Array#forEach (; 293 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  local.set $3
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~argumentsLength
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $1
    local.get $0
    call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 294 ;)
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
  i32.const 1696
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  i32.const 1696
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  i32.const 1696
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
   i32.const 304
   i32.const 495
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reverse (; 295 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 296 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    local.get $0
    i32.const 1792
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
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint8Array#reverse (; 297 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 298 ;) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $3
  local.get $0
  i32.load offset=4
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 299 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint8ClampedArray#subarray (; 300 ;) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $3
  local.get $0
  i32.load offset=4
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 301 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int16Array#reverse (; 302 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.tee $2
    i32.load16_s
    local.set $5
    local.get $2
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#subarray (; 303 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 304 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $3
    local.get $0
    i32.const 1792
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
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint16Array#reverse (; 305 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.tee $2
    i32.load16_u
    local.set $5
    local.get $2
    local.get $4
    local.get $1
    i32.const 1
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#subarray (; 306 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 307 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int32Array#reverse (; 308 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load
    local.set $5
    local.get $2
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 309 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    i32.const 1792
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint32Array#subarray (; 310 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32> (; 311 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint32Array#__get
    i32.const 1792
    local.get $1
    i32.const 1
    i32.sub
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int64Array#reverse (; 312 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    i64.load
    local.set $5
    local.get $2
    local.get $4
    local.get $1
    i32.const 3
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#subarray (; 313 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 314 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Uint64Array#subarray (; 315 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64> (; 316 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint64Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float32Array#reverse (; 317 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    f32.load
    local.set $5
    local.get $2
    local.get $4
    local.get $1
    i32.const 2
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#subarray (; 318 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 319 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float64Array#reverse (; 320 ;) (param $0 i32) (result i32)
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $4
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.tee $2
    f64.load
    local.set $5
    local.get $2
    local.get $4
    local.get $1
    i32.const 3
    i32.shl
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
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 321 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1804
  i32.load
  local.tee $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $4
  local.set $2
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $5
  local.set $3
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $3
    local.get $0
    i32.const 1792
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    i32.const 1792
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
     i32.const 304
     i32.const 524
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int8Array#indexOf (; 322 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $while-continue|0
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
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf (; 323 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $while-continue|0
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
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf|trampoline (; 324 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8> (; 325 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
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
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8> (; 326 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8> (; 327 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int16Array#indexOf (; 328 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
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
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf (; 329 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
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
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf|trampoline (; 330 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16> (; 331 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
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
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16> (; 332 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int32Array#indexOf (; 333 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $1
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf (; 334 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $1
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf|trampoline (; 335 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32> (; 336 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32> (; 337 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 11
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const -1
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Int64Array#indexOf (; 338 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $1
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i64.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf (; 339 ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $1
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     i64.load
     i64.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf|trampoline (; 340 ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64> (; 341 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 11
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const -1
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64> (; 342 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 11
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const -1
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i64.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float32Array#indexOf (; 343 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $1
     f32.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf (; 344 ;) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $0
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $1
     f32.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf|trampoline (; 345 ;) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32> (; 346 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  f32.const 0
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const 11
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const -1
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f32.const 3
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float64Array#indexOf (; 347 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $1
     f64.eq
     br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf (; 348 ;) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
   loop $while-continue|0
    local.get $2
    i32.const 0
    i32.ge_s
    if
     local.get $0
     local.get $2
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $1
     f64.eq
     br_if $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|0
    end
   end
   i32.const -1
   local.set $2
  end
  local.get $2
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf|trampoline (; 349 ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64> (; 350 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1900
  i32.load
  local.tee $0
  local.set $2
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.tee $3
  local.set $0
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1888
    local.get $1
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  f64.const 0
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 565
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  if
   i32.const 0
   i32.const 304
   i32.const 567
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const 11
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 568
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const -1
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 304
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  f64.const 3
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
 (func $~lib/typedarray/Float64Array#includes (; 351 ;) (param $0 i32) (result i32)
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
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 1
     local.get $0
     local.get $1
     i32.const 3
     i32.shl
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
     br $while-continue|0
    end
   end
   i32.const 0
  end
 )
 (func $~lib/typedarray/Float32Array#includes (; 352 ;) (param $0 i32) (result i32)
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
   loop $while-continue|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 1
     local.get $0
     local.get $1
     i32.const 2
     i32.shl
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
     br $while-continue|0
    end
   end
   i32.const 0
  end
 )
 (func $~lib/util/number/decimalCount32 (; 353 ;) (param $0 i32) (result i32)
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
 (func $~lib/util/number/utoa_simple<u32> (; 354 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.div_u
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
   local.tee $1
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/itoa32 (; 355 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1936
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
 (func $~lib/string/String#get:length (; 356 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/number/itoa_stream<i8> (; 357 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
 (func $~lib/string/String#substring (; 358 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  i32.const 0
  local.get $4
  local.get $2
  i32.const 1
  i32.shl
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
 (func $~lib/util/string/joinIntegerArray<i8> (; 359 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load8_s
   call $~lib/util/number/itoa32
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
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
  loop $for-loop|0
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
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
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
 (func $~lib/typedarray/Int8Array#join (; 360 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<i8>
 )
 (func $~lib/util/string/compareImpl (; 361 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   loop $do-continue|0
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
     br_if $do-continue|0
    end
   end
  end
  loop $while-continue|1
   local.get $2
   local.tee $3
   i32.const 1
   i32.sub
   local.set $2
   local.get $3
   if
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
    end
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (; 362 ;) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int8Array,i8> (; 363 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int8Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/utoa32 (; 364 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1936
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
 (func $~lib/util/number/itoa_stream<u8> (; 365 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/string/joinIntegerArray<u8> (; 366 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load8_u
   call $~lib/util/number/utoa32
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
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
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
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
 (func $~lib/typedarray/Uint8Array#join (; 367 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=8
  call $~lib/util/string/joinIntegerArray<u8>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint8Array,u8> (; 368 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint8Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint8ClampedArray,u8> (; 369 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint8Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/itoa_stream<i16> (; 370 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
 (func $~lib/util/string/joinIntegerArray<i16> (; 371 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load16_s
   call $~lib/util/number/itoa32
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
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
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    call $~lib/util/number/itoa_stream<i16>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 1
  i32.shl
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
 (func $~lib/typedarray/Int16Array#join (; 372 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  call $~lib/util/string/joinIntegerArray<i16>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int16Array,i16> (; 373 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int16Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/itoa_stream<u16> (; 374 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/string/joinIntegerArray<u16> (; 375 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load16_u
   call $~lib/util/number/utoa32
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    call $~lib/util/number/itoa_stream<u16>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 1
  i32.shl
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
 (func $~lib/typedarray/Uint16Array#join (; 376 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  call $~lib/util/string/joinIntegerArray<u16>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint16Array,u16> (; 377 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint16Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/itoa_stream<i32> (; 378 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/string/joinIntegerArray<i32> (; 379 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/itoa32
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 11
  i32.add
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
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<i32>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
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
 (func $~lib/typedarray/Int32Array#join (; 380 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  call $~lib/util/string/joinIntegerArray<i32>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int32Array,i32> (; 381 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int32Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/itoa_stream<u32> (; 382 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  local.get $0
  local.get $2
  local.get $2
  call $~lib/util/number/decimalCount32
  local.tee $0
  call $~lib/util/number/utoa_simple<u32>
  local.get $0
 )
 (func $~lib/util/string/joinIntegerArray<u32> (; 383 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i32.load
   call $~lib/util/number/utoa32
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
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
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    call $~lib/util/number/itoa_stream<u32>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
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
 (func $~lib/typedarray/Uint32Array#join (; 384 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  call $~lib/util/string/joinIntegerArray<u32>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint32Array,u32> (; 385 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint32Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/decimalCount64 (; 386 ;) (param $0 i64) (result i32)
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
 (func $~lib/util/number/utoa_simple<u64> (; 387 ;) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i64)
  loop $do-continue|0
   local.get $1
   i64.const 10
   i64.div_u
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i64.const 10
   i64.rem_u
   i32.wrap_i64
   i32.const 48
   i32.add
   i32.store16
   local.tee $1
   i64.const 0
   i64.ne
   br_if $do-continue|0
  end
 )
 (func $~lib/util/number/itoa64 (; 388 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1936
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
 (func $~lib/util/number/itoa_stream<i64> (; 389 ;) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
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
 (func $~lib/util/string/joinIntegerArray<i64> (; 390 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i64.load
   call $~lib/util/number/itoa64
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 21
  i32.add
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
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<i64>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
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
 (func $~lib/typedarray/Int64Array#join (; 391 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  call $~lib/util/string/joinIntegerArray<i64>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Int64Array,i64> (; 392 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Int64Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/number/utoa64 (; 393 ;) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i64.eqz
  if
   i32.const 1936
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
 (func $~lib/util/number/itoa_stream<u64> (; 394 ;) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
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
 (func $~lib/util/string/joinIntegerArray<u64> (; 395 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   i64.load
   call $~lib/util/number/utoa64
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 20
  i32.add
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
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    i64.load
    call $~lib/util/number/itoa_stream<u64>
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
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
 (func $~lib/typedarray/Uint64Array#join (; 396 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  call $~lib/util/string/joinIntegerArray<u64>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Uint64Array,u64> (; 397 ;)
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
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 629
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Uint64Array#join
  local.tee $1
  local.get $1
  i32.const 2000
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/array/Array<u64>#__unchecked_get (; 398 ;) (param $0 i32) (param $1 i32) (result i64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $~lib/array/Array<i16>#__unchecked_get (; 399 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $~lib/util/number/genDigits (; 400 ;) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (param $6 i32) (result i32)
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
  local.get $3
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
  i32.const 3236
  i32.load
  local.set $13
  loop $while-continue|0
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
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case10|1
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
     local.get $0
     local.get $2
     i32.const 1
     i32.shl
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
    local.get $12
    local.get $7
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    i64.shl
    i64.add
    local.tee $1
    local.get $5
    i64.le_u
    if
     local.get $4
     global.get $~lib/util/number/_K
     i32.add
     global.set $~lib/util/number/_K
     local.get $13
     local.get $4
     i32.const 2
     i32.shl
     i32.add
     i64.load32_u
     local.get $10
     i64.extend_i32_s
     i64.shl
     local.set $3
     local.get $0
     local.get $6
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     i32.load16_u
     local.set $4
     loop $while-continue|3
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
       br $while-continue|3
      end
     end
     local.get $2
     local.get $4
     i32.store16
     local.get $6
     return
    end
    br $while-continue|0
   end
  end
  loop $while-continue|4 (result i32)
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
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
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
   br_if $while-continue|4
   local.get $4
   global.get $~lib/util/number/_K
   i32.add
   global.set $~lib/util/number/_K
   local.get $12
   local.set $1
   local.get $9
   local.get $13
   i32.const 0
   local.get $4
   i32.sub
   i32.const 2
   i32.shl
   i32.add
   i64.load32_u
   i64.mul
   local.set $3
   local.get $0
   local.get $6
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.tee $2
   i32.load16_u
   local.set $4
   loop $while-continue|6
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
     br $while-continue|6
    end
   end
   local.get $2
   local.get $4
   i32.store16
   local.get $6
  end
 )
 (func $~lib/util/number/prettify (; 401 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  i32.eqz
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.shl
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
   loop $for-loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 48
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   local.get $0
   local.get $3
   i32.const 1
   i32.shl
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
    local.get $0
    local.get $3
    i32.const 1
    i32.shl
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
     local.get $0
     i32.const 2
     local.get $3
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
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
     loop $for-loop|1
      local.get $2
      local.get $3
      i32.lt_s
      if
       local.get $0
       local.get $2
       i32.const 1
       i32.shl
       i32.add
       i32.const 48
       i32.store16
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
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
      local.tee $1
      local.get $3
      i32.const 1
      i32.sub
      local.tee $0
      i32.const 0
      i32.lt_s
      local.tee $2
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
      local.get $1
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16
      local.get $0
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
 (func $~lib/util/number/dtoa_core (; 402 ;) (param $0 i32) (param $1 f64) (result i32)
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
  i32.const 2912
  local.get $3
  call $~lib/array/Array<u64>#__unchecked_get
  global.set $~lib/util/number/_frc_pow
  i32.const 3136
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
  local.get $8
  local.get $7
  i64.const 32
  i64.shr_u
  local.tee $7
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
  local.get $16
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $4
  i64.mul
  local.get $17
  local.get $15
  i64.const 32
  i64.shr_u
  local.tee $8
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
  local.get $0
  local.get $9
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $11
  local.get $2
  i64.const 32
  i64.shr_u
  local.tee $2
  i64.mul
  local.get $13
  local.get $6
  i64.const 32
  i64.shr_u
  local.tee $6
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
  local.get $0
  global.get $~lib/util/number/_exp
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
 (func $~lib/util/number/dtoa (; 403 ;) (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  f64.const 0
  f64.eq
  if
   i32.const 2048
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
    i32.const 2080
    return
   end
   i32.const 2112
   i32.const 2160
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
 (func $~lib/util/number/dtoa_stream (; 404 ;) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
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
    i32.const 2112
    i32.const 2160
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
 (func $~lib/util/string/joinFloatArray<f32> (; 405 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   f32.load
   f64.promote_f32
   call $~lib/util/number/dtoa
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 28
  i32.add
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
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    f32.load
    f64.promote_f32
    call $~lib/util/number/dtoa_stream
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 2
  i32.shl
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
 (func $~lib/typedarray/Float32Array#join (; 406 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  call $~lib/util/string/joinFloatArray<f32>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Float32Array,f32> (; 407 ;)
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
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 626
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Float32Array#join
  local.tee $1
  local.get $1
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/util/string/joinFloatArray<f64> (; 408 ;) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 1920
   return
  end
  local.get $3
  i32.eqz
  if
   local.get $0
   f64.load
   call $~lib/util/number/dtoa
   return
  end
  local.get $3
  i32.const 1968
  call $~lib/string/String#get:length
  local.tee $4
  i32.const 28
  i32.add
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
  loop $for-loop|0
   local.get $5
   local.get $3
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    f64.load
    call $~lib/util/number/dtoa_stream
    local.get $1
    i32.add
    local.set $1
    local.get $4
    if
     local.get $2
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     i32.const 1968
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
    br $for-loop|0
   end
  end
  local.get $6
  local.get $2
  local.get $1
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
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
 (func $~lib/typedarray/Float64Array#join (; 409 ;) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  call $~lib/util/string/joinFloatArray<f64>
 )
 (func $std/typedarray/testArrayJoinAndToString<~lib/typedarray/Float64Array,f64> (; 410 ;)
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
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 626
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/typedarray/Float64Array#join
  local.tee $1
  local.get $1
  i32.const 3264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 411 ;) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 32
   i32.const 80
   i32.const 56
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 412 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 413 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $3
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $2
   i32.const -1
   i32.eq
   if (result i32)
    local.get $3
    local.get $1
    i32.sub
   else
    i32.const 32
    i32.const 432
    i32.const 1750
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
   local.set $2
  else
   local.get $1
   local.get $2
   i32.add
   local.get $3
   i32.gt_s
   if
    i32.const 32
    i32.const 432
    i32.const 1755
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.tee $3
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $0
  local.get $1
  i32.add
  i32.store offset=4
  local.get $3
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint8Array.wrap|trampoline (; 414 ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 415 ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array.wrap (; 416 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8> (; 417 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
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
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Int8Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8> (; 418 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap|trampoline
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray.wrap (; 419 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8> (; 420 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8ClampedArray#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array.wrap (; 421 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16> (; 422 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
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
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Int16Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int16Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Int16Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array.wrap (; 423 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16> (; 424 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint16Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint16Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint16Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array.wrap (; 425 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32> (; 426 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Int32Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array.wrap (; 427 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32> (; 428 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint32Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint32Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint32Array#__get
    i32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array.wrap (; 429 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64> (; 430 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Int64Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Int64Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Int64Array#__get
    i64.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array.wrap (; 431 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64> (; 432 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Uint64Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint64Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint64Array#__get
    i64.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array.wrap (; 433 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32> (; 434 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Float32Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Float32Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Float32Array#__get
    f32.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array.wrap (; 435 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.tee $2
  i32.gt_u
  if
   i32.const 368
   i32.const 432
   i32.const 1741
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 7
  i32.and
  if
   i32.const 32
   i32.const 432
   i32.const 1746
   i32.const 8
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.tee $1
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__retain
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64> (; 436 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3404
  i32.load
  local.tee $3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $5
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3392
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
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
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  call $~lib/typedarray/Float64Array.wrap
  local.set $4
  loop $for-loop|1
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    call $~lib/typedarray/Float64Array#__get
    local.get $4
    local.get $2
    call $~lib/typedarray/Float64Array#__get
    f64.ne
    if
     i32.const 0
     i32.const 304
     i32.const 684
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>> (; 437 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3468
  i32.load
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $1
  i32.const 3460
  i32.load
  local.set $2
  i32.const 3468
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.add
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int8Array> (; 438 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 3728
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<f32>> (; 439 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $1
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array> (; 440 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<f64>> (; 441 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $1
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array> (; 442 ;) (param $0 i32) (param $1 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
 )
 (func $~lib/typedarray/Int8Array#set<~lib/typedarray/Int16Array> (; 443 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  i32.const 4
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<~lib/array/Array<i8>> (; 444 ;) (param $0 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 7
  i32.add
  i32.const 3668
  i32.load
  i32.const 3672
  i32.load
  call $~lib/memory/memory.copy
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int8Array> (; 445 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3696
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3776
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3808
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3840
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 14
  i32.const 3872
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<u8>#__unchecked_get (; 446 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array> (; 447 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 3936
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<f32>> (; 448 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $1
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<~lib/array/Array<f64>> (; 449 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $1
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8Array> (; 450 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 3984
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4016
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $0
  call $~lib/typedarray/Uint8Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4048
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int8Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i32>> (; 451 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3468
  i32.load
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $2
  i32.const 3460
  i32.load
  local.set $3
  i32.const 3468
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $1
    i32.const 255
    local.get $1
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray> (; 452 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 4144
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f32>> (; 453 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     f32.const 0
     f32.const 255
     local.get $1
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array> (; 454 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1774
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
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $0
  i32.load offset=4
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $4
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.tee $3
    i32.wrap_i64
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    i64.extend_i32_s
    local.get $3
    i32.const 255
    local.get $3
    i32.wrap_i64
    i32.sub
    i32.const 31
    i32.shr_s
    i64.extend_i32_s
    i64.or
    i64.and
    i64.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f64>> (; 455 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     f64.const 0
     f64.const 255
     local.get $1
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int16Array> (; 456 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1774
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.get $2
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $0
  i32.load offset=4
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.tee $1
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $1
    i32.const 255
    local.get $1
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i8>> (; 457 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 7
  i32.add
  local.set $2
  i32.const 3668
  i32.load
  local.set $3
  i32.const 3676
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load8_s
    local.tee $1
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $1
    i32.const 255
    local.get $1
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint8ClampedArray> (; 458 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4112
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4208
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  local.get $2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4240
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4272
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int8Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 4304
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>> (; 459 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3468
  i32.load
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $1
  i32.const 3460
  i32.load
  local.set $2
  i32.const 3468
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int16Array> (; 460 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 4384
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<f32>> (; 461 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $1
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array> (; 462 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<f64>> (; 463 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $1
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Uint8Array> (; 464 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
  i32.load offset=8
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load8_u
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<~lib/typedarray/Int16Array> (; 465 ;) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  i32.const 4
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  call $~lib/memory/memory.copy
 )
 (func $~lib/typedarray/Int16Array#set<~lib/array/Array<i8>> (; 466 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 14
  i32.add
  local.set $1
  i32.const 3668
  i32.load
  local.set $2
  i32.const 3676
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load8_s
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int16Array> (; 467 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 4336
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 4432
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 4480
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 4528
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 17
  i32.const 4576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array> (; 468 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 4672
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<~lib/array/Array<f32>> (; 469 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 6
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $1
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<~lib/array/Array<f64>> (; 470 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int16Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $1
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint16Array> (; 471 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4624
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  call $~lib/typedarray/Uint16Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4720
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $0
  call $~lib/typedarray/Uint16Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int16Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int16Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 1
  i32.const 22
  i32.const 4864
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint16Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>> (; 472 ;) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $2
  i32.const 0
  i32.lt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1774
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.load offset=12
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int32Array> (; 473 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 4976
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<f32>> (; 474 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    local.tee $5
    i32.add
    local.get $3
    local.get $5
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $1
     i32.trunc_f32_s
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array> (; 475 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.store32
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<f64>> (; 476 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $1
     i32.trunc_f64_s
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Uint8Array> (; 477 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
  i32.load offset=8
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load8_u
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/typedarray/Int16Array> (; 478 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  i32.const 4
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<~lib/array/Array<i8>> (; 479 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 28
  i32.add
  local.set $1
  i32.const 3668
  i32.load
  local.set $2
  i32.const 3676
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load8_s
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int32Array> (; 480 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 3456
  i32.const 0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 4912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 5024
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 5088
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 5152
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 15
  i32.const 5216
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array> (; 481 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 5344
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<~lib/array/Array<f32>> (; 482 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 12
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    local.tee $5
    i32.add
    local.get $3
    local.get $5
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i32)
     local.get $1
     i32.trunc_f32_u
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<~lib/array/Array<f64>> (; 483 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i32)
     local.get $1
     i32.trunc_f64_u
    else
     i32.const 0
    end
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint32Array> (; 484 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 3456
  i32.const 0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 5280
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  call $~lib/typedarray/Uint32Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 5392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 5456
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $0
  call $~lib/typedarray/Uint32Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 5520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int32Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 18
  i32.const 5584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint32Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>> (; 485 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3468
  i32.load
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $1
  i32.const 3460
  i32.load
  local.set $2
  i32.const 3468
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i64.load32_s
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Int64Array> (; 486 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 5744
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<f32>> (; 487 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i64)
     local.get $1
     i64.trunc_f32_s
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array> (; 488 ;) (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/typedarray/Int64Array#get:length
  i32.const 6
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<f64>> (; 489 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    local.tee $5
    i32.add
    local.get $3
    local.get $5
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i64)
     local.get $1
     i64.trunc_f64_s
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Uint8Array> (; 490 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
  i32.load offset=8
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.add
    i64.load8_u
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/typedarray/Int16Array> (; 491 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  i32.const 4
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    i64.load16_s
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<~lib/array/Array<i8>> (; 492 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 56
  i32.add
  local.set $1
  i32.const 3668
  i32.load
  local.set $2
  i32.const 3676
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.add
    i64.load8_s
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Int64Array> (; 493 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 5648
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 5792
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 5888
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 5984
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 23
  i32.const 6080
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Int64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array> (; 494 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 6272
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<~lib/array/Array<f32>> (; 495 ;) (param $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $2
  i32.const 3524
  i32.load
  local.set $3
  i32.const 3532
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.tee $1
    local.get $1
    f32.sub
    f32.const 0
    f32.eq
    if (result i64)
     local.get $1
     i64.trunc_f32_u
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<~lib/array/Array<f64>> (; 496 ;) (param $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3612
  i32.load
  i32.const 2
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $2
  i32.const 3604
  i32.load
  local.set $3
  i32.const 3612
  i32.load
  local.set $4
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    local.tee $5
    i32.add
    local.get $3
    local.get $5
    i32.add
    f64.load
    local.tee $1
    local.get $1
    f64.sub
    f64.const 0
    f64.eq
    if (result i64)
     local.get $1
     i64.trunc_f64_u
    else
     i64.const 0
    end
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Uint64Array> (; 497 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 6176
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  call $~lib/typedarray/Uint64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 6320
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 6416
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $0
  call $~lib/typedarray/Uint64Array#set<~lib/array/Array<f64>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 6512
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Int64Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Int64Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 16
  i32.const 6608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint64Array>
  local.get $4
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#set<~lib/array/Array<i32>> (; 498 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 3468
  i32.load
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $1
  i32.const 3460
  i32.load
  local.set $2
  i32.const 3468
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 2
    i32.shl
    local.tee $4
    i32.add
    local.get $2
    local.get $4
    i32.add
    i32.load
    f32.convert_i32_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Float32Array> (; 499 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 6768
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
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<~lib/typedarray/Int64Array> (; 500 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f32.convert_i64_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<~lib/typedarray/Uint8Array> (; 501 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
  i32.load offset=8
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load8_u
    f32.convert_i32_u
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<~lib/typedarray/Int16Array> (; 502 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  i32.const 4
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 16
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    f32.convert_i32_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<~lib/array/Array<i8>> (; 503 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 28
  i32.add
  local.set $1
  i32.const 3668
  i32.load
  local.set $2
  i32.const 3676
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load8_s
    f32.convert_i32_s
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Float32Array> (; 504 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/typedarray/Float32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 6704
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $0
  i32.const 3520
  i32.const 3
  call $~lib/typedarray/Int32Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 6816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Float32Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 6880
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Float32Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Float32Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Float32Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 2
  i32.const 19
  i32.const 6944
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Float32Array>
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#set<~lib/array/Array<i32>> (; 505 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3468
  i32.load
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.set $1
  i32.const 3460
  i32.load
  local.set $2
  i32.const 3468
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    f64.convert_i32_s
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/valuesEqual<~lib/typedarray/Float64Array> (; 506 ;) (param $0 i32) (param $1 i32)
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
   i32.const 304
   i32.const 712
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  loop $for-loop|0
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
     i32.const 7104
     i32.const 3
     local.get $2
     f64.convert_i32_s
     local.get $3
     local.get $6
     f64.const 0
     f64.const 0
     call $~lib/builtins/trace
     i32.const 0
     i32.const 304
     i32.const 718
     i32.const 6
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/array/Array<f32>> (; 507 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3532
  i32.load
  i32.const 3
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
  local.set $1
  i32.const 3524
  i32.load
  local.set $2
  i32.const 3532
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    f64.promote_f32
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/typedarray/Int64Array> (; 508 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 3
    i32.shl
    local.tee $4
    local.get $2
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/typedarray/Uint8Array> (; 509 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
  i32.load offset=8
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $0
    local.get $3
    i32.add
    i32.load8_u
    f64.convert_i32_u
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/typedarray/Int16Array> (; 510 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  i32.const 4
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 32
  i32.add
  local.set $2
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $1
  call $~lib/typedarray/Int16Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    f64.convert_i32_s
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<~lib/array/Array<i8>> (; 511 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3676
  i32.load
  i32.const 7
  i32.add
  local.get $0
  call $~lib/typedarray/Int64Array#get:length
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
   i32.const 46
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  i32.const 56
  i32.add
  local.set $1
  i32.const 3668
  i32.load
  local.set $2
  i32.const 3676
  i32.load
  local.set $3
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    i32.const 3
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load8_s
    f64.convert_i32_s
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $std/typedarray/testTypedArraySet<~lib/typedarray/Float64Array> (; 512 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.const 0
  i64.const 7
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 1
  i64.const 8
  call $~lib/typedarray/Int64Array#__set
  local.get $2
  i32.const 2
  i64.const 9
  call $~lib/typedarray/Int64Array#__set
  i32.const 4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.const 0
  i32.const 100
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 101
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 102
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 103
  call $~lib/typedarray/Uint8Array#__set
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const 1000
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 1001
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 1002
  call $~lib/typedarray/Int16Array#__set
  i32.const 10
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/typedarray/Float64Array#set<~lib/array/Array<i32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 7008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $0
  call $~lib/typedarray/Float64Array#set<~lib/array/Array<f32>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 7152
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $0
  local.get $2
  call $~lib/typedarray/Float64Array#set<~lib/typedarray/Int64Array>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 7248
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $0
  local.get $1
  call $~lib/typedarray/Float64Array#set<~lib/typedarray/Uint8Array>
  local.get $0
  local.get $3
  call $~lib/typedarray/Float64Array#set<~lib/typedarray/Int16Array>
  local.get $0
  call $~lib/typedarray/Float64Array#set<~lib/array/Array<i8>>
  local.get $0
  i32.const 10
  i32.const 3
  i32.const 20
  i32.const 7344
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Float64Array>
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Float32Array> (; 513 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $3
    i32.add
    local.get $4
    local.get $0
    i32.const 2
    i32.shl
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
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int32Array> (; 514 ;) (param $0 i32) (param $1 i32)
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
   i32.const 368
   i32.const 432
   i32.const 1775
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
  loop $for-loop|0
   local.get $0
   local.get $4
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const 31
    i32.shr_s
    i32.const -1
    i32.xor
    local.get $1
    i32.const 255
    local.get $1
    i32.sub
    i32.const 31
    i32.shr_s
    i32.or
    i32.and
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Uint32Array> (; 515 ;) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.load offset=8
  i32.gt_s
  if
   i32.const 368
   i32.const 432
   i32.const 1775
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
  call $~lib/typedarray/Int32Array#get:length
  local.set $1
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $2
    i32.add
    i32.const 255
    local.get $3
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $4
    i32.const 255
    local.get $4
    i32.lt_u
    select
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $start:std/typedarray (; 516 ;)
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
   i32.const 304
   i32.const 95
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 124
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~argumentsLength
  local.get $0
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
  i32.const 496
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 576
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 640
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 672
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 167
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  i32.const 14
  i32.const 704
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 168
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 736
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 768
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 816
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 864
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 912
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 960
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 199
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 1008
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 200
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1040
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
  i32.const 1088
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1136
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1184
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1232
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $10
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1280
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $12
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1328
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $14
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1376
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $16
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1424
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $18
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $20
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
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
  i32.const 1520
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $22
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 266
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
  i32.const -1
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $23
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $24
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 268
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
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#copyWithin
  local.tee $1
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 1616
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $25
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 304
   i32.const 270
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
  local.get $1
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 289
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
   i32.const 295
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
   i32.const 297
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#slice
  local.tee $4
  i32.eq
  if
   i32.const 0
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
   i32.const 304
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
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  i32.const 2
  global.set $~argumentsLength
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap|trampoline
  local.tee $2
  i32.load offset=8
  if
   i32.const 0
   i32.const 304
   i32.const 691
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $0
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array.wrap|trampoline
  local.set $1
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  i32.load offset=8
  if
   i32.const 0
   i32.const 304
   i32.const 695
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
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
  local.tee $4
  i32.const 0
  f32.const 400
  call $~lib/typedarray/Float32Array#__set
  local.get $4
  i32.const 1
  f32.const nan:0x400000
  call $~lib/typedarray/Float32Array#__set
  local.get $4
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
  local.tee $5
  i32.const 0
  i32.const 300
  call $~lib/typedarray/Int32Array#__set
  local.get $5
  i32.const 1
  i32.const -1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  local.get $4
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Float32Array>
  local.get $0
  local.get $1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int64Array>
  local.get $0
  local.get $5
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int32Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 7440
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  i32.const 4
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $2
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $2
  i32.const 1
  i32.const 300
  call $~lib/typedarray/Uint32Array#__set
  local.get $2
  i32.const 2
  i32.const 100
  call $~lib/typedarray/Uint32Array#__set
  local.get $2
  i32.const 3
  i32.const -1
  call $~lib/typedarray/Uint32Array#__set
  i32.const 4
  call $~lib/typedarray/Int16Array#constructor
  local.tee $3
  i32.const 0
  i32.const -10
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 2
  i32.const 10
  call $~lib/typedarray/Int16Array#__set
  local.get $3
  i32.const 3
  i32.const 300
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Uint32Array>
  local.get $0
  local.get $3
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#set<~lib/typedarray/Int16Array>
  local.get $0
  i32.const 10
  i32.const 0
  i32.const 21
  i32.const 7472
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/valuesEqual<~lib/typedarray/Uint8ClampedArray>
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~start (; 517 ;)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:std/typedarray
 )
 (func $~lib/rt/pure/decrement (; 518 ;) (param $0 i32)
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
   i32.const 256
   i32.const 122
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
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 256
    i32.const 126
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 256
    i32.const 136
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/__visit_members (; 519 ;) (param $0 i32)
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
   i32.const 7484
   i32.ge_u
   if
    local.get $0
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
  end
 )
)
