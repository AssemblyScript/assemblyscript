(module
 (type $0 (func))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data $0 (i32.const 1031) "\80\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\fa\00\00\00\00\00\00@\9c\00\00\00\00\00\00P\c3\00\00\00\00\00\00$\f4\00\00\00\00\00\80\96\98\00\00\00\00\00 \bc\be\00\00\00\00\00(k\ee\00\00\00\00\00\f9\02\95\00\00\00\00@\b7C\ba\00\00\00\00\10\a5\d4\e8\00\00\00\00*\e7\84\91\00\00\00\80\f4 \e6\b5\00\00\00\a01\a9_\e3\00\00\00\04\bf\c9\1b\8e\00\00\00\c5.\bc\a2\b1\00\00@v:k\0b\de\00\00\e8\89\04#\c7\8a\00\00b\ac\c5\ebx\ad\00\80z\17\b7&\d7\d8\00\90\acn2x\86\87\00\b4W\n?\16h\a9\00\a1\ed\cc\ce\1b\c2\d3\a0\84\14@aQY\84\c8\a5\19\90\b9\a5o\a5:\0f \f4\'\8f\cb\ce")
 (data $1 (i32.const 1248) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $2 (i32.const 1616) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11")
 (data $4 (i32.const 1824) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $5 (i32.const 2440) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $6 (i32.const 2700) "<")
 (data $6.1 (i32.const 2712) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $7 (i32.const 2764) ",")
 (data $7.1 (i32.const 2776) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $8 (i32.const 2812) ",")
 (data $8.1 (i32.const 2824) "\02\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data $9 (i32.const 2864) "5\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00A\08\00\00A\00\00\00A\00\00\00\81\08\00\00\81\00\00\00\01\t\00\00\01\01\00\00\01\n\00\00\01\02\00\00\01\19\00\00\01\1a\00\00B\08\00\00B\00\00\00\82\08\00\00\82\00\00\00\02\t\00\00\02\01\00\00\02\n\00\00\02\02\00\00\02\19\00\00\02\1a\00\00\02\04\00\00 \00\00\00\02A\00\00\02a\00\00H\08\00\00H\00\00\00\88\08\00\00\88\00\00\00\08\t\00\00\08\01\00\00\08\n\00\00\08\02\00\00\08\19\00\00\08\1a\00\00\08\04\00\00\08A\00\00\08a\00\00P\08\08\00\90\08\14\00\10\t\12\00\10\n\11\00\10\84\10\00P\08\82\00P\08\c2\00\10\c1\10\00\10\e1\10\00\10a\c2\00\10\t2")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  local.get $0
  i32.const 2864
  i32.load
  i32.gt_u
  if
   i32.const 2720
   i32.const 2784
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.shl
  i32.const 2868
  i32.add
  i32.load
 )
 (func $~start
  call $start:rt/flags
 )
 (func $start:rt/flags
  block $folding-inner0
   i32.const 4
   call $~lib/rt/__typeinfo
   i32.const 2113
   i32.ne
   br_if $folding-inner0
   i32.const 5
   call $~lib/rt/__typeinfo
   i32.const 65
   i32.ne
   br_if $folding-inner0
   i32.const 6
   call $~lib/rt/__typeinfo
   i32.const 65
   i32.ne
   br_if $folding-inner0
   i32.const 7
   call $~lib/rt/__typeinfo
   i32.const 2177
   i32.ne
   br_if $folding-inner0
   i32.const 8
   call $~lib/rt/__typeinfo
   i32.const 129
   i32.ne
   br_if $folding-inner0
   i32.const 9
   call $~lib/rt/__typeinfo
   i32.const 2305
   i32.ne
   br_if $folding-inner0
   i32.const 10
   call $~lib/rt/__typeinfo
   i32.const 257
   i32.ne
   br_if $folding-inner0
   i32.const 11
   call $~lib/rt/__typeinfo
   i32.const 2561
   i32.ne
   br_if $folding-inner0
   i32.const 12
   call $~lib/rt/__typeinfo
   i32.const 513
   i32.ne
   br_if $folding-inner0
   i32.const 13
   call $~lib/rt/__typeinfo
   i32.const 6401
   i32.ne
   br_if $folding-inner0
   i32.const 14
   call $~lib/rt/__typeinfo
   i32.const 6657
   i32.ne
   br_if $folding-inner0
   i32.const 15
   call $~lib/rt/__typeinfo
   i32.const 2114
   i32.ne
   br_if $folding-inner0
   i32.const 16
   call $~lib/rt/__typeinfo
   i32.const 66
   i32.ne
   br_if $folding-inner0
   i32.const 17
   call $~lib/rt/__typeinfo
   i32.const 2178
   i32.ne
   br_if $folding-inner0
   i32.const 18
   call $~lib/rt/__typeinfo
   i32.const 130
   i32.ne
   br_if $folding-inner0
   i32.const 19
   call $~lib/rt/__typeinfo
   i32.const 2306
   i32.ne
   br_if $folding-inner0
   i32.const 20
   call $~lib/rt/__typeinfo
   i32.const 258
   i32.ne
   br_if $folding-inner0
   i32.const 21
   call $~lib/rt/__typeinfo
   i32.const 2562
   i32.ne
   br_if $folding-inner0
   i32.const 22
   call $~lib/rt/__typeinfo
   i32.const 514
   i32.ne
   br_if $folding-inner0
   i32.const 23
   call $~lib/rt/__typeinfo
   i32.const 6402
   i32.ne
   br_if $folding-inner0
   i32.const 24
   call $~lib/rt/__typeinfo
   i32.const 6658
   i32.ne
   br_if $folding-inner0
   i32.const 25
   call $~lib/rt/__typeinfo
   i32.const 1026
   i32.ne
   br_if $folding-inner0
   i32.const 27
   call $~lib/rt/__typeinfo
   i32.const 16642
   i32.ne
   br_if $folding-inner0
   i32.const 28
   call $~lib/rt/__typeinfo
   i32.const 24834
   i32.ne
   br_if $folding-inner0
   i32.const 29
   call $~lib/rt/__typeinfo
   i32.const 2120
   i32.ne
   br_if $folding-inner0
   i32.const 30
   call $~lib/rt/__typeinfo
   i32.const 72
   i32.ne
   br_if $folding-inner0
   i32.const 31
   call $~lib/rt/__typeinfo
   i32.const 2184
   i32.ne
   br_if $folding-inner0
   i32.const 32
   call $~lib/rt/__typeinfo
   i32.const 136
   i32.ne
   br_if $folding-inner0
   i32.const 33
   call $~lib/rt/__typeinfo
   i32.const 2312
   i32.ne
   br_if $folding-inner0
   i32.const 34
   call $~lib/rt/__typeinfo
   i32.const 264
   i32.ne
   br_if $folding-inner0
   i32.const 35
   call $~lib/rt/__typeinfo
   i32.const 2568
   i32.ne
   br_if $folding-inner0
   i32.const 36
   call $~lib/rt/__typeinfo
   i32.const 520
   i32.ne
   br_if $folding-inner0
   i32.const 37
   call $~lib/rt/__typeinfo
   i32.const 6408
   i32.ne
   br_if $folding-inner0
   i32.const 38
   call $~lib/rt/__typeinfo
   i32.const 6664
   i32.ne
   br_if $folding-inner0
   i32.const 39
   call $~lib/rt/__typeinfo
   i32.const 1032
   i32.ne
   br_if $folding-inner0
   i32.const 40
   call $~lib/rt/__typeinfo
   i32.const 16648
   i32.ne
   br_if $folding-inner0
   i32.const 41
   call $~lib/rt/__typeinfo
   i32.const 24840
   i32.ne
   br_if $folding-inner0
   i32.const 42
   call $~lib/rt/__typeinfo
   i32.const 526416
   i32.ne
   br_if $folding-inner0
   i32.const 43
   call $~lib/rt/__typeinfo
   i32.const 1312912
   i32.ne
   br_if $folding-inner0
   i32.const 44
   call $~lib/rt/__typeinfo
   i32.const 1181968
   i32.ne
   br_if $folding-inner0
   i32.const 45
   call $~lib/rt/__typeinfo
   i32.const 1116688
   i32.ne
   br_if $folding-inner0
   i32.const 46
   call $~lib/rt/__typeinfo
   i32.const 1082384
   i32.ne
   br_if $folding-inner0
   i32.const 47
   call $~lib/rt/__typeinfo
   i32.const 8521808
   i32.ne
   br_if $folding-inner0
   i32.const 48
   call $~lib/rt/__typeinfo
   i32.const 12716112
   i32.ne
   br_if $folding-inner0
   i32.const 49
   call $~lib/rt/__typeinfo
   i32.const 1098000
   i32.ne
   br_if $folding-inner0
   i32.const 50
   call $~lib/rt/__typeinfo
   i32.const 1106192
   i32.ne
   br_if $folding-inner0
   i32.const 51
   call $~lib/rt/__typeinfo
   i32.const 12738832
   i32.ne
   br_if $folding-inner0
   i32.const 52
   call $~lib/rt/__typeinfo
   i32.const 3279120
   i32.ne
   br_if $folding-inner0
   return
  end
  i32.const 0
  i32.const 2832
  i32.const 6
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
)
