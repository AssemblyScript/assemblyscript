(module
 (type $iiv (func (param i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiiiv (func (param i32 i32 i32 i32 i32 i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $I (func (result i64)))
 (type $iv (func (param i32)))
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
 (import "options" "onMemory" (func $assembly/options/onMemory (param i32 i32 i32 i32)))
 (import "options" "onGlobal" (func $assembly/options/onGlobal (param i32 i32 i32)))
 (import "options" "onExport" (func $assembly/options/onExport (param i32 i32 i32 i32 i32)))
 (import "options" "onStart" (func $assembly/options/onStart (param i32)))
 (import "options" "onModuleName" (func $assembly/options/onModuleName (param i32 i32)))
 (import "options" "onFunctionName" (func $assembly/options/onFunctionName (param i32 i32 i32)))
 (import "options" "onLocalName" (func $assembly/options/onLocalName (param i32 i32 i32 i32)))
 (import "options" "onSourceMappingURL" (func $assembly/options/onSourceMappingURL (param i32 i32)))
 (import "env" "memory" (memory $0 0))
 (global $assembly/index/off (mut i32) (i32.const 0))
 (export "parse" (func $assembly/index/parse))
 (export "memory" (memory $0))
 (func $assembly/index/readVaruint (; 18 ;) (type $ii) (param $0 i32) (result i32)
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
      (tee_local $3
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    ;;@ assembly/index.ts:43:4
    (set_local $1
     (i32.or
      (get_local $1)
      ;;@ assembly/index.ts:43:11
      (i32.shl
       (i32.and
        ;;@ assembly/index.ts:42:4
        (tee_local $3
         ;;@ assembly/index.ts:42:10
         (i32.load8_u
          (get_local $3)
         )
        )
        ;;@ assembly/index.ts:43:18
        (i32.const 127)
       )
       (get_local $2)
      )
     )
    )
    ;;@ assembly/index.ts:44:23
    (br_if $break|0
     ;;@ assembly/index.ts:44:8
     (i32.eqz
      ;;@ assembly/index.ts:44:9
      (i32.and
       (get_local $3)
       ;;@ assembly/index.ts:44:16
       (i32.const 128)
      )
     )
    )
    ;;@ assembly/index.ts:45:4
    (set_local $2
     (i32.add
      (get_local $2)
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
  (get_local $1)
 )
 (func $assembly/index/readVarint (; 19 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $assembly/index/readVarint64 (; 20 ;) (type $I) (result i64)
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
 (func $assembly/index/skipInitExpr (; 21 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  ;;@ assembly/index.ts:83:2
  (block $break|0
   (block $case5|0
    (block $case4|0
     (block $case3|0
      (block $case2|0
       (block $case1|0
        (set_local $0
         (i32.load8_u
          (tee_local $1
           (get_global $assembly/index/off)
          )
         )
        )
        (set_global $assembly/index/off
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (if
         (i32.ne
          (get_local $0)
          ;;@ assembly/index.ts:84:9
          (i32.const 65)
         )
         (block
          (br_if $case1|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:88:9
            (i32.const 66)
           )
          )
          (br_if $case2|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:92:9
            (i32.const 67)
           )
          )
          (br_if $case3|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:96:9
            (i32.const 68)
           )
          )
          (br_if $case4|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:100:9
            (i32.const 35)
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
      (drop
       (i32.load
        (tee_local $0
         (get_global $assembly/index/off)
        )
       )
      )
      (set_global $assembly/index/off
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      ;;@ assembly/index.ts:94:6
      (br $break|0)
     )
     (drop
      (i64.load
       (tee_local $0
        (get_global $assembly/index/off)
       )
      )
     )
     (set_global $assembly/index/off
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     ;;@ assembly/index.ts:98:6
     (br $break|0)
    )
    ;;@ assembly/index.ts:101:6
    (drop
     (call $assembly/index/readVaruint
      ;;@ assembly/index.ts:101:18
      (i32.const 32)
     )
    )
    ;;@ assembly/index.ts:102:6
    (br $break|0)
   )
   ;;@ assembly/index.ts:104:13
   (unreachable)
  )
  (set_local $0
   (i32.load8_u
    (tee_local $1
     (get_global $assembly/index/off)
    )
   )
  )
  (set_global $assembly/index/off
   (i32.add
    (get_local $1)
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:106:2
  (if
   ;;@ assembly/index.ts:106:6
   (i32.ne
    (get_local $0)
    ;;@ assembly/index.ts:106:24
    (i32.const 11)
   )
   ;;@ assembly/index.ts:106:36
   (unreachable)
  )
 )
 (func $assembly/index/parse (; 22 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  ;;@ assembly/index.ts:111:2
  (set_global $assembly/index/off
   (get_local $0)
  )
  (set_local $2
   (i32.load
    (tee_local $0
     (get_global $assembly/index/off)
    )
   )
  )
  (set_global $assembly/index/off
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  ;;@ assembly/index.ts:113:2
  (if
   ;;@ assembly/index.ts:113:6
   (i32.ne
    (get_local $2)
    ;;@ assembly/index.ts:113:15
    (i32.const 1836278016)
   )
   ;;@ assembly/index.ts:113:27
   (unreachable)
  )
  (set_local $2
   (i32.load
    (tee_local $0
     (get_global $assembly/index/off)
    )
   )
  )
  (set_global $assembly/index/off
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  ;;@ assembly/index.ts:115:2
  (if
   ;;@ assembly/index.ts:115:6
   (i32.ne
    (get_local $2)
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
     (set_local $4
      ;;@ assembly/index.ts:122:13
      (call $assembly/index/readVaruint
       ;;@ assembly/index.ts:122:25
       (i32.const 7)
      )
     )
     ;;@ assembly/index.ts:123:4
     (set_local $2
      ;;@ assembly/index.ts:123:22
      (call $assembly/index/readVaruint
       ;;@ assembly/index.ts:123:34
       (i32.const 32)
      )
     )
     ;;@ assembly/index.ts:124:4
     (set_local $6
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
      (get_local $4)
      ;;@ assembly/index.ts:132:11
      (if
       ;;@ assembly/index.ts:132:15
       (i32.gt_u
        (get_local $4)
        ;;@ assembly/index.ts:132:20
        (i32.const 11)
       )
       ;;@ assembly/index.ts:132:41
       (unreachable)
      )
      ;;@ assembly/index.ts:126:13
      (block
       ;;@ assembly/index.ts:127:6
       (set_local $8
        ;;@ assembly/index.ts:127:19
        (get_global $assembly/index/off)
       )
       ;;@ assembly/index.ts:128:6
       (set_local $0
        ;;@ assembly/index.ts:128:17
        (call $assembly/index/readVaruint
         ;;@ assembly/index.ts:128:29
         (i32.const 32)
        )
       )
       ;;@ assembly/index.ts:129:6
       (set_local $6
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
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ assembly/index.ts:131:21
         (i32.sub
          (get_global $assembly/index/off)
          (get_local $8)
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
        (get_local $4)
        ;;@ assembly/index.ts:133:4
        (tee_local $8
         ;;@ assembly/index.ts:133:22
         (get_global $assembly/index/off)
        )
        (get_local $2)
        (get_local $6)
        (get_local $0)
       )
       (i32.const 1)
      )
      ;;@ assembly/index.ts:140:7
      (block $break|1
       (block $case11|1
        (block $case10|1
         (block $case7|1
          (block $case6|1
           (block $case5|1
            (block $case4|1
             (block $case3|1
              (block $case2|1
               (block $case1|1
                (if
                 (i32.ne
                  (get_local $4)
                  ;;@ assembly/index.ts:142:13
                  (i32.const 1)
                 )
                 (block
                  (block $tablify|0
                   (br_table $case1|1 $case2|1 $tablify|0 $case3|1 $case4|1 $case5|1 $case6|1 $tablify|0
                    (i32.sub
                     (get_local $4)
                     (i32.const 2)
                    )
                   )
                  )
                  (br_if $case7|1
                   (i32.eqz
                    (get_local $4)
                   )
                  )
                  (block $tablify|00
                   (br_table $case10|1 $case10|1 $case10|1 $tablify|00
                    (i32.sub
                     (get_local $4)
                     (i32.const 9)
                    )
                   )
                  )
                  (br $case11|1)
                 )
                )
                ;;@ assembly/index.ts:143:10
                (set_local $4
                 ;;@ assembly/index.ts:143:22
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:143:34
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:144:10
                (block $break|2
                 ;;@ assembly/index.ts:144:15
                 (set_local $3
                  ;;@ assembly/index.ts:144:32
                  (i32.const 0)
                 )
                 (loop $repeat|2
                  (br_if $break|2
                   ;;@ assembly/index.ts:144:35
                   (i32.ge_u
                    (get_local $3)
                    (get_local $4)
                   )
                  )
                  ;;@ assembly/index.ts:146:16
                  (call $assembly/options/onType
                   (get_local $3)
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
                  ;;@ assembly/index.ts:150:12
                  (set_local $0
                   ;;@ assembly/index.ts:150:29
                   (call $assembly/index/readVaruint
                    ;;@ assembly/index.ts:150:41
                    (i32.const 32)
                   )
                  )
                  ;;@ assembly/index.ts:151:12
                  (block $break|3
                   ;;@ assembly/index.ts:151:17
                   (set_local $7
                    ;;@ assembly/index.ts:151:39
                    (i32.const 0)
                   )
                   (loop $repeat|3
                    (br_if $break|3
                     ;;@ assembly/index.ts:151:42
                     (i32.ge_u
                      (get_local $7)
                      (get_local $0)
                     )
                    )
                    ;;@ assembly/index.ts:153:18
                    (call $assembly/options/onTypeParam
                     (get_local $3)
                     (get_local $7)
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
                    ;;@ assembly/index.ts:151:67
                    (set_local $7
                     (i32.add
                      (get_local $7)
                      (i32.const 1)
                     )
                    )
                    (br $repeat|3)
                   )
                  )
                  ;;@ assembly/index.ts:159:12
                  (set_local $7
                   ;;@ assembly/index.ts:159:30
                   (call $assembly/index/readVaruint
                    ;;@ assembly/index.ts:159:42
                    (i32.const 1)
                   )
                  )
                  ;;@ assembly/index.ts:160:12
                  (block $break|4
                   ;;@ assembly/index.ts:160:17
                   (set_local $5
                    ;;@ assembly/index.ts:160:40
                    (i32.const 0)
                   )
                   (loop $repeat|4
                    (br_if $break|4
                     ;;@ assembly/index.ts:160:43
                     (i32.ge_u
                      (get_local $5)
                      (get_local $7)
                     )
                    )
                    ;;@ assembly/index.ts:162:18
                    (call $assembly/options/onTypeReturn
                     (get_local $3)
                     (get_local $5)
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
                    ;;@ assembly/index.ts:160:70
                    (set_local $5
                     (i32.add
                      (get_local $5)
                      (i32.const 1)
                     )
                    )
                    (br $repeat|4)
                   )
                  )
                  ;;@ assembly/index.ts:144:50
                  (set_local $3
                   (i32.add
                    (get_local $3)
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
               (set_local $4
                ;;@ assembly/index.ts:172:22
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:172:34
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:173:10
               (block $break|5
                ;;@ assembly/index.ts:173:15
                (set_local $3
                 ;;@ assembly/index.ts:173:32
                 (i32.const 0)
                )
                (loop $repeat|5
                 (br_if $break|5
                  ;;@ assembly/index.ts:173:35
                  (i32.ge_u
                   (get_local $3)
                   (get_local $4)
                  )
                 )
                 ;;@ assembly/index.ts:174:12
                 (set_local $7
                  ;;@ assembly/index.ts:174:29
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:174:41
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:175:12
                 (set_local $0
                  ;;@ assembly/index.ts:175:29
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:176:12
                 (set_global $assembly/index/off
                  (i32.add
                   (get_global $assembly/index/off)
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:177:12
                 (set_local $9
                  ;;@ assembly/index.ts:177:28
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:177:40
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:178:12
                 (set_local $5
                  ;;@ assembly/index.ts:178:28
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:179:12
                 (set_global $assembly/index/off
                  (i32.add
                   (get_global $assembly/index/off)
                   (get_local $9)
                  )
                 )
                 (set_local $2
                  (i32.load8_u
                   (tee_local $6
                    (get_global $assembly/index/off)
                   )
                  )
                 )
                 (set_global $assembly/index/off
                  (i32.add
                   (get_local $6)
                   (i32.const 1)
                  )
                 )
                 ;;@ assembly/index.ts:181:16
                 (call $assembly/options/onImport
                  (get_local $3)
                  (get_local $2)
                  (get_local $0)
                  (get_local $7)
                  (get_local $5)
                  (get_local $9)
                 )
                 ;;@ assembly/index.ts:189:12
                 (block $break|6
                  (block $case4|6
                   (block $case3|6
                    (block $case2|6
                     (block $case1|6
                      (if
                       (tee_local $6
                        (get_local $2)
                       )
                       (block
                        (block $tablify|01
                         (br_table $case1|6 $case2|6 $case3|6 $tablify|01
                          (i32.sub
                           (get_local $6)
                           (i32.const 1)
                          )
                         )
                        )
                        (br $case4|6)
                       )
                      )
                      (set_local $11
                       (i32.add
                        (tee_local $8
                         (get_local $11)
                        )
                        (i32.const 1)
                       )
                      )
                      ;;@ assembly/index.ts:192:20
                      (call $assembly/options/onFunctionImport
                       (get_local $8)
                       ;;@ assembly/index.ts:191:27
                       (call $assembly/index/readVaruint
                        ;;@ assembly/index.ts:191:39
                        (i32.const 32)
                       )
                      )
                      ;;@ assembly/index.ts:196:16
                      (br $break|6)
                     )
                     ;;@ assembly/index.ts:199:16
                     (set_local $6
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
                     (set_local $8
                      ;;@ assembly/index.ts:200:28
                      (call $assembly/index/readVaruint
                       ;;@ assembly/index.ts:200:40
                       (i32.const 1)
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
                     ;;@ assembly/index.ts:203:20
                     (call $assembly/options/onTableImport
                      (get_local $0)
                      (get_local $6)
                      (tee_local $2
                       ;;@ assembly/index.ts:201:30
                       (call $assembly/index/readVaruint
                        ;;@ assembly/index.ts:201:42
                        (i32.const 32)
                       )
                      )
                      (tee_local $10
                       ;;@ assembly/index.ts:202:35
                       (if (result i32)
                        (i32.and
                         (get_local $8)
                         ;;@ assembly/index.ts:202:43
                         (i32.const 1)
                        )
                        ;;@ assembly/index.ts:202:47
                        (call $assembly/index/readVaruint
                         ;;@ assembly/index.ts:202:59
                         (i32.const 32)
                        )
                        ;;@ assembly/index.ts:202:65
                        (i32.const 1)
                       )
                      )
                      (get_local $8)
                     )
                     ;;@ assembly/index.ts:210:16
                     (br $break|6)
                    )
                    ;;@ assembly/index.ts:213:16
                    (set_local $10
                     ;;@ assembly/index.ts:213:28
                     (call $assembly/index/readVaruint
                      ;;@ assembly/index.ts:213:40
                      (i32.const 1)
                     )
                    )
                    (set_local $12
                     (i32.add
                      (tee_local $6
                       (get_local $12)
                      )
                      (i32.const 1)
                     )
                    )
                    ;;@ assembly/index.ts:216:20
                    (call $assembly/options/onMemoryImport
                     (get_local $6)
                     (tee_local $0
                      ;;@ assembly/index.ts:214:30
                      (call $assembly/index/readVaruint
                       ;;@ assembly/index.ts:214:42
                       (i32.const 32)
                      )
                     )
                     (tee_local $8
                      ;;@ assembly/index.ts:215:35
                      (if (result i32)
                       (i32.and
                        (get_local $10)
                        ;;@ assembly/index.ts:215:43
                        (i32.const 1)
                       )
                       ;;@ assembly/index.ts:215:47
                       (call $assembly/index/readVaruint
                        ;;@ assembly/index.ts:215:59
                        (i32.const 32)
                       )
                       ;;@ assembly/index.ts:215:65
                       (i32.const 65535)
                      )
                     )
                     (get_local $10)
                    )
                    ;;@ assembly/index.ts:222:16
                    (br $break|6)
                   )
                   (set_local $13
                    (i32.add
                     (tee_local $10
                      (get_local $13)
                     )
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:227:20
                   (call $assembly/options/onGlobalImport
                    (get_local $10)
                    ;;@ assembly/index.ts:225:27
                    (i32.and
                     (call $assembly/index/readVarint
                      ;;@ assembly/index.ts:225:38
                      (i32.const 7)
                     )
                     ;;@ assembly/index.ts:225:43
                     (i32.const 127)
                    )
                    ;;@ assembly/index.ts:226:33
                    (call $assembly/index/readVaruint
                     ;;@ assembly/index.ts:226:45
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:232:16
                   (br $break|6)
                  )
                  ;;@ assembly/index.ts:234:23
                  (unreachable)
                 )
                 ;;@ assembly/index.ts:173:50
                 (set_local $3
                  (i32.add
                   (get_local $3)
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
              (set_local $4
               ;;@ assembly/index.ts:240:22
               (call $assembly/index/readVaruint
                ;;@ assembly/index.ts:240:34
                (i32.const 32)
               )
              )
              ;;@ assembly/index.ts:241:10
              (block $break|7
               ;;@ assembly/index.ts:241:15
               (set_local $3
                ;;@ assembly/index.ts:241:28
                (i32.const 0)
               )
               (loop $repeat|7
                (br_if $break|7
                 ;;@ assembly/index.ts:241:31
                 (i32.ge_u
                  (get_local $3)
                  (get_local $4)
                 )
                )
                (set_local $11
                 (i32.add
                  (tee_local $5
                   (get_local $11)
                  )
                  (i32.const 1)
                 )
                )
                ;;@ assembly/index.ts:243:16
                (call $assembly/options/onFunction
                 (get_local $5)
                 ;;@ assembly/index.ts:242:28
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:242:40
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:241:42
                (set_local $3
                 (i32.add
                  (get_local $3)
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
             (set_local $4
              ;;@ assembly/index.ts:251:22
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:251:34
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:252:10
             (block $break|8
              ;;@ assembly/index.ts:252:15
              (set_local $3
               ;;@ assembly/index.ts:252:32
               (i32.const 0)
              )
              (loop $repeat|8
               (br_if $break|8
                ;;@ assembly/index.ts:252:35
                (i32.ge_u
                 (get_local $3)
                 (get_local $4)
                )
               )
               ;;@ assembly/index.ts:253:12
               (set_local $2
                ;;@ assembly/index.ts:253:24
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:253:36
                 (i32.const 1)
                )
               )
               (set_local $12
                (i32.add
                 (tee_local $0
                  (get_local $12)
                 )
                 (i32.const 1)
                )
               )
               ;;@ assembly/index.ts:256:16
               (call $assembly/options/onMemory
                (get_local $0)
                (tee_local $6
                 ;;@ assembly/index.ts:254:26
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:254:38
                  (i32.const 32)
                 )
                )
                (tee_local $9
                 ;;@ assembly/index.ts:255:31
                 (if (result i32)
                  (get_local $2)
                  ;;@ assembly/index.ts:255:39
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:255:51
                   (i32.const 32)
                  )
                  ;;@ assembly/index.ts:255:57
                  (i32.const 65535)
                 )
                )
                (get_local $2)
               )
               ;;@ assembly/index.ts:252:50
               (set_local $3
                (i32.add
                 (get_local $3)
                 (i32.const 1)
                )
               )
               (br $repeat|8)
              )
             )
             ;;@ assembly/index.ts:263:10
             (br $break|1)
            )
            ;;@ assembly/index.ts:266:10
            (set_local $4
             ;;@ assembly/index.ts:266:22
             (call $assembly/index/readVaruint
              ;;@ assembly/index.ts:266:34
              (i32.const 32)
             )
            )
            ;;@ assembly/index.ts:267:10
            (block $break|9
             ;;@ assembly/index.ts:267:15
             (set_local $3
              ;;@ assembly/index.ts:267:28
              (i32.const 0)
             )
             (loop $repeat|9
              (br_if $break|9
               ;;@ assembly/index.ts:267:31
               (i32.ge_u
                (get_local $3)
                (get_local $4)
               )
              )
              ;;@ assembly/index.ts:268:12
              (set_local $9
               ;;@ assembly/index.ts:268:23
               (i32.and
                (call $assembly/index/readVarint
                 ;;@ assembly/index.ts:268:34
                 (i32.const 7)
                )
                ;;@ assembly/index.ts:268:39
                (i32.const 127)
               )
              )
              ;;@ assembly/index.ts:269:12
              (set_local $5
               ;;@ assembly/index.ts:269:29
               (call $assembly/index/readVaruint
                ;;@ assembly/index.ts:269:41
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:270:12
              (call $assembly/index/skipInitExpr)
              (set_local $13
               (i32.add
                (tee_local $2
                 (get_local $13)
                )
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:271:16
              (call $assembly/options/onGlobal
               (get_local $2)
               (get_local $9)
               (get_local $5)
              )
              ;;@ assembly/index.ts:267:42
              (set_local $3
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (br $repeat|9)
             )
            )
            ;;@ assembly/index.ts:277:10
            (br $break|1)
           )
           ;;@ assembly/index.ts:280:10
           (set_local $4
            ;;@ assembly/index.ts:280:22
            (call $assembly/index/readVaruint
             ;;@ assembly/index.ts:280:34
             (i32.const 32)
            )
           )
           ;;@ assembly/index.ts:281:10
           (block $break|10
            ;;@ assembly/index.ts:281:15
            (set_local $3
             ;;@ assembly/index.ts:281:32
             (i32.const 0)
            )
            (loop $repeat|10
             (br_if $break|10
              ;;@ assembly/index.ts:281:35
              (i32.ge_u
               (get_local $3)
               (get_local $4)
              )
             )
             ;;@ assembly/index.ts:282:12
             (set_local $5
              ;;@ assembly/index.ts:282:28
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:282:40
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:283:12
             (set_local $9
              ;;@ assembly/index.ts:283:28
              (get_global $assembly/index/off)
             )
             ;;@ assembly/index.ts:284:12
             (set_global $assembly/index/off
              (i32.add
               (get_global $assembly/index/off)
               (get_local $5)
              )
             )
             (set_local $2
              (i32.load8_u
               (tee_local $0
                (get_global $assembly/index/off)
               )
              )
             )
             (set_global $assembly/index/off
              (i32.add
               (get_local $0)
               (i32.const 1)
              )
             )
             ;;@ assembly/index.ts:287:16
             (call $assembly/options/onExport
              (get_local $3)
              (get_local $2)
              ;;@ assembly/index.ts:286:29
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:286:41
               (i32.const 32)
              )
              (get_local $9)
              (get_local $5)
             )
             ;;@ assembly/index.ts:281:50
             (set_local $3
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (br $repeat|10)
            )
           )
           ;;@ assembly/index.ts:295:10
           (br $break|1)
          )
          ;;@ assembly/index.ts:299:14
          (call $assembly/options/onStart
           ;;@ assembly/index.ts:298:22
           (call $assembly/index/readVaruint
            ;;@ assembly/index.ts:298:34
            (i32.const 32)
           )
          )
          ;;@ assembly/index.ts:302:10
          (br $break|1)
         )
         ;;@ assembly/index.ts:306:12
         (if
          (tee_local $4
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:306:24
            (i32.const 4)
           )
          )
          (set_local $4
           ;;@ assembly/index.ts:307:12
           (i32.eq
            (i32.load
             (get_local $6)
            )
            ;;@ assembly/index.ts:307:35
            (i32.const 1701667182)
           )
          )
         )
         ;;@ assembly/index.ts:305:10
         (if
          (get_local $4)
          ;;@ assembly/index.ts:308:12
          (block
           ;;@ assembly/index.ts:309:12
           (set_local $4
            ;;@ assembly/index.ts:309:28
            (call $assembly/index/readVaruint
             ;;@ assembly/index.ts:309:40
             (i32.const 7)
            )
           )
           ;;@ assembly/index.ts:310:12
           (set_local $3
            ;;@ assembly/index.ts:310:35
            (call $assembly/index/readVaruint
             ;;@ assembly/index.ts:310:47
             (i32.const 32)
            )
           )
           ;;@ assembly/index.ts:311:12
           (set_local $0
            ;;@ assembly/index.ts:311:35
            (get_global $assembly/index/off)
           )
           ;;@ assembly/index.ts:312:12
           (block $break|11
            (block $case3|11
             (block $case2|11
              (block $case1|11
               (if
                (tee_local $2
                 (get_local $4)
                )
                (block
                 (br_if $case1|11
                  (i32.eq
                   (get_local $2)
                   ;;@ assembly/index.ts:322:19
                   (i32.const 1)
                  )
                 )
                 (br_if $case2|11
                  (i32.eq
                   (get_local $2)
                   ;;@ assembly/index.ts:337:19
                   (i32.const 2)
                  )
                 )
                 (br $case3|11)
                )
               )
               ;;@ assembly/index.ts:314:16
               (set_local $2
                ;;@ assembly/index.ts:314:38
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:314:50
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:316:20
               (call $assembly/options/onModuleName
                ;;@ assembly/index.ts:315:38
                (get_global $assembly/index/off)
                (get_local $2)
               )
               ;;@ assembly/index.ts:320:16
               (br $break|11)
              )
              ;;@ assembly/index.ts:323:16
              (set_local $9
               ;;@ assembly/index.ts:323:28
               (call $assembly/index/readVaruint
                ;;@ assembly/index.ts:323:40
                (i32.const 32)
               )
              )
              ;;@ assembly/index.ts:324:16
              (block $break|12
               ;;@ assembly/index.ts:324:21
               (set_local $2
                ;;@ assembly/index.ts:324:34
                (i32.const 0)
               )
               (loop $repeat|12
                (br_if $break|12
                 ;;@ assembly/index.ts:324:37
                 (i32.ge_u
                  (get_local $2)
                  (get_local $9)
                 )
                )
                ;;@ assembly/index.ts:325:18
                (set_local $5
                 ;;@ assembly/index.ts:325:33
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:325:45
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:326:18
                (set_local $7
                 ;;@ assembly/index.ts:326:36
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:326:48
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:327:18
                (set_local $4
                 ;;@ assembly/index.ts:327:36
                 (get_global $assembly/index/off)
                )
                ;;@ assembly/index.ts:328:18
                (set_global $assembly/index/off
                 (i32.add
                  (get_global $assembly/index/off)
                  (get_local $7)
                 )
                )
                ;;@ assembly/index.ts:329:22
                (call $assembly/options/onFunctionName
                 (get_local $5)
                 (get_local $4)
                 (get_local $7)
                )
                ;;@ assembly/index.ts:324:48
                (set_local $2
                 (i32.add
                  (get_local $2)
                  (i32.const 1)
                 )
                )
                (br $repeat|12)
               )
              )
              ;;@ assembly/index.ts:335:16
              (br $break|11)
             )
             ;;@ assembly/index.ts:338:16
             (set_local $9
              ;;@ assembly/index.ts:338:28
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:338:40
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:339:16
             (block $break|13
              ;;@ assembly/index.ts:339:21
              (set_local $2
               ;;@ assembly/index.ts:339:34
               (i32.const 0)
              )
              (loop $repeat|13
               (br_if $break|13
                ;;@ assembly/index.ts:339:37
                (i32.ge_u
                 (get_local $2)
                 (get_local $9)
                )
               )
               ;;@ assembly/index.ts:340:18
               (set_local $4
                ;;@ assembly/index.ts:340:33
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:340:45
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:341:18
               (set_local $7
                ;;@ assembly/index.ts:341:33
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:341:45
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:342:18
               (block $break|14
                ;;@ assembly/index.ts:342:23
                (set_local $5
                 ;;@ assembly/index.ts:342:36
                 (i32.const 0)
                )
                (loop $repeat|14
                 (br_if $break|14
                  ;;@ assembly/index.ts:342:39
                  (i32.ge_u
                   (get_local $5)
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:343:20
                 (set_local $8
                  ;;@ assembly/index.ts:343:35
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:343:47
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:344:20
                 (set_local $10
                  ;;@ assembly/index.ts:344:38
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:344:50
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:345:20
                 (set_local $6
                  ;;@ assembly/index.ts:345:38
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:346:20
                 (set_global $assembly/index/off
                  (i32.add
                   (get_global $assembly/index/off)
                   (get_local $10)
                  )
                 )
                 ;;@ assembly/index.ts:347:24
                 (call $assembly/options/onLocalName
                  (get_local $4)
                  (get_local $8)
                  (get_local $6)
                  (get_local $10)
                 )
                 ;;@ assembly/index.ts:342:53
                 (set_local $5
                  (i32.add
                   (get_local $5)
                   (i32.const 1)
                  )
                 )
                 (br $repeat|14)
                )
               )
               ;;@ assembly/index.ts:339:48
               (set_local $2
                (i32.add
                 (get_local $2)
                 (i32.const 1)
                )
               )
               (br $repeat|13)
              )
             )
             ;;@ assembly/index.ts:355:16
             (br $break|11)
            )
            ;;@ assembly/index.ts:357:23
            (unreachable)
           )
           ;;@ assembly/index.ts:359:12
           (set_global $assembly/index/off
            ;;@ assembly/index.ts:359:18
            (i32.add
             (get_local $0)
             (get_local $3)
            )
           )
           ;;@ assembly/index.ts:360:12
           (br $break|1)
          )
          (block
           ;;@ assembly/index.ts:362:12
           (if
            (tee_local $0
             (i32.eq
              (get_local $0)
              ;;@ assembly/index.ts:362:24
              (i32.const 16)
             )
            )
            (set_local $0
             ;;@ assembly/index.ts:363:12
             (i64.eq
              (i64.load
               (get_local $6)
              )
              ;;@ assembly/index.ts:363:39
              (i64.const 7011371672682196851)
             )
            )
           )
           ;;@ assembly/index.ts:362:12
           (if
            (get_local $0)
            (set_local $0
             ;;@ assembly/index.ts:364:12
             (i64.eq
              (i64.load
               ;;@ assembly/index.ts:364:22
               (i32.add
                (get_local $6)
                ;;@ assembly/index.ts:364:33
                (i32.const 8)
               )
              )
              ;;@ assembly/index.ts:364:39
              (i64.const 5499551997695193200)
             )
            )
           )
           ;;@ assembly/index.ts:361:17
           (if
            (get_local $0)
            ;;@ assembly/index.ts:365:12
            (block
             ;;@ assembly/index.ts:366:12
             (set_local $0
              ;;@ assembly/index.ts:366:26
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:366:38
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:367:12
             (set_local $3
              ;;@ assembly/index.ts:367:26
              (get_global $assembly/index/off)
             )
             ;;@ assembly/index.ts:368:12
             (set_global $assembly/index/off
              (i32.add
               (get_global $assembly/index/off)
               (get_local $0)
              )
             )
             ;;@ assembly/index.ts:369:16
             (call $assembly/options/onSourceMappingURL
              (get_local $3)
              (get_local $0)
             )
            )
           )
          )
         )
         ;;@ assembly/index.ts:374:10
         (set_global $assembly/index/off
          ;;@ assembly/index.ts:374:16
          (i32.add
           (get_local $8)
           (get_local $2)
          )
         )
         ;;@ assembly/index.ts:375:10
         (br $break|1)
        )
        ;;@ assembly/index.ts:380:10
        (set_global $assembly/index/off
         (i32.add
          (get_global $assembly/index/off)
          (get_local $2)
         )
        )
        ;;@ assembly/index.ts:381:10
        (br $break|1)
       )
       ;;@ assembly/index.ts:383:17
       (unreachable)
      )
      ;;@ assembly/index.ts:385:11
      (set_global $assembly/index/off
       (i32.add
        ;;@ assembly/index.ts:386:6
        (get_global $assembly/index/off)
        (get_local $2)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:389:2
  (if
   ;;@ assembly/index.ts:389:6
   (i32.ne
    (get_global $assembly/index/off)
    (get_local $1)
   )
   ;;@ assembly/index.ts:389:18
   (unreachable)
  )
 )
)
