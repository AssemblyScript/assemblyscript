(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 416))
 (global $~lib/memory/__data_end i32 (i32.const 440))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33208))
 (global $~lib/memory/__heap_base i32 (i32.const 33208))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 416) "\05\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 \00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "testExport" (func $template-debuginfo/testExport))
 (export "memory" (memory $0))
 (start $~start)
 (func $template-debuginfo/AA#get:length (param $this i32) (result i32)
  (i32.load
   (local.get $this)
  )
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  (i32.store offset=4
   (local.get $this)
   (local.get $nextWithColor)
  )
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  (i32.store offset=8
   (local.get $this)
   (local.get $prev)
  )
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  ;;@ ~lib/rt/itcms.ts:55:2
  (call $~lib/rt/itcms/Object#set:nextWithColor
   (local.get $space)
   ;;@ ~lib/rt/itcms.ts:55:24
   (local.get $space)
  )
  ;;@ ~lib/rt/itcms.ts:56:2
  (call $~lib/rt/itcms/Object#set:prev
   (local.get $space)
   ;;@ ~lib/rt/itcms.ts:56:15
   (local.get $space)
  )
  ;;@ ~lib/rt/itcms.ts:57:2
  (return
   ;;@ ~lib/rt/itcms.ts:57:9
   (local.get $space)
  )
  ;;@ ~lib/rt/itcms.ts:57:2
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  (i32.load offset=4
   (local.get $this)
  )
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  ;;@ ~lib/rt/itcms.ts:94:4
  (return
   ;;@ ~lib/rt/itcms.ts:94:11
   (i32.and
    ;;@ ~lib/rt/itcms.ts:94:30
    (call $~lib/rt/itcms/Object#get:nextWithColor
     (local.get $this)
    )
    ;;@ ~lib/rt/itcms.ts:94:51
    (i32.xor
     ;;@ ~lib/rt/itcms.ts:94:52
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:94:4
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  ;;@ ~lib/rt/itcms.ts:104:4
  (return
   ;;@ ~lib/rt/itcms.ts:104:11
   (i32.and
    ;;@ ~lib/rt/itcms.ts:104:15
    (call $~lib/rt/itcms/Object#get:nextWithColor
     (local.get $this)
    )
    ;;@ ~lib/rt/itcms.ts:104:36
    (i32.const 3)
   )
  )
  ;;@ ~lib/rt/itcms.ts:104:4
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  ;;@ ~lib/rt/itcms.ts:156:2
  (call $~lib/rt/__visit_globals
   ;;@ ~lib/rt/itcms.ts:156:18
   (local.get $cookie)
  )
  ;;@ ~lib/rt/itcms.ts:157:2
  (local.set $pn
   ;;@ ~lib/rt/itcms.ts:157:11
   (global.get $~lib/rt/itcms/pinSpace)
  )
  ;;@ ~lib/rt/itcms.ts:158:2
  (local.set $iter
   ;;@ ~lib/rt/itcms.ts:158:13
   (call $~lib/rt/itcms/Object#get:next
    (local.get $pn)
   )
  )
  ;;@ ~lib/rt/itcms.ts:159:2
  (block $label$1
   (loop $label$2
    ;;@ ~lib/rt/itcms.ts:159:9
    (if
     (i32.ne
      (local.get $iter)
      ;;@ ~lib/rt/itcms.ts:159:17
      (local.get $pn)
     )
     (block
      ;;@ ~lib/rt/itcms.ts:160:8
      (drop
       (i32.const 1)
      )
      ;;@ ~lib/rt/itcms.ts:160:15
      (if
       ;;@ ~lib/rt/itcms.ts:160:22
       (i32.eqz
        (i32.eq
         (call $~lib/rt/itcms/Object#get:color
          (local.get $iter)
         )
         ;;@ ~lib/rt/itcms.ts:160:36
         (i32.const 3)
        )
       )
       (block
        ;;@ ~lib/rt/itcms.ts:160:15
        (call $~lib/builtins/abort
         (i32.const 0)
         (i32.const 96)
         (i32.const 160)
         (i32.const 16)
        )
        (unreachable)
       )
      )
      ;;@ ~lib/rt/itcms.ts:161:4
      (call $~lib/rt/__visit_members
       ;;@ ~lib/rt/itcms.ts:161:20
       (i32.add
        (local.get $iter)
        ;;@ ~lib/rt/itcms.ts:161:46
        (i32.const 20)
       )
       ;;@ ~lib/rt/itcms.ts:161:62
       (local.get $cookie)
      )
      ;;@ ~lib/rt/itcms.ts:162:4
      (local.set $iter
       ;;@ ~lib/rt/itcms.ts:162:11
       (call $~lib/rt/itcms/Object#get:next
        (local.get $iter)
       )
      )
      ;;@ ~lib/rt/itcms.ts:162:4
      (br $label$2)
     )
    )
   )
  )
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  ;;@ ~lib/rt/itcms.ts:109:4
  (call $~lib/rt/itcms/Object#set:nextWithColor
   (local.get $this)
   ;;@ ~lib/rt/itcms.ts:109:25
   (i32.or
    ;;@ ~lib/rt/itcms.ts:109:26
    (i32.and
     (call $~lib/rt/itcms/Object#get:nextWithColor
      (local.get $this)
     )
     ;;@ ~lib/rt/itcms.ts:109:47
     (i32.xor
      ;;@ ~lib/rt/itcms.ts:109:48
      (i32.const 3)
      (i32.const -1)
     )
    )
    ;;@ ~lib/rt/itcms.ts:109:62
    (local.get $color)
   )
  )
  ;;@ ~lib/rt/itcms.ts:109:4
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  (i32.load offset=8
   (local.get $this)
  )
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  ;;@ ~lib/rt/itcms.ts:99:4
  (call $~lib/rt/itcms/Object#set:nextWithColor
   (local.get $this)
   ;;@ ~lib/rt/itcms.ts:99:25
   (i32.or
    (local.get $obj)
    ;;@ ~lib/rt/itcms.ts:99:51
    (i32.and
     (call $~lib/rt/itcms/Object#get:nextWithColor
      (local.get $this)
     )
     ;;@ ~lib/rt/itcms.ts:99:72
     (i32.const 3)
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:99:4
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  ;;@ ~lib/rt/itcms.ts:126:4
  (local.set $next
   ;;@ ~lib/rt/itcms.ts:126:15
   (call $~lib/rt/itcms/Object#get:next
    (local.get $this)
   )
  )
  ;;@ ~lib/rt/itcms.ts:127:4
  (if
   ;;@ ~lib/rt/itcms.ts:127:8
   (i32.eq
    (local.get $next)
    ;;@ ~lib/rt/itcms.ts:127:16
    (i32.const 0)
   )
   (block
    ;;@ ~lib/rt/itcms.ts:128:10
    (drop
     (i32.const 1)
    )
    ;;@ ~lib/rt/itcms.ts:128:17
    (if
     ;;@ ~lib/rt/itcms.ts:128:45
     (i32.eqz
      ;;@ ~lib/rt/itcms.ts:128:24
      (if (result i32)
       (i32.eq
        (call $~lib/rt/itcms/Object#get:prev
         (local.get $this)
        )
        ;;@ ~lib/rt/itcms.ts:128:37
        (i32.const 0)
       )
       ;;@ ~lib/rt/itcms.ts:128:45
       (i32.lt_u
        (local.get $this)
        ;;@ ~lib/rt/itcms.ts:128:71
        (global.get $~lib/memory/__heap_base)
       )
       ;;@ ~lib/rt/itcms.ts:128:45
       (i32.const 0)
      )
     )
     (block
      ;;@ ~lib/rt/itcms.ts:128:17
      (call $~lib/builtins/abort
       (i32.const 0)
       (i32.const 96)
       (i32.const 128)
       (i32.const 18)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/rt/itcms.ts:129:6
    (return)
   )
  )
  ;;@ ~lib/rt/itcms.ts:131:4
  (local.set $prev
   ;;@ ~lib/rt/itcms.ts:131:15
   (call $~lib/rt/itcms/Object#get:prev
    (local.get $this)
   )
  )
  ;;@ ~lib/rt/itcms.ts:132:8
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/itcms.ts:132:15
  (if
   ;;@ ~lib/rt/itcms.ts:132:22
   (i32.eqz
    (local.get $prev)
   )
   (block
    ;;@ ~lib/rt/itcms.ts:132:15
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 132)
     (i32.const 16)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/itcms.ts:133:4
  (call $~lib/rt/itcms/Object#set:prev
   (local.get $next)
   ;;@ ~lib/rt/itcms.ts:133:16
   (local.get $prev)
  )
  ;;@ ~lib/rt/itcms.ts:134:4
  (call $~lib/rt/itcms/Object#set:next
   (local.get $prev)
   ;;@ ~lib/rt/itcms.ts:134:16
   (local.get $next)
  )
  ;;@ ~lib/rt/itcms.ts:134:4
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  (i32.load offset=12
   (local.get $this)
  )
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  (i32.load
   (local.get $this)
  )
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  ;;@ ~lib/rt.ts:20:2
  (local.set $ptr
   ;;@ ~lib/rt.ts:20:12
   (global.get $~lib/rt/__rtti_base)
  )
  ;;@ ~lib/rt.ts:21:2
  (if
   ;;@ ~lib/rt.ts:21:6
   (i32.gt_u
    (local.get $id)
    ;;@ ~lib/rt.ts:21:11
    (i32.load
     ;;@ ~lib/rt.ts:21:21
     (local.get $ptr)
    )
   )
   (block
    ;;@ ~lib/rt.ts:21:43
    (call $~lib/builtins/abort
     (i32.const 224)
     (i32.const 288)
     (i32.const 21)
     (i32.const 28)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt.ts:22:2
  (return
   ;;@ ~lib/rt.ts:22:9
   (call $~lib/shared/typeinfo/Typeinfo#get:flags
    (i32.add
     ;;@ ~lib/rt.ts:22:30
     (i32.add
      (local.get $ptr)
      ;;@ ~lib/rt.ts:22:36
      (i32.const 4)
     )
     ;;@ ~lib/rt.ts:22:52
     (i32.mul
      (local.get $id)
      ;;@ ~lib/rt.ts:22:57
      (i32.const 4)
     )
    )
   )
  )
  ;;@ ~lib/rt.ts:22:2
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  ;;@ ~lib/rt/itcms.ts:119:4
  (local.set $rtId
   ;;@ ~lib/rt/itcms.ts:119:15
   (call $~lib/rt/itcms/Object#get:rtId
    (local.get $this)
   )
  )
  ;;@ ~lib/rt/itcms.ts:121:4
  (return
   ;;@ ~lib/rt/itcms.ts:121:11
   (if (result i32)
    (i32.le_u
     (local.get $rtId)
     ;;@ ~lib/rt/itcms.ts:121:19
     (i32.const 2)
    )
    ;;@ ~lib/rt/itcms.ts:121:11
    (i32.const 1)
    ;;@ ~lib/rt/itcms.ts:121:37
    (i32.ne
     ;;@ ~lib/rt/itcms.ts:121:38
     (i32.and
      (call $~lib/rt/__typeinfo
       ;;@ ~lib/rt/itcms.ts:121:49
       (local.get $rtId)
      )
      ;;@ ~lib/rt/itcms.ts:121:57
      (i32.const 32)
     )
     ;;@ ~lib/rt/itcms.ts:121:87
     (i32.const 0)
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:121:4
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  ;;@ ~lib/rt/itcms.ts:139:4
  (local.set $prev
   ;;@ ~lib/rt/itcms.ts:139:15
   (call $~lib/rt/itcms/Object#get:prev
    (local.get $list)
   )
  )
  ;;@ ~lib/rt/itcms.ts:140:4
  (call $~lib/rt/itcms/Object#set:nextWithColor
   (local.get $this)
   ;;@ ~lib/rt/itcms.ts:140:25
   (i32.or
    (local.get $list)
    ;;@ ~lib/rt/itcms.ts:140:51
    (local.get $withColor)
   )
  )
  ;;@ ~lib/rt/itcms.ts:141:4
  (call $~lib/rt/itcms/Object#set:prev
   (local.get $this)
   ;;@ ~lib/rt/itcms.ts:141:16
   (local.get $prev)
  )
  ;;@ ~lib/rt/itcms.ts:142:4
  (call $~lib/rt/itcms/Object#set:next
   (local.get $prev)
   ;;@ ~lib/rt/itcms.ts:142:16
   (local.get $this)
  )
  ;;@ ~lib/rt/itcms.ts:143:4
  (call $~lib/rt/itcms/Object#set:prev
   (local.get $list)
   ;;@ ~lib/rt/itcms.ts:143:16
   (local.get $this)
  )
  ;;@ ~lib/rt/itcms.ts:143:4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  ;;@ ~lib/rt/itcms.ts:148:4
  (if
   ;;@ ~lib/rt/itcms.ts:148:8
   (i32.eq
    (local.get $this)
    ;;@ ~lib/rt/itcms.ts:148:16
    (global.get $~lib/rt/itcms/iter)
   )
   ;;@ ~lib/rt/itcms.ts:148:22
   (global.set $~lib/rt/itcms/iter
    ;;@ ~lib/rt/itcms.ts:148:29
    (if (result i32)
     ;;@ ~lib/rt/itcms.ts:148:36
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/itcms/Object#get:prev
        (local.get $this)
       )
      )
     )
     (block (result i32)
      ;;@ ~lib/rt/itcms.ts:148:29
      (call $~lib/builtins/abort
       (i32.const 0)
       (i32.const 96)
       (i32.const 148)
       (i32.const 30)
      )
      (unreachable)
     )
     (local.get $1)
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:149:4
  (call $~lib/rt/itcms/Object#unlink
   (local.get $this)
  )
  ;;@ ~lib/rt/itcms.ts:150:4
  (call $~lib/rt/itcms/Object#linkTo
   (local.get $this)
   ;;@ ~lib/rt/itcms.ts:150:16
   (global.get $~lib/rt/itcms/toSpace)
   ;;@ ~lib/rt/itcms.ts:150:25
   (if (result i32)
    (call $~lib/rt/itcms/Object#get:isPointerfree
     (local.get $this)
    )
    ;;@ ~lib/rt/itcms.ts:150:46
    (i32.eqz
     ;;@ ~lib/rt/itcms.ts:150:51
     (global.get $~lib/rt/itcms/white)
    )
    ;;@ ~lib/rt/itcms.ts:150:60
    (i32.const 2)
   )
  )
  ;;@ ~lib/rt/itcms.ts:150:4
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  ;;@ ~lib/rt/itcms.ts:323:2
  (if
   ;;@ ~lib/rt/itcms.ts:323:6
   (i32.eqz
    ;;@ ~lib/rt/itcms.ts:323:7
    (local.get $ptr)
   )
   ;;@ ~lib/rt/itcms.ts:323:12
   (return)
  )
  ;;@ ~lib/rt/itcms.ts:324:2
  (local.set $obj
   ;;@ ~lib/rt/itcms.ts:324:12
   (i32.sub
    ;;@ ~lib/rt/itcms.ts:324:31
    (local.get $ptr)
    ;;@ ~lib/rt/itcms.ts:324:37
    (i32.const 20)
   )
  )
  ;;@ ~lib/rt/itcms.ts:325:2
  (drop
   ;;@ ~lib/rt/itcms.ts:325:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/itcms.ts:326:2
  (if
   ;;@ ~lib/rt/itcms.ts:326:6
   (i32.eq
    (call $~lib/rt/itcms/Object#get:color
     (local.get $obj)
    )
    ;;@ ~lib/rt/itcms.ts:326:19
    (global.get $~lib/rt/itcms/white)
   )
   (block
    ;;@ ~lib/rt/itcms.ts:327:4
    (call $~lib/rt/itcms/Object#makeGray
     (local.get $obj)
    )
    ;;@ ~lib/rt/itcms.ts:328:4
    (global.set $~lib/rt/itcms/visitCount
     ;;@ ~lib/rt/itcms.ts:328:6
     (i32.add
      (global.get $~lib/rt/itcms/visitCount)
      (i32.const 1)
     )
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:328:4
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  ;;@ ~lib/rt/itcms.ts:168:2
  (local.set $ptr
   ;;@ ~lib/rt/itcms.ts:168:12
   (global.get $~lib/memory/__stack_pointer)
  )
  ;;@ ~lib/rt/itcms.ts:169:2
  (block $label$1
   (loop $label$2
    ;;@ ~lib/rt/itcms.ts:169:9
    (if
     (i32.lt_u
      (local.get $ptr)
      ;;@ ~lib/rt/itcms.ts:169:15
      (global.get $~lib/memory/__heap_base)
     )
     (block
      ;;@ ~lib/rt/itcms.ts:170:4
      (call $~lib/rt/itcms/__visit
       ;;@ ~lib/rt/itcms.ts:170:12
       (i32.load
        ;;@ ~lib/rt/itcms.ts:170:24
        (local.get $ptr)
       )
       ;;@ ~lib/rt/itcms.ts:170:30
       (local.get $cookie)
      )
      ;;@ ~lib/rt/itcms.ts:171:4
      (local.set $ptr
       ;;@ ~lib/rt/itcms.ts:171:11
       (i32.add
        ;;@ ~lib/rt/itcms.ts:171:4
        (local.get $ptr)
        ;;@ ~lib/rt/itcms.ts:171:11
        (i32.const 4)
       )
      )
      ;;@ ~lib/rt/itcms.ts:171:4
      (br $label$2)
     )
    )
   )
  )
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  (i32.load
   (local.get $this)
  )
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  ;;@ ~lib/rt/itcms.ts:114:4
  (return
   ;;@ ~lib/rt/itcms.ts:114:11
   (i32.add
    (i32.const 4)
    ;;@ ~lib/rt/itcms.ts:114:29
    (i32.and
     (call $~lib/rt/common/BLOCK#get:mmInfo
      (local.get $this)
     )
     ;;@ ~lib/rt/itcms.ts:114:43
     (i32.xor
      ;;@ ~lib/rt/itcms.ts:114:44
      (i32.const 3)
      (i32.const -1)
     )
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:114:4
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  (i32.store
   (local.get $this)
   (local.get $flMap)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  (i32.store
   (local.get $this)
   (local.get $mmInfo)
  )
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  (i32.store offset=4
   (local.get $this)
   (local.get $prev)
  )
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  (i32.store offset=8
   (local.get $this)
   (local.get $next)
  )
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  (i32.load offset=4
   (local.get $this)
  )
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  (i32.load offset=8
   (local.get $this)
  )
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  (i32.load
   (local.get $this)
  )
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  ;;@ ~lib/rt/tlsf.ts:267:2
  (local.set $blockInfo
   ;;@ ~lib/rt/tlsf.ts:267:18
   (call $~lib/rt/common/BLOCK#get:mmInfo
    (local.get $block)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:268:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:268:13
  (if
   ;;@ ~lib/rt/tlsf.ts:268:20
   (i32.eqz
    (i32.and
     (local.get $blockInfo)
     ;;@ ~lib/rt/tlsf.ts:268:32
     (i32.const 1)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:268:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 268)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:269:2
  (local.set $size
   ;;@ ~lib/rt/tlsf.ts:269:13
   (i32.and
    (local.get $blockInfo)
    ;;@ ~lib/rt/tlsf.ts:269:25
    (i32.xor
     ;;@ ~lib/rt/tlsf.ts:269:26
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:270:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:270:13
  (if
   ;;@ ~lib/rt/tlsf.ts:270:20
   (i32.eqz
    (i32.ge_u
     (local.get $size)
     ;;@ ~lib/rt/tlsf.ts:270:28
     (i32.const 12)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:270:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 270)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:274:2
  (if
   ;;@ ~lib/rt/tlsf.ts:274:6
   (i32.lt_u
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:274:13
    (i32.const 256)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:275:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:275:9
     (i32.const 0)
    )
    ;;@ ~lib/rt/tlsf.ts:276:4
    (local.set $sl
     ;;@ ~lib/rt/tlsf.ts:276:9
     (i32.shr_u
      ;;@ ~lib/rt/tlsf.ts:276:15
      (local.get $size)
      ;;@ ~lib/rt/tlsf.ts:276:23
      (i32.const 4)
     )
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:279:4
    (local.set $boundedSize
     ;;@ ~lib/rt/tlsf.ts:279:22
     (select
      ;;@ ~lib/rt/tlsf.ts:279:26
      (local.tee $6
       (local.get $size)
      )
      ;;@ ~lib/rt/tlsf.ts:279:32
      (local.tee $7
       (i32.const 1073741820)
      )
      (i32.lt_u
       (local.get $6)
       (local.get $7)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:280:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:280:9
     (i32.sub
      (i32.const 31)
      ;;@ ~lib/rt/tlsf.ts:280:15
      (i32.clz
       ;;@ ~lib/rt/tlsf.ts:280:26
       (local.get $boundedSize)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:281:4
    (local.set $sl
     ;;@ ~lib/rt/tlsf.ts:281:9
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:281:16
      (i32.shr_u
       (local.get $boundedSize)
       ;;@ ~lib/rt/tlsf.ts:281:32
       (i32.sub
        (local.get $fl)
        ;;@ ~lib/rt/tlsf.ts:281:37
        (i32.const 4)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:281:50
      (i32.shl
       (i32.const 1)
       ;;@ ~lib/rt/tlsf.ts:281:55
       (i32.const 4)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:282:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:282:10
     (i32.sub
      ;;@ ~lib/rt/tlsf.ts:282:4
      (local.get $fl)
      ;;@ ~lib/rt/tlsf.ts:282:10
      (i32.sub
       (i32.const 8)
       ;;@ ~lib/rt/tlsf.ts:282:20
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:284:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:284:13
  (if
   ;;@ ~lib/rt/tlsf.ts:284:36
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:284:20
    (if (result i32)
     (i32.lt_u
      (local.get $fl)
      ;;@ ~lib/rt/tlsf.ts:284:25
      (i32.const 23)
     )
     ;;@ ~lib/rt/tlsf.ts:284:36
     (i32.lt_u
      (local.get $sl)
      ;;@ ~lib/rt/tlsf.ts:284:41
      (i32.const 16)
     )
     ;;@ ~lib/rt/tlsf.ts:284:36
     (i32.const 0)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:284:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 284)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:287:2
  (local.set $prev
   ;;@ ~lib/rt/tlsf.ts:287:13
   (call $~lib/rt/tlsf/Block#get:prev
    (local.get $block)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:288:2
  (local.set $next
   ;;@ ~lib/rt/tlsf.ts:288:13
   (call $~lib/rt/tlsf/Block#get:next
    (local.get $block)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:289:2
  (if
   ;;@ ~lib/rt/tlsf.ts:289:6
   (local.get $prev)
   ;;@ ~lib/rt/tlsf.ts:289:12
   (call $~lib/rt/tlsf/Block#set:next
    (local.get $prev)
    ;;@ ~lib/rt/tlsf.ts:289:24
    (local.get $next)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:290:2
  (if
   ;;@ ~lib/rt/tlsf.ts:290:6
   (local.get $next)
   ;;@ ~lib/rt/tlsf.ts:290:12
   (call $~lib/rt/tlsf/Block#set:prev
    (local.get $next)
    ;;@ ~lib/rt/tlsf.ts:290:24
    (local.get $prev)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:293:2
  (if
   ;;@ ~lib/rt/tlsf.ts:293:6
   (i32.eq
    (local.get $block)
    ;;@ ~lib/rt/tlsf.ts:293:15
    (block $label$10 (result i32)
     ;;@ ~lib/rt/tlsf.ts:293:23
     (local.set $root|11
      (local.get $root)
     )
     ;;@ ~lib/rt/tlsf.ts:293:29
     (local.set $fl|12
      (local.get $fl)
     )
     ;;@ ~lib/rt/tlsf.ts:293:33
     (local.set $sl|13
      (local.get $sl)
     )
     ;;@ ~lib/rt/tlsf.ts:164:2
     (br $label$10
      ;;@ ~lib/rt/tlsf.ts:164:9
      (i32.load offset=96
       ;;@ ~lib/rt/tlsf.ts:165:4
       (i32.add
        (local.get $root|11)
        ;;@ ~lib/rt/tlsf.ts:165:31
        (i32.shl
         ;;@ ~lib/rt/tlsf.ts:165:32
         (i32.add
          ;;@ ~lib/rt/tlsf.ts:165:33
          (i32.shl
           (local.get $fl|12)
           ;;@ ~lib/rt/tlsf.ts:165:39
           (i32.const 4)
          )
          ;;@ ~lib/rt/tlsf.ts:165:50
          (local.get $sl|13)
         )
         ;;@ ~lib/rt/tlsf.ts:165:64
         (i32.const 2)
        )
       )
      )
     )
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:294:4
    (block $label$12
     ;;@ ~lib/rt/tlsf.ts:294:12
     (local.set $root|14
      (local.get $root)
     )
     ;;@ ~lib/rt/tlsf.ts:294:18
     (local.set $fl|15
      (local.get $fl)
     )
     ;;@ ~lib/rt/tlsf.ts:294:22
     (local.set $sl|16
      (local.get $sl)
     )
     ;;@ ~lib/rt/tlsf.ts:294:26
     (local.set $head
      (local.get $next)
     )
     ;;@ ~lib/rt/tlsf.ts:173:2
     (i32.store offset=96
      ;;@ ~lib/rt/tlsf.ts:174:4
      (i32.add
       (local.get $root|14)
       ;;@ ~lib/rt/tlsf.ts:174:31
       (i32.shl
        ;;@ ~lib/rt/tlsf.ts:174:32
        (i32.add
         ;;@ ~lib/rt/tlsf.ts:174:33
         (i32.shl
          (local.get $fl|15)
          ;;@ ~lib/rt/tlsf.ts:174:39
          (i32.const 4)
         )
         ;;@ ~lib/rt/tlsf.ts:174:50
         (local.get $sl|16)
        )
        ;;@ ~lib/rt/tlsf.ts:174:64
        (i32.const 2)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:175:4
      (local.get $head)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:297:4
    (if
     ;;@ ~lib/rt/tlsf.ts:297:8
     (i32.eqz
      ;;@ ~lib/rt/tlsf.ts:297:9
      (local.get $next)
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:298:6
      (local.set $slMap
       ;;@ ~lib/rt/tlsf.ts:298:18
       (block $label$14 (result i32)
        ;;@ ~lib/rt/tlsf.ts:298:24
        (local.set $root|18
         (local.get $root)
        )
        ;;@ ~lib/rt/tlsf.ts:298:30
        (local.set $fl|19
         (local.get $fl)
        )
        ;;@ ~lib/rt/tlsf.ts:145:2
        (br $label$14
         ;;@ ~lib/rt/tlsf.ts:145:9
         (i32.load offset=4
          ;;@ ~lib/rt/tlsf.ts:146:4
          (i32.add
           (local.get $root|18)
           ;;@ ~lib/rt/tlsf.ts:146:31
           (i32.shl
            (local.get $fl|19)
            ;;@ ~lib/rt/tlsf.ts:146:37
            (i32.const 2)
           )
          )
         )
        )
       )
      )
      ;;@ ~lib/rt/tlsf.ts:299:6
      (block $label$15
       ;;@ ~lib/rt/tlsf.ts:299:12
       (local.set $root|21
        (local.get $root)
       )
       ;;@ ~lib/rt/tlsf.ts:299:18
       (local.set $fl|22
        (local.get $fl)
       )
       ;;@ ~lib/rt/tlsf.ts:299:22
       (local.set $slMap|23
        (local.tee $slMap
         ;;@ ~lib/rt/tlsf.ts:299:31
         (i32.and
          ;;@ ~lib/rt/tlsf.ts:299:22
          (local.get $slMap)
          ;;@ ~lib/rt/tlsf.ts:299:31
          (i32.xor
           ;;@ ~lib/rt/tlsf.ts:299:33
           (i32.shl
            (i32.const 1)
            ;;@ ~lib/rt/tlsf.ts:299:38
            (local.get $sl)
           )
           ;;@ ~lib/rt/tlsf.ts:299:33
           (i32.const -1)
          )
         )
        )
       )
       ;;@ ~lib/rt/tlsf.ts:154:2
       (i32.store offset=4
        ;;@ ~lib/rt/tlsf.ts:155:4
        (i32.add
         (local.get $root|21)
         ;;@ ~lib/rt/tlsf.ts:155:31
         (i32.shl
          (local.get $fl|22)
          ;;@ ~lib/rt/tlsf.ts:155:37
          (i32.const 2)
         )
        )
        ;;@ ~lib/rt/tlsf.ts:156:4
        (local.get $slMap|23)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:302:6
      (if
       ;;@ ~lib/rt/tlsf.ts:302:10
       (i32.eqz
        ;;@ ~lib/rt/tlsf.ts:302:11
        (local.get $slMap)
       )
       ;;@ ~lib/rt/tlsf.ts:302:18
       (call $~lib/rt/tlsf/Root#set:flMap
        (local.get $root)
        ;;@ ~lib/rt/tlsf.ts:302:32
        (i32.and
         ;;@ ~lib/rt/tlsf.ts:302:18
         (call $~lib/rt/tlsf/Root#get:flMap
          (local.get $root)
         )
         ;;@ ~lib/rt/tlsf.ts:302:32
         (i32.xor
          ;;@ ~lib/rt/tlsf.ts:302:34
          (i32.shl
           (i32.const 1)
           ;;@ ~lib/rt/tlsf.ts:302:39
           (local.get $fl)
          )
          ;;@ ~lib/rt/tlsf.ts:302:34
          (i32.const -1)
         )
        )
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:302:18
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  ;;@ ~lib/rt/tlsf.ts:201:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:201:13
  (if
   ;;@ ~lib/rt/tlsf.ts:201:20
   (i32.eqz
    (local.get $block)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:201:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 201)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:202:2
  (local.set $blockInfo
   ;;@ ~lib/rt/tlsf.ts:202:18
   (call $~lib/rt/common/BLOCK#get:mmInfo
    (local.get $block)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:203:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:203:13
  (if
   ;;@ ~lib/rt/tlsf.ts:203:20
   (i32.eqz
    (i32.and
     (local.get $blockInfo)
     ;;@ ~lib/rt/tlsf.ts:203:32
     (i32.const 1)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:203:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 203)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:205:2
  (local.set $right
   ;;@ ~lib/rt/tlsf.ts:205:14
   (block $label$3 (result i32)
    ;;@ ~lib/rt/tlsf.ts:205:23
    (local.set $block|3
     (local.get $block)
    )
    ;;@ ~lib/rt/tlsf.ts:97:2
    (br $label$3
     ;;@ ~lib/rt/tlsf.ts:97:9
     (i32.add
      ;;@ ~lib/rt/tlsf.ts:97:27
      (i32.add
       (local.get $block|3)
       ;;@ ~lib/rt/tlsf.ts:97:54
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:97:72
      (i32.and
       (call $~lib/rt/common/BLOCK#get:mmInfo
        (local.get $block|3)
       )
       ;;@ ~lib/rt/tlsf.ts:97:87
       (i32.xor
        ;;@ ~lib/rt/tlsf.ts:97:88
        (i32.const 3)
        (i32.const -1)
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:206:2
  (local.set $rightInfo
   ;;@ ~lib/rt/tlsf.ts:206:18
   (call $~lib/rt/common/BLOCK#get:mmInfo
    (local.get $right)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:209:2
  (if
   ;;@ ~lib/rt/tlsf.ts:209:6
   (i32.and
    (local.get $rightInfo)
    ;;@ ~lib/rt/tlsf.ts:209:18
    (i32.const 1)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:210:4
    (call $~lib/rt/tlsf/removeBlock
     ;;@ ~lib/rt/tlsf.ts:210:16
     (local.get $root)
     ;;@ ~lib/rt/tlsf.ts:210:22
     (local.get $right)
    )
    ;;@ ~lib/rt/tlsf.ts:211:4
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $block)
     ;;@ ~lib/rt/tlsf.ts:211:19
     (local.tee $blockInfo
      ;;@ ~lib/rt/tlsf.ts:211:31
      (i32.add
       (i32.add
        (local.get $blockInfo)
        ;;@ ~lib/rt/tlsf.ts:211:43
        (i32.const 4)
       )
       ;;@ ~lib/rt/tlsf.ts:211:61
       (i32.and
        (local.get $rightInfo)
        ;;@ ~lib/rt/tlsf.ts:211:73
        (i32.xor
         ;;@ ~lib/rt/tlsf.ts:211:74
         (i32.const 3)
         (i32.const -1)
        )
       )
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:212:4
    (local.set $right
     ;;@ ~lib/rt/tlsf.ts:212:12
     (block $label$5 (result i32)
      ;;@ ~lib/rt/tlsf.ts:212:21
      (local.set $block|6
       (local.get $block)
      )
      ;;@ ~lib/rt/tlsf.ts:97:2
      (br $label$5
       ;;@ ~lib/rt/tlsf.ts:97:9
       (i32.add
        ;;@ ~lib/rt/tlsf.ts:97:27
        (i32.add
         (local.get $block|6)
         ;;@ ~lib/rt/tlsf.ts:97:54
         (i32.const 4)
        )
        ;;@ ~lib/rt/tlsf.ts:97:72
        (i32.and
         (call $~lib/rt/common/BLOCK#get:mmInfo
          (local.get $block|6)
         )
         ;;@ ~lib/rt/tlsf.ts:97:87
         (i32.xor
          ;;@ ~lib/rt/tlsf.ts:97:88
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:213:4
    (local.set $rightInfo
     ;;@ ~lib/rt/tlsf.ts:213:16
     (call $~lib/rt/common/BLOCK#get:mmInfo
      (local.get $right)
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:218:2
  (if
   ;;@ ~lib/rt/tlsf.ts:218:6
   (i32.and
    (local.get $blockInfo)
    ;;@ ~lib/rt/tlsf.ts:218:18
    (i32.const 2)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:219:4
    (local.set $left
     ;;@ ~lib/rt/tlsf.ts:219:15
     (block $label$7 (result i32)
      ;;@ ~lib/rt/tlsf.ts:219:27
      (local.set $block|7
       (local.get $block)
      )
      ;;@ ~lib/rt/tlsf.ts:91:2
      (br $label$7
       ;;@ ~lib/rt/tlsf.ts:91:9
       (i32.load
        ;;@ ~lib/rt/tlsf.ts:91:21
        (i32.sub
         (local.get $block|7)
         ;;@ ~lib/rt/tlsf.ts:91:48
         (i32.const 4)
        )
       )
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:220:4
    (local.set $leftInfo
     ;;@ ~lib/rt/tlsf.ts:220:19
     (call $~lib/rt/common/BLOCK#get:mmInfo
      (local.get $left)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:221:8
    (drop
     (i32.const 1)
    )
    ;;@ ~lib/rt/tlsf.ts:221:15
    (if
     ;;@ ~lib/rt/tlsf.ts:221:22
     (i32.eqz
      (i32.and
       (local.get $leftInfo)
       ;;@ ~lib/rt/tlsf.ts:221:33
       (i32.const 1)
      )
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:221:15
      (call $~lib/builtins/abort
       (i32.const 0)
       (i32.const 368)
       (i32.const 221)
       (i32.const 16)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:222:4
    (call $~lib/rt/tlsf/removeBlock
     ;;@ ~lib/rt/tlsf.ts:222:16
     (local.get $root)
     ;;@ ~lib/rt/tlsf.ts:222:22
     (local.get $left)
    )
    ;;@ ~lib/rt/tlsf.ts:223:4
    (local.set $block
     ;;@ ~lib/rt/tlsf.ts:223:12
     (local.get $left)
    )
    ;;@ ~lib/rt/tlsf.ts:224:4
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $block)
     ;;@ ~lib/rt/tlsf.ts:224:19
     (local.tee $blockInfo
      ;;@ ~lib/rt/tlsf.ts:224:31
      (i32.add
       (i32.add
        (local.get $leftInfo)
        ;;@ ~lib/rt/tlsf.ts:224:42
        (i32.const 4)
       )
       ;;@ ~lib/rt/tlsf.ts:224:60
       (i32.and
        (local.get $blockInfo)
        ;;@ ~lib/rt/tlsf.ts:224:72
        (i32.xor
         ;;@ ~lib/rt/tlsf.ts:224:73
         (i32.const 3)
         (i32.const -1)
        )
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:228:2
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $right)
   ;;@ ~lib/rt/tlsf.ts:228:17
   (i32.or
    (local.get $rightInfo)
    ;;@ ~lib/rt/tlsf.ts:228:29
    (i32.const 2)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:232:2
  (local.set $size
   ;;@ ~lib/rt/tlsf.ts:232:13
   (i32.and
    (local.get $blockInfo)
    ;;@ ~lib/rt/tlsf.ts:232:25
    (i32.xor
     ;;@ ~lib/rt/tlsf.ts:232:26
     (i32.const 3)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:233:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:233:13
  (if
   ;;@ ~lib/rt/tlsf.ts:233:20
   (i32.eqz
    (i32.ge_u
     (local.get $size)
     ;;@ ~lib/rt/tlsf.ts:233:28
     (i32.const 12)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:233:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 233)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:234:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:234:13
  (if
   ;;@ ~lib/rt/tlsf.ts:234:20
   (i32.eqz
    (i32.eq
     (i32.add
      (i32.add
       (local.get $block)
       ;;@ ~lib/rt/tlsf.ts:234:47
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:234:64
      (local.get $size)
     )
     ;;@ ~lib/rt/tlsf.ts:234:72
     (local.get $right)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:234:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 234)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:237:2
  (i32.store
   ;;@ ~lib/rt/tlsf.ts:237:15
   (i32.sub
    (local.get $right)
    ;;@ ~lib/rt/tlsf.ts:237:42
    (i32.const 4)
   )
   ;;@ ~lib/rt/tlsf.ts:237:59
   (local.get $block)
  )
  ;;@ ~lib/rt/tlsf.ts:241:2
  (if
   ;;@ ~lib/rt/tlsf.ts:241:6
   (i32.lt_u
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:241:13
    (i32.const 256)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:242:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:242:9
     (i32.const 0)
    )
    ;;@ ~lib/rt/tlsf.ts:243:4
    (local.set $sl
     ;;@ ~lib/rt/tlsf.ts:243:9
     (i32.shr_u
      ;;@ ~lib/rt/tlsf.ts:243:15
      (local.get $size)
      ;;@ ~lib/rt/tlsf.ts:243:23
      (i32.const 4)
     )
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:246:4
    (local.set $boundedSize
     ;;@ ~lib/rt/tlsf.ts:246:22
     (select
      ;;@ ~lib/rt/tlsf.ts:246:26
      (local.tee $13
       (local.get $size)
      )
      ;;@ ~lib/rt/tlsf.ts:246:32
      (local.tee $14
       (i32.const 1073741820)
      )
      (i32.lt_u
       (local.get $13)
       (local.get $14)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:247:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:247:9
     (i32.sub
      (i32.const 31)
      ;;@ ~lib/rt/tlsf.ts:247:15
      (i32.clz
       ;;@ ~lib/rt/tlsf.ts:247:26
       (local.get $boundedSize)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:248:4
    (local.set $sl
     ;;@ ~lib/rt/tlsf.ts:248:9
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:248:16
      (i32.shr_u
       (local.get $boundedSize)
       ;;@ ~lib/rt/tlsf.ts:248:32
       (i32.sub
        (local.get $fl)
        ;;@ ~lib/rt/tlsf.ts:248:37
        (i32.const 4)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:248:50
      (i32.shl
       (i32.const 1)
       ;;@ ~lib/rt/tlsf.ts:248:55
       (i32.const 4)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:249:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:249:10
     (i32.sub
      ;;@ ~lib/rt/tlsf.ts:249:4
      (local.get $fl)
      ;;@ ~lib/rt/tlsf.ts:249:10
      (i32.sub
       (i32.const 8)
       ;;@ ~lib/rt/tlsf.ts:249:20
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:251:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:251:13
  (if
   ;;@ ~lib/rt/tlsf.ts:251:36
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:251:20
    (if (result i32)
     (i32.lt_u
      (local.get $fl)
      ;;@ ~lib/rt/tlsf.ts:251:25
      (i32.const 23)
     )
     ;;@ ~lib/rt/tlsf.ts:251:36
     (i32.lt_u
      (local.get $sl)
      ;;@ ~lib/rt/tlsf.ts:251:41
      (i32.const 16)
     )
     ;;@ ~lib/rt/tlsf.ts:251:36
     (i32.const 0)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:251:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 251)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:254:2
  (local.set $head
   ;;@ ~lib/rt/tlsf.ts:254:13
   (block $label$16 (result i32)
    ;;@ ~lib/rt/tlsf.ts:254:21
    (local.set $root|16
     (local.get $root)
    )
    ;;@ ~lib/rt/tlsf.ts:254:27
    (local.set $fl|17
     (local.get $fl)
    )
    ;;@ ~lib/rt/tlsf.ts:254:31
    (local.set $sl|18
     (local.get $sl)
    )
    ;;@ ~lib/rt/tlsf.ts:164:2
    (br $label$16
     ;;@ ~lib/rt/tlsf.ts:164:9
     (i32.load offset=96
      ;;@ ~lib/rt/tlsf.ts:165:4
      (i32.add
       (local.get $root|16)
       ;;@ ~lib/rt/tlsf.ts:165:31
       (i32.shl
        ;;@ ~lib/rt/tlsf.ts:165:32
        (i32.add
         ;;@ ~lib/rt/tlsf.ts:165:33
         (i32.shl
          (local.get $fl|17)
          ;;@ ~lib/rt/tlsf.ts:165:39
          (i32.const 4)
         )
         ;;@ ~lib/rt/tlsf.ts:165:50
         (local.get $sl|18)
        )
        ;;@ ~lib/rt/tlsf.ts:165:64
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:255:2
  (call $~lib/rt/tlsf/Block#set:prev
   (local.get $block)
   ;;@ ~lib/rt/tlsf.ts:255:15
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:256:2
  (call $~lib/rt/tlsf/Block#set:next
   (local.get $block)
   ;;@ ~lib/rt/tlsf.ts:256:15
   (local.get $head)
  )
  ;;@ ~lib/rt/tlsf.ts:257:2
  (if
   ;;@ ~lib/rt/tlsf.ts:257:6
   (local.get $head)
   ;;@ ~lib/rt/tlsf.ts:257:12
   (call $~lib/rt/tlsf/Block#set:prev
    (local.get $head)
    ;;@ ~lib/rt/tlsf.ts:257:24
    (local.get $block)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:258:2
  (block $label$18
   ;;@ ~lib/rt/tlsf.ts:258:10
   (local.set $root|20
    (local.get $root)
   )
   ;;@ ~lib/rt/tlsf.ts:258:16
   (local.set $fl|21
    (local.get $fl)
   )
   ;;@ ~lib/rt/tlsf.ts:258:20
   (local.set $sl|22
    (local.get $sl)
   )
   ;;@ ~lib/rt/tlsf.ts:258:24
   (local.set $head|23
    (local.get $block)
   )
   ;;@ ~lib/rt/tlsf.ts:173:2
   (i32.store offset=96
    ;;@ ~lib/rt/tlsf.ts:174:4
    (i32.add
     (local.get $root|20)
     ;;@ ~lib/rt/tlsf.ts:174:31
     (i32.shl
      ;;@ ~lib/rt/tlsf.ts:174:32
      (i32.add
       ;;@ ~lib/rt/tlsf.ts:174:33
       (i32.shl
        (local.get $fl|21)
        ;;@ ~lib/rt/tlsf.ts:174:39
        (i32.const 4)
       )
       ;;@ ~lib/rt/tlsf.ts:174:50
       (local.get $sl|22)
      )
      ;;@ ~lib/rt/tlsf.ts:174:64
      (i32.const 2)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:175:4
    (local.get $head|23)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:261:2
  (call $~lib/rt/tlsf/Root#set:flMap
   (local.get $root)
   ;;@ ~lib/rt/tlsf.ts:261:17
   (i32.or
    ;;@ ~lib/rt/tlsf.ts:261:2
    (call $~lib/rt/tlsf/Root#get:flMap
     (local.get $root)
    )
    ;;@ ~lib/rt/tlsf.ts:261:17
    (i32.shl
     (i32.const 1)
     ;;@ ~lib/rt/tlsf.ts:261:22
     (local.get $fl)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:262:2
  (block $label$19
   ;;@ ~lib/rt/tlsf.ts:262:8
   (local.set $root|26
    (local.get $root)
   )
   ;;@ ~lib/rt/tlsf.ts:262:14
   (local.set $fl|27
    (local.get $fl)
   )
   ;;@ ~lib/rt/tlsf.ts:262:18
   (local.set $slMap
    (i32.or
     (block $label$20 (result i32)
      ;;@ ~lib/rt/tlsf.ts:262:24
      (local.set $root|24
       (local.get $root)
      )
      ;;@ ~lib/rt/tlsf.ts:262:30
      (local.set $fl|25
       (local.get $fl)
      )
      ;;@ ~lib/rt/tlsf.ts:145:2
      (br $label$20
       ;;@ ~lib/rt/tlsf.ts:145:9
       (i32.load offset=4
        ;;@ ~lib/rt/tlsf.ts:146:4
        (i32.add
         (local.get $root|24)
         ;;@ ~lib/rt/tlsf.ts:146:31
         (i32.shl
          (local.get $fl|25)
          ;;@ ~lib/rt/tlsf.ts:146:37
          (i32.const 2)
         )
        )
       )
      )
     )
     ;;@ ~lib/rt/tlsf.ts:262:37
     (i32.shl
      (i32.const 1)
      ;;@ ~lib/rt/tlsf.ts:262:42
      (local.get $sl)
     )
    )
   )
   ;;@ ~lib/rt/tlsf.ts:154:2
   (i32.store offset=4
    ;;@ ~lib/rt/tlsf.ts:155:4
    (i32.add
     (local.get $root|26)
     ;;@ ~lib/rt/tlsf.ts:155:31
     (i32.shl
      (local.get $fl|27)
      ;;@ ~lib/rt/tlsf.ts:155:37
      (i32.const 2)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:156:4
    (local.get $slMap)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:154:2
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $end i32) (result i32)
  (local $root|3 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|9 i32)
  (local $tail|10 i32)
  ;;@ ~lib/rt/tlsf.ts:377:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:377:13
  (if
   ;;@ ~lib/rt/tlsf.ts:377:20
   (i32.eqz
    (i32.le_u
     (local.get $start)
     ;;@ ~lib/rt/tlsf.ts:377:29
     (local.get $end)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:377:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 377)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:378:2
  (local.set $start
   ;;@ ~lib/rt/tlsf.ts:378:10
   (i32.sub
    ;;@ ~lib/rt/tlsf.ts:378:11
    (i32.and
     ;;@ ~lib/rt/tlsf.ts:378:12
     (i32.add
      (i32.add
       (local.get $start)
       ;;@ ~lib/rt/tlsf.ts:378:20
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:378:37
      (i32.const 15)
     )
     ;;@ ~lib/rt/tlsf.ts:378:48
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:378:49
      (i32.const 15)
      (i32.const -1)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:378:60
    (i32.const 4)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:379:2
  (local.set $end
   ;;@ ~lib/rt/tlsf.ts:379:9
   (i32.and
    ;;@ ~lib/rt/tlsf.ts:379:2
    (local.get $end)
    ;;@ ~lib/rt/tlsf.ts:379:9
    (i32.xor
     ;;@ ~lib/rt/tlsf.ts:379:10
     (i32.const 15)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:381:2
  (local.set $tail
   ;;@ ~lib/rt/tlsf.ts:381:13
   (block $label$2 (result i32)
    ;;@ ~lib/rt/tlsf.ts:381:21
    (local.set $root|3
     (local.get $root)
    )
    ;;@ ~lib/rt/tlsf.ts:183:2
    (br $label$2
     ;;@ ~lib/rt/tlsf.ts:183:9
     (i32.load offset=1568
      ;;@ ~lib/rt/tlsf.ts:184:4
      (local.get $root|3)
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:382:2
  (local.set $tailInfo
   ;;@ ~lib/rt/tlsf.ts:382:24
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:383:2
  (if
   ;;@ ~lib/rt/tlsf.ts:383:6
   (local.get $tail)
   (block
    ;;@ ~lib/rt/tlsf.ts:384:8
    (drop
     (i32.const 1)
    )
    ;;@ ~lib/rt/tlsf.ts:384:15
    (if
     ;;@ ~lib/rt/tlsf.ts:384:22
     (i32.eqz
      (i32.ge_u
       (local.get $start)
       ;;@ ~lib/rt/tlsf.ts:384:31
       (i32.add
        (local.get $tail)
        ;;@ ~lib/rt/tlsf.ts:384:57
        (i32.const 4)
       )
      )
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:384:15
      (call $~lib/builtins/abort
       (i32.const 0)
       (i32.const 368)
       (i32.const 384)
       (i32.const 16)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:388:4
    (if
     ;;@ ~lib/rt/tlsf.ts:388:8
     (i32.eq
      (i32.sub
       (local.get $start)
       ;;@ ~lib/rt/tlsf.ts:388:16
       (i32.const 16)
      )
      ;;@ ~lib/rt/tlsf.ts:388:32
      (local.get $tail)
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:389:6
      (local.set $start
       ;;@ ~lib/rt/tlsf.ts:389:15
       (i32.sub
        ;;@ ~lib/rt/tlsf.ts:389:6
        (local.get $start)
        ;;@ ~lib/rt/tlsf.ts:389:15
        (i32.const 16)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:390:6
      (local.set $tailInfo
       ;;@ ~lib/rt/tlsf.ts:390:17
       (call $~lib/rt/common/BLOCK#get:mmInfo
        (local.get $tail)
       )
      )
     )
     ;;@ ~lib/rt/tlsf.ts:390:6
     (nop)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:396:13
    (drop
     (i32.const 1)
    )
    ;;@ ~lib/rt/tlsf.ts:396:20
    (if
     ;;@ ~lib/rt/tlsf.ts:397:11
     (i32.eqz
      (i32.ge_u
       (local.get $start)
       ;;@ ~lib/rt/tlsf.ts:397:20
       (i32.add
        (local.get $root)
        ;;@ ~lib/rt/tlsf.ts:397:46
        (i32.const 1572)
       )
      )
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:396:20
      (call $~lib/builtins/abort
       (i32.const 0)
       (i32.const 368)
       (i32.const 397)
       (i32.const 5)
      )
      (unreachable)
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:401:2
  (local.set $size
   ;;@ ~lib/rt/tlsf.ts:401:13
   (i32.sub
    (local.get $end)
    ;;@ ~lib/rt/tlsf.ts:401:19
    (local.get $start)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:402:2
  (if
   ;;@ ~lib/rt/tlsf.ts:402:6
   (i32.lt_u
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:402:13
    (i32.add
     (i32.add
      (i32.const 4)
      ;;@ ~lib/rt/tlsf.ts:402:30
      (i32.const 12)
     )
     ;;@ ~lib/rt/tlsf.ts:402:46
     (i32.const 4)
    )
   )
   ;;@ ~lib/rt/tlsf.ts:403:4
   (return
    ;;@ ~lib/rt/tlsf.ts:403:11
    (i32.const 0)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:407:2
  (local.set $leftSize
   ;;@ ~lib/rt/tlsf.ts:407:17
   (i32.sub
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:407:24
    (i32.mul
     (i32.const 2)
     ;;@ ~lib/rt/tlsf.ts:407:28
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:408:2
  (local.set $left
   ;;@ ~lib/rt/tlsf.ts:408:13
   (local.get $start)
  )
  ;;@ ~lib/rt/tlsf.ts:409:2
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $left)
   ;;@ ~lib/rt/tlsf.ts:409:16
   (i32.or
    (i32.or
     (local.get $leftSize)
     ;;@ ~lib/rt/tlsf.ts:409:27
     (i32.const 1)
    )
    ;;@ ~lib/rt/tlsf.ts:409:35
    (i32.and
     (local.get $tailInfo)
     ;;@ ~lib/rt/tlsf.ts:409:46
     (i32.const 2)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:410:2
  (call $~lib/rt/tlsf/Block#set:prev
   (local.get $left)
   ;;@ ~lib/rt/tlsf.ts:410:14
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:411:2
  (call $~lib/rt/tlsf/Block#set:next
   (local.get $left)
   ;;@ ~lib/rt/tlsf.ts:411:14
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:414:2
  (local.set $tail
   ;;@ ~lib/rt/tlsf.ts:414:9
   (i32.add
    ;;@ ~lib/rt/tlsf.ts:414:27
    (i32.add
     (local.get $start)
     ;;@ ~lib/rt/tlsf.ts:414:35
     (i32.const 4)
    )
    ;;@ ~lib/rt/tlsf.ts:414:52
    (local.get $leftSize)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:415:2
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $tail)
   ;;@ ~lib/rt/tlsf.ts:415:16
   (i32.or
    (i32.const 0)
    ;;@ ~lib/rt/tlsf.ts:415:20
    (i32.const 2)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:416:2
  (block $label$10
   ;;@ ~lib/rt/tlsf.ts:416:10
   (local.set $root|9
    (local.get $root)
   )
   ;;@ ~lib/rt/tlsf.ts:416:16
   (local.set $tail|10
    (local.get $tail)
   )
   ;;@ ~lib/rt/tlsf.ts:192:2
   (i32.store offset=1568
    ;;@ ~lib/rt/tlsf.ts:193:4
    (local.get $root|9)
    ;;@ ~lib/rt/tlsf.ts:194:4
    (local.get $tail|10)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:418:2
  (call $~lib/rt/tlsf/insertBlock
   ;;@ ~lib/rt/tlsf.ts:418:14
   (local.get $root)
   ;;@ ~lib/rt/tlsf.ts:418:20
   (local.get $left)
  )
  ;;@ ~lib/rt/tlsf.ts:420:2
  (return
   ;;@ ~lib/rt/tlsf.ts:420:9
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:420:2
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  ;;@ ~lib/rt/tlsf.ts:464:2
  (drop
   ;;@ ~lib/rt/tlsf.ts:464:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:465:2
  (local.set $rootOffset
   ;;@ ~lib/rt/tlsf.ts:465:19
   (i32.and
    ;;@ ~lib/rt/tlsf.ts:465:20
    (i32.add
     (global.get $~lib/memory/__heap_base)
     ;;@ ~lib/rt/tlsf.ts:465:34
     (i32.const 15)
    )
    ;;@ ~lib/rt/tlsf.ts:465:45
    (i32.xor
     ;;@ ~lib/rt/tlsf.ts:465:46
     (i32.const 15)
     (i32.const -1)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:466:2
  (local.set $pagesBefore
   ;;@ ~lib/rt/tlsf.ts:466:20
   (memory.size)
  )
  ;;@ ~lib/rt/tlsf.ts:467:2
  (local.set $pagesNeeded
   ;;@ ~lib/rt/tlsf.ts:467:20
   (i32.shr_u
    ;;@ ~lib/rt/tlsf.ts:467:27
    (i32.and
     ;;@ ~lib/rt/tlsf.ts:467:28
     (i32.add
      ;;@ ~lib/rt/tlsf.ts:467:29
      (i32.add
       (local.get $rootOffset)
       ;;@ ~lib/rt/tlsf.ts:467:42
       (i32.const 1572)
      )
      ;;@ ~lib/rt/tlsf.ts:467:55
      (i32.const 65535)
     )
     ;;@ ~lib/rt/tlsf.ts:467:65
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:467:66
      (i32.const 65535)
      (i32.const -1)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:467:78
    (i32.const 16)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:468:2
  (if
   ;;@ ~lib/rt/tlsf.ts:468:6
   (if (result i32)
    (i32.gt_s
     (local.get $pagesNeeded)
     ;;@ ~lib/rt/tlsf.ts:468:20
     (local.get $pagesBefore)
    )
    ;;@ ~lib/rt/tlsf.ts:468:35
    (i32.lt_s
     (memory.grow
      ;;@ ~lib/rt/tlsf.ts:468:47
      (i32.sub
       (local.get $pagesNeeded)
       ;;@ ~lib/rt/tlsf.ts:468:61
       (local.get $pagesBefore)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:468:76
     (i32.const 0)
    )
    ;;@ ~lib/rt/tlsf.ts:468:35
    (i32.const 0)
   )
   ;;@ ~lib/rt/tlsf.ts:468:79
   (unreachable)
  )
  ;;@ ~lib/rt/tlsf.ts:469:2
  (local.set $root
   ;;@ ~lib/rt/tlsf.ts:469:13
   (local.get $rootOffset)
  )
  ;;@ ~lib/rt/tlsf.ts:470:2
  (call $~lib/rt/tlsf/Root#set:flMap
   (local.get $root)
   ;;@ ~lib/rt/tlsf.ts:470:15
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:471:2
  (block $label$4
   ;;@ ~lib/rt/tlsf.ts:471:10
   (local.set $root|4
    (local.get $root)
   )
   ;;@ ~lib/rt/tlsf.ts:471:16
   (local.set $tail
    (i32.const 0)
   )
   ;;@ ~lib/rt/tlsf.ts:192:2
   (i32.store offset=1568
    ;;@ ~lib/rt/tlsf.ts:193:4
    (local.get $root|4)
    ;;@ ~lib/rt/tlsf.ts:194:4
    (local.get $tail)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:472:7
  (local.set $fl
   ;;@ ~lib/rt/tlsf.ts:472:23
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:472:7
  (loop $label$5
   ;;@ ~lib/rt/tlsf.ts:472:26
   (if
    (i32.lt_u
     (local.get $fl)
     ;;@ ~lib/rt/tlsf.ts:472:31
     (i32.const 23)
    )
    (block
     ;;@ ~lib/rt/tlsf.ts:473:4
     (block $label$7
      ;;@ ~lib/rt/tlsf.ts:473:10
      (local.set $root|7
       (local.get $root)
      )
      ;;@ ~lib/rt/tlsf.ts:473:16
      (local.set $fl|8
       (local.get $fl)
      )
      ;;@ ~lib/rt/tlsf.ts:473:20
      (local.set $slMap
       (i32.const 0)
      )
      ;;@ ~lib/rt/tlsf.ts:154:2
      (i32.store offset=4
       ;;@ ~lib/rt/tlsf.ts:155:4
       (i32.add
        (local.get $root|7)
        ;;@ ~lib/rt/tlsf.ts:155:31
        (i32.shl
         (local.get $fl|8)
         ;;@ ~lib/rt/tlsf.ts:155:37
         (i32.const 2)
        )
       )
       ;;@ ~lib/rt/tlsf.ts:156:4
       (local.get $slMap)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:474:9
     (local.set $sl
      ;;@ ~lib/rt/tlsf.ts:474:23
      (i32.const 0)
     )
     ;;@ ~lib/rt/tlsf.ts:474:9
     (loop $label$8
      ;;@ ~lib/rt/tlsf.ts:474:26
      (if
       (i32.lt_u
        (local.get $sl)
        ;;@ ~lib/rt/tlsf.ts:474:31
        (i32.const 16)
       )
       (block
        ;;@ ~lib/rt/tlsf.ts:475:6
        (block $label$10
         ;;@ ~lib/rt/tlsf.ts:475:14
         (local.set $root|11
          (local.get $root)
         )
         ;;@ ~lib/rt/tlsf.ts:475:20
         (local.set $fl|12
          (local.get $fl)
         )
         ;;@ ~lib/rt/tlsf.ts:475:24
         (local.set $sl|13
          (local.get $sl)
         )
         ;;@ ~lib/rt/tlsf.ts:475:28
         (local.set $head
          (i32.const 0)
         )
         ;;@ ~lib/rt/tlsf.ts:173:2
         (i32.store offset=96
          ;;@ ~lib/rt/tlsf.ts:174:4
          (i32.add
           (local.get $root|11)
           ;;@ ~lib/rt/tlsf.ts:174:31
           (i32.shl
            ;;@ ~lib/rt/tlsf.ts:174:32
            (i32.add
             ;;@ ~lib/rt/tlsf.ts:174:33
             (i32.shl
              (local.get $fl|12)
              ;;@ ~lib/rt/tlsf.ts:174:39
              (i32.const 4)
             )
             ;;@ ~lib/rt/tlsf.ts:174:50
             (local.get $sl|13)
            )
            ;;@ ~lib/rt/tlsf.ts:174:64
            (i32.const 2)
           )
          )
          ;;@ ~lib/rt/tlsf.ts:175:4
          (local.get $head)
         )
        )
        ;;@ ~lib/rt/tlsf.ts:474:40
        (local.set $sl
         ;;@ ~lib/rt/tlsf.ts:474:42
         (i32.add
          (local.get $sl)
          (i32.const 1)
         )
        )
        ;;@ ~lib/rt/tlsf.ts:474:40
        (br $label$8)
       )
      )
     )
     ;;@ ~lib/rt/tlsf.ts:472:40
     (local.set $fl
      ;;@ ~lib/rt/tlsf.ts:472:42
      (i32.add
       (local.get $fl)
       (i32.const 1)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:472:40
     (br $label$5)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:478:2
  (local.set $memStart
   ;;@ ~lib/rt/tlsf.ts:478:17
   (i32.add
    (local.get $rootOffset)
    ;;@ ~lib/rt/tlsf.ts:478:30
    (i32.const 1572)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:479:6
  (drop
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:483:9
  (drop
   ;;@ ~lib/rt/tlsf.ts:484:30
   (call $~lib/rt/tlsf/addMemory
    ;;@ ~lib/rt/tlsf.ts:484:14
    (local.get $root)
    ;;@ ~lib/rt/tlsf.ts:484:20
    (local.get $memStart)
    ;;@ ~lib/rt/tlsf.ts:484:30
    (i32.shl
     (memory.size)
     ;;@ ~lib/rt/tlsf.ts:484:47
     (i32.const 16)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:486:2
  (global.set $~lib/rt/tlsf/ROOT
   ;;@ ~lib/rt/tlsf.ts:486:9
   (local.get $root)
  )
  ;;@ ~lib/rt/tlsf.ts:486:2
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  ;;@ ~lib/rt/tlsf.ts:558:2
  (local.set $block
   ;;@ ~lib/rt/tlsf.ts:558:14
   (i32.sub
    ;;@ ~lib/rt/tlsf.ts:558:32
    (local.get $ptr)
    ;;@ ~lib/rt/tlsf.ts:558:38
    (i32.const 4)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:559:2
  (if
   ;;@ ~lib/rt/tlsf.ts:561:4
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:560:4
    (if (result i32)
     (if (result i32)
      (i32.ne
       (local.get $ptr)
       ;;@ ~lib/rt/tlsf.ts:560:11
       (i32.const 0)
      )
      ;;@ ~lib/rt/tlsf.ts:560:16
      (i32.eqz
       ;;@ ~lib/rt/tlsf.ts:560:18
       (i32.and
        (local.get $ptr)
        ;;@ ~lib/rt/tlsf.ts:560:24
        (i32.const 15)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:560:16
      (i32.const 0)
     )
     ;;@ ~lib/rt/tlsf.ts:561:4
     (i32.eqz
      ;;@ ~lib/rt/tlsf.ts:561:6
      (i32.and
       (call $~lib/rt/common/BLOCK#get:mmInfo
        (local.get $block)
       )
       ;;@ ~lib/rt/tlsf.ts:561:21
       (i32.const 1)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:561:4
     (i32.const 0)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:559:2
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 559)
     (i32.const 3)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:563:2
  (return
   ;;@ ~lib/rt/tlsf.ts:563:9
   (local.get $block)
  )
  ;;@ ~lib/rt/tlsf.ts:563:2
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  ;;@ ~lib/rt/tlsf.ts:551:2
  (drop
   ;;@ ~lib/rt/tlsf.ts:551:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:552:2
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $block)
   ;;@ ~lib/rt/tlsf.ts:552:17
   (i32.or
    (call $~lib/rt/common/BLOCK#get:mmInfo
     (local.get $block)
    )
    ;;@ ~lib/rt/tlsf.ts:552:32
    (i32.const 1)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:553:2
  (call $~lib/rt/tlsf/insertBlock
   ;;@ ~lib/rt/tlsf.ts:553:14
   (local.get $root)
   ;;@ ~lib/rt/tlsf.ts:553:20
   (local.get $block)
  )
  ;;@ ~lib/rt/tlsf.ts:553:2
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  ;;@ ~lib/rt/tlsf.ts:586:2
  (if
   ;;@ ~lib/rt/tlsf.ts:586:6
   (i32.lt_u
    (local.get $ptr)
    ;;@ ~lib/rt/tlsf.ts:586:12
    (global.get $~lib/memory/__heap_base)
   )
   ;;@ ~lib/rt/tlsf.ts:586:25
   (return)
  )
  ;;@ ~lib/rt/tlsf.ts:587:2
  (if
   ;;@ ~lib/rt/tlsf.ts:587:6
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:587:7
    (global.get $~lib/rt/tlsf/ROOT)
   )
   ;;@ ~lib/rt/tlsf.ts:587:13
   (call $~lib/rt/tlsf/initialize)
  )
  ;;@ ~lib/rt/tlsf.ts:588:2
  (call $~lib/rt/tlsf/freeBlock
   ;;@ ~lib/rt/tlsf.ts:588:12
   (global.get $~lib/rt/tlsf/ROOT)
   ;;@ ~lib/rt/tlsf.ts:588:18
   (call $~lib/rt/tlsf/checkUsedBlock
    ;;@ ~lib/rt/tlsf.ts:588:33
    (local.get $ptr)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:588:2
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  ;;@ ~lib/rt/itcms.ts:244:2
  (if
   ;;@ ~lib/rt/itcms.ts:244:6
   (i32.lt_u
    (local.get $obj)
    ;;@ ~lib/rt/itcms.ts:244:31
    (global.get $~lib/memory/__heap_base)
   )
   (block
    ;;@ ~lib/rt/itcms.ts:245:4
    (call $~lib/rt/itcms/Object#set:nextWithColor
     (local.get $obj)
     ;;@ ~lib/rt/itcms.ts:245:24
     (i32.const 0)
    )
    ;;@ ~lib/rt/itcms.ts:246:4
    (call $~lib/rt/itcms/Object#set:prev
     (local.get $obj)
     ;;@ ~lib/rt/itcms.ts:246:15
     (i32.const 0)
    )
   )
   (block
    ;;@ ~lib/rt/itcms.ts:248:4
    (global.set $~lib/rt/itcms/total
     ;;@ ~lib/rt/itcms.ts:248:13
     (i32.sub
      ;;@ ~lib/rt/itcms.ts:248:4
      (global.get $~lib/rt/itcms/total)
      ;;@ ~lib/rt/itcms.ts:248:13
      (call $~lib/rt/itcms/Object#get:size
       (local.get $obj)
      )
     )
    )
    ;;@ ~lib/rt/itcms.ts:249:4
    (drop
     ;;@ ~lib/rt/itcms.ts:249:8
     (i32.const 0)
    )
    ;;@ ~lib/rt/itcms.ts:252:4
    (call $~lib/rt/tlsf/__free
     ;;@ ~lib/rt/itcms.ts:252:11
     (i32.add
      (local.get $obj)
      ;;@ ~lib/rt/itcms.ts:252:36
      (i32.const 4)
     )
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:252:4
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  ;;@ ~lib/rt/itcms.ts:182:2
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      ;;@ ~lib/rt/itcms.ts:182:10
      (local.set $1
       (global.get $~lib/rt/itcms/state)
      )
      ;;@ ~lib/rt/itcms.ts:183:9
      (br_if $label$4
       (i32.eq
        ;;@ ~lib/rt/itcms.ts:182:10
        (local.get $1)
        ;;@ ~lib/rt/itcms.ts:183:9
        (i32.const 0)
       )
      )
      ;;@ ~lib/rt/itcms.ts:190:9
      (br_if $label$3
       (i32.eq
        ;;@ ~lib/rt/itcms.ts:183:9
        (local.get $1)
        ;;@ ~lib/rt/itcms.ts:190:9
        (i32.const 1)
       )
      )
      ;;@ ~lib/rt/itcms.ts:225:9
      (br_if $label$2
       (i32.eq
        ;;@ ~lib/rt/itcms.ts:190:9
        (local.get $1)
        ;;@ ~lib/rt/itcms.ts:225:9
        (i32.const 2)
       )
      )
      (br $label$1)
     )
     ;;@ ~lib/rt/itcms.ts:184:6
     (global.set $~lib/rt/itcms/state
      ;;@ ~lib/rt/itcms.ts:184:14
      (i32.const 1)
     )
     ;;@ ~lib/rt/itcms.ts:185:6
     (global.set $~lib/rt/itcms/visitCount
      ;;@ ~lib/rt/itcms.ts:185:19
      (i32.const 0)
     )
     ;;@ ~lib/rt/itcms.ts:186:6
     (call $~lib/rt/itcms/visitRoots
      ;;@ ~lib/rt/itcms.ts:186:17
      (i32.const 0)
     )
     ;;@ ~lib/rt/itcms.ts:187:6
     (global.set $~lib/rt/itcms/iter
      ;;@ ~lib/rt/itcms.ts:187:13
      (global.get $~lib/rt/itcms/toSpace)
     )
     ;;@ ~lib/rt/itcms.ts:188:6
     (return
      ;;@ ~lib/rt/itcms.ts:188:13
      (i32.mul
       (global.get $~lib/rt/itcms/visitCount)
       ;;@ ~lib/rt/itcms.ts:188:26
       (i32.const 1)
      )
     )
    )
    ;;@ ~lib/rt/itcms.ts:191:6
    (local.set $black
     ;;@ ~lib/rt/itcms.ts:191:18
     (i32.eqz
      ;;@ ~lib/rt/itcms.ts:191:23
      (global.get $~lib/rt/itcms/white)
     )
    )
    ;;@ ~lib/rt/itcms.ts:192:6
    (local.set $obj
     ;;@ ~lib/rt/itcms.ts:192:12
     (call $~lib/rt/itcms/Object#get:next
      (global.get $~lib/rt/itcms/iter)
     )
    )
    ;;@ ~lib/rt/itcms.ts:193:6
    (block $label$5
     (loop $label$6
      ;;@ ~lib/rt/itcms.ts:193:13
      (if
       (i32.ne
        (local.get $obj)
        ;;@ ~lib/rt/itcms.ts:193:20
        (global.get $~lib/rt/itcms/toSpace)
       )
       (block
        ;;@ ~lib/rt/itcms.ts:194:8
        (global.set $~lib/rt/itcms/iter
         ;;@ ~lib/rt/itcms.ts:194:15
         (local.get $obj)
        )
        ;;@ ~lib/rt/itcms.ts:195:8
        (if
         ;;@ ~lib/rt/itcms.ts:195:12
         (i32.ne
          (call $~lib/rt/itcms/Object#get:color
           (local.get $obj)
          )
          ;;@ ~lib/rt/itcms.ts:195:25
          (local.get $black)
         )
         (block
          ;;@ ~lib/rt/itcms.ts:196:10
          (call $~lib/rt/itcms/Object#set:color
           (local.get $obj)
           ;;@ ~lib/rt/itcms.ts:196:22
           (local.get $black)
          )
          ;;@ ~lib/rt/itcms.ts:197:10
          (global.set $~lib/rt/itcms/visitCount
           ;;@ ~lib/rt/itcms.ts:197:23
           (i32.const 0)
          )
          ;;@ ~lib/rt/itcms.ts:198:10
          (call $~lib/rt/__visit_members
           ;;@ ~lib/rt/itcms.ts:198:26
           (i32.add
            (local.get $obj)
            ;;@ ~lib/rt/itcms.ts:198:51
            (i32.const 20)
           )
           ;;@ ~lib/rt/itcms.ts:198:67
           (i32.const 0)
          )
          ;;@ ~lib/rt/itcms.ts:199:10
          (return
           ;;@ ~lib/rt/itcms.ts:199:17
           (i32.mul
            (global.get $~lib/rt/itcms/visitCount)
            ;;@ ~lib/rt/itcms.ts:199:30
            (i32.const 1)
           )
          )
         )
        )
        ;;@ ~lib/rt/itcms.ts:201:8
        (local.set $obj
         ;;@ ~lib/rt/itcms.ts:201:14
         (call $~lib/rt/itcms/Object#get:next
          (local.get $obj)
         )
        )
        ;;@ ~lib/rt/itcms.ts:201:8
        (br $label$6)
       )
      )
     )
    )
    ;;@ ~lib/rt/itcms.ts:203:6
    (global.set $~lib/rt/itcms/visitCount
     ;;@ ~lib/rt/itcms.ts:203:19
     (i32.const 0)
    )
    ;;@ ~lib/rt/itcms.ts:204:6
    (call $~lib/rt/itcms/visitRoots
     ;;@ ~lib/rt/itcms.ts:204:17
     (i32.const 0)
    )
    ;;@ ~lib/rt/itcms.ts:205:6
    (local.set $obj
     ;;@ ~lib/rt/itcms.ts:205:12
     (call $~lib/rt/itcms/Object#get:next
      (global.get $~lib/rt/itcms/iter)
     )
    )
    ;;@ ~lib/rt/itcms.ts:206:6
    (if
     ;;@ ~lib/rt/itcms.ts:206:10
     (i32.eq
      (local.get $obj)
      ;;@ ~lib/rt/itcms.ts:206:17
      (global.get $~lib/rt/itcms/toSpace)
     )
     (block
      ;;@ ~lib/rt/itcms.ts:207:8
      (call $~lib/rt/itcms/visitStack
       ;;@ ~lib/rt/itcms.ts:207:19
       (i32.const 0)
      )
      ;;@ ~lib/rt/itcms.ts:208:8
      (local.set $obj
       ;;@ ~lib/rt/itcms.ts:208:14
       (call $~lib/rt/itcms/Object#get:next
        (global.get $~lib/rt/itcms/iter)
       )
      )
      ;;@ ~lib/rt/itcms.ts:209:8
      (block $label$10
       (loop $label$11
        ;;@ ~lib/rt/itcms.ts:209:15
        (if
         (i32.ne
          (local.get $obj)
          ;;@ ~lib/rt/itcms.ts:209:22
          (global.get $~lib/rt/itcms/toSpace)
         )
         (block
          ;;@ ~lib/rt/itcms.ts:210:10
          (if
           ;;@ ~lib/rt/itcms.ts:210:14
           (i32.ne
            (call $~lib/rt/itcms/Object#get:color
             (local.get $obj)
            )
            ;;@ ~lib/rt/itcms.ts:210:27
            (local.get $black)
           )
           (block
            ;;@ ~lib/rt/itcms.ts:211:12
            (call $~lib/rt/itcms/Object#set:color
             (local.get $obj)
             ;;@ ~lib/rt/itcms.ts:211:24
             (local.get $black)
            )
            ;;@ ~lib/rt/itcms.ts:212:12
            (call $~lib/rt/__visit_members
             ;;@ ~lib/rt/itcms.ts:212:28
             (i32.add
              (local.get $obj)
              ;;@ ~lib/rt/itcms.ts:212:53
              (i32.const 20)
             )
             ;;@ ~lib/rt/itcms.ts:212:69
             (i32.const 0)
            )
           )
          )
          ;;@ ~lib/rt/itcms.ts:214:10
          (local.set $obj
           ;;@ ~lib/rt/itcms.ts:214:16
           (call $~lib/rt/itcms/Object#get:next
            (local.get $obj)
           )
          )
          ;;@ ~lib/rt/itcms.ts:214:10
          (br $label$11)
         )
        )
       )
      )
      ;;@ ~lib/rt/itcms.ts:216:8
      (local.set $from
       ;;@ ~lib/rt/itcms.ts:216:19
       (global.get $~lib/rt/itcms/fromSpace)
      )
      ;;@ ~lib/rt/itcms.ts:217:8
      (global.set $~lib/rt/itcms/fromSpace
       ;;@ ~lib/rt/itcms.ts:217:20
       (global.get $~lib/rt/itcms/toSpace)
      )
      ;;@ ~lib/rt/itcms.ts:218:8
      (global.set $~lib/rt/itcms/toSpace
       ;;@ ~lib/rt/itcms.ts:218:18
       (local.get $from)
      )
      ;;@ ~lib/rt/itcms.ts:219:8
      (global.set $~lib/rt/itcms/white
       ;;@ ~lib/rt/itcms.ts:219:16
       (local.get $black)
      )
      ;;@ ~lib/rt/itcms.ts:220:8
      (global.set $~lib/rt/itcms/iter
       ;;@ ~lib/rt/itcms.ts:220:15
       (call $~lib/rt/itcms/Object#get:next
        (local.get $from)
       )
      )
      ;;@ ~lib/rt/itcms.ts:221:8
      (global.set $~lib/rt/itcms/state
       ;;@ ~lib/rt/itcms.ts:221:16
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/rt/itcms.ts:223:6
    (return
     ;;@ ~lib/rt/itcms.ts:223:13
     (i32.mul
      (global.get $~lib/rt/itcms/visitCount)
      ;;@ ~lib/rt/itcms.ts:223:26
      (i32.const 1)
     )
    )
   )
   ;;@ ~lib/rt/itcms.ts:226:6
   (local.set $obj
    ;;@ ~lib/rt/itcms.ts:226:12
    (global.get $~lib/rt/itcms/iter)
   )
   ;;@ ~lib/rt/itcms.ts:227:6
   (if
    ;;@ ~lib/rt/itcms.ts:227:10
    (i32.ne
     (local.get $obj)
     ;;@ ~lib/rt/itcms.ts:227:17
     (global.get $~lib/rt/itcms/toSpace)
    )
    (block
     ;;@ ~lib/rt/itcms.ts:228:8
     (global.set $~lib/rt/itcms/iter
      ;;@ ~lib/rt/itcms.ts:228:15
      (call $~lib/rt/itcms/Object#get:next
       (local.get $obj)
      )
     )
     ;;@ ~lib/rt/itcms.ts:229:12
     (drop
      (i32.const 1)
     )
     ;;@ ~lib/rt/itcms.ts:229:19
     (if
      ;;@ ~lib/rt/itcms.ts:229:26
      (i32.eqz
       (i32.eq
        (call $~lib/rt/itcms/Object#get:color
         (local.get $obj)
        )
        ;;@ ~lib/rt/itcms.ts:229:39
        (i32.eqz
         ;;@ ~lib/rt/itcms.ts:229:44
         (global.get $~lib/rt/itcms/white)
        )
       )
      )
      (block
       ;;@ ~lib/rt/itcms.ts:229:19
       (call $~lib/builtins/abort
        (i32.const 0)
        (i32.const 96)
        (i32.const 229)
        (i32.const 20)
       )
       (unreachable)
      )
     )
     ;;@ ~lib/rt/itcms.ts:230:8
     (call $~lib/rt/itcms/free
      ;;@ ~lib/rt/itcms.ts:230:13
      (local.get $obj)
     )
     ;;@ ~lib/rt/itcms.ts:231:8
     (return
      ;;@ ~lib/rt/itcms.ts:231:15
      (i32.const 10)
     )
    )
   )
   ;;@ ~lib/rt/itcms.ts:233:6
   (call $~lib/rt/itcms/Object#set:nextWithColor
    (global.get $~lib/rt/itcms/toSpace)
    ;;@ ~lib/rt/itcms.ts:233:30
    (global.get $~lib/rt/itcms/toSpace)
   )
   ;;@ ~lib/rt/itcms.ts:234:6
   (call $~lib/rt/itcms/Object#set:prev
    (global.get $~lib/rt/itcms/toSpace)
    ;;@ ~lib/rt/itcms.ts:234:21
    (global.get $~lib/rt/itcms/toSpace)
   )
   ;;@ ~lib/rt/itcms.ts:235:6
   (global.set $~lib/rt/itcms/state
    ;;@ ~lib/rt/itcms.ts:235:14
    (i32.const 0)
   )
   ;;@ ~lib/rt/itcms.ts:236:6
   (br $label$1)
  )
  ;;@ ~lib/rt/itcms.ts:239:2
  (return
   ;;@ ~lib/rt/itcms.ts:239:9
   (i32.const 0)
  )
  ;;@ ~lib/rt/itcms.ts:239:2
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  ;;@ ~lib/rt/itcms.ts:399:2
  (drop
   ;;@ ~lib/rt/itcms.ts:399:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/itcms.ts:400:2
  (drop
   ;;@ ~lib/rt/itcms.ts:400:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/itcms.ts:401:2
  (local.set $budget
   ;;@ ~lib/rt/itcms.ts:401:22
   (i32.div_u
    (i32.mul
     (i32.const 1024)
     ;;@ ~lib/rt/itcms.ts:401:36
     (i32.const 200)
    )
    ;;@ ~lib/rt/itcms.ts:401:49
    (i32.const 100)
   )
  )
  ;;@ ~lib/rt/itcms.ts:402:2
  (loop $label$1
   ;;@ ~lib/rt/itcms.ts:403:4
   (local.set $budget
    ;;@ ~lib/rt/itcms.ts:403:14
    (i32.sub
     ;;@ ~lib/rt/itcms.ts:403:4
     (local.get $budget)
     ;;@ ~lib/rt/itcms.ts:403:14
     (call $~lib/rt/itcms/step)
    )
   )
   ;;@ ~lib/rt/itcms.ts:404:4
   (if
    ;;@ ~lib/rt/itcms.ts:404:8
    (i32.eq
     (global.get $~lib/rt/itcms/state)
     ;;@ ~lib/rt/itcms.ts:404:17
     (i32.const 0)
    )
    (block
     ;;@ ~lib/rt/itcms.ts:405:6
     (drop
      ;;@ ~lib/rt/itcms.ts:405:10
      (i32.const 0)
     )
     ;;@ ~lib/rt/itcms.ts:406:6
     (global.set $~lib/rt/itcms/threshold
      ;;@ ~lib/rt/itcms.ts:406:18
      (i32.add
       (i32.wrap_i64
        ;;@ ~lib/rt/itcms.ts:406:52
        (i64.div_u
         ;;@ ~lib/rt/itcms.ts:406:26
         (i64.mul
          (i64.extend_i32_u
           ;;@ ~lib/rt/itcms.ts:405:6
           (global.get $~lib/rt/itcms/total)
          )
          ;;@ ~lib/rt/itcms.ts:406:39
          (i64.extend_i32_u
           (i32.const 200)
          )
         )
         ;;@ ~lib/rt/itcms.ts:406:52
         (i64.const 100)
        )
       )
       ;;@ ~lib/rt/itcms.ts:406:59
       (i32.const 1024)
      )
     )
     ;;@ ~lib/rt/itcms.ts:407:6
     (drop
      ;;@ ~lib/rt/itcms.ts:407:10
      (i32.const 0)
     )
     ;;@ ~lib/rt/itcms.ts:408:6
     (return)
    )
   )
   ;;@ ~lib/rt/itcms.ts:410:11
   (br_if $label$1
    (i32.gt_s
     (local.get $budget)
     ;;@ ~lib/rt/itcms.ts:410:20
     (i32.const 0)
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:411:2
  (drop
   ;;@ ~lib/rt/itcms.ts:411:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/itcms.ts:412:2
  (global.set $~lib/rt/itcms/threshold
   ;;@ ~lib/rt/itcms.ts:412:14
   (i32.add
    (global.get $~lib/rt/itcms/total)
    ;;@ ~lib/rt/itcms.ts:412:22
    (i32.mul
     (i32.const 1024)
     ;;@ ~lib/rt/itcms.ts:412:36
     (i32.lt_u
      ;;@ ~lib/rt/itcms.ts:412:42
      (i32.sub
       (global.get $~lib/rt/itcms/total)
       ;;@ ~lib/rt/itcms.ts:412:50
       (global.get $~lib/rt/itcms/threshold)
      )
      ;;@ ~lib/rt/itcms.ts:412:62
      (i32.const 1024)
     )
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:413:2
  (drop
   ;;@ ~lib/rt/itcms.ts:413:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/itcms.ts:413:2
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  ;;@ ~lib/rt/tlsf.ts:451:2
  (return
   ;;@ ~lib/rt/tlsf.ts:451:9
   (if (result i32)
    (i32.le_u
     (local.get $size)
     ;;@ ~lib/rt/tlsf.ts:451:17
     (i32.const 12)
    )
    ;;@ ~lib/rt/tlsf.ts:452:6
    (i32.const 12)
    ;;@ ~lib/rt/tlsf.ts:453:6
    (i32.sub
     ;;@ ~lib/rt/tlsf.ts:453:7
     (i32.and
      ;;@ ~lib/rt/tlsf.ts:453:8
      (i32.add
       (i32.add
        (local.get $size)
        ;;@ ~lib/rt/tlsf.ts:453:15
        (i32.const 4)
       )
       ;;@ ~lib/rt/tlsf.ts:453:32
       (i32.const 15)
      )
      ;;@ ~lib/rt/tlsf.ts:453:43
      (i32.xor
       ;;@ ~lib/rt/tlsf.ts:453:44
       (i32.const 15)
       (i32.const -1)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:453:55
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:451:2
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  ;;@ ~lib/rt/tlsf.ts:458:2
  (if
   ;;@ ~lib/rt/tlsf.ts:458:6
   (i32.gt_u
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:458:13
    (i32.const 1073741820)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:458:44
    (call $~lib/builtins/abort
     (i32.const 32)
     (i32.const 368)
     (i32.const 458)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:459:2
  (return
   ;;@ ~lib/rt/tlsf.ts:459:9
   (call $~lib/rt/tlsf/computeSize
    ;;@ ~lib/rt/tlsf.ts:459:21
    (local.get $size)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:459:2
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  ;;@ ~lib/rt/tlsf.ts:316:2
  (if
   ;;@ ~lib/rt/tlsf.ts:316:6
   (i32.lt_u
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:316:13
    (i32.const 256)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:317:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:317:9
     (i32.const 0)
    )
    ;;@ ~lib/rt/tlsf.ts:318:4
    (local.set $sl
     ;;@ ~lib/rt/tlsf.ts:318:9
     (i32.shr_u
      ;;@ ~lib/rt/tlsf.ts:318:15
      (local.get $size)
      ;;@ ~lib/rt/tlsf.ts:318:23
      (i32.const 4)
     )
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:323:4
    (local.set $requestSize
     ;;@ ~lib/rt/tlsf.ts:323:22
     (if (result i32)
      (i32.lt_u
       (local.get $size)
       ;;@ ~lib/rt/tlsf.ts:323:29
       (i32.const 536870910)
      )
      ;;@ ~lib/rt/tlsf.ts:324:8
      (i32.sub
       (i32.add
        (local.get $size)
        ;;@ ~lib/rt/tlsf.ts:324:16
        (i32.shl
         (i32.const 1)
         ;;@ ~lib/rt/tlsf.ts:324:22
         (i32.sub
          (i32.const 27)
          ;;@ ~lib/rt/tlsf.ts:324:33
          (i32.clz
           ;;@ ~lib/rt/tlsf.ts:324:44
           (local.get $size)
          )
         )
        )
       )
       ;;@ ~lib/rt/tlsf.ts:324:54
       (i32.const 1)
      )
      ;;@ ~lib/rt/tlsf.ts:325:8
      (local.get $size)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:326:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:326:9
     (i32.sub
      (i32.const 31)
      ;;@ ~lib/rt/tlsf.ts:326:15
      (i32.clz
       ;;@ ~lib/rt/tlsf.ts:326:26
       (local.get $requestSize)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:327:4
    (local.set $sl
     ;;@ ~lib/rt/tlsf.ts:327:9
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:327:16
      (i32.shr_u
       (local.get $requestSize)
       ;;@ ~lib/rt/tlsf.ts:327:32
       (i32.sub
        (local.get $fl)
        ;;@ ~lib/rt/tlsf.ts:327:37
        (i32.const 4)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:327:50
      (i32.shl
       (i32.const 1)
       ;;@ ~lib/rt/tlsf.ts:327:55
       (i32.const 4)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:328:4
    (local.set $fl
     ;;@ ~lib/rt/tlsf.ts:328:10
     (i32.sub
      ;;@ ~lib/rt/tlsf.ts:328:4
      (local.get $fl)
      ;;@ ~lib/rt/tlsf.ts:328:10
      (i32.sub
       (i32.const 8)
       ;;@ ~lib/rt/tlsf.ts:328:20
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:330:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:330:13
  (if
   ;;@ ~lib/rt/tlsf.ts:330:36
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:330:20
    (if (result i32)
     (i32.lt_u
      (local.get $fl)
      ;;@ ~lib/rt/tlsf.ts:330:25
      (i32.const 23)
     )
     ;;@ ~lib/rt/tlsf.ts:330:36
     (i32.lt_u
      (local.get $sl)
      ;;@ ~lib/rt/tlsf.ts:330:41
      (i32.const 16)
     )
     ;;@ ~lib/rt/tlsf.ts:330:36
     (i32.const 0)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:330:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 330)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:333:2
  (local.set $slMap
   ;;@ ~lib/rt/tlsf.ts:333:14
   (i32.and
    (block $label$8 (result i32)
     ;;@ ~lib/rt/tlsf.ts:333:20
     (local.set $root|5
      (local.get $root)
     )
     ;;@ ~lib/rt/tlsf.ts:333:26
     (local.set $fl|6
      (local.get $fl)
     )
     ;;@ ~lib/rt/tlsf.ts:145:2
     (br $label$8
      ;;@ ~lib/rt/tlsf.ts:145:9
      (i32.load offset=4
       ;;@ ~lib/rt/tlsf.ts:146:4
       (i32.add
        (local.get $root|5)
        ;;@ ~lib/rt/tlsf.ts:146:31
        (i32.shl
         (local.get $fl|6)
         ;;@ ~lib/rt/tlsf.ts:146:37
         (i32.const 2)
        )
       )
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:333:33
    (i32.shl
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:333:34
      (i32.const 0)
      (i32.const -1)
     )
     ;;@ ~lib/rt/tlsf.ts:333:39
     (local.get $sl)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:334:2
  (local.set $head
   ;;@ ~lib/rt/tlsf.ts:334:27
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:335:2
  (if
   ;;@ ~lib/rt/tlsf.ts:335:6
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:335:7
    (local.get $slMap)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:337:4
    (local.set $flMap
     ;;@ ~lib/rt/tlsf.ts:337:16
     (i32.and
      (call $~lib/rt/tlsf/Root#get:flMap
       (local.get $root)
      )
      ;;@ ~lib/rt/tlsf.ts:337:30
      (i32.shl
       (i32.xor
        ;;@ ~lib/rt/tlsf.ts:337:31
        (i32.const 0)
        (i32.const -1)
       )
       ;;@ ~lib/rt/tlsf.ts:337:37
       (i32.add
        (local.get $fl)
        ;;@ ~lib/rt/tlsf.ts:337:42
        (i32.const 1)
       )
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:338:4
    (if
     ;;@ ~lib/rt/tlsf.ts:338:8
     (i32.eqz
      ;;@ ~lib/rt/tlsf.ts:338:9
      (local.get $flMap)
     )
     ;;@ ~lib/rt/tlsf.ts:339:6
     (local.set $head
      ;;@ ~lib/rt/tlsf.ts:339:13
      (i32.const 0)
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:341:6
      (local.set $fl
       ;;@ ~lib/rt/tlsf.ts:341:11
       (i32.ctz
        ;;@ ~lib/rt/tlsf.ts:341:22
        (local.get $flMap)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:342:6
      (local.set $slMap
       ;;@ ~lib/rt/tlsf.ts:342:14
       (block $label$12 (result i32)
        ;;@ ~lib/rt/tlsf.ts:342:20
        (local.set $root|10
         (local.get $root)
        )
        ;;@ ~lib/rt/tlsf.ts:342:26
        (local.set $fl|11
         (local.get $fl)
        )
        ;;@ ~lib/rt/tlsf.ts:145:2
        (br $label$12
         ;;@ ~lib/rt/tlsf.ts:145:9
         (i32.load offset=4
          ;;@ ~lib/rt/tlsf.ts:146:4
          (i32.add
           (local.get $root|10)
           ;;@ ~lib/rt/tlsf.ts:146:31
           (i32.shl
            (local.get $fl|11)
            ;;@ ~lib/rt/tlsf.ts:146:37
            (i32.const 2)
           )
          )
         )
        )
       )
      )
      ;;@ ~lib/rt/tlsf.ts:343:10
      (drop
       (i32.const 1)
      )
      ;;@ ~lib/rt/tlsf.ts:343:17
      (if
       ;;@ ~lib/rt/tlsf.ts:343:24
       (i32.eqz
        (local.get $slMap)
       )
       (block
        ;;@ ~lib/rt/tlsf.ts:343:17
        (call $~lib/builtins/abort
         (i32.const 0)
         (i32.const 368)
         (i32.const 343)
         (i32.const 18)
        )
        (unreachable)
       )
      )
      ;;@ ~lib/rt/tlsf.ts:344:6
      (local.set $head
       ;;@ ~lib/rt/tlsf.ts:344:13
       (block $label$14 (result i32)
        ;;@ ~lib/rt/tlsf.ts:344:21
        (local.set $root|12
         (local.get $root)
        )
        ;;@ ~lib/rt/tlsf.ts:344:27
        (local.set $fl|13
         (local.get $fl)
        )
        ;;@ ~lib/rt/tlsf.ts:344:31
        (local.set $sl|14
         (i32.ctz
          ;;@ ~lib/rt/tlsf.ts:344:40
          (local.get $slMap)
         )
        )
        ;;@ ~lib/rt/tlsf.ts:164:2
        (br $label$14
         ;;@ ~lib/rt/tlsf.ts:164:9
         (i32.load offset=96
          ;;@ ~lib/rt/tlsf.ts:165:4
          (i32.add
           (local.get $root|12)
           ;;@ ~lib/rt/tlsf.ts:165:31
           (i32.shl
            ;;@ ~lib/rt/tlsf.ts:165:32
            (i32.add
             ;;@ ~lib/rt/tlsf.ts:165:33
             (i32.shl
              (local.get $fl|13)
              ;;@ ~lib/rt/tlsf.ts:165:39
              (i32.const 4)
             )
             ;;@ ~lib/rt/tlsf.ts:165:50
             (local.get $sl|14)
            )
            ;;@ ~lib/rt/tlsf.ts:165:64
            (i32.const 2)
           )
          )
         )
        )
       )
      )
     )
    )
   )
   ;;@ ~lib/rt/tlsf.ts:347:4
   (local.set $head
    ;;@ ~lib/rt/tlsf.ts:347:11
    (block $label$16 (result i32)
     ;;@ ~lib/rt/tlsf.ts:347:19
     (local.set $root|15
      (local.get $root)
     )
     ;;@ ~lib/rt/tlsf.ts:347:25
     (local.set $fl|16
      (local.get $fl)
     )
     ;;@ ~lib/rt/tlsf.ts:347:29
     (local.set $sl|17
      (i32.ctz
       ;;@ ~lib/rt/tlsf.ts:347:38
       (local.get $slMap)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:164:2
     (br $label$16
      ;;@ ~lib/rt/tlsf.ts:164:9
      (i32.load offset=96
       ;;@ ~lib/rt/tlsf.ts:165:4
       (i32.add
        (local.get $root|15)
        ;;@ ~lib/rt/tlsf.ts:165:31
        (i32.shl
         ;;@ ~lib/rt/tlsf.ts:165:32
         (i32.add
          ;;@ ~lib/rt/tlsf.ts:165:33
          (i32.shl
           (local.get $fl|16)
           ;;@ ~lib/rt/tlsf.ts:165:39
           (i32.const 4)
          )
          ;;@ ~lib/rt/tlsf.ts:165:50
          (local.get $sl|17)
         )
         ;;@ ~lib/rt/tlsf.ts:165:64
         (i32.const 2)
        )
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:349:2
  (return
   ;;@ ~lib/rt/tlsf.ts:349:9
   (local.get $head)
  )
  ;;@ ~lib/rt/tlsf.ts:349:2
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  ;;@ ~lib/rt/tlsf.ts:425:2
  (drop
   ;;@ ~lib/rt/tlsf.ts:425:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:431:2
  (if
   ;;@ ~lib/rt/tlsf.ts:431:6
   (i32.lt_u
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:431:13
    (i32.const 536870910)
   )
   ;;@ ~lib/rt/tlsf.ts:433:4
   (local.set $size
    ;;@ ~lib/rt/tlsf.ts:433:12
    (i32.add
     ;;@ ~lib/rt/tlsf.ts:433:4
     (local.get $size)
     ;;@ ~lib/rt/tlsf.ts:433:12
     (i32.sub
      ;;@ ~lib/rt/tlsf.ts:433:13
      (i32.shl
       (i32.const 1)
       ;;@ ~lib/rt/tlsf.ts:433:19
       (i32.sub
        (i32.const 27)
        ;;@ ~lib/rt/tlsf.ts:433:30
        (i32.clz
         ;;@ ~lib/rt/tlsf.ts:433:41
         (local.get $size)
        )
       )
      )
      ;;@ ~lib/rt/tlsf.ts:433:51
      (i32.const 1)
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:437:2
  (local.set $pagesBefore
   ;;@ ~lib/rt/tlsf.ts:437:20
   (memory.size)
  )
  ;;@ ~lib/rt/tlsf.ts:438:2
  (local.set $size
   ;;@ ~lib/rt/tlsf.ts:438:10
   (i32.add
    ;;@ ~lib/rt/tlsf.ts:438:2
    (local.get $size)
    ;;@ ~lib/rt/tlsf.ts:438:10
    (i32.shl
     (i32.const 4)
     ;;@ ~lib/rt/tlsf.ts:438:28
     (i32.ne
      ;;@ ~lib/rt/tlsf.ts:438:34
      (i32.sub
       ;;@ ~lib/rt/tlsf.ts:438:35
       (i32.shl
        (local.get $pagesBefore)
        ;;@ ~lib/rt/tlsf.ts:438:57
        (i32.const 16)
       )
       ;;@ ~lib/rt/tlsf.ts:438:63
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:438:81
      (block $label$2 (result i32)
       ;;@ ~lib/rt/tlsf.ts:438:107
       (local.set $root|3
        (local.get $root)
       )
       ;;@ ~lib/rt/tlsf.ts:183:2
       (br $label$2
        ;;@ ~lib/rt/tlsf.ts:183:9
        (i32.load offset=1568
         ;;@ ~lib/rt/tlsf.ts:184:4
         (local.get $root|3)
        )
       )
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:439:2
  (local.set $pagesNeeded
   ;;@ ~lib/rt/tlsf.ts:439:20
   (i32.shr_u
    ;;@ ~lib/rt/tlsf.ts:439:27
    (i32.and
     ;;@ ~lib/rt/tlsf.ts:439:28
     (i32.add
      (local.get $size)
      ;;@ ~lib/rt/tlsf.ts:439:35
      (i32.const 65535)
     )
     ;;@ ~lib/rt/tlsf.ts:439:45
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:439:46
      (i32.const 65535)
      (i32.const -1)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:439:58
    (i32.const 16)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:440:2
  (local.set $pagesWanted
   ;;@ ~lib/rt/tlsf.ts:440:20
   (select
    ;;@ ~lib/rt/tlsf.ts:440:24
    (local.tee $5
     (local.get $pagesBefore)
    )
    ;;@ ~lib/rt/tlsf.ts:440:37
    (local.tee $6
     (local.get $pagesNeeded)
    )
    (i32.gt_s
     (local.get $5)
     (local.get $6)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:441:2
  (if
   ;;@ ~lib/rt/tlsf.ts:441:6
   (i32.lt_s
    (memory.grow
     ;;@ ~lib/rt/tlsf.ts:441:18
     (local.get $pagesWanted)
    )
    ;;@ ~lib/rt/tlsf.ts:441:33
    (i32.const 0)
   )
   ;;@ ~lib/rt/tlsf.ts:442:4
   (if
    ;;@ ~lib/rt/tlsf.ts:442:8
    (i32.lt_s
     (memory.grow
      ;;@ ~lib/rt/tlsf.ts:442:20
      (local.get $pagesNeeded)
     )
     ;;@ ~lib/rt/tlsf.ts:442:35
     (i32.const 0)
    )
    ;;@ ~lib/rt/tlsf.ts:442:38
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:444:2
  (local.set $pagesAfter
   ;;@ ~lib/rt/tlsf.ts:444:19
   (memory.size)
  )
  ;;@ ~lib/rt/tlsf.ts:445:2
  (drop
   ;;@ ~lib/rt/tlsf.ts:445:44
   (call $~lib/rt/tlsf/addMemory
    ;;@ ~lib/rt/tlsf.ts:445:12
    (local.get $root)
    ;;@ ~lib/rt/tlsf.ts:445:18
    (i32.shl
     (local.get $pagesBefore)
     ;;@ ~lib/rt/tlsf.ts:445:40
     (i32.const 16)
    )
    ;;@ ~lib/rt/tlsf.ts:445:44
    (i32.shl
     (local.get $pagesAfter)
     ;;@ ~lib/rt/tlsf.ts:445:65
     (i32.const 16)
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:445:2
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  ;;@ ~lib/rt/tlsf.ts:356:2
  (local.set $blockInfo
   ;;@ ~lib/rt/tlsf.ts:356:18
   (call $~lib/rt/common/BLOCK#get:mmInfo
    (local.get $block)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:357:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:357:13
  (if
   ;;@ ~lib/rt/tlsf.ts:357:20
   (i32.eqz
    (i32.eqz
     ;;@ ~lib/rt/tlsf.ts:357:22
     (i32.and
      ;;@ ~lib/rt/tlsf.ts:357:23
      (i32.add
       (local.get $size)
       ;;@ ~lib/rt/tlsf.ts:357:30
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:357:48
      (i32.const 15)
     )
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:357:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 357)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:360:2
  (local.set $remaining
   ;;@ ~lib/rt/tlsf.ts:360:18
   (i32.sub
    ;;@ ~lib/rt/tlsf.ts:360:19
    (i32.and
     (local.get $blockInfo)
     ;;@ ~lib/rt/tlsf.ts:360:31
     (i32.xor
      ;;@ ~lib/rt/tlsf.ts:360:32
      (i32.const 3)
      (i32.const -1)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:360:45
    (local.get $size)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:361:2
  (if
   ;;@ ~lib/rt/tlsf.ts:361:6
   (i32.ge_u
    (local.get $remaining)
    ;;@ ~lib/rt/tlsf.ts:361:19
    (i32.add
     (i32.const 4)
     ;;@ ~lib/rt/tlsf.ts:361:36
     (i32.const 12)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:362:4
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $block)
     ;;@ ~lib/rt/tlsf.ts:362:19
     (i32.or
      (local.get $size)
      ;;@ ~lib/rt/tlsf.ts:362:27
      (i32.and
       (local.get $blockInfo)
       ;;@ ~lib/rt/tlsf.ts:362:39
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:364:4
    (local.set $spare
     ;;@ ~lib/rt/tlsf.ts:364:16
     (i32.add
      ;;@ ~lib/rt/tlsf.ts:364:34
      (i32.add
       (local.get $block)
       ;;@ ~lib/rt/tlsf.ts:364:61
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:364:78
      (local.get $size)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:365:4
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $spare)
     ;;@ ~lib/rt/tlsf.ts:365:19
     (i32.or
      ;;@ ~lib/rt/tlsf.ts:365:20
      (i32.sub
       (local.get $remaining)
       ;;@ ~lib/rt/tlsf.ts:365:32
       (i32.const 4)
      )
      ;;@ ~lib/rt/tlsf.ts:365:50
      (i32.const 1)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:366:4
    (call $~lib/rt/tlsf/insertBlock
     ;;@ ~lib/rt/tlsf.ts:366:16
     (local.get $root)
     ;;@ ~lib/rt/tlsf.ts:366:22
     (local.get $spare)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:370:4
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $block)
     ;;@ ~lib/rt/tlsf.ts:370:19
     (i32.and
      (local.get $blockInfo)
      ;;@ ~lib/rt/tlsf.ts:370:31
      (i32.xor
       ;;@ ~lib/rt/tlsf.ts:370:32
       (i32.const 1)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/rt/tlsf.ts:371:4
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (block $label$4 (result i32)
      ;;@ ~lib/rt/tlsf.ts:371:13
      (local.set $block|7
       (local.get $block)
      )
      ;;@ ~lib/rt/tlsf.ts:97:2
      (br $label$4
       ;;@ ~lib/rt/tlsf.ts:97:9
       (i32.add
        ;;@ ~lib/rt/tlsf.ts:97:27
        (i32.add
         (local.get $block|7)
         ;;@ ~lib/rt/tlsf.ts:97:54
         (i32.const 4)
        )
        ;;@ ~lib/rt/tlsf.ts:97:72
        (i32.and
         (call $~lib/rt/common/BLOCK#get:mmInfo
          (local.get $block|7)
         )
         ;;@ ~lib/rt/tlsf.ts:97:87
         (i32.xor
          ;;@ ~lib/rt/tlsf.ts:97:88
          (i32.const 3)
          (i32.const -1)
         )
        )
       )
      )
     )
     ;;@ ~lib/rt/tlsf.ts:371:30
     (i32.and
      ;;@ ~lib/rt/tlsf.ts:371:4
      (call $~lib/rt/common/BLOCK#get:mmInfo
       (block $label$5 (result i32)
        ;;@ ~lib/rt/tlsf.ts:371:13
        (local.set $block|6
         (local.get $block)
        )
        ;;@ ~lib/rt/tlsf.ts:97:2
        (br $label$5
         ;;@ ~lib/rt/tlsf.ts:97:9
         (i32.add
          ;;@ ~lib/rt/tlsf.ts:97:27
          (i32.add
           (local.get $block|6)
           ;;@ ~lib/rt/tlsf.ts:97:54
           (i32.const 4)
          )
          ;;@ ~lib/rt/tlsf.ts:97:72
          (i32.and
           (call $~lib/rt/common/BLOCK#get:mmInfo
            (local.get $block|6)
           )
           ;;@ ~lib/rt/tlsf.ts:97:87
           (i32.xor
            ;;@ ~lib/rt/tlsf.ts:97:88
            (i32.const 3)
            (i32.const -1)
           )
          )
         )
        )
       )
      )
      ;;@ ~lib/rt/tlsf.ts:371:30
      (i32.xor
       ;;@ ~lib/rt/tlsf.ts:371:31
       (i32.const 2)
       (i32.const -1)
      )
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:371:4
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  ;;@ ~lib/rt/tlsf.ts:491:2
  (local.set $payloadSize
   ;;@ ~lib/rt/tlsf.ts:491:20
   (call $~lib/rt/tlsf/prepareSize
    ;;@ ~lib/rt/tlsf.ts:491:32
    (local.get $size)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:492:2
  (local.set $block
   ;;@ ~lib/rt/tlsf.ts:492:14
   (call $~lib/rt/tlsf/searchBlock
    ;;@ ~lib/rt/tlsf.ts:492:26
    (local.get $root)
    ;;@ ~lib/rt/tlsf.ts:492:32
    (local.get $payloadSize)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:493:2
  (if
   ;;@ ~lib/rt/tlsf.ts:493:6
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:493:7
    (local.get $block)
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:494:4
    (call $~lib/rt/tlsf/growMemory
     ;;@ ~lib/rt/tlsf.ts:494:15
     (local.get $root)
     ;;@ ~lib/rt/tlsf.ts:494:21
     (local.get $payloadSize)
    )
    ;;@ ~lib/rt/tlsf.ts:495:4
    (local.set $block
     ;;@ ~lib/rt/tlsf.ts:495:12
     (call $~lib/rt/tlsf/searchBlock
      ;;@ ~lib/rt/tlsf.ts:495:42
      (local.get $root)
      ;;@ ~lib/rt/tlsf.ts:495:48
      (local.get $payloadSize)
     )
    )
    ;;@ ~lib/rt/tlsf.ts:496:8
    (drop
     (i32.const 1)
    )
    ;;@ ~lib/rt/tlsf.ts:496:15
    (if
     ;;@ ~lib/rt/tlsf.ts:496:22
     (i32.eqz
      (local.get $block)
     )
     (block
      ;;@ ~lib/rt/tlsf.ts:496:15
      (call $~lib/builtins/abort
       (i32.const 0)
       (i32.const 368)
       (i32.const 496)
       (i32.const 16)
      )
      (unreachable)
     )
    )
   )
  )
  ;;@ ~lib/rt/tlsf.ts:498:6
  (drop
   (i32.const 1)
  )
  ;;@ ~lib/rt/tlsf.ts:498:13
  (if
   ;;@ ~lib/rt/tlsf.ts:498:20
   (i32.eqz
    (i32.ge_u
     ;;@ ~lib/rt/tlsf.ts:498:21
     (i32.and
      (call $~lib/rt/common/BLOCK#get:mmInfo
       (local.get $block)
      )
      ;;@ ~lib/rt/tlsf.ts:498:36
      (i32.xor
       ;;@ ~lib/rt/tlsf.ts:498:37
       (i32.const 3)
       (i32.const -1)
      )
     )
     ;;@ ~lib/rt/tlsf.ts:498:51
     (local.get $payloadSize)
    )
   )
   (block
    ;;@ ~lib/rt/tlsf.ts:498:13
    (call $~lib/builtins/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 498)
     (i32.const 14)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:499:2
  (call $~lib/rt/tlsf/removeBlock
   ;;@ ~lib/rt/tlsf.ts:499:14
   (local.get $root)
   ;;@ ~lib/rt/tlsf.ts:499:20
   (local.get $block)
  )
  ;;@ ~lib/rt/tlsf.ts:500:2
  (call $~lib/rt/tlsf/prepareBlock
   ;;@ ~lib/rt/tlsf.ts:500:15
   (local.get $root)
   ;;@ ~lib/rt/tlsf.ts:500:21
   (local.get $block)
   ;;@ ~lib/rt/tlsf.ts:500:28
   (local.get $payloadSize)
  )
  ;;@ ~lib/rt/tlsf.ts:501:2
  (drop
   ;;@ ~lib/rt/tlsf.ts:501:6
   (i32.const 0)
  )
  ;;@ ~lib/rt/tlsf.ts:502:2
  (return
   ;;@ ~lib/rt/tlsf.ts:502:9
   (local.get $block)
  )
  ;;@ ~lib/rt/tlsf.ts:502:2
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  ;;@ ~lib/rt/tlsf.ts:569:2
  (if
   ;;@ ~lib/rt/tlsf.ts:569:6
   (i32.eqz
    ;;@ ~lib/rt/tlsf.ts:569:7
    (global.get $~lib/rt/tlsf/ROOT)
   )
   ;;@ ~lib/rt/tlsf.ts:569:13
   (call $~lib/rt/tlsf/initialize)
  )
  ;;@ ~lib/rt/tlsf.ts:570:2
  (return
   ;;@ ~lib/rt/tlsf.ts:570:9
   (i32.add
    (call $~lib/rt/tlsf/allocateBlock
     ;;@ ~lib/rt/tlsf.ts:570:41
     (global.get $~lib/rt/tlsf/ROOT)
     ;;@ ~lib/rt/tlsf.ts:570:47
     (local.get $size)
    )
    ;;@ ~lib/rt/tlsf.ts:570:56
    (i32.const 4)
   )
  )
  ;;@ ~lib/rt/tlsf.ts:570:2
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  (i32.store offset=12
   (local.get $this)
   (local.get $rtId)
  )
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  (i32.store offset=16
   (local.get $this)
   (local.get $rtSize)
  )
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  ;;@ ~lib/rt/itcms.ts:261:2
  (if
   ;;@ ~lib/rt/itcms.ts:261:6
   (i32.ge_u
    (local.get $size)
    ;;@ ~lib/rt/itcms.ts:261:14
    (i32.const 1073741804)
   )
   (block
    ;;@ ~lib/rt/itcms.ts:261:46
    (call $~lib/builtins/abort
     (i32.const 32)
     (i32.const 96)
     (i32.const 261)
     (i32.const 31)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/rt/itcms.ts:262:2
  (if
   ;;@ ~lib/rt/itcms.ts:262:6
   (i32.ge_u
    (global.get $~lib/rt/itcms/total)
    ;;@ ~lib/rt/itcms.ts:262:15
    (global.get $~lib/rt/itcms/threshold)
   )
   ;;@ ~lib/rt/itcms.ts:262:26
   (call $~lib/rt/itcms/interrupt)
  )
  ;;@ ~lib/rt/itcms.ts:263:2
  (local.set $obj
   ;;@ ~lib/rt/itcms.ts:263:12
   (i32.sub
    ;;@ ~lib/rt/itcms.ts:263:31
    (call $~lib/rt/tlsf/__alloc
     ;;@ ~lib/rt/itcms.ts:263:39
     (i32.add
      (i32.const 16)
      ;;@ ~lib/rt/itcms.ts:263:57
      (local.get $size)
     )
    )
    ;;@ ~lib/rt/itcms.ts:263:65
    (i32.const 4)
   )
  )
  ;;@ ~lib/rt/itcms.ts:264:2
  (call $~lib/rt/itcms/Object#set:rtId
   (local.get $obj)
   ;;@ ~lib/rt/itcms.ts:264:13
   (local.get $id)
  )
  ;;@ ~lib/rt/itcms.ts:265:2
  (call $~lib/rt/itcms/Object#set:rtSize
   (local.get $obj)
   ;;@ ~lib/rt/itcms.ts:265:15
   (local.get $size)
  )
  ;;@ ~lib/rt/itcms.ts:266:2
  (call $~lib/rt/itcms/Object#linkTo
   (local.get $obj)
   ;;@ ~lib/rt/itcms.ts:266:13
   (global.get $~lib/rt/itcms/fromSpace)
   ;;@ ~lib/rt/itcms.ts:266:24
   (global.get $~lib/rt/itcms/white)
  )
  ;;@ ~lib/rt/itcms.ts:267:2
  (global.set $~lib/rt/itcms/total
   ;;@ ~lib/rt/itcms.ts:267:11
   (i32.add
    ;;@ ~lib/rt/itcms.ts:267:2
    (global.get $~lib/rt/itcms/total)
    ;;@ ~lib/rt/itcms.ts:267:11
    (call $~lib/rt/itcms/Object#get:size
     (local.get $obj)
    )
   )
  )
  ;;@ ~lib/rt/itcms.ts:268:2
  (local.set $ptr
   ;;@ ~lib/rt/itcms.ts:268:12
   (i32.add
    (local.get $obj)
    ;;@ ~lib/rt/itcms.ts:268:37
    (i32.const 20)
   )
  )
  ;;@ ~lib/rt/itcms.ts:270:2
  (memory.fill
   ;;@ ~lib/rt/itcms.ts:270:14
   (local.get $ptr)
   ;;@ ~lib/rt/itcms.ts:270:19
   (i32.const 0)
   ;;@ ~lib/rt/itcms.ts:270:22
   (local.get $size)
  )
  ;;@ ~lib/rt/itcms.ts:271:2
  (return
   ;;@ ~lib/rt/itcms.ts:271:9
   (local.get $ptr)
  )
  ;;@ ~lib/rt/itcms.ts:271:2
 )
 (func $template-debuginfo/AA#set:length (param $this i32) (param $length i32)
  (i32.store
   (local.get $this)
   (local.get $length)
  )
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  (call $~lib/rt/itcms/__visit
   (i32.const 224)
   (local.get $0)
  )
  (call $~lib/rt/itcms/__visit
   (i32.const 32)
   (local.get $0)
  )
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/object/Object~visit
   (local.get $0)
   (local.get $1)
  )
  (if
   (local.tee $2
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/rt/itcms/__visit
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
  (nop)
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_table $label$6 $label$5 $label$4 $label$3 $label$2 $label$1
         (i32.load
          (i32.sub
           (local.get $0)
           (i32.const 8)
          )
         )
        )
       )
       (return)
      )
      (return)
     )
     (return)
    )
    (call $~lib/arraybuffer/ArrayBufferView~visit
     (local.get $0)
     (local.get $1)
    )
    (return)
   )
   (return)
  )
  (unreachable)
 )
 (func $~start
  (global.set $~lib/rt/itcms/threshold
   (i32.shr_u
    (i32.sub
     (i32.shl
      (memory.size)
      (i32.const 16)
     )
     (global.get $~lib/memory/__heap_base)
    )
    (i32.const 1)
   )
  )
  (global.set $~lib/rt/itcms/pinSpace
   (call $~lib/rt/itcms/initLazy
    (i32.const 144)
   )
  )
  (global.set $~lib/rt/itcms/toSpace
   (call $~lib/rt/itcms/initLazy
    (i32.const 176)
   )
  )
  (global.set $~lib/rt/itcms/fromSpace
   (call $~lib/rt/itcms/initLazy
    (i32.const 320)
   )
  )
 )
 (func $~stack_check
  (if
   (i32.lt_s
    (global.get $~lib/memory/__stack_pointer)
    (global.get $~lib/memory/__data_end)
   )
   (block
    (call $~lib/builtins/abort
     (i32.const 33232)
     (i32.const 33280)
     (i32.const 1)
     (i32.const 1)
    )
    (unreachable)
   )
  )
 )
 (func $template-debuginfo/testFoo<template-debuginfo/AA|null> (param $v i32) (result i32)
  (local $1 i32)
  (global.set $~lib/memory/__stack_pointer
   (i32.sub
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 4)
   )
  )
  (call $~stack_check)
  (i32.store
   (global.get $~lib/memory/__stack_pointer)
   (i32.const 0)
  )
  ;;@ template-debuginfo.ts:6:2
  (if
   ;;@ template-debuginfo.ts:6:6
   (i32.eq
    ;;@ template-debuginfo.ts:6:23
    (local.get $v)
    ;;@ template-debuginfo.ts:6:28
    (i32.const 0)
   )
   (block
    ;;@ template-debuginfo.ts:7:11
    (local.set $1
     (i32.const 1)
    )
    (global.set $~lib/memory/__stack_pointer
     (i32.add
      (global.get $~lib/memory/__stack_pointer)
      (i32.const 4)
     )
    )
    ;;@ template-debuginfo.ts:7:4
    (return
     ;;@ template-debuginfo.ts:7:11
     (local.get $1)
    )
   )
  )
  ;;@ template-debuginfo.ts:9:6
  (drop
   (i32.const 1)
  )
  ;;@ template-debuginfo.ts:10:8
  (local.set $1
   (local.get $v)
  )
  (i32.store
   (global.get $~lib/memory/__stack_pointer)
   (local.get $1)
  )
  ;;@ template-debuginfo.ts:9:23
  (if
   ;;@ template-debuginfo.ts:10:8
   (i32.gt_s
    (call $template-debuginfo/AA#get:length
     (local.get $1)
    )
    ;;@ template-debuginfo.ts:10:19
    (i32.const 10)
   )
   (block
    ;;@ template-debuginfo.ts:11:13
    (local.set $1
     (i32.const 2)
    )
    (global.set $~lib/memory/__stack_pointer
     (i32.add
      (global.get $~lib/memory/__stack_pointer)
      (i32.const 4)
     )
    )
    ;;@ template-debuginfo.ts:11:6
    (return
     ;;@ template-debuginfo.ts:11:13
     (local.get $1)
    )
   )
   (block
    ;;@ template-debuginfo.ts:13:13
    (local.set $1
     (i32.const 3)
    )
    (global.set $~lib/memory/__stack_pointer
     (i32.add
      (global.get $~lib/memory/__stack_pointer)
      (i32.const 4)
     )
    )
    ;;@ template-debuginfo.ts:13:6
    (return
     ;;@ template-debuginfo.ts:13:13
     (local.get $1)
    )
   )
  )
  ;;@ template-debuginfo.ts:13:6
 )
 (func $template-debuginfo/AA#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (global.set $~lib/memory/__stack_pointer
   (i32.sub
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 8)
   )
  )
  (call $~stack_check)
  (i64.store
   (global.get $~lib/memory/__stack_pointer)
   (i64.const 0)
  )
  (if
   (i32.eqz
    (local.get $this)
   )
   (i32.store
    (global.get $~lib/memory/__stack_pointer)
    (local.tee $this
     (call $~lib/rt/itcms/__new
      (i32.const 4)
      (i32.const 4)
     )
    )
   )
  )
  (i32.store
   (block (result i32)
    (local.set $2
     (global.get $~lib/memory/__stack_pointer)
    )
    (local.set $1
     (local.get $this)
    )
    (i32.store offset=4
     (global.get $~lib/memory/__stack_pointer)
     (local.get $1)
    )
    (local.get $2)
   )
   (local.tee $this
    (call $~lib/object/Object#constructor
     (local.get $1)
    )
   )
  )
  (local.set $1
   (local.get $this)
  )
  (i32.store offset=4
   (global.get $~lib/memory/__stack_pointer)
   (local.get $1)
  )
  ;;@ template-debuginfo.ts:2:16
  (call $template-debuginfo/AA#set:length
   (local.get $1)
   (i32.const 1)
  )
  (local.set $1
   (local.get $this)
  )
  (global.set $~lib/memory/__stack_pointer
   (i32.add
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 8)
   )
  )
  (local.get $1)
 )
 (func $template-debuginfo/testFoo<template-debuginfo/AA> (param $v i32) (result i32)
  (local $1 i32)
  (global.set $~lib/memory/__stack_pointer
   (i32.sub
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 4)
   )
  )
  (call $~stack_check)
  (i32.store
   (global.get $~lib/memory/__stack_pointer)
   (i32.const 0)
  )
  ;;@ template-debuginfo.ts:6:2
  (drop
   ;;@ template-debuginfo.ts:6:6
   (i32.const 0)
  )
  ;;@ template-debuginfo.ts:9:6
  (drop
   (i32.const 1)
  )
  ;;@ template-debuginfo.ts:10:8
  (local.set $1
   (local.get $v)
  )
  (i32.store
   (global.get $~lib/memory/__stack_pointer)
   (local.get $1)
  )
  ;;@ template-debuginfo.ts:9:23
  (if
   ;;@ template-debuginfo.ts:10:8
   (i32.gt_s
    (call $template-debuginfo/AA#get:length
     (local.get $1)
    )
    ;;@ template-debuginfo.ts:10:19
    (i32.const 10)
   )
   (block
    ;;@ template-debuginfo.ts:11:13
    (local.set $1
     (i32.const 2)
    )
    (global.set $~lib/memory/__stack_pointer
     (i32.add
      (global.get $~lib/memory/__stack_pointer)
      (i32.const 4)
     )
    )
    ;;@ template-debuginfo.ts:11:6
    (return
     ;;@ template-debuginfo.ts:11:13
     (local.get $1)
    )
   )
   (block
    ;;@ template-debuginfo.ts:13:13
    (local.set $1
     (i32.const 3)
    )
    (global.set $~lib/memory/__stack_pointer
     (i32.add
      (global.get $~lib/memory/__stack_pointer)
      (i32.const 4)
     )
    )
    ;;@ template-debuginfo.ts:13:6
    (return
     ;;@ template-debuginfo.ts:13:13
     (local.get $1)
    )
   )
  )
  ;;@ template-debuginfo.ts:13:6
 )
 (func $template-debuginfo/testExport
  (local $a i32)
  (local $1 i32)
  (global.set $~lib/memory/__stack_pointer
   (i32.sub
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 8)
   )
  )
  (call $~stack_check)
  (i64.store
   (global.get $~lib/memory/__stack_pointer)
   (i64.const 0)
  )
  ;;@ template-debuginfo.ts:19:2
  (drop
   ;;@ template-debuginfo.ts:19:21
   (call $template-debuginfo/testFoo<template-debuginfo/AA|null>
    (i32.const 0)
   )
  )
  ;;@ template-debuginfo.ts:20:12
  (i32.store
   ;;@ template-debuginfo.ts:19:2
   (global.get $~lib/memory/__stack_pointer)
   ;;@ template-debuginfo.ts:20:12
   (local.tee $a
    (call $template-debuginfo/AA#constructor
     ;;@ template-debuginfo.ts:19:2
     (i32.const 0)
    )
   )
  )
  ;;@ template-debuginfo.ts:21:10
  (local.set $1
   (local.get $a)
  )
  (i32.store offset=4
   (global.get $~lib/memory/__stack_pointer)
   (local.get $1)
  )
  ;;@ template-debuginfo.ts:21:2
  (drop
   ;;@ template-debuginfo.ts:21:10
   (call $template-debuginfo/testFoo<template-debuginfo/AA>
    (local.get $1)
   )
  )
  (global.set $~lib/memory/__stack_pointer
   (i32.add
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 8)
   )
  )
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  (global.set $~lib/memory/__stack_pointer
   (i32.sub
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 4)
   )
  )
  (call $~stack_check)
  (i32.store
   (global.get $~lib/memory/__stack_pointer)
   (i32.const 0)
  )
  (if
   (i32.eqz
    (local.get $this)
   )
   (i32.store
    (global.get $~lib/memory/__stack_pointer)
    (local.tee $this
     (call $~lib/rt/itcms/__new
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $1
   (local.get $this)
  )
  (global.set $~lib/memory/__stack_pointer
   (i32.add
    (global.get $~lib/memory/__stack_pointer)
    (i32.const 4)
   )
  )
  (local.get $1)
 )
 ;; custom section "sourceMappingURL", size 36, contents: "#./template-debuginfo.debug.wasm.map"
)

