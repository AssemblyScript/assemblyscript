(module
 (type $0 (func (param i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32 i32)))
 (type $4 (func (param i32 i32 i32 i32)))
 (type $5 (func (param i32) (result i32)))
 (type $6 (func (param i32) (result i64)))
 (type $7 (func (param i32 f32) (result i32)))
 (type $8 (func (param i32 f64) (result i32)))
 (type $9 (func (param i32 i32 i32)))
 (type $10 (func (param f64) (result i32)))
 (type $11 (func (param f32) (result i32)))
 (type $12 (func (param i32 i32 i64)))
 (type $13 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gSig (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gExp (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gHasLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gBcdValue (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigits (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gDigLo (mut i64) (i64.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36364))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\06\00\00\000\00.\000")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\06\00\00\00N\00a\00N")
 (data $2 (i32.const 1100) ",")
 (data $2.1 (i32.const 1112) "\02\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data $3 (i32.const 1148) ",")
 (data $3.1 (i32.const 1160) "\02\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data $4 (i32.const 1196) "<")
 (data $4.1 (i32.const 1208) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $5 (i32.const 1260) "<")
 (data $5.1 (i32.const 1272) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $8 (i32.const 1388) "<")
 (data $8.1 (i32.const 1400) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $9 (i32.const 1452) ",")
 (data $9.1 (i32.const 1464) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $11 (i32.const 1532) "<")
 (data $11.1 (i32.const 1544) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $12 (i32.const 1596) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $14 (i32.const 2128) ":\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\cc\cc\cc\cc\cc\cc\cc\cc\a3p=\n\d7\a3p=\e9&1\08\ac\1cZd\a8\a4N@\13a\c3\d3S\1dr3\dc\80\cf\0f\0f\b1\c1\c2I\9a?\a6L\1bi\04v\902==|\ba6+\r\c2\fd")
 (data $15 (i32.const 2552) "o\1b\8e(\10T\8e\af\daM\e4^\ae\f0\ec\07J\fb\9f\f4\98\'D\b1\9dwA\df\cf\11\cd\99\07\ef\99\85\0b?\fe\b2\15\aa\b4\dc\e6\a7\1f\86c\beZ\06\0b\a5\bc\b4\aaSkuz\07\ed\0f\08\bf,)Ud\7f\b6C\d5\b1\17L\c8;\1a\fb;\efi\c2\87F\b8B\a7\ee@OQ]=\eb\dd\e4PF\1a\12\ba\13\e4labM\f3\92\ea\af(\b6\ef&\e2\bb\8c6U\n\f7\89\04\89\0f`\cb\05\e9\b8\b6\bd!\c9\c1\bb\87\e9\00T\96_\9a\84x\db\8f\bf4\d0\bdr\04R\98\de\'\8a\92\95\00\9am\c1\94\82\17\0f<\05\b7u\00\00\00\00\00\00P\c3\00\00\00\00\00\00\00\00\05\e3L6\12\197\c5\00\00\00\00\00\00(l\d6\aa\80\9d\ef\f0\"\c7\f6~\b9\b7\d2:MBL\c8q\d5m\93\13\c9\ea8\1e\cd\19:\bc\03\1cU\ab\01\80\0c\t\cb\c6,\07\d3\bf\f5\ad\\\a1\90\08\137h\03\cd\10\8cz\c3\87\a8\db6.\ef\07\12\c2\b2\02\cf\bc\f4\03^\e4g\f9\94\c7\85\d7in\f8\06\d1R\ba\be\01\d763\e1|\a0\1c4\a8E\10\d3Q\a0\t\12\11H\de\1e1Vx\85\fa\a6\1e\d5f\a5>\7f\"t*U3\f1\ca\ba\0f)2\d7\96@\adGy\17|\a9t\088\c7\b1\d8J\d9\bc\"x\ae\81R7\18")
 (data $16 (i32.const 2920) "?6N\n@\18\00\00\00d\00\00@\00 $\00\00\00\00\00\00\00\0c\80\13\c8\82\1f\e0L^\0f\f60\d7\1b\00\00\00\00\00\00\00\fc\ff\f7\cd\d8\01\82n\d1?\cd@\01%d\db\r\r\00\00\00$\04\14@8qS\b4\1dx\11")
 (data $17 (i32.const 3004) "\1c")
 (data $17.1 (i32.const 3016) "\02\00\00\00\06\00\00\001\00.\001")
 (data $18 (i32.const 3036) ",")
 (data $18.1 (i32.const 3048) "\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\008\007\003\00.\00t\00s")
 (data $19 (i32.const 3094) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $20 (i32.const 3276) "\1c")
 (data $20.1 (i32.const 3288) "\01\00\00\00\0c\00\00\00\cd\cc\8c?\cd\cc\0c@33S@")
 (data $21 (i32.const 3308) ",")
 (data $21.1 (i32.const 3320) "\04\00\00\00\10\00\00\00\e0\0c\00\00\e0\0c\00\00\0c\00\00\00\03")
 (data $22 (i32.const 3356) "\1c")
 (data $22.1 (i32.const 3368) "\02")
 (data $23 (i32.const 3388) "\1c")
 (data $23.1 (i32.const 3400) "\02\00\00\00\02\00\00\00,")
 (data $24 (i32.const 3420) ",")
 (data $24.1 (i32.const 3432) "\02\00\00\00\16\00\00\001\00.\001\00,\002\00.\002\00,\003\00.\003")
 (data $25 (i32.const 3468) ",")
 (data $25.1 (i32.const 3480) "\01\00\00\00\18\00\00\00\9a\99\99\99\99\99\f1?\9a\99\99\99\99\99\01@ffffff\n@")
 (data $26 (i32.const 3516) ",")
 (data $26.1 (i32.const 3528) "\05\00\00\00\10\00\00\00\a0\r\00\00\a0\r\00\00\18\00\00\00\03")
 (data $27 (i32.const 3568) "\06\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\02\19\00\00\02\1a")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   global.get $~lib/rt/itcms/iter
   i32.eq
   if
    local.get $1
    i32.load offset=8
    local.tee $0
    i32.eqz
    if
     i32.const 0
     i32.const 1280
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$144
    local.get $1
    i32.load offset=4
    i32.const -4
    i32.and
    local.tee $0
    i32.eqz
    if
     local.get $1
     i32.load offset=8
     i32.eqz
     local.get $1
     i32.const 36364
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 1280
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink$144
    end
    local.get $1
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1280
     i32.const 132
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.store offset=8
    local.get $2
    local.get $0
    local.get $2
    i32.load offset=4
    i32.const 3
    i32.and
    i32.or
    i32.store offset=4
   end
   global.get $~lib/rt/itcms/toSpace
   local.set $2
   local.get $1
   i32.load offset=12
   local.tee $0
   i32.const 2
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.const 3568
    i32.load
    i32.gt_u
    if
     i32.const 1408
     i32.const 1472
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 3572
    i32.add
    i32.load
    i32.const 32
    i32.and
   end
   local.set $3
   local.get $2
   i32.load offset=8
   local.set $0
   local.get $1
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.const 2
   local.get $3
   select
   local.get $2
   i32.or
   i32.store offset=4
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $0
   local.get $1
   local.get $0
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1216
   i32.const 1280
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $1
    loop $do-loop|0
     local.get $1
     call $~lib/rt/itcms/step
     i32.sub
     local.set $1
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i32.const 1
      i32.shl
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $1
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $3
  local.get $0
  i32.const 16
  i32.add
  local.tee $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1216
   i32.const 1552
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   local.get $4
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $4
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $4
     i32.const 1
     i32.const 27
     local.get $4
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $4
    end
   else
    local.get $4
   end
   i32.const 4
   local.get $3
   i32.load offset=1568
   memory.size
   local.tee $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $1
   local.get $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $3
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $4
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1552
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $5
  local.get $4
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1552
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const -4
  i32.and
  local.get $4
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $4
   local.get $5
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $4
   i32.add
   local.tee $4
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $3
   local.get $4
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $5
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   local.get $2
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
  i32.const 2
  i32.store offset=12
  local.get $1
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $2
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $2
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $1
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $1
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/util/dtoa/computePow10Compact (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  local.get $0
  i32.const 10
  i32.add
  local.tee $2
  i32.const 293
  i32.mul
  i32.const 13
  i32.shr_u
  local.tee $3
  i32.const 4
  i32.shl
  i32.const 2552
  i32.add
  local.tee $4
  i64.load
  local.set $9
  local.get $4
  i64.load offset=8
  local.tee $1
  i64.const 4294967295
  i64.and
  local.set $10
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $6
  i32.const 0
  local.get $2
  local.get $3
  i32.const 28
  i32.mul
  i32.sub
  i32.sub
  i32.const 3
  i32.shl
  i32.const 2344
  i32.add
  i64.load
  local.tee $11
  i64.const 4294967295
  i64.and
  local.tee $12
  i64.mul
  local.get $10
  local.get $12
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $7
  local.get $1
  local.get $11
  i64.mul
  local.set $8
  local.get $12
  local.get $9
  i64.const 32
  i64.shr_u
  local.tee $1
  i64.mul
  local.get $9
  i64.const 4294967295
  i64.and
  local.tee $5
  local.get $12
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $12
  local.get $11
  i64.const 32
  i64.shr_u
  local.tee $13
  local.get $6
  i64.mul
  local.get $7
  i64.const 32
  i64.shr_u
  i64.add
  local.get $10
  local.get $13
  i64.mul
  local.get $7
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $6
  local.get $9
  local.get $11
  i64.mul
  i64.add
  local.tee $7
  local.get $6
  i64.lt_u
  i64.extend_i32_u
  local.get $1
  local.get $13
  i64.mul
  local.get $12
  i64.const 32
  i64.shr_u
  i64.add
  local.get $5
  local.get $13
  i64.mul
  local.get $12
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.add
  local.tee $1
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  if (result i64)
   local.get $7
  else
   local.get $1
   i64.const 1
   i64.shl
   local.get $7
   i64.const 63
   i64.shr_u
   i64.or
   local.set $1
   local.get $7
   i64.const 1
   i64.shl
   local.get $8
   i64.const 63
   i64.shr_u
   i64.or
  end
  local.get $0
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  i32.const 2920
  i32.add
  i64.load32_u
  local.get $0
  i32.const 31
  i32.and
  i64.extend_i32_s
  i64.shr_u
  i64.const 1
  i64.and
  i64.sub
  local.get $1
  global.set $~lib/util/dtoa/gPow10Hi
 )
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
  i32.const 3596
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
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
   block $__inlined_func$~lib/util/string/compareImpl$82
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
      br_if $__inlined_func$~lib/util/string/compareImpl$82
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
 (func $~lib/util/dtoa/ftoa_buffered (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  local.get $0
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.tee $4
  i32.const 1
  i32.shl
  i32.const 24
  i32.shr_u
  local.set $5
  local.get $4
  i32.const 8388607
  i32.and
  i64.extend_i32_u
  local.set $7
  local.get $4
  i32.const 31
  i32.shr_u
  local.set $4
  block $~lib/util/dtoa/formatDecodedFloat|inlined.0 (result i32)
   local.get $5
   i32.const 1
   i32.sub
   i32.const 254
   i32.lt_u
   if
    local.get $4
    if
     local.get $2
     i32.const 45
     i32.store16
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    end
    local.get $5
    i32.const 150
    i32.sub
    local.tee $4
    i32.const 24
    i32.lt_s
    local.get $4
    i32.const -23
    i32.ge_s
    i32.and
    if
     local.get $7
     i64.const 8388608
     i64.or
     local.set $3
     local.get $4
     i32.const 0
     i32.lt_s
     if (result i64)
      i64.const 1
      i32.const 0
      local.get $4
      i32.sub
      i64.extend_i32_s
      local.tee $8
      i64.shl
      i64.const 1
      i64.sub
      local.get $3
      i64.and
      i64.eqz
      if (result i64)
       local.get $3
       local.get $8
       i64.shr_u
      else
       i64.const 0
      end
     else
      local.get $3
      local.get $4
      i64.extend_i32_s
      i64.shl
      local.tee $3
      i64.const 0
      local.get $3
      i64.const 16777216
      i64.le_u
      select
     end
     local.tee $3
     i64.const 0
     i64.ne
     if
      local.get $2
      local.get $3
      i64.const 1000000000000000
      i64.lt_u
      if (result i32)
       block $~lib/util/dtoa/decimalLen15|inlined.0 (result i32)
        local.get $3
        i64.const 100000000
        i64.lt_u
        if
         local.get $3
         i64.const 10000
         i64.lt_u
         if
          local.get $3
          i64.const 10
          i64.ge_u
          i32.const 1
          i32.add
          local.get $3
          i64.const 100
          i64.lt_u
          br_if $~lib/util/dtoa/decimalLen15|inlined.0
          drop
          local.get $3
          i64.const 1000
          i64.ge_u
          i32.const 3
          i32.add
          br $~lib/util/dtoa/decimalLen15|inlined.0
         end
         local.get $3
         i64.const 100000
         i64.ge_u
         i32.const 5
         i32.add
         local.get $3
         i64.const 1000000
         i64.lt_u
         br_if $~lib/util/dtoa/decimalLen15|inlined.0
         drop
         local.get $3
         i64.const 10000000
         i64.ge_u
         i32.const 7
         i32.add
         br $~lib/util/dtoa/decimalLen15|inlined.0
        end
        local.get $3
        i64.const 1000000000000
        i64.lt_u
        if
         local.get $3
         i64.const 1000000000
         i64.ge_u
         i32.const 9
         i32.add
         local.get $3
         i64.const 10000000000
         i64.lt_u
         br_if $~lib/util/dtoa/decimalLen15|inlined.0
         drop
         local.get $3
         i64.const 100000000000
         i64.ge_u
         i32.const 11
         i32.add
         br $~lib/util/dtoa/decimalLen15|inlined.0
        end
        local.get $3
        i64.const 10000000000000
        i64.ge_u
        i32.const 13
        i32.add
        local.get $3
        i64.const 100000000000000
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.0
        drop
        i32.const 15
       end
      else
       i32.const 16
      end
      local.tee $5
      i32.const 1
      i32.shl
      i32.add
      local.set $4
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.tee $4
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.tee $4
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.tee $4
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.tee $4
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.tee $4
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.tee $4
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 100
      i64.ge_u
      if
       local.get $4
       i32.const 4
       i32.sub
       local.get $3
       local.get $3
       i64.const 100
       i64.div_u
       local.tee $3
       i64.const 100
       i64.mul
       i64.sub
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      end
      local.get $3
      i64.const 10
      i64.ge_u
      if
       local.get $2
       local.get $3
       i32.wrap_i64
       i32.const 2
       i32.shl
       i32.const 1596
       i32.add
       i32.load
       i32.store
      else
       local.get $2
       local.get $3
       i32.wrap_i64
       i32.const 48
       i32.add
       i32.store16
      end
      local.get $2
      local.get $5
      i32.const 1
      i32.shl
      i32.add
      local.tee $2
      i32.const 46
      i32.store16
      local.get $2
      i32.const 48
      i32.store16 offset=2
      local.get $2
      i32.const 4
      i32.add
      br $~lib/util/dtoa/formatDecodedFloat|inlined.0
     end
    end
    local.get $7
    i64.const 8388608
    i64.or
    local.set $8
    local.get $5
    i32.const 150
    i32.sub
    local.set $5
    local.get $7
    i64.const 0
    i64.ne
    local.tee $9
    if (result i32)
     local.get $5
     i32.const 37
     i32.add
     i32.const -1
     local.get $5
     i32.const 1233
     i32.mul
     i32.const 12
     i32.shr_s
     local.tee $4
     i32.sub
     i32.const 1701
     i32.mul
     i32.const 9
     i32.shr_s
     i32.add
    else
     local.get $5
     i32.const 37
     i32.add
     local.get $5
     i32.const 1233
     i32.mul
     i32.const 512
     i32.sub
     i32.const 12
     i32.shr_s
     local.tee $4
     i32.const -1701
     i32.mul
     i32.const 1701
     i32.sub
     i32.const 9
     i32.shr_s
     i32.add
    end
    local.set $6
    local.get $4
    i32.const 16
    i32.le_s
    local.get $4
    i32.const -28
    i32.ge_s
    i32.and
    if (result i64)
     local.get $4
     i32.const 3
     i32.shl
     i32.const 2352
     i32.add
     i64.load
    else
     i32.const 292
     local.get $4
     i32.sub
     call $~lib/util/dtoa/computePow10Compact
     local.set $3
     global.get $~lib/util/dtoa/gPow10Hi
     local.get $3
     i64.const 0
     i64.ne
     i64.extend_i32_u
     i64.add
    end
    local.tee $7
    i64.const 32
    i64.shr_u
    local.get $8
    i64.mul
    local.get $7
    i64.const 4294967295
    i64.and
    local.get $8
    i64.mul
    local.tee $3
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 8
    i64.shl
    local.get $3
    i64.const 4294967295
    i64.and
    i64.const 24
    i64.shr_u
    i64.or
    i64.const 40
    local.get $6
    i64.extend_i32_s
    local.tee $10
    i64.sub
    i64.shr_u
    local.tee $11
    i64.const 68719476735
    i64.and
    local.set $3
    local.get $11
    i64.const 1
    local.get $8
    i64.const 1
    i64.and
    i64.sub
    local.get $7
    i64.const 65
    local.get $10
    i64.sub
    i64.shr_u
    i64.add
    local.tee $7
    i64.add
    i64.const 36
    i64.shr_u
    local.set $8
    local.get $3
    i64.const 5
    i64.mul
    i64.const 17179869177
    i64.add
    local.get $3
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 35
    i64.shr_u
    i32.wrap_i64
    local.set $6
    local.get $9
    if (result i32)
     local.get $8
     local.get $11
     local.get $7
     i64.sub
     i64.const 36
     i64.shr_u
     i64.gt_u
    else
     local.get $6
     i32.const 1
     i32.add
     local.get $6
     local.get $5
     i32.const 64
     i32.eq
     local.get $5
     i32.const -119
     i32.eq
     i32.or
     local.get $5
     i32.const 67
     i32.eq
     i32.or
     select
     local.set $6
     local.get $8
     local.get $11
     local.get $7
     i64.const 1
     i64.shr_u
     i64.sub
     i64.const 36
     i64.shr_u
     i64.gt_u
    end
    local.get $8
    global.set $~lib/util/dtoa/gSig
    local.get $4
    global.set $~lib/util/dtoa/gExp
    local.get $6
    global.set $~lib/util/dtoa/gLastDigit
    i32.eqz
    global.set $~lib/util/dtoa/gHasLastDigit
   else
    local.get $5
    if
     local.get $7
     i64.const 0
     i64.ne
     if
      local.get $2
      i32.const 78
      i32.store16
      local.get $2
      i32.const 97
      i32.store16 offset=2
      local.get $2
      i32.const 78
      i32.store16 offset=4
      local.get $2
      i32.const 6
      i32.add
      br $~lib/util/dtoa/formatDecodedFloat|inlined.0
     end
     local.get $4
     if
      local.get $2
      i32.const 45
      i32.store16
      local.get $2
      i32.const 2
      i32.add
      local.set $2
     end
     local.get $2
     i64.const 29555310648492105
     i64.store
     local.get $2
     i64.const 34058970405077102
     i64.store offset=8
     local.get $2
     i32.const 16
     i32.add
     br $~lib/util/dtoa/formatDecodedFloat|inlined.0
    end
    local.get $7
    i64.eqz
    if
     local.get $2
     i32.const 48
     i32.store16
     local.get $2
     i32.const 2
     i32.add
     local.tee $2
     i32.const 46
     i32.store16
     local.get $2
     i32.const 48
     i32.store16 offset=2
     local.get $2
     i32.const 4
     i32.add
     br $~lib/util/dtoa/formatDecodedFloat|inlined.0
    end
    local.get $4
    if
     local.get $2
     i32.const 45
     i32.store16
     local.get $2
     i32.const 2
     i32.add
     local.set $2
    end
    i32.const 337
    call $~lib/util/dtoa/computePow10Compact
    local.set $3
    global.get $~lib/util/dtoa/gPow10Hi
    local.get $3
    i64.const 0
    i64.ne
    i64.extend_i32_u
    i64.add
    local.tee $3
    i64.const 4294967295
    i64.and
    local.get $7
    i64.mul
    local.set $8
    local.get $3
    i64.const 32
    i64.shr_u
    local.get $7
    i64.mul
    local.get $8
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 8
    i64.shl
    local.get $8
    i64.const 4294967295
    i64.and
    i64.const 24
    i64.shr_u
    i64.or
    i64.const 6
    i64.shr_u
    local.tee $8
    i64.const 68719476735
    i64.and
    local.set $10
    local.get $8
    i64.const 1
    local.get $7
    i64.const 1
    i64.and
    i64.sub
    local.get $3
    i64.const 31
    i64.shr_u
    i64.add
    local.tee $3
    i64.add
    i64.const 36
    i64.shr_u
    local.tee $7
    global.set $~lib/util/dtoa/gSig
    i32.const -45
    global.set $~lib/util/dtoa/gExp
    local.get $10
    i64.const 5
    i64.mul
    i64.const 17179869177
    i64.add
    local.get $10
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 35
    i64.shr_u
    i32.wrap_i64
    global.set $~lib/util/dtoa/gLastDigit
    local.get $8
    local.get $3
    i64.sub
    i64.const 36
    i64.shr_u
    local.get $7
    i64.ge_u
    global.set $~lib/util/dtoa/gHasLastDigit
    i32.const -45
    local.set $4
    global.get $~lib/util/dtoa/gSig
    i64.const 10
    i64.mul
    global.get $~lib/util/dtoa/gLastDigit
    i64.extend_i32_s
    i64.const 0
    global.get $~lib/util/dtoa/gHasLastDigit
    select
    i64.add
    local.tee $3
    i64.const 10000
    i64.lt_u
    if
     i32.const -49
     local.set $4
     local.get $3
     i64.const 10000
     i64.mul
     local.set $3
    end
    local.get $3
    i64.const 1000000
    i64.lt_u
    if
     local.get $4
     i32.const 2
     i32.sub
     local.set $4
     local.get $3
     i64.const 100
     i64.mul
     local.set $3
    end
    local.get $3
    i64.const 10000000
    i64.lt_u
    if
     local.get $4
     i32.const 1
     i32.sub
     local.set $4
     local.get $3
     i64.const 10
     i64.mul
     local.set $3
    end
    local.get $3
    local.get $3
    i64.const 10
    i64.div_u
    local.tee $3
    i64.const 10
    i64.mul
    i64.sub
    i32.wrap_i64
    local.set $5
    local.get $3
    global.set $~lib/util/dtoa/gSig
    local.get $4
    global.set $~lib/util/dtoa/gExp
    local.get $5
    global.set $~lib/util/dtoa/gLastDigit
    local.get $5
    i32.const 0
    i32.ne
    global.set $~lib/util/dtoa/gHasLastDigit
   end
   global.get $~lib/util/dtoa/gHasLastDigit
   local.set $6
   global.get $~lib/util/dtoa/gSig
   i64.const 10000000
   i64.ge_u
   local.tee $9
   global.get $~lib/util/dtoa/gExp
   i32.const 7
   i32.add
   i32.add
   local.set $4
   global.get $~lib/util/dtoa/gSig
   i64.const 1000000
   i64.lt_u
   if
    global.get $~lib/util/dtoa/gSig
    i64.const 10
    i64.mul
    global.get $~lib/util/dtoa/gLastDigit
    i64.extend_i32_s
    i64.const 0
    local.get $6
    select
    i64.add
    global.set $~lib/util/dtoa/gSig
    i32.const 0
    local.set $6
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
   end
   global.get $~lib/util/dtoa/gSig
   local.tee $3
   i64.const 109951163
   i64.mul
   i64.const 40
   i64.shr_u
   i64.const 4294957296
   i64.mul
   local.get $3
   i64.add
   local.tee $3
   local.get $3
   i64.const 5243
   i64.mul
   i64.const 19
   i64.shr_u
   i64.const 545460846719
   i64.and
   i64.const 65436
   i64.mul
   i64.add
   local.tee $3
   local.get $3
   i64.const 103
   i64.mul
   i64.const 10
   i64.shr_u
   i64.const 4222189076152335
   i64.and
   i64.const 246
   i64.mul
   i64.add
   local.tee $3
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $3
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $7
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $7
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   global.set $~lib/util/dtoa/gBcdValue
   global.get $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   i64.const 70
   local.get $3
   i64.const 1
   i64.shl
   i64.const 1
   i64.or
   i64.clz
   i64.sub
   i64.const 3
   i64.shr_u
   i32.wrap_i64
   global.set $~lib/util/dtoa/gDigits
   local.get $4
   i32.const 20
   i32.le_s
   local.get $4
   i32.const -6
   i32.ge_s
   i32.and
   if
    local.get $4
    i32.const 0
    i32.lt_s
    if
     local.get $2
     i64.const 13511005043687472
     i64.store
     local.get $2
     i64.const 13511005043687472
     i64.store offset=8
    end
    global.get $~lib/util/dtoa/gLastDigit
    i32.const 0
    local.get $6
    select
    i32.const 48
    i32.add
    i64.extend_i32_s
    local.set $7
    global.get $~lib/util/dtoa/gDigHi
    local.set $3
    local.get $9
    i32.eqz
    if
     local.get $7
     i64.const 56
     i64.shl
     local.get $3
     i64.const 8
     i64.shr_u
     i64.or
     local.set $3
    end
    local.get $2
    local.set $5
    i32.const 8
    global.get $~lib/util/dtoa/gDigits
    local.get $9
    i32.sub
    local.get $6
    select
    local.set $6
    block $~lib/util/dtoa/writeFixedFloat|inlined.0 (result i32)
     local.get $4
     i32.const 8
     i32.ge_s
     if
      local.get $2
      local.get $3
      i64.const 4294967295
      i64.and
      local.tee $8
      local.get $8
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $8
      local.get $8
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store
      local.get $2
      local.get $3
      i64.const 32
      i64.shr_u
      local.tee $3
      local.get $3
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $3
      local.get $3
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store offset=8
      local.get $9
      if
       local.get $2
       local.get $7
       i64.store16 offset=16
      end
      local.get $5
      local.get $4
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.set $4
      local.get $5
      local.get $9
      i32.const 8
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.set $2
      loop $for-loop|0
       local.get $2
       local.get $4
       i32.lt_u
       if
        local.get $2
        i64.const 13511005043687472
        i64.store
        local.get $2
        i64.const 13511005043687472
        i64.store offset=8
        local.get $2
        i32.const 16
        i32.add
        local.set $2
        br $for-loop|0
       end
      end
      local.get $4
      i32.const 46
      i32.store16
      local.get $4
      i32.const 48
      i32.store16 offset=2
      local.get $4
      i32.const 4
      i32.add
      br $~lib/util/dtoa/writeFixedFloat|inlined.0
     end
     local.get $6
     local.get $9
     i32.add
     local.set $2
     local.get $4
     i32.const 0
     i32.ge_s
     if (result i32)
      local.get $2
      i32.const 1
      i32.add
      local.get $4
      i32.const 1
      i32.add
      local.tee $6
      local.get $2
      local.get $6
      i32.gt_s
      select
     else
      local.get $2
     end
     local.set $6
     local.get $5
     i32.const 1
     local.get $4
     i32.sub
     local.get $4
     i32.const 31
     i32.shr_s
     i32.and
     i32.const 1
     i32.shl
     i32.add
     local.tee $2
     local.get $3
     i64.const 4294967295
     i64.and
     local.tee $8
     local.get $8
     i64.const 16
     i64.shl
     i64.or
     i64.const 281470681808895
     i64.and
     local.tee $8
     local.get $8
     i64.const 8
     i64.shl
     i64.or
     i64.const 71777214294589695
     i64.and
     i64.store
     local.get $2
     local.get $3
     i64.const 32
     i64.shr_u
     local.tee $8
     local.get $8
     i64.const 16
     i64.shl
     i64.or
     i64.const 281470681808895
     i64.and
     local.tee $8
     local.get $8
     i64.const 8
     i64.shl
     i64.or
     i64.const 71777214294589695
     i64.and
     i64.store offset=8
     local.get $9
     if
      local.get $2
      local.get $7
      i64.store16 offset=16
     end
     local.get $4
     i32.const 0
     i32.ge_s
     if
      local.get $7
      i64.const 0
      local.get $9
      select
      local.set $7
      local.get $4
      i32.const 1
      i32.add
      local.tee $9
      i32.const 3
      i32.shl
      local.tee $12
      i32.const 64
      i32.lt_s
      if
       local.get $7
       i64.const 64
       local.get $12
       i64.extend_i32_s
       local.tee $7
       i64.sub
       i64.shl
       local.get $3
       local.get $7
       i64.shr_u
       i64.or
       local.set $7
      end
      local.get $9
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      local.get $2
      i32.add
      local.tee $12
      local.get $7
      i64.const 4294967295
      i64.and
      local.tee $3
      local.get $3
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $3
      local.get $3
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store
      local.get $12
      local.get $7
      i64.const 32
      i64.shr_u
      local.tee $3
      local.get $3
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $3
      local.get $3
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store offset=8
      local.get $2
      local.get $9
      i32.const 1
      i32.shl
      i32.add
      i32.const 46
      i32.store16
     else
      local.get $5
      i32.const 46
      i32.store16 offset=2
     end
     local.get $2
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     local.set $2
     local.get $6
     local.get $4
     i32.const 1
     i32.add
     i32.eq
     local.get $4
     i32.const 0
     i32.ge_s
     i32.and
     if
      local.get $2
      i32.const 46
      i32.store16
      local.get $2
      i32.const 48
      i32.store16 offset=2
      local.get $2
      i32.const 4
      i32.add
      br $~lib/util/dtoa/writeFixedFloat|inlined.0
     end
     loop $while-continue|1
      local.get $2
      local.get $5
      i32.const 2
      i32.add
      i32.gt_u
      if (result i32)
       local.get $2
       i32.const 2
       i32.sub
       i32.load16_u
       i32.const 48
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $2
       i32.const 2
       i32.sub
       local.set $2
       br $while-continue|1
      end
     end
     local.get $2
     i32.const 2
     i32.sub
     i32.load16_u
     i32.const 46
     i32.eq
     if (result i32)
      local.get $2
      i32.const 48
      i32.store16
      local.get $2
      i32.const 2
      i32.add
     else
      local.get $2
     end
    end
    br $~lib/util/dtoa/formatDecodedFloat|inlined.0
   end
   local.get $2
   local.tee $5
   local.get $9
   i32.const 1
   i32.shl
   i32.add
   local.tee $2
   global.get $~lib/util/dtoa/gDigHi
   local.tee $3
   i64.const 4294967295
   i64.and
   local.tee $7
   local.get $7
   i64.const 16
   i64.shl
   i64.or
   i64.const 281470681808895
   i64.and
   local.tee $7
   local.get $7
   i64.const 8
   i64.shl
   i64.or
   i64.const 71777214294589695
   i64.and
   i64.store
   local.get $2
   local.get $3
   i64.const 32
   i64.shr_u
   local.tee $3
   local.get $3
   i64.const 16
   i64.shl
   i64.or
   i64.const 281470681808895
   i64.and
   local.tee $3
   local.get $3
   i64.const 8
   i64.shl
   i64.or
   i64.const 71777214294589695
   i64.and
   i64.store offset=8
   local.get $2
   global.get $~lib/util/dtoa/gLastDigit
   i32.const 48
   i32.add
   i32.store16 offset=16
   local.get $2
   i32.const 9
   global.get $~lib/util/dtoa/gDigits
   local.get $9
   i32.eqz
   i32.add
   local.get $6
   select
   i32.const 1
   i32.shl
   i32.add
   local.set $2
   loop $while-continue|2
    local.get $2
    local.get $5
    i32.const 4
    i32.add
    i32.gt_u
    if (result i32)
     local.get $2
     i32.const 2
     i32.sub
     i32.load16_u
     i32.const 48
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     br $while-continue|2
    end
   end
   local.get $5
   local.get $5
   i32.load16_u offset=2
   i32.store16
   local.get $5
   i32.const 46
   i32.store16 offset=2
   local.get $2
   local.get $2
   local.get $5
   i32.const 4
   i32.add
   i32.eq
   i32.const 1
   i32.shl
   i32.sub
   local.tee $2
   i32.const 101
   i32.store16
   local.get $2
   local.get $4
   i32.const 31
   i32.shr_s
   local.tee $5
   i32.const 2
   i32.and
   i32.const 43
   i32.add
   i32.store16 offset=2
   local.get $2
   i32.const 4
   i32.add
   local.set $2
   block $~lib/util/dtoa/writeExponent|inlined.0 (result i32)
    local.get $4
    local.get $5
    i32.xor
    local.get $5
    i32.sub
    local.tee $4
    i32.const 100
    i32.ge_s
    if
     local.get $2
     local.get $4
     i32.const 5243
     i32.mul
     i32.const 19
     i32.shr_u
     local.tee $5
     i32.const 48
     i32.add
     i32.store16
     local.get $2
     local.get $4
     local.get $5
     i32.const 100
     i32.mul
     i32.sub
     i32.const 2
     i32.shl
     i32.const 1596
     i32.add
     i32.load
     i32.store offset=2
     local.get $2
     i32.const 6
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.0
    end
    local.get $4
    i32.const 10
    i32.ge_s
    if
     local.get $2
     local.get $4
     i32.const 2
     i32.shl
     i32.const 1596
     i32.add
     i32.load
     i32.store
     local.get $2
     i32.const 4
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.0
    end
    local.get $2
    local.get $4
    i32.const 48
    i32.add
    i32.store16
    local.get $2
    i32.const 2
    i32.add
   end
  end
  local.get $0
  i32.sub
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/dtoa/dtoa_buffered (param $0 i32) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  local.get $1
  i64.reinterpret_f64
  local.tee $2
  i64.const 1
  i64.shl
  i64.const 53
  i64.shr_u
  i32.wrap_i64
  local.set $6
  local.get $2
  i64.const 4503599627370495
  i64.and
  local.set $5
  local.get $2
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  local.set $3
  block $~lib/util/dtoa/formatDecodedDouble|inlined.0 (result i32)
   local.get $6
   i32.const 1
   i32.sub
   i32.const 2046
   i32.lt_u
   local.tee $7
   i32.eqz
   if
    local.get $6
    if
     local.get $5
     i64.const 0
     i64.ne
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
      local.get $0
      i32.const 6
      i32.add
      br $~lib/util/dtoa/formatDecodedDouble|inlined.0
     end
     local.get $3
     if (result i32)
      local.get $0
      i32.const 45
      i32.store16
      local.get $0
      i32.const 2
      i32.add
     else
      local.get $0
     end
     local.tee $3
     i64.const 29555310648492105
     i64.store
     local.get $3
     i64.const 34058970405077102
     i64.store offset=8
     local.get $3
     i32.const 16
     i32.add
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
    local.get $5
    i64.eqz
    if
     local.get $0
     i32.const 48
     i32.store16
     local.get $0
     i32.const 2
     i32.add
     local.tee $3
     i32.const 46
     i32.store16
     local.get $3
     i32.const 48
     i32.store16 offset=2
     local.get $3
     i32.const 4
     i32.add
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
   end
   local.get $3
   if (result i32)
    local.get $0
    i32.const 45
    i32.store16
    local.get $0
    i32.const 2
    i32.add
   else
    local.get $0
   end
   local.set $3
   local.get $7
   if
    local.get $5
    i64.const 4503599627370496
    i64.or
    local.set $2
    local.get $6
    i32.const 1075
    i32.sub
    local.tee $8
    i32.const 0
    i32.lt_s
    if (result i64)
     i32.const 0
     local.get $8
     i32.sub
     local.tee $8
     i32.const 52
     i32.le_s
     if (result i64)
      local.get $2
      local.get $8
      i64.extend_i32_s
      local.tee $4
      i64.shr_u
      i64.const 0
      i64.const 1
      local.get $4
      i64.shl
      i64.const 1
      i64.sub
      local.get $2
      i64.and
      i64.eqz
      select
     else
      i64.const 0
     end
    else
     local.get $8
     i32.const 11
     i32.lt_s
     if (result i64)
      local.get $2
      local.get $8
      i64.extend_i32_s
      i64.shl
      local.tee $2
      i64.const 0
      local.get $2
      i64.const 10000000000000000
      i64.lt_u
      select
     else
      i64.const 0
     end
    end
    local.tee $4
    i64.const 0
    i64.ne
    if
     local.get $3
     local.get $4
     i64.const 1000000000000000
     i64.lt_u
     if (result i32)
      block $~lib/util/dtoa/decimalLen15|inlined.1 (result i32)
       local.get $4
       i64.const 100000000
       i64.lt_u
       if
        local.get $4
        i64.const 10000
        i64.lt_u
        if
         local.get $4
         i64.const 10
         i64.ge_u
         i32.const 1
         i32.add
         local.get $4
         i64.const 100
         i64.lt_u
         br_if $~lib/util/dtoa/decimalLen15|inlined.1
         drop
         local.get $4
         i64.const 1000
         i64.ge_u
         i32.const 3
         i32.add
         br $~lib/util/dtoa/decimalLen15|inlined.1
        end
        local.get $4
        i64.const 100000
        i64.ge_u
        i32.const 5
        i32.add
        local.get $4
        i64.const 1000000
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.1
        drop
        local.get $4
        i64.const 10000000
        i64.ge_u
        i32.const 7
        i32.add
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       local.get $4
       i64.const 1000000000000
       i64.lt_u
       if
        local.get $4
        i64.const 1000000000
        i64.ge_u
        i32.const 9
        i32.add
        local.get $4
        i64.const 10000000000
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.1
        drop
        local.get $4
        i64.const 100000000000
        i64.ge_u
        i32.const 11
        i32.add
        br $~lib/util/dtoa/decimalLen15|inlined.1
       end
       local.get $4
       i64.const 10000000000000
       i64.ge_u
       i32.const 13
       i32.add
       local.get $4
       i64.const 100000000000000
       i64.lt_u
       br_if $~lib/util/dtoa/decimalLen15|inlined.1
       drop
       i32.const 15
      end
     else
      i32.const 16
     end
     local.tee $7
     i32.const 1
     i32.shl
     i32.add
     local.set $6
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.tee $6
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.tee $6
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.tee $6
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.tee $6
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.tee $6
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.tee $6
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 100
     i64.ge_u
     if
      local.get $6
      i32.const 4
      i32.sub
      local.get $4
      local.get $4
      i64.const 100
      i64.div_u
      local.tee $4
      i64.const 100
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     end
     local.get $4
     i64.const 10
     i64.ge_u
     if
      local.get $3
      local.get $4
      i32.wrap_i64
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     else
      local.get $3
      local.get $4
      i32.wrap_i64
      i32.const 48
      i32.add
      i32.store16
     end
     local.get $3
     local.get $7
     i32.const 1
     i32.shl
     i32.add
     local.tee $3
     i32.const 46
     i32.store16
     local.get $3
     i32.const 48
     i32.store16 offset=2
     local.get $3
     i32.const 4
     i32.add
     br $~lib/util/dtoa/formatDecodedDouble|inlined.0
    end
   end
   local.get $7
   if
    block $~lib/util/dtoa/toDecimalDoubleNormal|inlined.0
     local.get $6
     i32.const 1075
     i32.sub
     local.set $7
     local.get $5
     i64.eqz
     if
      local.get $7
      i32.const -1
      local.get $7
      i32.const 315653
      i32.mul
      i32.const 131072
      i32.sub
      i32.const 20
      i32.shr_s
      local.tee $6
      i32.sub
      local.tee $7
      i32.const 217707
      i32.mul
      i32.const 16
      i32.shr_s
      i32.add
      local.set $8
      block $~lib/util/dtoa/computePow10|inlined.0
       local.get $7
       i32.const 293
       i32.add
       local.tee $7
       i32.const 320
       i32.le_s
       local.get $7
       i32.const 285
       i32.ge_s
       i32.and
       if
        i32.const 337
        local.get $7
        i32.sub
        local.tee $7
        i32.const 3
        i32.shl
        i32.const 1992
        i32.add
        i64.load
        local.set $2
        local.get $7
        i32.const 44
        i32.le_s
        if
         local.get $2
         global.set $~lib/util/dtoa/gPow10Hi
         br $~lib/util/dtoa/computePow10|inlined.0
        end
        local.get $7
        i32.const 3
        i32.shl
        i32.const 2128
        i32.add
        i64.load
        drop
        local.get $2
        i64.const 1
        i64.sub
        global.set $~lib/util/dtoa/gPow10Hi
        br $~lib/util/dtoa/computePow10|inlined.0
       end
       local.get $7
       call $~lib/util/dtoa/computePow10Compact
       drop
      end
      global.get $~lib/util/dtoa/gPow10Hi
      local.tee $2
      i64.const 11
      local.get $8
      i64.extend_i32_s
      local.tee $4
      i64.sub
      i64.shr_u
      local.set $5
      i64.const 10
      i64.const 2
      local.get $2
      local.get $4
      i64.const 53
      i64.add
      local.tee $9
      i64.shl
      local.tee $10
      i64.const 54
      i64.shr_u
      i64.const 5
      i64.mul
      local.tee $11
      i64.const 9
      i64.shr_u
      i64.const 1
      i64.add
      local.get $10
      local.get $9
      i64.shr_u
      i64.const 5
      i64.mul
      i64.const 1
      i64.const 9
      local.get $4
      i64.sub
      i64.shl
      i64.add
      i64.const 10
      local.get $4
      i64.sub
      i64.shr_u
      local.get $2
      i32.const 0
      local.get $8
      i32.sub
      i64.extend_i32_s
      i64.shr_u
      local.tee $2
      i64.const 55
      i64.shr_u
      i64.const 5
      i64.mul
      local.get $11
      i64.const 511
      i64.and
      i64.lt_u
      select
      local.get $10
      i64.const 4611686018427387904
      i64.eq
      select
      i64.const 0
      local.get $2
      i64.const 1
      i64.shr_u
      local.get $10
      i64.le_u
      select
      local.get $2
      i64.const -1
      local.get $10
      i64.sub
      i64.gt_u
      select
      local.tee $2
      i64.const 10
      i64.eq
      if
       local.get $5
       i64.const 1
       i64.add
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $2
       i64.eqz
       if
        local.get $5
        global.set $~lib/util/dtoa/gSig
        i32.const 0
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 0
        global.set $~lib/util/dtoa/gHasLastDigit
       else
        local.get $5
        global.set $~lib/util/dtoa/gSig
        local.get $2
        i32.wrap_i64
        global.set $~lib/util/dtoa/gLastDigit
        i32.const 1
        global.set $~lib/util/dtoa/gHasLastDigit
       end
      end
      local.get $6
      global.set $~lib/util/dtoa/gExp
      br $~lib/util/dtoa/toDecimalDoubleNormal|inlined.0
     end
     local.get $5
     i64.const 4503599627370496
     i64.or
     local.set $2
     local.get $7
     i32.const -1
     local.get $6
     i32.const 1075
     i32.sub
     i32.const 78913
     i32.mul
     i32.const 18
     i32.shr_s
     local.tee $6
     i32.sub
     local.tee $7
     i32.const 217707
     i32.mul
     i32.const 16
     i32.shr_s
     i32.add
     local.tee $8
     i32.const 7
     i32.add
     local.set $12
     block $~lib/util/dtoa/computePow10|inlined.1
      local.get $7
      i32.const 293
      i32.add
      local.tee $13
      i32.const 320
      i32.le_s
      local.get $13
      i32.const 285
      i32.ge_s
      i32.and
      if
       i32.const 337
       local.get $13
       i32.sub
       local.tee $13
       i32.const 3
       i32.shl
       i32.const 1992
       i32.add
       i64.load
       local.set $5
       local.get $13
       i32.const 44
       i32.le_s
       if
        local.get $5
        global.set $~lib/util/dtoa/gPow10Hi
        i64.const 0
        local.set $4
        br $~lib/util/dtoa/computePow10|inlined.1
       end
       local.get $13
       i32.const 3
       i32.shl
       i32.const 2128
       i32.add
       i64.load
       local.set $4
       local.get $5
       i64.const 1
       i64.sub
       global.set $~lib/util/dtoa/gPow10Hi
       br $~lib/util/dtoa/computePow10|inlined.1
      end
      local.get $13
      call $~lib/util/dtoa/computePow10Compact
      local.set $4
     end
     global.get $~lib/util/dtoa/gPow10Hi
     local.tee $5
     local.get $2
     local.get $12
     i64.extend_i32_s
     i64.shl
     local.tee $9
     i64.mul
     local.set $10
     local.get $4
     local.get $7
     i32.const 0
     i32.lt_s
     i64.extend_i32_u
     i64.add
     local.tee $4
     i64.const 32
     i64.shr_u
     local.tee $11
     local.get $9
     i64.const 4294967295
     i64.and
     local.tee $14
     i64.mul
     local.get $4
     i64.const 4294967295
     i64.and
     local.tee $4
     local.get $14
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.set $15
     local.get $5
     i64.const 32
     i64.shr_u
     local.tee $16
     local.get $14
     i64.mul
     local.get $5
     i64.const 4294967295
     i64.and
     local.tee $17
     local.get $14
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     local.set $14
     i64.const 10
     local.get $10
     local.get $11
     local.get $9
     i64.const 32
     i64.shr_u
     local.tee $9
     i64.mul
     local.get $15
     i64.const 32
     i64.shr_u
     i64.add
     local.get $4
     local.get $9
     i64.mul
     local.get $15
     i64.const 4294967295
     i64.and
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.add
     local.tee $4
     local.get $10
     i64.lt_u
     i64.extend_i32_u
     local.get $9
     local.get $16
     i64.mul
     local.get $14
     i64.const 32
     i64.shr_u
     i64.add
     local.get $9
     local.get $17
     i64.mul
     local.get $14
     i64.const 4294967295
     i64.and
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.add
     local.tee $9
     i64.const 58
     i64.shl
     local.get $4
     i64.const 6
     i64.shr_u
     i64.or
     local.tee $4
     i64.const 10
     i64.mul
     local.tee $10
     local.get $10
     i64.const -9223372036854775802
     i64.const 0
     local.get $4
     i64.const 4611686018427387904
     i64.ne
     select
     i64.add
     i64.gt_u
     i64.extend_i32_u
     local.get $4
     i64.const 32
     i64.shr_u
     i64.const 10
     i64.mul
     local.get $4
     i64.const 4294967295
     i64.and
     i64.const 10
     i64.mul
     i64.const 32
     i64.shr_u
     i64.add
     i64.const 32
     i64.shr_u
     i64.add
     i64.const 0
     i64.const 1
     local.get $2
     i64.const 1
     i64.and
     i64.sub
     local.get $5
     i32.const 0
     local.get $8
     i32.sub
     i64.extend_i32_s
     i64.shr_u
     i64.add
     local.tee $2
     local.get $4
     i64.le_u
     select
     i64.const -1
     local.get $4
     i64.sub
     local.get $2
     i64.lt_u
     select
     local.set $2
     local.get $9
     i64.const 6
     i64.shr_u
     local.set $4
     local.get $2
     i64.const 10
     i64.eq
     if
      local.get $4
      i64.const 1
      i64.add
      global.set $~lib/util/dtoa/gSig
      i32.const 0
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 0
      global.set $~lib/util/dtoa/gHasLastDigit
     else
      local.get $2
      i64.eqz
      if
       local.get $4
       global.set $~lib/util/dtoa/gSig
       i32.const 0
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 0
       global.set $~lib/util/dtoa/gHasLastDigit
      else
       local.get $4
       global.set $~lib/util/dtoa/gSig
       local.get $2
       i32.wrap_i64
       global.set $~lib/util/dtoa/gLastDigit
       i32.const 1
       global.set $~lib/util/dtoa/gHasLastDigit
      end
     end
     local.get $6
     global.set $~lib/util/dtoa/gExp
    end
   else
    i32.const 616
    call $~lib/util/dtoa/computePow10Compact
    local.set $2
    global.get $~lib/util/dtoa/gPow10Hi
    local.tee $4
    local.get $5
    i64.const 5
    i64.shl
    local.tee $9
    i64.mul
    local.set $10
    local.get $9
    i64.const 4294967295
    i64.and
    local.tee $11
    local.get $2
    i64.const 32
    i64.shr_u
    local.tee $14
    i64.mul
    local.get $2
    i64.const 4294967295
    i64.and
    local.tee $2
    local.get $11
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $15
    local.get $4
    i64.const 32
    i64.shr_u
    local.tee $16
    local.get $11
    i64.mul
    local.get $4
    i64.const 4294967295
    i64.and
    local.tee $17
    local.get $11
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $11
    i64.const 10
    local.get $10
    local.get $14
    local.get $9
    i64.const 32
    i64.shr_u
    local.tee $9
    i64.mul
    local.get $15
    i64.const 32
    i64.shr_u
    i64.add
    local.get $2
    local.get $9
    i64.mul
    local.get $15
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.add
    local.tee $2
    local.get $10
    i64.lt_u
    i64.extend_i32_u
    local.get $9
    local.get $16
    i64.mul
    local.get $11
    i64.const 32
    i64.shr_u
    i64.add
    local.get $9
    local.get $17
    i64.mul
    local.get $11
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.add
    local.tee $9
    i64.const 58
    i64.shl
    local.get $2
    i64.const 6
    i64.shr_u
    i64.or
    local.tee $2
    i64.const 10
    i64.mul
    local.tee $10
    i64.const 9223372036854775802
    i64.sub
    local.get $10
    i64.lt_u
    i64.extend_i32_u
    local.get $2
    i64.const 32
    i64.shr_u
    i64.const 10
    i64.mul
    local.get $2
    i64.const 4294967295
    i64.and
    i64.const 10
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    i64.const 0
    i64.const 1
    local.get $5
    i64.const 1
    i64.and
    i64.sub
    local.get $4
    i64.const 2
    i64.shr_u
    i64.add
    local.tee $4
    local.get $2
    i64.le_u
    select
    i64.const -1
    local.get $2
    i64.sub
    local.get $4
    i64.lt_u
    select
    local.set $2
    local.get $9
    i64.const 6
    i64.shr_u
    local.set $4
    local.get $2
    i64.const 10
    i64.eq
    if
     local.get $4
     i64.const 1
     i64.add
     global.set $~lib/util/dtoa/gSig
     i32.const 0
     global.set $~lib/util/dtoa/gLastDigit
     i32.const 0
     global.set $~lib/util/dtoa/gHasLastDigit
    else
     local.get $2
     i64.eqz
     if
      local.get $4
      global.set $~lib/util/dtoa/gSig
      i32.const 0
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 0
      global.set $~lib/util/dtoa/gHasLastDigit
     else
      local.get $4
      global.set $~lib/util/dtoa/gSig
      local.get $2
      i32.wrap_i64
      global.set $~lib/util/dtoa/gLastDigit
      i32.const 1
      global.set $~lib/util/dtoa/gHasLastDigit
     end
    end
    i32.const -324
    global.set $~lib/util/dtoa/gExp
   end
   global.get $~lib/util/dtoa/gSig
   i64.const 1000000000000000
   i64.lt_u
   if
    block $~lib/util/dtoa/normalizeDoubleShortest|inlined.0
     global.get $~lib/util/dtoa/gSig
     i64.const 10
     i64.mul
     global.get $~lib/util/dtoa/gLastDigit
     i64.extend_i32_s
     i64.const 0
     global.get $~lib/util/dtoa/gHasLastDigit
     select
     i64.add
     local.tee $2
     i64.const 1000000000000000
     i64.ge_u
     if
      local.get $2
      global.set $~lib/util/dtoa/gSig
      global.get $~lib/util/dtoa/gExp
      i32.const 1
      i32.sub
      global.set $~lib/util/dtoa/gExp
      br $~lib/util/dtoa/normalizeDoubleShortest|inlined.0
     end
     i32.const 16
     block $~lib/util/dtoa/decimalLen15|inlined.2 (result i32)
      local.get $2
      i64.const 100000000
      i64.lt_u
      if
       local.get $2
       i64.const 10000
       i64.lt_u
       if
        local.get $2
        i64.const 10
        i64.ge_u
        i32.const 1
        i32.add
        local.get $2
        i64.const 100
        i64.lt_u
        br_if $~lib/util/dtoa/decimalLen15|inlined.2
        drop
        local.get $2
        i64.const 1000
        i64.ge_u
        i32.const 3
        i32.add
        br $~lib/util/dtoa/decimalLen15|inlined.2
       end
       local.get $2
       i64.const 100000
       i64.ge_u
       i32.const 5
       i32.add
       local.get $2
       i64.const 1000000
       i64.lt_u
       br_if $~lib/util/dtoa/decimalLen15|inlined.2
       drop
       local.get $2
       i64.const 10000000
       i64.ge_u
       i32.const 7
       i32.add
       br $~lib/util/dtoa/decimalLen15|inlined.2
      end
      local.get $2
      i64.const 1000000000000
      i64.lt_u
      if
       local.get $2
       i64.const 1000000000
       i64.ge_u
       i32.const 9
       i32.add
       local.get $2
       i64.const 10000000000
       i64.lt_u
       br_if $~lib/util/dtoa/decimalLen15|inlined.2
       drop
       local.get $2
       i64.const 100000000000
       i64.ge_u
       i32.const 11
       i32.add
       br $~lib/util/dtoa/decimalLen15|inlined.2
      end
      local.get $2
      i64.const 10000000000000
      i64.ge_u
      i32.const 13
      i32.add
      local.get $2
      i64.const 100000000000000
      i64.lt_u
      br_if $~lib/util/dtoa/decimalLen15|inlined.2
      drop
      i32.const 15
     end
     i32.sub
     local.tee $6
     i32.const 3
     i32.shl
     i32.const 3088
     i32.add
     f64.load
     i64.trunc_sat_f64_u
     local.get $2
     i64.mul
     global.set $~lib/util/dtoa/gSig
     global.get $~lib/util/dtoa/gExp
     local.get $6
     i32.const 1
     i32.add
     i32.sub
     global.set $~lib/util/dtoa/gExp
    end
    i32.const 0
    global.set $~lib/util/dtoa/gLastDigit
    i32.const 0
    global.set $~lib/util/dtoa/gHasLastDigit
   end
   global.get $~lib/util/dtoa/gHasLastDigit
   local.set $7
   global.get $~lib/util/dtoa/gSig
   local.tee $2
   i64.const 100000000
   i64.div_u
   local.tee $4
   i64.const 109951163
   i64.mul
   i64.const 40
   i64.shr_u
   i64.const 4294957296
   i64.mul
   local.get $4
   i64.add
   local.tee $5
   local.get $5
   i64.const 5243
   i64.mul
   i64.const 19
   i64.shr_u
   i64.const 545460846719
   i64.and
   i64.const 65436
   i64.mul
   i64.add
   local.tee $5
   local.get $5
   i64.const 103
   i64.mul
   i64.const 10
   i64.shr_u
   i64.const 4222189076152335
   i64.and
   i64.const 246
   i64.mul
   i64.add
   local.tee $5
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $5
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $5
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $5
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   global.set $~lib/util/dtoa/gBcdValue
   global.get $~lib/util/dtoa/gBcdValue
   local.get $2
   local.get $4
   i64.const 100000000
   i64.mul
   i64.sub
   local.tee $2
   i64.const 109951163
   i64.mul
   i64.const 40
   i64.shr_u
   i64.const 4294957296
   i64.mul
   local.get $2
   i64.add
   local.tee $2
   local.get $2
   i64.const 5243
   i64.mul
   i64.const 19
   i64.shr_u
   i64.const 545460846719
   i64.and
   i64.const 65436
   i64.mul
   i64.add
   local.tee $2
   local.get $2
   i64.const 103
   i64.mul
   i64.const 10
   i64.shr_u
   i64.const 4222189076152335
   i64.and
   i64.const 246
   i64.mul
   i64.add
   local.tee $2
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $2
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $2
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $2
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   global.set $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigHi
   global.get $~lib/util/dtoa/gBcdValue
   i64.const 3472328296227680304
   i64.add
   global.set $~lib/util/dtoa/gDigLo
   global.get $~lib/util/dtoa/gExp
   i32.const 16
   i32.add
   local.tee $8
   i32.const 20
   i32.le_s
   local.get $8
   i32.const -6
   i32.ge_s
   i32.and
   if
    local.get $8
    i32.const 0
    i32.lt_s
    if
     local.get $3
     i64.const 13511005043687472
     i64.store
     local.get $3
     i64.const 13511005043687472
     i64.store offset=8
    end
    global.get $~lib/util/dtoa/gLastDigit
    i32.const 0
    local.get $7
    select
    i32.const 48
    i32.add
    i64.extend_i32_s
    local.set $4
    i32.const 16
    i32.const 15
    local.get $7
    select
    local.set $6
    global.get $~lib/util/dtoa/gDigHi
    local.set $9
    global.get $~lib/util/dtoa/gDigLo
    local.set $5
    block $~lib/util/dtoa/writeFixed|inlined.0 (result i32)
     local.get $8
     i32.const 16
     i32.ge_s
     if
      local.get $3
      local.get $9
      i64.const 4294967295
      i64.and
      local.tee $2
      local.get $2
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $2
      local.get $2
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store
      local.get $3
      local.get $9
      i64.const 32
      i64.shr_u
      local.tee $2
      local.get $2
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $2
      local.get $2
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store offset=8
      local.get $3
      i32.const 16
      i32.add
      local.get $5
      i64.const 4294967295
      i64.and
      local.tee $2
      local.get $2
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $2
      local.get $2
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store
      local.get $3
      local.get $5
      i64.const 32
      i64.shr_u
      local.tee $2
      local.get $2
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $2
      local.get $2
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store offset=24
      local.get $3
      local.get $4
      i64.store16 offset=32
      local.get $3
      local.get $8
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      i32.add
      local.set $7
      local.get $3
      i32.const 34
      i32.add
      local.set $6
      loop $for-loop|0
       local.get $6
       local.get $7
       i32.lt_u
       if
        local.get $6
        i64.const 13511005043687472
        i64.store
        local.get $6
        i64.const 13511005043687472
        i64.store offset=8
        local.get $6
        i32.const 16
        i32.add
        local.set $6
        br $for-loop|0
       end
      end
      local.get $7
      i32.const 46
      i32.store16
      local.get $7
      i32.const 48
      i32.store16 offset=2
      local.get $7
      i32.const 4
      i32.add
      br $~lib/util/dtoa/writeFixed|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.tee $6
     i32.const 1
     i32.add
     local.get $6
     local.get $8
     i32.const 0
     i32.ge_s
     local.tee $6
     select
     local.set $12
     local.get $3
     i32.const 1
     local.get $8
     i32.sub
     local.get $8
     i32.const 31
     i32.shr_s
     i32.and
     i32.const 1
     i32.shl
     i32.add
     local.tee $13
     local.get $9
     i64.const 4294967295
     i64.and
     local.tee $2
     local.get $2
     i64.const 16
     i64.shl
     i64.or
     i64.const 281470681808895
     i64.and
     local.tee $2
     local.get $2
     i64.const 8
     i64.shl
     i64.or
     i64.const 71777214294589695
     i64.and
     i64.store
     local.get $13
     local.get $9
     i64.const 32
     i64.shr_u
     local.tee $2
     local.get $2
     i64.const 16
     i64.shl
     i64.or
     i64.const 281470681808895
     i64.and
     local.tee $2
     local.get $2
     i64.const 8
     i64.shl
     i64.or
     i64.const 71777214294589695
     i64.and
     i64.store offset=8
     local.get $13
     i32.const 16
     i32.add
     local.get $5
     i64.const 4294967295
     i64.and
     local.tee $2
     local.get $2
     i64.const 16
     i64.shl
     i64.or
     i64.const 281470681808895
     i64.and
     local.tee $2
     local.get $2
     i64.const 8
     i64.shl
     i64.or
     i64.const 71777214294589695
     i64.and
     i64.store
     local.get $13
     local.get $5
     i64.const 32
     i64.shr_u
     local.tee $2
     local.get $2
     i64.const 16
     i64.shl
     i64.or
     i64.const 281470681808895
     i64.and
     local.tee $2
     local.get $2
     i64.const 8
     i64.shl
     i64.or
     i64.const 71777214294589695
     i64.and
     i64.store offset=24
     local.get $13
     local.get $4
     i64.store16 offset=32
     local.get $6
     if
      local.get $8
      i32.const 1
      i32.add
      local.tee $3
      i32.const 3
      i32.shl
      local.tee $6
      i32.const 64
      i32.lt_s
      if
       local.get $5
       i64.const 64
       local.get $6
       i64.extend_i32_s
       local.tee $10
       i64.sub
       local.tee $11
       i64.shl
       local.get $9
       local.get $10
       i64.shr_u
       i64.or
       local.set $2
       local.get $4
       local.get $11
       i64.shl
       local.get $5
       local.get $10
       i64.shr_u
       i64.or
       local.set $4
      else
       local.get $6
       i32.const 64
       i32.eq
       if
        local.get $5
        local.set $2
       else
        local.get $6
        i32.const 128
        i32.lt_s
        if (result i64)
         local.get $6
         i32.const -64
         i32.add
         i64.extend_i32_s
         local.tee $2
         local.set $10
         local.get $4
         i64.const 64
         local.get $2
         i64.sub
         i64.shl
         local.get $5
         local.get $10
         i64.shr_u
         i64.or
         local.set $2
         local.get $4
         local.get $10
         i64.shr_u
        else
         local.get $4
         local.set $2
         i64.const 0
        end
        local.set $4
       end
      end
      local.get $3
      i32.const 1
      i32.add
      i32.const 1
      i32.shl
      local.get $13
      i32.add
      local.tee $6
      local.get $2
      i64.const 4294967295
      i64.and
      local.tee $10
      local.get $10
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $10
      local.get $10
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store
      local.get $6
      local.get $2
      i64.const 32
      i64.shr_u
      local.tee $2
      local.get $2
      i64.const 16
      i64.shl
      i64.or
      i64.const 281470681808895
      i64.and
      local.tee $2
      local.get $2
      i64.const 8
      i64.shl
      i64.or
      i64.const 71777214294589695
      i64.and
      i64.store offset=8
      local.get $3
      i32.const 9
      i32.add
      local.tee $6
      local.get $12
      i32.lt_s
      if
       local.get $6
       i32.const 1
       i32.shl
       local.get $13
       i32.add
       local.tee $6
       local.get $4
       i64.const 4294967295
       i64.and
       local.tee $2
       local.get $2
       i64.const 16
       i64.shl
       i64.or
       i64.const 281470681808895
       i64.and
       local.tee $2
       local.get $2
       i64.const 8
       i64.shl
       i64.or
       i64.const 71777214294589695
       i64.and
       i64.store
       local.get $6
       local.get $4
       i64.const 32
       i64.shr_u
       local.tee $2
       local.get $2
       i64.const 16
       i64.shl
       i64.or
       i64.const 281470681808895
       i64.and
       local.tee $2
       local.get $2
       i64.const 8
       i64.shl
       i64.or
       i64.const 71777214294589695
       i64.and
       i64.store offset=8
      end
      local.get $13
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      i32.const 46
      i32.store16
     else
      local.get $3
      i32.const 46
      i32.store16 offset=2
     end
     local.get $13
     local.get $12
     i32.const 1
     i32.shl
     i32.add
     local.set $3
     local.get $12
     local.get $8
     i32.const 1
     i32.add
     i32.eq
     local.get $8
     i32.const 0
     i32.ge_s
     i32.and
     if
      local.get $3
      i32.const 46
      i32.store16
      local.get $3
      i32.const 48
      i32.store16 offset=2
      local.get $3
      i32.const 4
      i32.add
      br $~lib/util/dtoa/writeFixed|inlined.0
     end
     local.get $7
     i32.eqz
     if
      local.get $3
      local.get $5
      i64.const 3472328296227680304
      i64.xor
      i64.clz
      i64.const 3
      i64.shr_u
      i32.wrap_i64
      local.tee $3
      i32.const 8
      i32.eq
      if (result i32)
       local.get $3
       local.get $9
       i64.const 3472328296227680304
       i64.xor
       i64.clz
       i64.const 3
       i64.shr_u
       i32.wrap_i64
       i32.add
      else
       local.get $3
      end
      i32.const 1
      i32.shl
      i32.sub
      local.set $3
     end
     local.get $3
     i32.const 2
     i32.sub
     i32.load16_u
     i32.const 46
     i32.eq
     if (result i32)
      local.get $3
      i32.const 48
      i32.store16
      local.get $3
      i32.const 2
      i32.add
     else
      local.get $3
     end
    end
    br $~lib/util/dtoa/formatDecodedDouble|inlined.0
   end
   local.get $3
   i32.const 2
   i32.add
   local.tee $6
   global.get $~lib/util/dtoa/gDigHi
   local.tee $2
   i64.const 4294967295
   i64.and
   local.tee $4
   local.get $4
   i64.const 16
   i64.shl
   i64.or
   i64.const 281470681808895
   i64.and
   local.tee $4
   local.get $4
   i64.const 8
   i64.shl
   i64.or
   i64.const 71777214294589695
   i64.and
   i64.store
   local.get $6
   local.get $2
   i64.const 32
   i64.shr_u
   local.tee $2
   local.get $2
   i64.const 16
   i64.shl
   i64.or
   i64.const 281470681808895
   i64.and
   local.tee $2
   local.get $2
   i64.const 8
   i64.shl
   i64.or
   i64.const 71777214294589695
   i64.and
   i64.store offset=8
   local.get $6
   i32.const 16
   i32.add
   global.get $~lib/util/dtoa/gDigLo
   local.tee $2
   i64.const 4294967295
   i64.and
   local.tee $4
   local.get $4
   i64.const 16
   i64.shl
   i64.or
   i64.const 281470681808895
   i64.and
   local.tee $4
   local.get $4
   i64.const 8
   i64.shl
   i64.or
   i64.const 71777214294589695
   i64.and
   i64.store
   local.get $6
   local.get $2
   i64.const 32
   i64.shr_u
   local.tee $2
   local.get $2
   i64.const 16
   i64.shl
   i64.or
   i64.const 281470681808895
   i64.and
   local.tee $2
   local.get $2
   i64.const 8
   i64.shl
   i64.or
   i64.const 71777214294589695
   i64.and
   i64.store offset=24
   local.get $6
   global.get $~lib/util/dtoa/gLastDigit
   i32.const 48
   i32.add
   i32.store16 offset=32
   local.get $6
   local.get $7
   i32.const 16
   i32.add
   i32.const 1
   i32.shl
   i32.add
   local.set $6
   local.get $3
   local.get $3
   i32.load16_u offset=2
   i32.store16
   local.get $3
   i32.const 46
   i32.store16 offset=2
   local.get $7
   i32.eqz
   if
    global.get $~lib/util/dtoa/gDigHi
    local.set $2
    local.get $6
    global.get $~lib/util/dtoa/gDigLo
    i64.const 3472328296227680304
    i64.xor
    i64.clz
    i64.const 3
    i64.shr_u
    i32.wrap_i64
    local.tee $6
    i32.const 8
    i32.eq
    if (result i32)
     local.get $6
     local.get $2
     i64.const 3472328296227680304
     i64.xor
     i64.clz
     i64.const 3
     i64.shr_u
     i32.wrap_i64
     i32.add
    else
     local.get $6
    end
    i32.const 1
    i32.shl
    i32.sub
    local.set $6
   end
   local.get $6
   local.get $6
   local.get $3
   i32.const 4
   i32.add
   i32.eq
   i32.const 1
   i32.shl
   i32.sub
   local.tee $3
   i32.const 101
   i32.store16
   local.get $3
   local.get $8
   i32.const 31
   i32.shr_s
   local.tee $6
   i32.const 2
   i32.and
   i32.const 43
   i32.add
   i32.store16 offset=2
   local.get $3
   i32.const 4
   i32.add
   local.set $3
   block $~lib/util/dtoa/writeExponent|inlined.1 (result i32)
    local.get $6
    local.get $8
    i32.xor
    local.get $6
    i32.sub
    local.tee $6
    i32.const 100
    i32.ge_s
    if
     local.get $3
     local.get $6
     i32.const 5243
     i32.mul
     i32.const 19
     i32.shr_u
     local.tee $7
     i32.const 48
     i32.add
     i32.store16
     local.get $3
     local.get $6
     local.get $7
     i32.const 100
     i32.mul
     i32.sub
     i32.const 2
     i32.shl
     i32.const 1596
     i32.add
     i32.load
     i32.store offset=2
     local.get $3
     i32.const 6
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.1
    end
    local.get $6
    i32.const 10
    i32.ge_s
    if
     local.get $3
     local.get $6
     i32.const 2
     i32.shl
     i32.const 1596
     i32.add
     i32.load
     i32.store
     local.get $3
     i32.const 4
     i32.add
     br $~lib/util/dtoa/writeExponent|inlined.1
    end
    local.get $3
    local.get $6
    i32.const 48
    i32.add
    i32.store16
    local.get $3
    i32.const 2
    i32.add
   end
  end
  local.get $0
  i32.sub
  i32.const 1
  i32.shr_u
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
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
   i32.const 1552
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1552
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1552
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1552
   i32.const 201
   i32.const 14
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
   i32.const 1552
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
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
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1552
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1552
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1552
   i32.const 234
   i32.const 14
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
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1552
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
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
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $invalid
   block $~lib/array/Array<f64>
    block $~lib/array/Array<f32>
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        block $~lib/object/Object
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<f32> $~lib/array/Array<f64> $invalid
        end
        return
       end
       return
      end
      return
     end
     local.get $0
     i32.load
     call $~lib/rt/itcms/__visit
     return
    end
    local.get $0
    call $~lib/array/Array<f32>~visit
    return
   end
   local.get $0
   call $~lib/array/Array<f32>~visit
   return
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 1596
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 1596
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 1596
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 1596
   i32.add
   i32.load
   i32.store
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/util/number/dtoa<f64> (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3596
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  f64.const 0
  f64.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1056
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
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1088
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1120
   i32.const 1168
   local.get $0
   f64.const 0
   f64.lt
   select
   return
  end
  local.get $0
  i64.reinterpret_f64
  i64.const 9223372036854775807
  i64.and
  local.tee $4
  i64.const 4741671816366391296
  i64.le_u
  local.get $4
  i64.const 4607182418800017408
  i64.ge_u
  i32.and
  if
   local.get $0
   local.get $0
   i32.trunc_sat_f64_s
   local.tee $1
   f64.convert_i32_s
   f64.eq
   if
    i32.const 0
    local.get $1
    i32.sub
    local.get $1
    local.get $1
    i32.const 0
    i32.lt_s
    local.tee $2
    select
    local.tee $6
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $6
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $6
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $6
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $6
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $6
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $6
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $6
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $6
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $3
    i32.add
    i32.const 2
    i32.add
    i32.const 1
    i32.shl
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $2
    if (result i32)
     local.get $1
     i32.const 45
     i32.store16
     local.get $1
     i32.const 2
     i32.add
    else
     local.get $1
    end
    local.set $2
    local.get $6
    i32.const 10
    i32.lt_u
    if
     local.get $2
     local.get $6
     i32.const 48
     i32.add
     i32.store16
    else
     local.get $6
     i32.const 100
     i32.lt_u
     if
      local.get $2
      local.get $6
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     else
      local.get $6
      i32.const 10000
      i32.lt_u
      if
       local.get $6
       local.get $6
       i32.const 100
       i32.div_u
       local.tee $7
       i32.const 100
       i32.mul
       i32.sub
       local.set $5
       local.get $6
       i32.const 1000
       i32.lt_u
       if
        local.get $2
        local.get $7
        i32.const 48
        i32.add
        i32.store16
        local.get $2
        local.get $5
        i32.const 2
        i32.shl
        i32.const 1596
        i32.add
        i32.load
        i32.store offset=2
       else
        local.get $2
        local.get $7
        i32.const 2
        i32.shl
        i32.const 1596
        i32.add
        i32.load
        i32.store
        local.get $2
        local.get $5
        i32.const 2
        i32.shl
        i32.const 1596
        i32.add
        i32.load
        i32.store offset=4
       end
      else
       local.get $2
       local.get $6
       local.get $3
       call $~lib/util/number/utoa32_dec_lut
      end
     end
    end
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.const 3145774
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  local.get $0
  call $~lib/util/dtoa/dtoa_buffered
  i32.const 1
  i32.shl
  local.tee $1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.const 2000
  local.get $1
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/number/dtoa<f32> (param $0 f32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3596
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  f32.const 0
  f32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1056
   return
  end
  local.get $0
  local.get $0
  f32.sub
  f32.const 0
  f32.ne
  if
   local.get $0
   local.get $0
   f32.ne
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1088
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1120
   i32.const 1168
   local.get $0
   f32.const 0
   f32.lt
   select
   return
  end
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.tee $1
  i32.const 1266679808
  i32.le_u
  local.get $1
  i32.const 1065353216
  i32.ge_u
  i32.and
  if
   local.get $0
   local.get $0
   i32.trunc_sat_f32_s
   local.tee $1
   f32.convert_i32_s
   f32.eq
   if
    i32.const 0
    local.get $1
    i32.sub
    local.get $1
    local.get $1
    i32.const 0
    i32.lt_s
    local.tee $2
    select
    local.tee $5
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $5
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $5
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $5
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $5
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $5
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $5
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $5
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $3
    i32.add
    i32.const 2
    i32.add
    i32.const 1
    i32.shl
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $2
    if (result i32)
     local.get $1
     i32.const 45
     i32.store16
     local.get $1
     i32.const 2
     i32.add
    else
     local.get $1
    end
    local.set $2
    local.get $5
    i32.const 10
    i32.lt_u
    if
     local.get $2
     local.get $5
     i32.const 48
     i32.add
     i32.store16
    else
     local.get $5
     i32.const 100
     i32.lt_u
     if
      local.get $2
      local.get $5
      i32.const 2
      i32.shl
      i32.const 1596
      i32.add
      i32.load
      i32.store
     else
      local.get $5
      i32.const 10000
      i32.lt_u
      if
       local.get $5
       local.get $5
       i32.const 100
       i32.div_u
       local.tee $6
       i32.const 100
       i32.mul
       i32.sub
       local.set $4
       local.get $5
       i32.const 1000
       i32.lt_u
       if
        local.get $2
        local.get $6
        i32.const 48
        i32.add
        i32.store16
        local.get $2
        local.get $4
        i32.const 2
        i32.shl
        i32.const 1596
        i32.add
        i32.load
        i32.store offset=2
       else
        local.get $2
        local.get $6
        i32.const 2
        i32.shl
        i32.const 1596
        i32.add
        i32.load
        i32.store
        local.get $2
        local.get $4
        i32.const 2
        i32.shl
        i32.const 1596
        i32.add
        i32.load
        i32.store offset=4
       end
      else
       local.get $2
       local.get $5
       local.get $3
       call $~lib/util/number/utoa32_dec_lut
      end
     end
    end
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    i32.const 3145774
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2000
  local.get $0
  call $~lib/util/dtoa/ftoa_buffered
  i32.const 1
  i32.shl
  local.tee $1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store offset=4
  local.get $2
  i32.const 2000
  local.get $1
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3596
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.le_s
  select
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.ge_s
  select
  i32.const 1
  i32.shl
  local.tee $4
  local.get $3
  i32.sub
  local.tee $2
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3376
   return
  end
  local.get $3
  i32.eqz
  local.get $4
  local.get $1
  i32.const 1
  i32.shl
  i32.eq
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $3
  i32.add
  local.get $2
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
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
   local.get $1
   i32.const 536870910
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
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1552
   i32.const 334
   i32.const 14
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
     i32.const 1552
     i32.const 347
     i32.const 18
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
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
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
  i32.const 36368
  i32.const 0
  i32.store
  i32.const 37936
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 36368
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 36368
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 36368
  i32.const 37940
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36368
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1552
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
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
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1552
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1552
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
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
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 3328
  call $~lib/rt/itcms/__visit
  i32.const 3536
  call $~lib/rt/itcms/__visit
  i32.const 1408
  call $~lib/rt/itcms/__visit
  i32.const 1216
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1280
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3596
  i32.lt_s
  if
   i32.const 36384
   i32.const 36432
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 3596
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   memory.size
   i32.const 16
   i32.shl
   i32.const 36364
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1332
   i32.const 1328
   i32.store
   i32.const 1336
   i32.const 1328
   i32.store
   i32.const 1328
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1364
   i32.const 1360
   i32.store
   i32.const 1368
   i32.const 1360
   i32.store
   i32.const 1360
   global.set $~lib/rt/itcms/toSpace
   i32.const 1508
   i32.const 1504
   i32.store
   i32.const 1512
   i32.const 1504
   i32.store
   i32.const 1504
   global.set $~lib/rt/itcms/fromSpace
   f32.const 1.100000023841858
   call $~lib/util/number/dtoa<f32>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 3024
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3056
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   f64.const 1.1
   call $~lib/util/number/dtoa<f64>
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 3024
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3056
    i32.const 2
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3328
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3596
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3328
   i32.store
   i32.const 3332
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 3328
   i32.store
   i32.const 3340
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 3408
   i32.store
   block $__inlined_func$~lib/util/string/joinFloatArray<f32>$1 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 3596
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    local.get $3
    i32.const 1
    i32.sub
    local.tee $3
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3376
     br $__inlined_func$~lib/util/string/joinFloatArray<f32>$1
    end
    block $folding-inner00
     local.get $3
     i32.eqz
     if
      local.get $2
      f32.load
      call $~lib/util/number/dtoa<f32>
      local.set $0
      br $folding-inner00
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 3408
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3404
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 32
     i32.add
     local.get $3
     i32.mul
     i32.const 32
     i32.add
     local.tee $5
     i32.const 1
     i32.shl
     call $~lib/rt/itcms/__new
     local.tee $6
     i32.store offset=4
     loop $for-loop|0
      local.get $1
      local.get $3
      i32.lt_s
      if
       local.get $6
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       local.get $2
       local.get $1
       i32.const 2
       i32.shl
       i32.add
       f32.load
       call $~lib/util/dtoa/ftoa_buffered
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $6
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 3408
        local.get $4
        i32.const 1
        i32.shl
        memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $for-loop|0
      end
     end
     local.get $6
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     f32.load
     call $~lib/util/dtoa/ftoa_buffered
     local.get $0
     i32.add
     local.tee $0
     local.get $5
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $0
      call $~lib/string/String#substring
      local.set $0
      br $folding-inner00
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     br $__inlined_func$~lib/util/string/joinFloatArray<f32>$1
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3440
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3056
    i32.const 5
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3536
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3596
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3536
   i32.store
   i32.const 3540
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 3536
   i32.store
   i32.const 3548
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 3408
   i32.store
   block $__inlined_func$~lib/util/string/joinFloatArray<f64>$2 (result i32)
    i32.const 0
    local.set $0
    i32.const 0
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 3596
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i64.const 0
    i64.store
    local.get $3
    i32.const 1
    i32.sub
    local.tee $3
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3376
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>$2
    end
    block $folding-inner01
     local.get $3
     i32.eqz
     if
      local.get $2
      f64.load
      call $~lib/util/number/dtoa<f64>
      local.set $0
      br $folding-inner01
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 3408
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3404
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $4
     i32.const 32
     i32.add
     local.get $3
     i32.mul
     i32.const 32
     i32.add
     local.tee $5
     i32.const 1
     i32.shl
     call $~lib/rt/itcms/__new
     local.tee $6
     i32.store offset=4
     loop $for-loop|02
      local.get $1
      local.get $3
      i32.lt_s
      if
       local.get $6
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       local.get $2
       local.get $1
       i32.const 3
       i32.shl
       i32.add
       f64.load
       call $~lib/util/dtoa/dtoa_buffered
       local.get $0
       i32.add
       local.set $0
       local.get $4
       if
        local.get $6
        local.get $0
        i32.const 1
        i32.shl
        i32.add
        i32.const 3408
        local.get $4
        i32.const 1
        i32.shl
        memory.copy
        local.get $0
        local.get $4
        i32.add
        local.set $0
       end
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $for-loop|02
      end
     end
     local.get $6
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $3
     i32.const 3
     i32.shl
     i32.add
     f64.load
     call $~lib/util/dtoa/dtoa_buffered
     local.get $0
     i32.add
     local.tee $0
     local.get $5
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      local.get $0
      call $~lib/string/String#substring
      local.set $0
      br $folding-inner01
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>$2
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 3440
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3056
    i32.const 8
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36384
  i32.const 36432
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 36364
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1280
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 36364
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 36364
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1552
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
)
