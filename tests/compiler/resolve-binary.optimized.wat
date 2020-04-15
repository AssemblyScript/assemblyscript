(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i32_i64_i32_i64_=>_i32 (func (param i32 i64 i32 i64 i32 i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00t\00r\00u\00e")
 (data (i32.const 1056) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 1088) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00r\00e\00s\00o\00l\00v\00e\00-\00b\00i\00n\00a\00r\00y\00.\00t\00s")
 (data (i32.const 1152) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 1184) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\000")
 (data (i32.const 1216) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\001")
 (data (i32.const 1248) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\002")
 (data (i32.const 1280) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\000\00.\000")
 (data (i32.const 1312) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00N\00a\00N")
 (data (i32.const 1344) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00-\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 1392) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00I\00n\00f\00i\00n\00i\00t\00y")
 (data (i32.const 1424) "\b8\02\00\00\01\00\00\00\03\00\00\00\b8\02\00\00\88\02\1c\08\a0\d5\8f\fav\bf>\a2\7f\e1\ae\bav\acU0 \fb\16\8b\ea5\ce]J\89B\cf-;eU\aa\b0k\9a\dfE\1a=\03\cf\1a\e6\ca\c6\9a\c7\17\fep\abO\dc\bc\be\fc\b1w\ff\0c\d6kA\ef\91V\be<\fc\7f\90\ad\1f\d0\8d\83\9aU1(\\Q\d3\b5\c9\a6\ad\8f\acq\9d\cb\8b\ee#w\"\9c\eamSx@\91I\cc\aeW\ce\b6]y\12<\827V\fbM6\94\10\c2O\98H8o\ea\96\90\c7:\82%\cb\85t\d7\f4\97\bf\97\cd\cf\86\a0\e5\ac*\17\98\n4\ef\8e\b25*\fbg8\b2;?\c6\d2\df\d4\c8\84\ba\cd\d3\1a\'D\dd\c5\96\c9%\bb\ce\9fk\93\84\a5b}$l\ac\db\f6\da_\0dXf\ab\a3&\f1\c3\de\93\f8\e2\f3\b8\80\ff\aa\a8\ad\b5\b5\8bJ|l\05_b\87S0\c14`\ff\bc\c9U&\ba\91\8c\85N\96\bd~)p$w\f9\df\8f\b8\e5\b8\9f\bd\df\a6\94}t\88\cf_\a9\f8\cf\9b\a8\8f\93pD\b9k\15\0f\bf\f8\f0\08\8a\b611eU%\b0\cd\ac\7f{\d0\c6\e2?\99\06;+*\c4\10\\\e4\d3\92si\99$$\aa\0e\ca\00\83\f2\b5\87\fd\eb\1a\11\92d\08\e5\bc\cc\88Po\t\cc\bc\8c,e\19\e2X\17\b7\d1\00\00\00\00\00\00@\9c\00\00\00\00\10\a5\d4\e8\00\00b\ac\c5\ebx\ad\84\t\94\f8x9?\81\b3\15\07\c9{\ce\97\c0p\\\ea{\ce2~\8fh\80\e9\ab\a48\d2\d5E\"\9a\17&\'O\9f\'\fb\c4\d41\a2c\ed\a8\ad\c8\8c8e\de\b0\dbe\ab\1a\8e\08\c7\83\9a\1dqB\f9\1d]\c4X\e7\1b\a6,iM\92\ea\8dp\1ad\ee\01\daJw\ef\9a\99\a3m\a2\85k}\b4{x\t\f2w\18\ddy\a1\e4T\b4\c2\c5\9b[\92\86[\86=]\96\c8\c5S5\c8\b3\a0\97\fa\\\b4*\95\e3_\a0\99\bd\9fF\de%\8c9\db4\c2\9b\a5\\\9f\98\a3r\9a\c6\f6\ce\be\e9TS\bf\dc\b7\e2A\"\f2\17\f3\fc\88\a5x\\\d3\9b\ce \cc\dfS!{\f3Z\16\98:0\1f\97\dc\b5\a0\e2\96\b3\e3\\S\d1\d9\a8<D\a7\a4\d9|\9b\fb\10D\a4\a7LLv\bb\1a\9c@\b6\ef\8e\ab\8b,\84W\a6\10\ef\1f\d0)1\91\e9\e5\a4\10\9b\9d\0c\9c\a1\fb\9b\10\e7)\f4;b\d9 (\ac\85\cf\a7z^KD\80-\dd\ac\03@\e4!\bf\8f\ffD^/\9cg\8eA\b8\8c\9c\9d\173\d4\a9\1b\e3\b4\92\db\19\9e\d9w\df\ban\bf\96\ebk\ee\f0\9b;\02\87\af")
 (data (i32.const 2144) "\ae\00\00\00\01\00\00\00\04\00\00\00\ae\00\00\00<\fbW\fbr\fb\8c\fb\a7\fb\c1\fb\dc\fb\f6\fb\11\fc,\fcF\fca\fc{\fc\96\fc\b1\fc\cb\fc\e6\fc\00\fd\1b\fd5\fdP\fdk\fd\85\fd\a0\fd\ba\fd\d5\fd\ef\fd\n\fe%\fe?\feZ\fet\fe\8f\fe\a9\fe\c4\fe\df\fe\f9\fe\14\ff.\ffI\ffc\ff~\ff\99\ff\b3\ff\ce\ff\e8\ff\03\00\1e\008\00S\00m\00\88\00\a2\00\bd\00\d8\00\f2\00\0d\01\'\01B\01\\\01w\01\92\01\ac\01\c7\01\e1\01\fc\01\16\021\02L\02f\02\81\02\9b\02\b6\02\d0\02\eb\02\06\03 \03;\03U\03p\03\8b\03\a5\03\c0\03\da\03\f5\03\0f\04*\04")
 (data (i32.const 2336) "(\00\00\00\01\00\00\00\05\00\00\00(\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 2404) "\01\00\00\00\01")
 (data (i32.const 2416) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data (i32.const 2464) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\004\00.\000")
 (data (i32.const 2496) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\004")
 (data (i32.const 2528) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\003")
 (data (i32.const 2560) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00-\001")
 (data (i32.const 2592) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00l\00t")
 (data (i32.const 2624) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00g\00t")
 (data (i32.const 2656) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00l\00e")
 (data (i32.const 2688) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00g\00e")
 (data (i32.const 2720) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00e\00q")
 (data (i32.const 2752) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00n\00e")
 (data (i32.const 2784) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00d\00d")
 (data (i32.const 2816) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00u\00b")
 (data (i32.const 2848) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00m\00u\00l")
 (data (i32.const 2880) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00d\00i\00v")
 (data (i32.const 2912) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00r\00e\00m")
 (data (i32.const 2944) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00p\00o\00w")
 (global $resolve-binary/a (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/util/number/_K (mut i32) (i32.const 0))
 (global $~lib/util/number/_frc_pow (mut i64) (i64.const 0))
 (global $~lib/util/number/_exp_pow (mut i32) (i32.const 0))
 (global $resolve-binary/bar (mut i32) (i32.const 0))
 (global $resolve-binary/bar2 (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
  i32.const 1
  i32.shr_u
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.get $1
    i32.load16_u
    local.tee $3
    local.get $0
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $4
     local.get $3
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
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   i32.const 1
   local.get $0
   select
   br_if $folding-inner0
   local.get $0
   call $~lib/string/String#get:length
   local.tee $2
   local.get $1
   call $~lib/string/String#get:length
   i32.ne
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   return
  end
  i32.const 0
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.ge_u
  i32.const 1
  i32.add
  local.get $0
  i32.const 10000
  i32.ge_u
  i32.const 3
  i32.add
  local.get $0
  i32.const 1000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 100
  i32.lt_u
  select
  local.get $0
  i32.const 1000000
  i32.ge_u
  i32.const 6
  i32.add
  local.get $0
  i32.const 1000000000
  i32.ge_u
  i32.const 8
  i32.add
  local.get $0
  i32.const 100000000
  i32.ge_u
  i32.add
  local.get $0
  i32.const 10000000
  i32.lt_u
  select
  local.get $0
  i32.const 100000
  i32.lt_u
  select
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $4
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  i32.const 16
  local.get $2
  i32.const 16
  i32.gt_u
  select
  local.tee $6
  i32.add
  local.tee $2
  memory.size
  local.tee $5
  i32.const 16
  i32.shl
  local.tee $3
  i32.gt_u
  if
   local.get $5
   local.get $2
   local.get $3
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $5
   local.get $3
   i32.gt_s
   select
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
  end
  local.get $2
  global.set $~lib/rt/stub/offset
  local.get $4
  i32.const 16
  i32.sub
  local.tee $2
  local.get $6
  i32.store
  local.get $2
  i32.const 1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $~lib/util/number/utoa_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $do-continue|0
   local.get $1
   i32.const 10
   i32.rem_u
   local.set $3
   local.get $1
   i32.const 10
   i32.div_u
   local.set $1
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $3
   i32.const 48
   i32.add
   i32.store16
   local.get $1
   br_if $do-continue|0
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 31
   i32.shr_u
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
   call $~lib/rt/stub/__alloc
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
  else
   i32.const 1200
  end
 )
 (func $~lib/util/number/genDigits (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64) (param $4 i32) (param $5 i64) (result i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
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
  local.tee $12
  i64.and
  local.set $7
  local.get $3
  local.get $10
  i64.extend_i32_s
  i64.shr_u
  i32.wrap_i64
  local.tee $6
  call $~lib/util/number/decimalCount32
  local.set $4
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
               local.get $6
               i32.const 1000000000
               i32.div_u
               local.set $2
               local.get $6
               i32.const 1000000000
               i32.rem_u
               local.set $6
               br $break|1
              end
              local.get $6
              i32.const 100000000
              i32.div_u
              local.set $2
              local.get $6
              i32.const 100000000
              i32.rem_u
              local.set $6
              br $break|1
             end
             local.get $6
             i32.const 10000000
             i32.div_u
             local.set $2
             local.get $6
             i32.const 10000000
             i32.rem_u
             local.set $6
             br $break|1
            end
            local.get $6
            i32.const 1000000
            i32.div_u
            local.set $2
            local.get $6
            i32.const 1000000
            i32.rem_u
            local.set $6
            br $break|1
           end
           local.get $6
           i32.const 100000
           i32.div_u
           local.set $2
           local.get $6
           i32.const 100000
           i32.rem_u
           local.set $6
           br $break|1
          end
          local.get $6
          i32.const 10000
          i32.div_u
          local.set $2
          local.get $6
          i32.const 10000
          i32.rem_u
          local.set $6
          br $break|1
         end
         local.get $6
         i32.const 1000
         i32.div_u
         local.set $2
         local.get $6
         i32.const 1000
         i32.rem_u
         local.set $6
         br $break|1
        end
        local.get $6
        i32.const 100
        i32.div_u
        local.set $2
        local.get $6
        i32.const 100
        i32.rem_u
        local.set $6
        br $break|1
       end
       local.get $6
       i32.const 10
       i32.div_u
       local.set $2
       local.get $6
       i32.const 10
       i32.rem_u
       local.set $6
       br $break|1
      end
      local.get $6
      local.set $2
      i32.const 0
      local.set $6
      br $break|1
     end
     i32.const 0
     local.set $2
    end
    local.get $2
    local.get $8
    i32.or
    if
     local.get $0
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     i32.const 65535
     i32.and
     i32.const 48
     i32.add
     i32.store16
     local.get $8
     i32.const 1
     i32.add
     local.set $8
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    local.get $7
    local.get $6
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
     local.get $4
     i32.const 2
     i32.shl
     i32.const 2352
     i32.add
     i64.load32_u
     local.get $10
     i64.extend_i32_s
     i64.shl
     local.set $3
     local.get $0
     local.get $8
     i32.const 1
     i32.sub
     i32.const 1
     i32.shl
     i32.add
     local.tee $0
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
      local.tee $7
      local.get $9
      i64.sub
      i64.gt_u
      local.get $7
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
     local.get $0
     local.get $4
     i32.store16
     local.get $8
     return
    end
    br $while-continue|0
   end
  end
  local.get $10
  i64.extend_i32_s
  local.set $1
  loop $while-continue|4
   local.get $5
   i64.const 10
   i64.mul
   local.set $5
   local.get $7
   i64.const 10
   i64.mul
   local.tee $3
   local.get $1
   i64.shr_u
   local.tee $7
   local.get $8
   i64.extend_i32_s
   i64.or
   i64.const 0
   i64.ne
   if
    local.get $0
    local.get $8
    i32.const 1
    i32.shl
    i32.add
    local.get $7
    i32.wrap_i64
    i32.const 65535
    i32.and
    i32.const 48
    i32.add
    i32.store16
    local.get $8
    i32.const 1
    i32.add
    local.set $8
   end
   local.get $4
   i32.const 1
   i32.sub
   local.set $4
   local.get $3
   local.get $12
   i64.and
   local.tee $7
   local.get $5
   i64.ge_u
   br_if $while-continue|4
  end
  local.get $4
  global.get $~lib/util/number/_K
  i32.add
  global.set $~lib/util/number/_K
  local.get $7
  local.set $1
  local.get $9
  i32.const 0
  local.get $4
  i32.sub
  i32.const 2
  i32.shl
  i32.const 2352
  i32.add
  i64.load32_u
  i64.mul
  local.set $3
  local.get $0
  local.get $8
  i32.const 1
  i32.sub
  i32.const 1
  i32.shl
  i32.add
  local.tee $0
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
   local.tee $7
   local.get $3
   i64.sub
   i64.gt_u
   local.get $7
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
  local.get $0
  local.get $4
  i32.store16
  local.get $8
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
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
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
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
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
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
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/util/number/prettify (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/util/number/dtoa_core (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  i32.const -4
  global.set $~lib/util/number/_K
  i32.const 1792
  i64.load
  global.set $~lib/util/number/_frc_pow
  i32.const 2248
  i32.load16_s
  global.set $~lib/util/number/_exp_pow
  local.get $0
  local.get $0
  global.get $~lib/util/number/_frc_pow
  local.tee $2
  i64.const 32
  i64.shr_u
  local.tee $3
  i64.const 2147483648
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  local.tee $2
  i64.const 2147483648
  i64.mul
  i64.const 0
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  i64.add
  local.get $1
  i64.const 4294967295
  i64.and
  i64.const 0
  i64.add
  i64.const 2147483647
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  global.get $~lib/util/number/_exp_pow
  local.tee $0
  i32.const 3
  i32.add
  local.get $3
  i64.const 2147483648
  i64.mul
  local.get $2
  i64.const 2147483648
  i64.mul
  local.get $2
  i64.const 1024
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  i64.const 1024
  i64.mul
  local.get $1
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
  local.tee $1
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  local.get $3
  i64.const 2147483647
  i64.mul
  local.get $2
  i64.const 2147483647
  i64.mul
  local.get $2
  i64.const 4294966784
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $1
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  i64.const 4294966784
  i64.mul
  local.get $1
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
  call $~lib/util/number/genDigits
  global.get $~lib/util/number/_K
  call $~lib/util/number/prettify
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 2416
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
   return
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $2
  local.get $0
  local.get $1
  i32.add
  local.get $3
  call $~lib/memory/memory.copy
  local.get $2
 )
 (func $~lib/util/number/dtoa (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 56
  i32.const 1
  call $~lib/rt/stub/__alloc
  local.tee $0
  call $~lib/util/number/dtoa_core
  local.tee $1
  i32.const 28
  i32.eq
  if
   local.get $0
   return
  end
  local.get $0
  local.get $1
  call $~lib/string/String#substring
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
   i32.const 2432
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 2432
   i32.const 72
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  local.get $1
  i32.load
  i32.add
  i32.eq
  if
   local.get $1
   global.set $~lib/rt/stub/offset
  end
 )
 (func $start:resolve-binary
  i32.const 1040
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 2
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1072
  i32.const 1072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1072
  i32.const 1072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1072
  i32.const 1072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 27
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1040
  i32.const 1040
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1072
  i32.const 1072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2976
  global.set $~lib/rt/stub/offset
  i32.const 1
  global.set $resolve-binary/a
  i32.const 1
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 48
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.add
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.sub
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 58
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shl
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 63
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/util/number/dtoa
  i32.const 2480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 69
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  global.set $resolve-binary/a
  i32.const 2
  global.set $resolve-binary/a
  i32.const 2
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 75
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 3
  i32.rem_s
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 80
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shl
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 2512
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shr_s
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 90
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 1
  i32.shr_u
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 3
  i32.and
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 100
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 3
  i32.or
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 2544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/a
  i32.const 2
  i32.xor
  global.set $resolve-binary/a
  global.get $resolve-binary/a
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/number/I32#toString
  i32.const 2544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 117
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  call $~lib/number/I32#toString
  i32.const 2576
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 122
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 127
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 132
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/util/number/dtoa
  i32.const 2480
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 144
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  call $~lib/number/I32#toString
  i32.const 2512
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/number/I32#toString
  i32.const 2544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 168
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  call $~lib/number/I32#toString
  i32.const 2544
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 173
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 178
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 185
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/number/I32#toString
  i32.const 1200
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 190
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $~lib/number/I32#toString
  i32.const 1232
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 195
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $~lib/number/I32#toString
  i32.const 1264
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 200
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 6
  call $~lib/rt/stub/__alloc
  drop
  i32.const 2608
  i32.const 2608
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 261
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2640
  i32.const 2640
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 266
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2672
  i32.const 2672
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 271
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2704
  i32.const 2704
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 276
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2736
  i32.const 2736
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 281
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2768
  i32.const 2768
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 286
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2800
  i32.const 2800
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 291
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2832
  i32.const 2832
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 296
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2864
  i32.const 2864
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 301
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2896
  i32.const 2896
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 306
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2928
  i32.const 2928
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 311
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2960
  i32.const 2960
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1104
   i32.const 316
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  i32.const 7
  call $~lib/rt/stub/__alloc
  global.set $resolve-binary/bar
  i32.const 0
  i32.const 7
  call $~lib/rt/stub/__alloc
  global.set $resolve-binary/bar2
  global.get $resolve-binary/bar2
  global.set $resolve-binary/bar
  global.get $resolve-binary/bar
  global.get $resolve-binary/bar2
  i32.ne
  if
   i32.const 0
   i32.const 1104
   i32.const 334
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $resolve-binary/bar
  global.get $resolve-binary/bar2
  i32.ne
  if
   i32.const 0
   i32.const 1104
   i32.const 339
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:resolve-binary
 )
)
