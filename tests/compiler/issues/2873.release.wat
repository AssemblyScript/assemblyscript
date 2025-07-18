(module
 (type $0 (func))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32)))
 (type $4 (func (param i32 i64 i64 i32 i64 i32) (result i32)))
 (type $5 (func (param i32 i32 i32)))
 (type $6 (func (param i32 i32 i32) (result i32)))
 (type $7 (func (param i32 f64 i32) (result i32)))
 (type $8 (func (param i32 i32 i32 i32)))
 (type $9 (func (param i32 i32 i64)))
 (type $10 (func (result i32)))
 (type $11 (func (param i32) (result i32)))
 (type $12 (func (param i32 f32) (result i32)))
 (type $13 (func (param i32 f64) (result i32)))
 (type $14 (func (param f32) (result i32)))
 (type $15 (func (param f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/util/number/_frc_plus (mut i64) (i64.const 0))
 (global $~lib/util/number/_frc_minus (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
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
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36140))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\06\00\00\000\00.\000")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02\00\00\00\06\00\00\00N\00a\00N")
 (data $2 (i32.const 1100) ",")
 (data $2.1 (i32.const 1112) "\02\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data $3 (i32.const 1148) ",")
 (data $3.1 (i32.const 1160) "\02\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data $5 (i32.const 1256) "\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\rXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data $6 (i32.const 1952) "<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\r\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data $7 (i32.const 2128) "\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data $8 (i32.const 2168) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $9 (i32.const 2572) "<")
 (data $9.1 (i32.const 2584) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $10 (i32.const 2636) "<")
 (data $10.1 (i32.const 2648) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $13 (i32.const 2764) "<")
 (data $13.1 (i32.const 2776) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $14 (i32.const 2828) ",")
 (data $14.1 (i32.const 2840) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $16 (i32.const 2908) "<")
 (data $16.1 (i32.const 2920) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $17 (i32.const 2972) "\1c")
 (data $17.1 (i32.const 2984) "\02\00\00\00\06\00\00\001\00.\001")
 (data $18 (i32.const 3004) ",")
 (data $18.1 (i32.const 3016) "\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\008\007\003\00.\00t\00s")
 (data $19 (i32.const 3052) "\1c")
 (data $19.1 (i32.const 3064) "\01\00\00\00\0c\00\00\00\cd\cc\8c?\cd\cc\0c@33S@")
 (data $20 (i32.const 3084) ",")
 (data $20.1 (i32.const 3096) "\04\00\00\00\10\00\00\00\00\0c\00\00\00\0c\00\00\0c\00\00\00\03")
 (data $21 (i32.const 3132) "\1c")
 (data $21.1 (i32.const 3144) "\02")
 (data $22 (i32.const 3164) "\1c")
 (data $22.1 (i32.const 3176) "\02\00\00\00\02\00\00\00,")
 (data $23 (i32.const 3196) ",")
 (data $23.1 (i32.const 3208) "\02\00\00\00\16\00\00\001\00.\001\00,\002\00.\002\00,\003\00.\003")
 (data $24 (i32.const 3244) ",")
 (data $24.1 (i32.const 3256) "\01\00\00\00\18\00\00\00\9a\99\99\99\99\99\f1?\9a\99\99\99\99\99\01@ffffff\n@")
 (data $25 (i32.const 3292) ",")
 (data $25.1 (i32.const 3304) "\05\00\00\00\10\00\00\00\c0\0c\00\00\c0\0c\00\00\18\00\00\00\03")
 (data $26 (i32.const 3344) "\06\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\02\19\00\00\02\1a")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/number/genDigits (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  local.get $2
  local.get $1
  i64.sub
  local.set $9
  i64.const 1
  i32.const 0
  local.get $3
  i32.sub
  local.tee $10
  i64.extend_i32_s
  local.tee $1
  i64.shl
  local.tee $12
  i64.const 1
  i64.sub
  local.tee $11
  local.get $2
  i64.and
  local.set $8
  local.get $2
  local.get $1
  i64.shr_u
  i32.wrap_i64
  local.tee $3
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
  local.set $7
  loop $while-continue|0
   local.get $7
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
               block $case0|1
                local.get $7
                i32.const 1
                i32.sub
                br_table $case9|1 $case8|1 $case7|1 $case6|1 $case5|1 $case4|1 $case3|1 $case2|1 $case1|1 $case0|1 $case10|1
               end
               local.get $3
               i32.const 1000000000
               i32.div_u
               local.set $6
               local.get $3
               i32.const 1000000000
               i32.rem_u
               local.set $3
               br $break|1
              end
              local.get $3
              i32.const 100000000
              i32.div_u
              local.set $6
              local.get $3
              i32.const 100000000
              i32.rem_u
              local.set $3
              br $break|1
             end
             local.get $3
             i32.const 10000000
             i32.div_u
             local.set $6
             local.get $3
             i32.const 10000000
             i32.rem_u
             local.set $3
             br $break|1
            end
            local.get $3
            i32.const 1000000
            i32.div_u
            local.set $6
            local.get $3
            i32.const 1000000
            i32.rem_u
            local.set $3
            br $break|1
           end
           local.get $3
           i32.const 100000
           i32.div_u
           local.set $6
           local.get $3
           i32.const 100000
           i32.rem_u
           local.set $3
           br $break|1
          end
          local.get $3
          i32.const 10000
          i32.div_u
          local.set $6
          local.get $3
          i32.const 10000
          i32.rem_u
          local.set $3
          br $break|1
         end
         local.get $3
         i32.const 1000
         i32.div_u
         local.set $6
         local.get $3
         i32.const 1000
         i32.rem_u
         local.set $3
         br $break|1
        end
        local.get $3
        i32.const 100
        i32.div_u
        local.set $6
        local.get $3
        i32.const 100
        i32.rem_u
        local.set $3
        br $break|1
       end
       local.get $3
       i32.const 10
       i32.div_u
       local.set $6
       local.get $3
       i32.const 10
       i32.rem_u
       local.set $3
       br $break|1
      end
      local.get $3
      local.set $6
      i32.const 0
      local.set $3
      br $break|1
     end
     i32.const 0
     local.set $6
    end
    local.get $5
    local.get $6
    i32.or
    if
     local.get $0
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
     local.get $5
     i32.const 1
     i32.add
     local.set $5
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    local.get $4
    local.get $3
    i64.extend_i32_u
    local.get $10
    i64.extend_i32_s
    local.tee $2
    i64.shl
    local.get $8
    i64.add
    local.tee $1
    i64.ge_u
    if
     global.get $~lib/util/number/_K
     local.get $7
     i32.add
     global.set $~lib/util/number/_K
     local.get $7
     i32.const 2
     i32.shl
     i32.const 2128
     i32.add
     i64.load32_u
     local.get $2
     i64.shl
     local.set $2
     local.get $0
     local.get $5
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.tee $0
     i32.load16_u
     local.set $7
     loop $while-continue|3
      local.get $1
      local.get $9
      i64.lt_u
      local.get $4
      local.get $1
      i64.sub
      local.get $2
      i64.ge_u
      i32.and
      if (result i32)
       local.get $9
       local.get $1
       local.get $2
       i64.add
       local.tee $8
       i64.gt_u
       local.get $9
       local.get $1
       i64.sub
       local.get $8
       local.get $9
       i64.sub
       i64.gt_u
       i32.or
      else
       i32.const 0
      end
      if
       local.get $7
       i32.const 1
       i32.sub
       local.set $7
       local.get $1
       local.get $2
       i64.add
       local.set $1
       br $while-continue|3
      end
     end
     local.get $0
     local.get $7
     i32.store16
     local.get $5
     return
    end
    br $while-continue|0
   end
  end
  loop $while-continue|4
   local.get $4
   i64.const 10
   i64.mul
   local.set $4
   local.get $8
   i64.const 10
   i64.mul
   local.tee $1
   local.get $10
   i64.extend_i32_s
   i64.shr_u
   local.tee $2
   local.get $5
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $0
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
    local.get $5
    i32.const 1
    i32.add
    local.set $5
   end
   local.get $7
   i32.const 1
   i32.sub
   local.set $7
   local.get $1
   local.get $11
   i64.and
   local.tee $8
   local.get $4
   i64.ge_u
   br_if $while-continue|4
  end
  global.get $~lib/util/number/_K
  local.get $7
  i32.add
  global.set $~lib/util/number/_K
  local.get $9
  i32.const 0
  local.get $7
  i32.sub
  i32.const 2
  i32.shl
  i32.const 2128
  i32.add
  i64.load32_u
  i64.mul
  local.set $1
  local.get $0
  local.get $5
  i32.const 1
  i32.sub
  i32.const 1
  i32.shl
  i32.add
  local.tee $0
  i32.load16_u
  local.set $7
  loop $while-continue|6
   local.get $1
   local.get $8
   i64.gt_u
   local.get $4
   local.get $8
   i64.sub
   local.get $12
   i64.ge_u
   i32.and
   if (result i32)
    local.get $1
    local.get $8
    local.get $12
    i64.add
    local.tee $2
    i64.gt_u
    local.get $1
    local.get $8
    i64.sub
    local.get $2
    local.get $1
    i64.sub
    i64.gt_u
    i32.or
   else
    i32.const 0
   end
   if
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    local.get $8
    local.get $12
    i64.add
    local.set $8
    br $while-continue|6
   end
  end
  local.get $0
  local.get $7
  i32.store16
  local.get $5
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
    i32.const 2168
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 2168
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
   i32.const 2168
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
   i32.const 2168
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
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  local.get $2
  i32.add
  local.tee $3
  i32.const 21
  i32.le_s
  local.get $1
  local.get $3
  i32.le_s
  i32.and
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
   local.get $3
   i32.const 0
   i32.gt_s
   i32.and
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
    memory.copy
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
    local.get $3
    i32.const -6
    i32.gt_s
    i32.and
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
     memory.copy
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
     if
      local.get $0
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
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $0
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $0
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $0
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      i32.const 1
      i32.add
      local.tee $1
      call $~lib/util/number/utoa32_dec_lut
      local.get $2
      i32.const 45
      i32.const 43
      local.get $3
      select
      i32.store16
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
      memory.copy
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
      local.tee $4
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
      i32.const 100000
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 100
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
       else
        local.get $0
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get $0
        i32.const 1000
        i32.ge_u
        i32.add
       end
      else
       local.get $0
       i32.const 10000000
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
       else
        local.get $0
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get $0
        i32.const 100000000
        i32.ge_u
        i32.add
       end
      end
      i32.const 1
      i32.add
      local.tee $0
      call $~lib/util/number/utoa32_dec_lut
      local.get $4
      i32.const 45
      i32.const 43
      local.get $2
      select
      i32.store16
      local.get $0
      local.get $1
      i32.add
      local.set $1
     end
     local.get $1
     i32.const 2
     i32.add
    end
   end
  end
 )
 (func $~lib/util/number/dtoa_core (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  local.get $1
  f64.const 0
  f64.lt
  local.tee $4
  if
   local.get $0
   i32.const 45
   i32.store16
   local.get $1
   f64.neg
   local.set $1
  end
  local.get $2
  if (result i64)
   local.get $1
   f32.demote_f64
   i32.reinterpret_f32
   local.tee $8
   i32.const 2139095040
   i32.and
   i32.const 23
   i32.shr_u
   local.tee $9
   i32.const 1
   local.get $9
   select
   i32.const 150
   i32.sub
   local.set $5
   local.get $8
   i32.const 8388607
   i32.and
   i64.extend_i32_u
   local.get $9
   i32.const 0
   i32.ne
   i64.extend_i32_u
   i64.const 23
   i64.shl
   i64.add
  else
   local.get $1
   i64.reinterpret_f64
   local.tee $3
   i64.const 9218868437227405312
   i64.and
   i64.const 52
   i64.shr_u
   i32.wrap_i64
   local.tee $8
   i32.const 1
   local.get $8
   select
   i32.const 1075
   i32.sub
   local.set $5
   local.get $3
   i64.const 4503599627370495
   i64.and
   local.get $8
   i32.const 0
   i32.ne
   i64.extend_i32_u
   i64.const 52
   i64.shl
   i64.add
  end
  local.set $3
  local.get $5
  i32.const 1
  i32.sub
  local.get $3
  i64.const 1
  i64.shl
  i64.const 1
  i64.add
  local.tee $6
  i64.clz
  i32.wrap_i64
  local.tee $8
  i32.sub
  local.set $9
  local.get $6
  local.get $8
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_plus
  local.get $3
  local.get $3
  i64.const 8388608
  i64.const 4503599627370496
  local.get $2
  select
  i64.eq
  i32.const 1
  i32.add
  local.tee $2
  i64.extend_i32_s
  i64.shl
  i64.const 1
  i64.sub
  local.get $5
  local.get $2
  i32.sub
  local.get $9
  i32.sub
  i64.extend_i32_s
  i64.shl
  global.set $~lib/util/number/_frc_minus
  local.get $9
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
  i32.trunc_sat_f64_s
  local.tee $2
  local.get $2
  f64.convert_i32_s
  local.get $1
  f64.ne
  i32.add
  i32.const 3
  i32.shr_s
  i32.const 1
  i32.add
  local.tee $2
  i32.const 3
  i32.shl
  local.tee $5
  i32.sub
  global.set $~lib/util/number/_K
  local.get $5
  i32.const 1256
  i32.add
  i64.load
  global.set $~lib/util/number/_frc_pow
  local.get $2
  i32.const 1
  i32.shl
  i32.const 1952
  i32.add
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  local.get $3
  local.get $3
  i64.clz
  i64.shl
  local.tee $3
  i64.const 4294967295
  i64.and
  local.set $10
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $6
  global.get $~lib/util/number/_frc_pow
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
  local.set $13
  global.get $~lib/util/number/_frc_plus
  local.tee $3
  i64.const 4294967295
  i64.and
  local.set $14
  local.get $12
  local.get $3
  i64.const 32
  i64.shr_u
  local.tee $7
  i64.mul
  local.get $12
  local.get $14
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $15
  global.get $~lib/util/number/_frc_minus
  local.tee $16
  i64.const 4294967295
  i64.and
  local.set $3
  local.get $12
  local.get $16
  i64.const 32
  i64.shr_u
  local.tee $16
  i64.mul
  local.get $3
  local.get $12
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $12
  local.get $11
  i64.const 32
  i64.shr_u
  local.tee $11
  local.get $7
  i64.mul
  local.get $15
  i64.const 32
  i64.shr_u
  i64.add
  local.get $11
  local.get $14
  i64.mul
  local.get $15
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.sub
  local.set $7
  local.get $0
  local.get $4
  i32.const 1
  i32.shl
  i32.add
  local.get $0
  local.get $6
  local.get $11
  i64.mul
  local.get $13
  i64.const 32
  i64.shr_u
  i64.add
  local.get $10
  local.get $11
  i64.mul
  local.get $13
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.get $7
  global.get $~lib/util/number/_exp_pow
  global.get $~lib/util/number/_exp
  i32.add
  i32.const -64
  i32.sub
  local.get $7
  local.get $11
  local.get $16
  i64.mul
  local.get $12
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $11
  i64.mul
  local.get $12
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  i64.const 1
  i64.add
  i64.sub
  local.get $4
  call $~lib/util/number/genDigits
  local.get $4
  i32.sub
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
  local.get $4
  i32.add
 )
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 3104
  call $~lib/rt/itcms/__visit
  i32.const 3312
  call $~lib/rt/itcms/__visit
  i32.const 2784
  call $~lib/rt/itcms/__visit
  i32.const 2592
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
     i32.const 2656
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
     i32.const 2656
     i32.const 148
     i32.const 30
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    global.set $~lib/rt/itcms/iter
   end
   block $__inlined_func$~lib/rt/itcms/Object#unlink$138
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
     i32.const 36140
     i32.lt_u
     i32.and
     i32.eqz
     if
      i32.const 0
      i32.const 2656
      i32.const 128
      i32.const 18
      call $~lib/builtins/abort
      unreachable
     end
     br $__inlined_func$~lib/rt/itcms/Object#unlink$138
    end
    local.get $1
    i32.load offset=8
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 2656
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
    i32.const 3344
    i32.load
    i32.gt_u
    if
     i32.const 2784
     i32.const 2848
     i32.const 21
     i32.const 28
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 2
    i32.shl
    i32.const 3348
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
   i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
    i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
    i32.const 2928
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
    i32.const 2928
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
  i32.const 36144
  i32.const 0
  i32.store
  i32.const 37712
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
    i32.const 36144
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
      i32.const 36144
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
  i32.const 36144
  i32.const 37716
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36144
  global.set $~lib/rt/tlsf/ROOT
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
      i32.const 36140
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
     i32.const 2656
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 36140
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
     i32.const 36140
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
       i32.const 2928
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
   i32.const 2928
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
     i32.const 2928
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
   i32.const 2592
   i32.const 2656
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$72
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
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$72
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
   i32.const 2592
   i32.const 2928
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
   memory.size
   local.tee $1
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
   local.get $1
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
   local.tee $2
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
    i32.const 2928
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
   i32.const 2928
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
   i32.const 2928
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
 (func $~lib/util/number/dtoa_buffered<f32> (param $0 i32) (param $1 f32) (result i32)
  (local $2 f64)
  (local $3 i32)
  block $~lib/util/number/dtoa_buffered_impl|inlined.0 (result i32)
   local.get $1
   f64.promote_f32
   local.tee $2
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
    br $~lib/util/number/dtoa_buffered_impl|inlined.0
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
     br $~lib/util/number/dtoa_buffered_impl|inlined.0
    else
     local.get $2
     f64.const 0
     f64.lt
     local.tee $3
     if
      local.get $0
      i32.const 45
      i32.store16
      local.get $0
      i32.const 2
      i32.add
      local.set $0
     end
     local.get $0
     i64.const 29555310648492105
     i64.store
     local.get $0
     i64.const 34058970405077102
     i64.store offset=8
     local.get $3
     i32.const 8
     i32.add
     br $~lib/util/number/dtoa_buffered_impl|inlined.0
    end
    unreachable
   end
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/util/number/dtoa_core
  end
 )
 (func $~lib/util/number/dtoa_buffered<f64> (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  block $~lib/util/number/dtoa_buffered_impl|inlined.1 (result i32)
   local.get $1
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
    br $~lib/util/number/dtoa_buffered_impl|inlined.1
   end
   local.get $1
   local.get $1
   f64.sub
   f64.const 0
   f64.ne
   if
    local.get $1
    local.get $1
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
     br $~lib/util/number/dtoa_buffered_impl|inlined.1
    else
     local.get $1
     f64.const 0
     f64.lt
     local.tee $2
     if
      local.get $0
      i32.const 45
      i32.store16
      local.get $0
      i32.const 2
      i32.add
      local.set $0
     end
     local.get $0
     i64.const 29555310648492105
     i64.store
     local.get $0
     i64.const 34058970405077102
     i64.store offset=8
     local.get $2
     i32.const 8
     i32.add
     br $~lib/util/number/dtoa_buffered_impl|inlined.1
    end
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/util/number/dtoa_core
  end
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3372
  i32.lt_s
  if
   i32.const 36160
   i32.const 36208
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
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 3372
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   memory.size
   i32.const 16
   i32.shl
   i32.const 36140
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 2708
   i32.const 2704
   i32.store
   i32.const 2712
   i32.const 2704
   i32.store
   i32.const 2704
   global.set $~lib/rt/itcms/pinSpace
   i32.const 2740
   i32.const 2736
   i32.store
   i32.const 2744
   i32.const 2736
   i32.store
   i32.const 2736
   global.set $~lib/rt/itcms/toSpace
   i32.const 2884
   i32.const 2880
   i32.store
   i32.const 2888
   i32.const 2880
   i32.store
   i32.const 2880
   global.set $~lib/rt/itcms/fromSpace
   f32.const 1.100000023841858
   call $~lib/util/number/dtoa<f32>
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2992
   i32.store offset=4
   local.get $1
   i32.const 2992
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3024
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   f64.const 1.1
   call $~lib/util/number/dtoa<f64>
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2992
   i32.store offset=4
   local.get $1
   i32.const 2992
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3024
    i32.const 2
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3104
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3184
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3372
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3104
   i32.store
   i32.const 3108
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 3104
   i32.store
   i32.const 3116
   i32.load
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 3184
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3372
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $__inlined_func$~lib/util/string/joinFloatArray<f32>$143
    local.get $1
    i32.const 1
    i32.sub
    local.tee $4
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3152
     local.set $1
     br $__inlined_func$~lib/util/string/joinFloatArray<f32>$143
    end
    local.get $4
    i32.eqz
    if
     local.get $3
     f32.load
     call $~lib/util/number/dtoa<f32>
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinFloatArray<f32>$143
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 3184
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3180
    i32.load
    i32.const 1
    i32.shr_u
    local.tee $5
    i32.const 28
    i32.add
    local.get $4
    i32.mul
    i32.const 28
    i32.add
    local.tee $6
    i32.const 1
    i32.shl
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store offset=4
    loop $for-loop|0
     local.get $2
     local.get $4
     i32.lt_s
     if
      local.get $1
      local.get $0
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      local.get $2
      i32.const 2
      i32.shl
      i32.add
      f32.load
      call $~lib/util/number/dtoa_buffered<f32>
      local.get $0
      i32.add
      local.set $0
      local.get $5
      if
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       i32.const 3184
       local.get $5
       i32.const 1
       i32.shl
       memory.copy
       local.get $0
       local.get $5
       i32.add
       local.set $0
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|0
     end
    end
    local.get $1
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    f32.load
    call $~lib/util/number/dtoa_buffered<f32>
    local.get $0
    i32.add
    local.tee $0
    local.get $6
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $0
     call $~lib/string/String#substring
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinFloatArray<f32>$143
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3216
   i32.store offset=4
   local.get $1
   i32.const 3216
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3024
    i32.const 5
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3312
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3184
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3372
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3312
   i32.store
   i32.const 3316
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 3312
   i32.store
   i32.const 3324
   i32.load
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 3184
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 3372
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $__inlined_func$~lib/util/string/joinFloatArray<f64>$144
    local.get $0
    i32.const 1
    i32.sub
    local.tee $4
    i32.const 0
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3152
     local.set $1
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>$144
    end
    local.get $4
    i32.eqz
    if
     local.get $3
     f64.load
     call $~lib/util/number/dtoa<f64>
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>$144
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 3184
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 3180
    i32.load
    i32.const 1
    i32.shr_u
    local.tee $5
    i32.const 28
    i32.add
    local.get $4
    i32.mul
    i32.const 28
    i32.add
    local.tee $6
    i32.const 1
    i32.shl
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store offset=4
    i32.const 0
    local.set $0
    i32.const 0
    local.set $2
    loop $for-loop|01
     local.get $2
     local.get $4
     i32.lt_s
     if
      local.get $1
      local.get $0
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      local.get $2
      i32.const 3
      i32.shl
      i32.add
      f64.load
      call $~lib/util/number/dtoa_buffered<f64>
      local.get $0
      i32.add
      local.set $0
      local.get $5
      if
       local.get $1
       local.get $0
       i32.const 1
       i32.shl
       i32.add
       i32.const 3184
       local.get $5
       i32.const 1
       i32.shl
       memory.copy
       local.get $0
       local.get $5
       i32.add
       local.set $0
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|01
     end
    end
    local.get $1
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    f64.load
    call $~lib/util/number/dtoa_buffered<f64>
    local.get $0
    i32.add
    local.tee $0
    local.get $6
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     local.get $1
     local.get $0
     call $~lib/string/String#substring
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/util/string/joinFloatArray<f64>$144
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3216
   i32.store offset=4
   local.get $1
   i32.const 3216
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 3024
    i32.const 8
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36160
  i32.const 36208
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
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
  i32.const 3372
  i32.lt_s
  if
   i32.const 36160
   i32.const 36208
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
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3372
  i32.lt_s
  if
   i32.const 36160
   i32.const 36208
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
   i32.const 3152
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
 (func $~lib/util/number/dtoa<f32> (param $0 f32) (result i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3372
  i32.lt_s
  if
   i32.const 36160
   i32.const 36208
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1056
  local.set $2
  block $~lib/util/number/dtoa_impl|inlined.0
   local.get $0
   f64.promote_f32
   local.tee $1
   f64.const 0
   f64.eq
   br_if $~lib/util/number/dtoa_impl|inlined.0
   local.get $1
   local.get $1
   f64.sub
   f64.const 0
   f64.ne
   if
    i32.const 1088
    local.set $2
    local.get $1
    local.get $1
    f64.ne
    br_if $~lib/util/number/dtoa_impl|inlined.0
    i32.const 1120
    i32.const 1168
    local.get $1
    f64.const 0
    f64.lt
    select
    local.set $2
    br $~lib/util/number/dtoa_impl|inlined.0
   end
   i32.const 1200
   local.get $1
   i32.const 1
   call $~lib/util/number/dtoa_core
   i32.const 1
   i32.shl
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   i32.const 1200
   local.get $3
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/util/number/dtoa<f64> (param $0 f64) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 3372
  i32.lt_s
  if
   i32.const 36160
   i32.const 36208
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1056
  local.set $1
  block $~lib/util/number/dtoa_impl|inlined.1
   local.get $0
   f64.const 0
   f64.eq
   br_if $~lib/util/number/dtoa_impl|inlined.1
   local.get $0
   local.get $0
   f64.sub
   f64.const 0
   f64.ne
   if
    i32.const 1088
    local.set $1
    local.get $0
    local.get $0
    f64.ne
    br_if $~lib/util/number/dtoa_impl|inlined.1
    i32.const 1120
    i32.const 1168
    local.get $0
    f64.const 0
    f64.lt
    select
    local.set $1
    br $~lib/util/number/dtoa_impl|inlined.1
   end
   i32.const 1200
   local.get $0
   i32.const 0
   call $~lib/util/number/dtoa_core
   i32.const 1
   i32.shl
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   i32.const 1200
   local.get $2
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
