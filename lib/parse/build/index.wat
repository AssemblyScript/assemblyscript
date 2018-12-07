(module
 (type $iiv (func (param i32 i32)))
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiiiv (func (param i32 i32 i32 i32 i32 i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $I (func (result i64)))
 (type $iv (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "memory" (memory $0 0))
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "options" "onSection" (func $assembly/options/onSection (param i32 i32 i32 i32 i32) (result i32)))
 (import "options" "onType" (func $assembly/options/onType (param i32 i32)))
 (import "options" "onTypeParam" (func $assembly/options/onTypeParam (param i32 i32 i32)))
 (import "options" "onTypeReturn" (func $assembly/options/onTypeReturn (param i32 i32 i32)))
 (import "options" "onImport" (func $assembly/options/onImport (param i32 i32 i32 i32 i32 i32)))
 (import "options" "onFunctionImport" (func $assembly/options/onFunctionImport (param i32 i32)))
 (import "options" "onTableImport" (func $assembly/options/onTableImport (param i32 i32 i32 i32 i32)))
 (import "options" "onMemoryImport" (func $assembly/options/onMemoryImport (param i32 i32 i32 i32)))
 (import "options" "onGlobalImport" (func $assembly/options/onGlobalImport (param i32 i32 i32)))
 (import "options" "onFunction" (func $assembly/options/onFunction (param i32 i32)))
 (import "options" "onTable" (func $assembly/options/onTable (param i32 i32 i32 i32 i32)))
 (import "options" "onMemory" (func $assembly/options/onMemory (param i32 i32 i32 i32)))
 (import "options" "onGlobal" (func $assembly/options/onGlobal (param i32 i32 i32)))
 (import "options" "onExport" (func $assembly/options/onExport (param i32 i32 i32 i32 i32)))
 (import "options" "onStart" (func $assembly/options/onStart (param i32)))
 (import "options" "onModuleName" (func $assembly/options/onModuleName (param i32 i32)))
 (import "options" "onFunctionName" (func $assembly/options/onFunctionName (param i32 i32 i32)))
 (import "options" "onLocalName" (func $assembly/options/onLocalName (param i32 i32 i32 i32)))
 (import "options" "onSourceMappingURL" (func $assembly/options/onSourceMappingURL (param i32 i32)))
 (global $assembly/index/off (mut i32) (i32.const 0))
 (global $src/common/SectionId.Custom (mut i32) (i32.const 0))
 (global $src/common/SectionId.Type (mut i32) (i32.const 1))
 (global $src/common/SectionId.Import (mut i32) (i32.const 2))
 (global $src/common/SectionId.Function (mut i32) (i32.const 3))
 (global $src/common/SectionId.Table (mut i32) (i32.const 4))
 (global $src/common/SectionId.Memory (mut i32) (i32.const 5))
 (global $src/common/SectionId.Global (mut i32) (i32.const 6))
 (global $src/common/SectionId.Export (mut i32) (i32.const 7))
 (global $src/common/SectionId.Start (mut i32) (i32.const 8))
 (global $src/common/SectionId.Element (mut i32) (i32.const 9))
 (global $src/common/SectionId.Code (mut i32) (i32.const 10))
 (global $src/common/SectionId.Data (mut i32) (i32.const 11))
 (global $src/common/ExternalKind.Function (mut i32) (i32.const 0))
 (global $src/common/ExternalKind.Table (mut i32) (i32.const 1))
 (global $src/common/ExternalKind.Memory (mut i32) (i32.const 2))
 (global $src/common/ExternalKind.Global (mut i32) (i32.const 3))
 (global $src/common/Opcode.end (mut i32) (i32.const 11))
 (global $src/common/Opcode.get_global (mut i32) (i32.const 35))
 (global $src/common/Opcode.i32_const (mut i32) (i32.const 65))
 (global $src/common/Opcode.i64_const (mut i32) (i32.const 66))
 (global $src/common/Opcode.f32_const (mut i32) (i32.const 67))
 (global $src/common/Opcode.f64_const (mut i32) (i32.const 68))
 (global $src/common/NameType.Module (mut i32) (i32.const 0))
 (global $src/common/NameType.Function (mut i32) (i32.const 1))
 (global $src/common/NameType.Local (mut i32) (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "parse" (func $assembly/index/parse))
 (func $assembly/index/readUint<u32> (; 19 ;) (; has Stack IR ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  ;;@ assembly/index.ts:22:2
  (set_local $1
   ;;@ assembly/index.ts:22:12
   (i32.load
    ;;@ assembly/index.ts:21:2
    (tee_local $0
     ;;@ assembly/index.ts:21:12
     (get_global $assembly/index/off)
    )
   )
  )
  ;;@ assembly/index.ts:23:2
  (set_global $assembly/index/off
   ;;@ assembly/index.ts:23:8
   (i32.add
    (get_local $0)
    ;;@ assembly/index.ts:23:14
    (i32.const 4)
   )
  )
  (get_local $1)
 )
 (func $assembly/index/readVaruint (; 20 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/index.ts:40:2
  (set_local $0
   ;;@ assembly/index.ts:40:12
   (get_global $assembly/index/off)
  )
  ;;@ assembly/index.ts:41:2
  (block $break|0
   (loop $continue|0
    (set_local $0
     (i32.add
      (tee_local $1
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ assembly/index.ts:43:4
    (set_local $2
     (i32.or
      (get_local $2)
      ;;@ assembly/index.ts:43:11
      (i32.shl
       (i32.and
        ;;@ assembly/index.ts:42:4
        (tee_local $1
         ;;@ assembly/index.ts:42:10
         (i32.load8_u
          (get_local $1)
         )
        )
        ;;@ assembly/index.ts:43:18
        (i32.const 127)
       )
       (get_local $3)
      )
     )
    )
    (br_if $break|0
     ;;@ assembly/index.ts:44:8
     (i32.eqz
      ;;@ assembly/index.ts:44:9
      (i32.and
       (get_local $1)
       ;;@ assembly/index.ts:44:16
       (i32.const 128)
      )
     )
    )
    ;;@ assembly/index.ts:45:4
    (set_local $3
     (i32.add
      (get_local $3)
      ;;@ assembly/index.ts:45:11
      (i32.const 7)
     )
    )
    (br $continue|0)
   )
  )
  ;;@ assembly/index.ts:47:2
  (set_global $assembly/index/off
   (get_local $0)
  )
  (get_local $2)
 )
 (func $assembly/index/readVarint (; 21 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ assembly/index.ts:56:2
  (set_local $2
   ;;@ assembly/index.ts:56:12
   (get_global $assembly/index/off)
  )
  (loop $continue|0
   (set_local $2
    (i32.add
     (tee_local $4
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   ;;@ assembly/index.ts:59:4
   (set_local $3
    (i32.or
     (get_local $3)
     ;;@ assembly/index.ts:59:11
     (i32.shl
      (i32.and
       ;;@ assembly/index.ts:58:4
       (tee_local $5
        ;;@ assembly/index.ts:58:10
        (i32.load8_u
         (get_local $4)
        )
       )
       ;;@ assembly/index.ts:59:18
       (i32.const 127)
      )
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:60:4
   (set_local $1
    (i32.add
     (get_local $1)
     ;;@ assembly/index.ts:60:11
     (i32.const 7)
    )
   )
   (br_if $continue|0
    ;;@ assembly/index.ts:61:11
    (i32.and
     (get_local $5)
     ;;@ assembly/index.ts:61:17
     (i32.const 128)
    )
   )
  )
  ;;@ assembly/index.ts:62:2
  (set_global $assembly/index/off
   (get_local $2)
  )
  (set_local $2
   ;;@ assembly/index.ts:63:21
   (i32.or
    (get_local $3)
    ;;@ assembly/index.ts:63:27
    (i32.shl
     (i32.const -1)
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:63:45
  (if
   (tee_local $4
    (i32.lt_u
     (get_local $1)
     (get_local $0)
    )
   )
   (set_local $4
    ;;@ assembly/index.ts:63:59
    (i32.ne
     (i32.and
      (get_local $5)
      ;;@ assembly/index.ts:63:66
      (i32.const 64)
     )
     ;;@ assembly/index.ts:63:75
     (i32.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:63:76
  (select
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $assembly/index/readUint<u8> (; 22 ;) (; has Stack IR ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  ;;@ assembly/index.ts:22:2
  (set_local $1
   ;;@ assembly/index.ts:22:12
   (i32.load8_u
    ;;@ assembly/index.ts:21:2
    (tee_local $0
     ;;@ assembly/index.ts:21:12
     (get_global $assembly/index/off)
    )
   )
  )
  ;;@ assembly/index.ts:23:2
  (set_global $assembly/index/off
   ;;@ assembly/index.ts:23:8
   (i32.add
    (get_local $0)
    ;;@ assembly/index.ts:23:14
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func $assembly/index/readVarint64 (; 23 ;) (; has Stack IR ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  ;;@ assembly/index.ts:71:2
  (set_local $3
   ;;@ assembly/index.ts:71:12
   (get_global $assembly/index/off)
  )
  (loop $continue|0
   (set_local $3
    (i32.add
     (tee_local $2
      (get_local $3)
     )
     (i32.const 1)
    )
   )
   ;;@ assembly/index.ts:74:4
   (set_local $1
    (i64.or
     (get_local $1)
     ;;@ assembly/index.ts:74:11
     (i64.shl
      (i64.and
       ;;@ assembly/index.ts:73:4
       (tee_local $4
        ;;@ assembly/index.ts:73:10
        (i64.load8_u
         (get_local $2)
        )
       )
       ;;@ assembly/index.ts:74:18
       (i64.const 127)
      )
      (get_local $0)
     )
    )
   )
   ;;@ assembly/index.ts:75:4
   (set_local $0
    (i64.add
     (get_local $0)
     ;;@ assembly/index.ts:75:11
     (i64.const 7)
    )
   )
   (br_if $continue|0
    (i64.ne
     ;;@ assembly/index.ts:76:11
     (i64.and
      (get_local $4)
      ;;@ assembly/index.ts:76:17
      (i64.const 128)
     )
     (i64.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:77:2
  (set_global $assembly/index/off
   (get_local $3)
  )
  (set_local $5
   ;;@ assembly/index.ts:78:21
   (i64.or
    (get_local $1)
    ;;@ assembly/index.ts:78:27
    (i64.shl
     (i64.const -1)
     (get_local $0)
    )
   )
  )
  ;;@ assembly/index.ts:78:45
  (if
   (tee_local $2
    (i64.lt_u
     (get_local $0)
     ;;@ assembly/index.ts:78:51
     (i64.const 64)
    )
   )
   (set_local $2
    ;;@ assembly/index.ts:78:57
    (i64.ne
     (i64.and
      (get_local $4)
      ;;@ assembly/index.ts:78:64
      (i64.const 64)
     )
     ;;@ assembly/index.ts:78:73
     (i64.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:78:74
  (select
   (get_local $5)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $assembly/index/readUint64 (; 24 ;) (; has Stack IR ;) (type $I) (result i64)
  (local $0 i32)
  (local $1 i64)
  ;;@ assembly/index.ts:30:2
  (set_local $1
   ;;@ assembly/index.ts:30:12
   (i64.load
    ;;@ assembly/index.ts:29:2
    (tee_local $0
     ;;@ assembly/index.ts:29:12
     (get_global $assembly/index/off)
    )
   )
  )
  ;;@ assembly/index.ts:31:2
  (set_global $assembly/index/off
   ;;@ assembly/index.ts:31:8
   (i32.add
    (get_local $0)
    ;;@ assembly/index.ts:31:14
    (i32.const 8)
   )
  )
  (get_local $1)
 )
 (func $assembly/index/skipInitExpr (; 25 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  ;;@ assembly/index.ts:83:2
  (block $break|0
   (block $case5|0
    (block $case4|0
     (block $case3|0
      (block $case2|0
       (block $case1|0
        (if
         (i32.ne
          ;;@ assembly/index.ts:82:2
          (tee_local $0
           ;;@ assembly/index.ts:82:11
           (call $assembly/index/readUint<u8>)
          )
          ;;@ assembly/index.ts:84:9
          (get_global $src/common/Opcode.i32_const)
         )
         (block
          (br_if $case1|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:88:9
            (get_global $src/common/Opcode.i64_const)
           )
          )
          (br_if $case2|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:92:9
            (get_global $src/common/Opcode.f32_const)
           )
          )
          (br_if $case3|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:96:9
            (get_global $src/common/Opcode.f64_const)
           )
          )
          (br_if $case4|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:100:9
            (get_global $src/common/Opcode.get_global)
           )
          )
          (br $case5|0)
         )
        )
        ;;@ assembly/index.ts:85:6
        (drop
         (call $assembly/index/readVarint
          ;;@ assembly/index.ts:85:17
          (i32.const 32)
         )
        )
        ;;@ assembly/index.ts:86:6
        (br $break|0)
       )
       ;;@ assembly/index.ts:89:6
       (drop
        (call $assembly/index/readVarint64)
       )
       ;;@ assembly/index.ts:90:6
       (br $break|0)
      )
      ;;@ assembly/index.ts:93:6
      (drop
       (call $assembly/index/readUint<u32>)
      )
      ;;@ assembly/index.ts:94:6
      (br $break|0)
     )
     ;;@ assembly/index.ts:97:6
     (drop
      (call $assembly/index/readUint64)
     )
     ;;@ assembly/index.ts:98:6
     (br $break|0)
    )
    ;;@ assembly/index.ts:101:6
    (drop
     (call $assembly/index/readVaruint)
    )
    ;;@ assembly/index.ts:102:6
    (br $break|0)
   )
   ;;@ assembly/index.ts:104:13
   (unreachable)
  )
  ;;@ assembly/index.ts:106:2
  (if
   ;;@ assembly/index.ts:106:6
   (i32.ne
    (call $assembly/index/readUint<u8>)
    ;;@ assembly/index.ts:106:24
    (get_global $src/common/Opcode.end)
   )
   ;;@ assembly/index.ts:106:36
   (unreachable)
  )
 )
 (func $assembly/index/parse (; 26 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  ;;@ assembly/index.ts:111:2
  (set_global $assembly/index/off
   (get_local $0)
  )
  ;;@ assembly/index.ts:113:2
  (if
   ;;@ assembly/index.ts:113:6
   (i32.ne
    ;;@ assembly/index.ts:112:14
    (call $assembly/index/readUint<u32>)
    ;;@ assembly/index.ts:113:15
    (i32.const 1836278016)
   )
   ;;@ assembly/index.ts:113:27
   (unreachable)
  )
  ;;@ assembly/index.ts:115:2
  (if
   ;;@ assembly/index.ts:115:6
   (i32.ne
    ;;@ assembly/index.ts:114:16
    (call $assembly/index/readUint<u32>)
    ;;@ assembly/index.ts:115:17
    (i32.const 1)
   )
   ;;@ assembly/index.ts:115:20
   (unreachable)
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:120:9
    (i32.lt_u
     (get_global $assembly/index/off)
     (get_local $1)
    )
    (block
     ;;@ assembly/index.ts:122:4
     (set_local $3
      ;;@ assembly/index.ts:122:13
      (call $assembly/index/readVaruint)
     )
     ;;@ assembly/index.ts:123:4
     (set_local $7
      ;;@ assembly/index.ts:123:22
      (call $assembly/index/readVaruint)
     )
     ;;@ assembly/index.ts:124:4
     (set_local $4
      ;;@ assembly/index.ts:124:19
      (i32.const 0)
     )
     ;;@ assembly/index.ts:125:4
     (set_local $0
      ;;@ assembly/index.ts:125:19
      (i32.const 0)
     )
     ;;@ assembly/index.ts:126:4
     (if
      (get_local $3)
      ;;@ assembly/index.ts:132:11
      (if
       ;;@ assembly/index.ts:132:15
       (i32.gt_u
        (get_local $3)
        ;;@ assembly/index.ts:132:20
        (get_global $src/common/SectionId.Data)
       )
       ;;@ assembly/index.ts:132:41
       (unreachable)
      )
      ;;@ assembly/index.ts:126:13
      (block
       ;;@ assembly/index.ts:127:6
       (set_local $5
        ;;@ assembly/index.ts:127:19
        (get_global $assembly/index/off)
       )
       ;;@ assembly/index.ts:128:6
       (set_local $0
        ;;@ assembly/index.ts:128:17
        (call $assembly/index/readVaruint)
       )
       ;;@ assembly/index.ts:129:6
       (set_local $4
        ;;@ assembly/index.ts:129:17
        (get_global $assembly/index/off)
       )
       ;;@ assembly/index.ts:130:6
       (set_global $assembly/index/off
        (i32.add
         (get_global $assembly/index/off)
         (get_local $0)
        )
       )
       ;;@ assembly/index.ts:131:6
       (set_local $7
        (i32.sub
         (get_local $7)
         ;;@ assembly/index.ts:131:21
         (i32.sub
          (get_global $assembly/index/off)
          (get_local $5)
         )
        )
       )
      )
     )
     ;;@ assembly/index.ts:134:4
     (if
      (i32.and
       ;;@ assembly/index.ts:134:12
       (call $assembly/options/onSection
        (get_local $3)
        ;;@ assembly/index.ts:133:4
        (tee_local $5
         ;;@ assembly/index.ts:133:22
         (get_global $assembly/index/off)
        )
        (get_local $7)
        (get_local $4)
        (get_local $0)
       )
       (i32.const 1)
      )
      ;;@ assembly/index.ts:140:7
      (block $break|1
       (block $case12|1
        (block $case11|1
         (block $case8|1
          (block $case7|1
           (block $case6|1
            (block $case5|1
             (block $case4|1
              (block $case3|1
               (block $case2|1
                (block $case1|1
                 (if
                  (i32.ne
                   (get_local $3)
                   ;;@ assembly/index.ts:142:13
                   (get_global $src/common/SectionId.Type)
                  )
                  (block
                   (br_if $case1|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:171:13
                     (get_global $src/common/SectionId.Import)
                    )
                   )
                   (br_if $case2|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:239:13
                     (get_global $src/common/SectionId.Function)
                    )
                   )
                   (br_if $case3|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:250:13
                     (get_global $src/common/SectionId.Table)
                    )
                   )
                   (br_if $case4|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:267:13
                     (get_global $src/common/SectionId.Memory)
                    )
                   )
                   (br_if $case5|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:282:13
                     (get_global $src/common/SectionId.Global)
                    )
                   )
                   (br_if $case6|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:296:13
                     (get_global $src/common/SectionId.Export)
                    )
                   )
                   (br_if $case7|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:314:13
                     (get_global $src/common/SectionId.Start)
                    )
                   )
                   (br_if $case8|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:321:13
                     (get_global $src/common/SectionId.Custom)
                    )
                   )
                   (br_if $case11|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:394:13
                     (get_global $src/common/SectionId.Element)
                    )
                   )
                   (br_if $case11|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:395:13
                     (get_global $src/common/SectionId.Code)
                    )
                   )
                   (br_if $case11|1
                    (i32.eq
                     (get_local $3)
                     ;;@ assembly/index.ts:396:13
                     (get_global $src/common/SectionId.Data)
                    )
                   )
                   (br $case12|1)
                  )
                 )
                 ;;@ assembly/index.ts:143:10
                 (set_local $3
                  ;;@ assembly/index.ts:143:22
                  (call $assembly/index/readVaruint)
                 )
                 ;;@ assembly/index.ts:144:10
                 (block $break|2
                  ;;@ assembly/index.ts:144:15
                  (set_local $2
                   ;;@ assembly/index.ts:144:32
                   (i32.const 0)
                  )
                  (loop $repeat|2
                   (br_if $break|2
                    ;;@ assembly/index.ts:144:35
                    (i32.ge_u
                     (get_local $2)
                     (get_local $3)
                    )
                   )
                   ;;@ assembly/index.ts:145:12
                   (set_local $6
                    ;;@ assembly/index.ts:145:23
                    (i32.and
                     (call $assembly/index/readVarint
                      ;;@ assembly/index.ts:145:34
                      (i32.const 7)
                     )
                     ;;@ assembly/index.ts:145:39
                     (i32.const 127)
                    )
                   )
                   ;;@ assembly/index.ts:146:16
                   (call $assembly/options/onType
                    (get_local $2)
                    (get_local $6)
                   )
                   ;;@ assembly/index.ts:150:12
                   (set_local $5
                    ;;@ assembly/index.ts:150:29
                    (call $assembly/index/readVaruint)
                   )
                   ;;@ assembly/index.ts:151:12
                   (block $break|3
                    ;;@ assembly/index.ts:151:17
                    (set_local $8
                     ;;@ assembly/index.ts:151:39
                     (i32.const 0)
                    )
                    (loop $repeat|3
                     (br_if $break|3
                      ;;@ assembly/index.ts:151:42
                      (i32.ge_u
                       (get_local $8)
                       (get_local $5)
                      )
                     )
                     ;;@ assembly/index.ts:152:14
                     (set_local $4
                      ;;@ assembly/index.ts:152:30
                      (i32.and
                       (call $assembly/index/readVarint
                        ;;@ assembly/index.ts:152:41
                        (i32.const 7)
                       )
                       ;;@ assembly/index.ts:152:46
                       (i32.const 127)
                      )
                     )
                     ;;@ assembly/index.ts:153:18
                     (call $assembly/options/onTypeParam
                      (get_local $2)
                      (get_local $8)
                      (get_local $4)
                     )
                     ;;@ assembly/index.ts:151:67
                     (set_local $8
                      (i32.add
                       (get_local $8)
                       (i32.const 1)
                      )
                     )
                     (br $repeat|3)
                    )
                   )
                   ;;@ assembly/index.ts:159:12
                   (set_local $8
                    ;;@ assembly/index.ts:159:30
                    (call $assembly/index/readVaruint)
                   )
                   ;;@ assembly/index.ts:160:12
                   (block $break|4
                    ;;@ assembly/index.ts:160:17
                    (set_local $4
                     ;;@ assembly/index.ts:160:40
                     (i32.const 0)
                    )
                    (loop $repeat|4
                     (br_if $break|4
                      ;;@ assembly/index.ts:160:43
                      (i32.ge_u
                       (get_local $4)
                       (get_local $8)
                      )
                     )
                     ;;@ assembly/index.ts:161:14
                     (set_local $0
                      ;;@ assembly/index.ts:161:31
                      (i32.and
                       (call $assembly/index/readVarint
                        ;;@ assembly/index.ts:161:42
                        (i32.const 7)
                       )
                       ;;@ assembly/index.ts:161:47
                       (i32.const 127)
                      )
                     )
                     ;;@ assembly/index.ts:162:18
                     (call $assembly/options/onTypeReturn
                      (get_local $2)
                      (get_local $4)
                      (get_local $0)
                     )
                     ;;@ assembly/index.ts:160:70
                     (set_local $4
                      (i32.add
                       (get_local $4)
                       (i32.const 1)
                      )
                     )
                     (br $repeat|4)
                    )
                   )
                   ;;@ assembly/index.ts:144:50
                   (set_local $2
                    (i32.add
                     (get_local $2)
                     (i32.const 1)
                    )
                   )
                   (br $repeat|2)
                  )
                 )
                 ;;@ assembly/index.ts:169:10
                 (br $break|1)
                )
                ;;@ assembly/index.ts:172:10
                (set_local $3
                 ;;@ assembly/index.ts:172:22
                 (call $assembly/index/readVaruint)
                )
                ;;@ assembly/index.ts:173:10
                (block $break|5
                 ;;@ assembly/index.ts:173:15
                 (set_local $2
                  ;;@ assembly/index.ts:173:32
                  (i32.const 0)
                 )
                 (loop $repeat|5
                  (br_if $break|5
                   ;;@ assembly/index.ts:173:35
                   (i32.ge_u
                    (get_local $2)
                    (get_local $3)
                   )
                  )
                  ;;@ assembly/index.ts:174:12
                  (set_local $8
                   ;;@ assembly/index.ts:174:29
                   (call $assembly/index/readVaruint)
                  )
                  ;;@ assembly/index.ts:175:12
                  (set_local $5
                   ;;@ assembly/index.ts:175:29
                   (get_global $assembly/index/off)
                  )
                  ;;@ assembly/index.ts:176:12
                  (set_global $assembly/index/off
                   (i32.add
                    (get_global $assembly/index/off)
                    (get_local $8)
                   )
                  )
                  ;;@ assembly/index.ts:177:12
                  (set_local $6
                   ;;@ assembly/index.ts:177:28
                   (call $assembly/index/readVaruint)
                  )
                  ;;@ assembly/index.ts:178:12
                  (set_local $4
                   ;;@ assembly/index.ts:178:28
                   (get_global $assembly/index/off)
                  )
                  ;;@ assembly/index.ts:179:12
                  (set_global $assembly/index/off
                   (i32.add
                    (get_global $assembly/index/off)
                    (get_local $6)
                   )
                  )
                  ;;@ assembly/index.ts:180:12
                  (set_local $0
                   ;;@ assembly/index.ts:180:23
                   (call $assembly/index/readUint<u8>)
                  )
                  ;;@ assembly/index.ts:181:16
                  (call $assembly/options/onImport
                   (get_local $2)
                   (get_local $0)
                   (get_local $5)
                   (get_local $8)
                   (get_local $4)
                   (get_local $6)
                  )
                  ;;@ assembly/index.ts:189:12
                  (block $break|6
                   (block $case4|6
                    (block $case3|6
                     (block $case2|6
                      (block $case1|6
                       (if
                        (i32.ne
                         (tee_local $9
                          (get_local $0)
                         )
                         ;;@ assembly/index.ts:190:19
                         (get_global $src/common/ExternalKind.Function)
                        )
                        (block
                         (br_if $case1|6
                          (i32.eq
                           (get_local $9)
                           ;;@ assembly/index.ts:198:19
                           (get_global $src/common/ExternalKind.Table)
                          )
                         )
                         (br_if $case2|6
                          (i32.eq
                           (get_local $9)
                           ;;@ assembly/index.ts:212:19
                           (get_global $src/common/ExternalKind.Memory)
                          )
                         )
                         (br_if $case3|6
                          (i32.eq
                           (get_local $9)
                           ;;@ assembly/index.ts:224:19
                           (get_global $src/common/ExternalKind.Global)
                          )
                         )
                         (br $case4|6)
                        )
                       )
                       ;;@ assembly/index.ts:191:16
                       (set_local $9
                        ;;@ assembly/index.ts:191:27
                        (call $assembly/index/readVaruint)
                       )
                       (set_local $12
                        (i32.add
                         (tee_local $10
                          (get_local $12)
                         )
                         (i32.const 1)
                        )
                       )
                       ;;@ assembly/index.ts:192:20
                       (call $assembly/options/onFunctionImport
                        (get_local $10)
                        (get_local $9)
                       )
                       ;;@ assembly/index.ts:196:16
                       (br $break|6)
                      )
                      ;;@ assembly/index.ts:199:16
                      (set_local $9
                       ;;@ assembly/index.ts:199:27
                       (i32.and
                        (call $assembly/index/readVarint
                         ;;@ assembly/index.ts:199:38
                         (i32.const 7)
                        )
                        ;;@ assembly/index.ts:199:43
                        (i32.const 127)
                       )
                      )
                      ;;@ assembly/index.ts:200:16
                      (set_local $10
                       ;;@ assembly/index.ts:200:28
                       (call $assembly/index/readVaruint)
                      )
                      ;;@ assembly/index.ts:201:16
                      (set_local $11
                       ;;@ assembly/index.ts:201:30
                       (call $assembly/index/readVaruint)
                      )
                      (set_local $7
                       ;;@ assembly/index.ts:202:30
                       (if (result i32)
                        (i32.and
                         (get_local $10)
                         ;;@ assembly/index.ts:202:38
                         (i32.const 1)
                        )
                        ;;@ assembly/index.ts:202:42
                        (call $assembly/index/readVaruint)
                        (i32.const -1)
                       )
                      )
                      (set_local $15
                       (i32.add
                        (tee_local $0
                         (get_local $15)
                        )
                        (i32.const 1)
                       )
                      )
                      ;;@ assembly/index.ts:203:20
                      (call $assembly/options/onTableImport
                       (get_local $0)
                       (get_local $9)
                       (get_local $11)
                       (get_local $7)
                       (get_local $10)
                      )
                      ;;@ assembly/index.ts:210:16
                      (br $break|6)
                     )
                     ;;@ assembly/index.ts:213:16
                     (set_local $7
                      ;;@ assembly/index.ts:213:28
                      (call $assembly/index/readVaruint)
                     )
                     ;;@ assembly/index.ts:214:16
                     (set_local $11
                      ;;@ assembly/index.ts:214:30
                      (call $assembly/index/readVaruint)
                     )
                     (set_local $10
                      ;;@ assembly/index.ts:215:30
                      (if (result i32)
                       (i32.and
                        (get_local $7)
                        ;;@ assembly/index.ts:215:38
                        (i32.const 1)
                       )
                       ;;@ assembly/index.ts:215:42
                       (call $assembly/index/readVaruint)
                       (i32.const 65535)
                      )
                     )
                     (set_local $14
                      (i32.add
                       (tee_local $9
                        (get_local $14)
                       )
                       (i32.const 1)
                      )
                     )
                     ;;@ assembly/index.ts:216:20
                     (call $assembly/options/onMemoryImport
                      (get_local $9)
                      (get_local $11)
                      (get_local $10)
                      (get_local $7)
                     )
                     ;;@ assembly/index.ts:222:16
                     (br $break|6)
                    )
                    ;;@ assembly/index.ts:225:16
                    (set_local $10
                     ;;@ assembly/index.ts:225:27
                     (i32.and
                      (call $assembly/index/readVarint
                       ;;@ assembly/index.ts:225:38
                       (i32.const 7)
                      )
                      ;;@ assembly/index.ts:225:43
                      (i32.const 127)
                     )
                    )
                    ;;@ assembly/index.ts:226:16
                    (set_local $11
                     ;;@ assembly/index.ts:226:33
                     (call $assembly/index/readVaruint)
                    )
                    (set_local $13
                     (i32.add
                      (tee_local $7
                       (get_local $13)
                      )
                      (i32.const 1)
                     )
                    )
                    ;;@ assembly/index.ts:227:20
                    (call $assembly/options/onGlobalImport
                     (get_local $7)
                     (get_local $10)
                     (get_local $11)
                    )
                    ;;@ assembly/index.ts:232:16
                    (br $break|6)
                   )
                   ;;@ assembly/index.ts:234:23
                   (unreachable)
                  )
                  ;;@ assembly/index.ts:173:50
                  (set_local $2
                   (i32.add
                    (get_local $2)
                    (i32.const 1)
                   )
                  )
                  (br $repeat|5)
                 )
                )
                ;;@ assembly/index.ts:237:10
                (br $break|1)
               )
               ;;@ assembly/index.ts:240:10
               (set_local $3
                ;;@ assembly/index.ts:240:22
                (call $assembly/index/readVaruint)
               )
               ;;@ assembly/index.ts:241:10
               (block $break|7
                ;;@ assembly/index.ts:241:15
                (set_local $2
                 ;;@ assembly/index.ts:241:28
                 (i32.const 0)
                )
                (loop $repeat|7
                 (br_if $break|7
                  ;;@ assembly/index.ts:241:31
                  (i32.ge_u
                   (get_local $2)
                   (get_local $3)
                  )
                 )
                 ;;@ assembly/index.ts:242:12
                 (set_local $0
                  ;;@ assembly/index.ts:242:28
                  (call $assembly/index/readVaruint)
                 )
                 (set_local $12
                  (i32.add
                   (tee_local $4
                    (get_local $12)
                   )
                   (i32.const 1)
                  )
                 )
                 ;;@ assembly/index.ts:243:16
                 (call $assembly/options/onFunction
                  (get_local $4)
                  (get_local $0)
                 )
                 ;;@ assembly/index.ts:241:42
                 (set_local $2
                  (i32.add
                   (get_local $2)
                   (i32.const 1)
                  )
                 )
                 (br $repeat|7)
                )
               )
               ;;@ assembly/index.ts:248:10
               (br $break|1)
              )
              ;;@ assembly/index.ts:251:10
              (set_local $3
               ;;@ assembly/index.ts:251:22
               (call $assembly/index/readVaruint)
              )
              ;;@ assembly/index.ts:252:10
              (block $break|8
               ;;@ assembly/index.ts:252:15
               (set_local $2
                ;;@ assembly/index.ts:252:32
                (i32.const 0)
               )
               (loop $repeat|8
                (br_if $break|8
                 ;;@ assembly/index.ts:252:35
                 (i32.ge_u
                  (get_local $2)
                  (get_local $3)
                 )
                )
                ;;@ assembly/index.ts:253:12
                (set_local $0
                 ;;@ assembly/index.ts:253:23
                 (i32.and
                  (call $assembly/index/readVaruint)
                  ;;@ assembly/index.ts:253:40
                  (i32.const 127)
                 )
                )
                ;;@ assembly/index.ts:254:12
                (set_local $4
                 ;;@ assembly/index.ts:254:24
                 (call $assembly/index/readVaruint)
                )
                ;;@ assembly/index.ts:255:12
                (set_local $6
                 ;;@ assembly/index.ts:255:26
                 (call $assembly/index/readVaruint)
                )
                (set_local $5
                 ;;@ assembly/index.ts:256:26
                 (if (result i32)
                  (i32.and
                   (get_local $4)
                   ;;@ assembly/index.ts:256:34
                   (i32.const 1)
                  )
                  ;;@ assembly/index.ts:256:38
                  (call $assembly/index/readVaruint)
                  (i32.const -1)
                 )
                )
                (set_local $15
                 (i32.add
                  (tee_local $8
                   (get_local $15)
                  )
                  (i32.const 1)
                 )
                )
                ;;@ assembly/index.ts:257:16
                (call $assembly/options/onTable
                 (get_local $8)
                 (get_local $0)
                 (get_local $6)
                 (get_local $5)
                 (get_local $4)
                )
                ;;@ assembly/index.ts:252:50
                (set_local $2
                 (i32.add
                  (get_local $2)
                  (i32.const 1)
                 )
                )
                (br $repeat|8)
               )
              )
              ;;@ assembly/index.ts:265:10
              (br $break|1)
             )
             ;;@ assembly/index.ts:268:10
             (set_local $3
              ;;@ assembly/index.ts:268:22
              (call $assembly/index/readVaruint)
             )
             ;;@ assembly/index.ts:269:10
             (block $break|9
              ;;@ assembly/index.ts:269:15
              (set_local $2
               ;;@ assembly/index.ts:269:32
               (i32.const 0)
              )
              (loop $repeat|9
               (br_if $break|9
                ;;@ assembly/index.ts:269:35
                (i32.ge_u
                 (get_local $2)
                 (get_local $3)
                )
               )
               ;;@ assembly/index.ts:270:12
               (set_local $5
                ;;@ assembly/index.ts:270:24
                (call $assembly/index/readVaruint)
               )
               ;;@ assembly/index.ts:271:12
               (set_local $6
                ;;@ assembly/index.ts:271:26
                (call $assembly/index/readVaruint)
               )
               (set_local $4
                ;;@ assembly/index.ts:272:26
                (if (result i32)
                 (i32.and
                  (get_local $5)
                  ;;@ assembly/index.ts:272:34
                  (i32.const 1)
                 )
                 ;;@ assembly/index.ts:272:38
                 (call $assembly/index/readVaruint)
                 (i32.const 65535)
                )
               )
               (set_local $14
                (i32.add
                 (tee_local $0
                  (get_local $14)
                 )
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:273:16
               (call $assembly/options/onMemory
                (get_local $0)
                (get_local $6)
                (get_local $4)
                (get_local $5)
               )
               ;;@ assembly/index.ts:269:50
               (set_local $2
                (i32.add
                 (get_local $2)
                 (i32.const 1)
                )
               )
               (br $repeat|9)
              )
             )
             ;;@ assembly/index.ts:280:10
             (br $break|1)
            )
            ;;@ assembly/index.ts:283:10
            (set_local $3
             ;;@ assembly/index.ts:283:22
             (call $assembly/index/readVaruint)
            )
            ;;@ assembly/index.ts:284:10
            (block $break|10
             ;;@ assembly/index.ts:284:15
             (set_local $2
              ;;@ assembly/index.ts:284:28
              (i32.const 0)
             )
             (loop $repeat|10
              (br_if $break|10
               ;;@ assembly/index.ts:284:31
               (i32.ge_u
                (get_local $2)
                (get_local $3)
               )
              )
              ;;@ assembly/index.ts:285:12
              (set_local $4
               ;;@ assembly/index.ts:285:23
               (i32.and
                (call $assembly/index/readVarint
                 ;;@ assembly/index.ts:285:34
                 (i32.const 7)
                )
                ;;@ assembly/index.ts:285:39
                (i32.const 127)
               )
              )
              ;;@ assembly/index.ts:286:12
              (set_local $6
               ;;@ assembly/index.ts:286:29
               (call $assembly/index/readVaruint)
              )
              ;;@ assembly/index.ts:287:12
              (call $assembly/index/skipInitExpr)
              (set_local $13
               (i32.add
                (tee_local $5
                 (get_local $13)
                )
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:288:16
              (call $assembly/options/onGlobal
               (get_local $5)
               (get_local $4)
               (get_local $6)
              )
              ;;@ assembly/index.ts:284:42
              (set_local $2
               (i32.add
                (get_local $2)
                (i32.const 1)
               )
              )
              (br $repeat|10)
             )
            )
            ;;@ assembly/index.ts:294:10
            (br $break|1)
           )
           ;;@ assembly/index.ts:297:10
           (set_local $3
            ;;@ assembly/index.ts:297:22
            (call $assembly/index/readVaruint)
           )
           ;;@ assembly/index.ts:298:10
           (block $break|11
            ;;@ assembly/index.ts:298:15
            (set_local $2
             ;;@ assembly/index.ts:298:32
             (i32.const 0)
            )
            (loop $repeat|11
             (br_if $break|11
              ;;@ assembly/index.ts:298:35
              (i32.ge_u
               (get_local $2)
               (get_local $3)
              )
             )
             ;;@ assembly/index.ts:299:12
             (set_local $6
              ;;@ assembly/index.ts:299:28
              (call $assembly/index/readVaruint)
             )
             ;;@ assembly/index.ts:300:12
             (set_local $4
              ;;@ assembly/index.ts:300:28
              (get_global $assembly/index/off)
             )
             ;;@ assembly/index.ts:301:12
             (set_global $assembly/index/off
              (i32.add
               (get_global $assembly/index/off)
               (get_local $6)
              )
             )
             ;;@ assembly/index.ts:302:12
             (set_local $5
              ;;@ assembly/index.ts:302:23
              (call $assembly/index/readUint<u8>)
             )
             ;;@ assembly/index.ts:303:12
             (set_local $0
              ;;@ assembly/index.ts:303:29
              (call $assembly/index/readVaruint)
             )
             ;;@ assembly/index.ts:304:16
             (call $assembly/options/onExport
              (get_local $2)
              (get_local $5)
              (get_local $0)
              (get_local $4)
              (get_local $6)
             )
             ;;@ assembly/index.ts:298:50
             (set_local $2
              (i32.add
               (get_local $2)
               (i32.const 1)
              )
             )
             (br $repeat|11)
            )
           )
           ;;@ assembly/index.ts:312:10
           (br $break|1)
          )
          ;;@ assembly/index.ts:316:14
          (call $assembly/options/onStart
           ;;@ assembly/index.ts:315:22
           (call $assembly/index/readVaruint)
          )
          ;;@ assembly/index.ts:319:10
          (br $break|1)
         )
         ;;@ assembly/index.ts:323:12
         (if
          (tee_local $3
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:323:24
            (i32.const 4)
           )
          )
          (set_local $3
           ;;@ assembly/index.ts:324:12
           (i32.eq
            (i32.load
             (get_local $4)
            )
            ;;@ assembly/index.ts:324:35
            (i32.const 1701667182)
           )
          )
         )
         ;;@ assembly/index.ts:322:10
         (if
          (get_local $3)
          ;;@ assembly/index.ts:325:12
          (block
           ;;@ assembly/index.ts:326:12
           (set_local $3
            ;;@ assembly/index.ts:326:28
            (call $assembly/index/readVaruint)
           )
           ;;@ assembly/index.ts:327:12
           (set_local $2
            ;;@ assembly/index.ts:327:35
            (call $assembly/index/readVaruint)
           )
           ;;@ assembly/index.ts:328:12
           (set_local $0
            ;;@ assembly/index.ts:328:35
            (get_global $assembly/index/off)
           )
           ;;@ assembly/index.ts:329:12
           (block $break|12
            (block $case3|12
             (block $case2|12
              (block $case1|12
               (if
                (i32.ne
                 (tee_local $5
                  (get_local $3)
                 )
                 ;;@ assembly/index.ts:330:19
                 (get_global $src/common/NameType.Module)
                )
                (block
                 (br_if $case1|12
                  (i32.eq
                   (get_local $5)
                   ;;@ assembly/index.ts:339:19
                   (get_global $src/common/NameType.Function)
                  )
                 )
                 (br_if $case2|12
                  (i32.eq
                   (get_local $5)
                   ;;@ assembly/index.ts:354:19
                   (get_global $src/common/NameType.Local)
                  )
                 )
                 (br $case3|12)
                )
               )
               ;;@ assembly/index.ts:331:16
               (set_local $5
                ;;@ assembly/index.ts:331:38
                (call $assembly/index/readVaruint)
               )
               ;;@ assembly/index.ts:333:20
               (call $assembly/options/onModuleName
                ;;@ assembly/index.ts:332:38
                (get_global $assembly/index/off)
                (get_local $5)
               )
               ;;@ assembly/index.ts:337:16
               (br $break|12)
              )
              ;;@ assembly/index.ts:340:16
              (set_local $4
               ;;@ assembly/index.ts:340:28
               (call $assembly/index/readVaruint)
              )
              ;;@ assembly/index.ts:341:16
              (block $break|13
               ;;@ assembly/index.ts:341:21
               (set_local $5
                ;;@ assembly/index.ts:341:34
                (i32.const 0)
               )
               (loop $repeat|13
                (br_if $break|13
                 ;;@ assembly/index.ts:341:37
                 (i32.ge_u
                  (get_local $5)
                  (get_local $4)
                 )
                )
                ;;@ assembly/index.ts:342:18
                (set_local $6
                 ;;@ assembly/index.ts:342:33
                 (call $assembly/index/readVaruint)
                )
                ;;@ assembly/index.ts:343:18
                (set_local $8
                 ;;@ assembly/index.ts:343:36
                 (call $assembly/index/readVaruint)
                )
                ;;@ assembly/index.ts:344:18
                (set_local $11
                 ;;@ assembly/index.ts:344:36
                 (get_global $assembly/index/off)
                )
                ;;@ assembly/index.ts:345:18
                (set_global $assembly/index/off
                 (i32.add
                  (get_global $assembly/index/off)
                  (get_local $8)
                 )
                )
                ;;@ assembly/index.ts:346:22
                (call $assembly/options/onFunctionName
                 (get_local $6)
                 (get_local $11)
                 (get_local $8)
                )
                ;;@ assembly/index.ts:341:48
                (set_local $5
                 (i32.add
                  (get_local $5)
                  (i32.const 1)
                 )
                )
                (br $repeat|13)
               )
              )
              ;;@ assembly/index.ts:352:16
              (br $break|12)
             )
             ;;@ assembly/index.ts:355:16
             (set_local $4
              ;;@ assembly/index.ts:355:28
              (call $assembly/index/readVaruint)
             )
             ;;@ assembly/index.ts:356:16
             (block $break|14
              ;;@ assembly/index.ts:356:21
              (set_local $5
               ;;@ assembly/index.ts:356:34
               (i32.const 0)
              )
              (loop $repeat|14
               (br_if $break|14
                ;;@ assembly/index.ts:356:37
                (i32.ge_u
                 (get_local $5)
                 (get_local $4)
                )
               )
               ;;@ assembly/index.ts:357:18
               (set_local $11
                ;;@ assembly/index.ts:357:33
                (call $assembly/index/readVaruint)
               )
               ;;@ assembly/index.ts:358:18
               (set_local $8
                ;;@ assembly/index.ts:358:33
                (call $assembly/index/readVaruint)
               )
               ;;@ assembly/index.ts:359:18
               (block $break|15
                ;;@ assembly/index.ts:359:23
                (set_local $6
                 ;;@ assembly/index.ts:359:36
                 (i32.const 0)
                )
                (loop $repeat|15
                 (br_if $break|15
                  ;;@ assembly/index.ts:359:39
                  (i32.ge_u
                   (get_local $6)
                   (get_local $8)
                  )
                 )
                 ;;@ assembly/index.ts:360:20
                 (set_local $10
                  ;;@ assembly/index.ts:360:35
                  (call $assembly/index/readVaruint)
                 )
                 ;;@ assembly/index.ts:361:20
                 (set_local $7
                  ;;@ assembly/index.ts:361:38
                  (call $assembly/index/readVaruint)
                 )
                 ;;@ assembly/index.ts:362:20
                 (set_local $9
                  ;;@ assembly/index.ts:362:38
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:363:20
                 (set_global $assembly/index/off
                  (i32.add
                   (get_global $assembly/index/off)
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:364:24
                 (call $assembly/options/onLocalName
                  (get_local $11)
                  (get_local $10)
                  (get_local $9)
                  (get_local $7)
                 )
                 ;;@ assembly/index.ts:359:53
                 (set_local $6
                  (i32.add
                   (get_local $6)
                   (i32.const 1)
                  )
                 )
                 (br $repeat|15)
                )
               )
               ;;@ assembly/index.ts:356:48
               (set_local $5
                (i32.add
                 (get_local $5)
                 (i32.const 1)
                )
               )
               (br $repeat|14)
              )
             )
             ;;@ assembly/index.ts:372:16
             (br $break|12)
            )
            ;;@ assembly/index.ts:374:23
            (unreachable)
           )
           ;;@ assembly/index.ts:376:12
           (set_global $assembly/index/off
            ;;@ assembly/index.ts:376:18
            (i32.add
             (get_local $0)
             (get_local $2)
            )
           )
           ;;@ assembly/index.ts:377:12
           (br $break|1)
          )
          (block
           ;;@ assembly/index.ts:379:12
           (if
            (tee_local $0
             (i32.eq
              (get_local $0)
              ;;@ assembly/index.ts:379:24
              (i32.const 16)
             )
            )
            (set_local $0
             ;;@ assembly/index.ts:380:12
             (i64.eq
              (i64.load
               (get_local $4)
              )
              ;;@ assembly/index.ts:380:39
              (i64.const 7011371672682196851)
             )
            )
           )
           ;;@ assembly/index.ts:379:12
           (if
            (get_local $0)
            (set_local $0
             ;;@ assembly/index.ts:381:12
             (i64.eq
              (i64.load
               ;;@ assembly/index.ts:381:22
               (i32.add
                (get_local $4)
                ;;@ assembly/index.ts:381:33
                (i32.const 8)
               )
              )
              ;;@ assembly/index.ts:381:39
              (i64.const 5499551997695193200)
             )
            )
           )
           ;;@ assembly/index.ts:378:17
           (if
            (get_local $0)
            ;;@ assembly/index.ts:382:12
            (block
             ;;@ assembly/index.ts:383:12
             (set_local $0
              ;;@ assembly/index.ts:383:26
              (call $assembly/index/readVaruint)
             )
             ;;@ assembly/index.ts:384:12
             (set_local $2
              ;;@ assembly/index.ts:384:26
              (get_global $assembly/index/off)
             )
             ;;@ assembly/index.ts:385:12
             (set_global $assembly/index/off
              (i32.add
               (get_global $assembly/index/off)
               (get_local $0)
              )
             )
             ;;@ assembly/index.ts:386:16
             (call $assembly/options/onSourceMappingURL
              (get_local $2)
              (get_local $0)
             )
            )
           )
          )
         )
         ;;@ assembly/index.ts:391:10
         (set_global $assembly/index/off
          ;;@ assembly/index.ts:391:16
          (i32.add
           (get_local $5)
           (get_local $7)
          )
         )
         ;;@ assembly/index.ts:392:10
         (br $break|1)
        )
        ;;@ assembly/index.ts:397:10
        (set_global $assembly/index/off
         (i32.add
          (get_global $assembly/index/off)
          (get_local $7)
         )
        )
        ;;@ assembly/index.ts:398:10
        (br $break|1)
       )
       ;;@ assembly/index.ts:400:17
       (unreachable)
      )
      ;;@ assembly/index.ts:402:11
      (set_global $assembly/index/off
       (i32.add
        ;;@ assembly/index.ts:403:6
        (get_global $assembly/index/off)
        (get_local $7)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:406:2
  (if
   ;;@ assembly/index.ts:406:6
   (i32.ne
    (get_global $assembly/index/off)
    (get_local $1)
   )
   ;;@ assembly/index.ts:406:18
   (unreachable)
  )
 )
 (func $null (; 27 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
