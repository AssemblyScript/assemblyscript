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
 (import "env" "onSection" (func $assembly/index/onSection (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "onType" (func $assembly/index/onType (param i32 i32)))
 (import "env" "onTypeParam" (func $assembly/index/onTypeParam (param i32 i32 i32)))
 (import "env" "onTypeReturn" (func $assembly/index/onTypeReturn (param i32 i32 i32)))
 (import "env" "onImport" (func $assembly/index/onImport (param i32 i32 i32 i32 i32 i32)))
 (import "env" "onFunctionImport" (func $assembly/index/onFunctionImport (param i32 i32)))
 (import "env" "onTableImport" (func $assembly/index/onTableImport (param i32 i32 i32 i32 i32)))
 (import "env" "onMemoryImport" (func $assembly/index/onMemoryImport (param i32 i32 i32 i32)))
 (import "env" "onGlobalImport" (func $assembly/index/onGlobalImport (param i32 i32 i32)))
 (import "env" "onFunction" (func $assembly/index/onFunction (param i32 i32)))
 (import "env" "onMemory" (func $assembly/index/onMemory (param i32 i32 i32 i32)))
 (import "env" "onGlobal" (func $assembly/index/onGlobal (param i32 i32 i32)))
 (import "env" "onExport" (func $assembly/index/onExport (param i32 i32 i32 i32 i32)))
 (import "env" "onStart" (func $assembly/index/onStart (param i32)))
 (import "env" "onModuleName" (func $assembly/index/onModuleName (param i32 i32)))
 (import "env" "onFunctionName" (func $assembly/index/onFunctionName (param i32 i32 i32)))
 (import "env" "onLocalName" (func $assembly/index/onLocalName (param i32 i32 i32 i32)))
 (import "env" "onSourceMappingURL" (func $assembly/index/onSourceMappingURL (param i32 i32)))
 (import "env" "memory" (memory $0 1))
 (global $assembly/index/off (mut i32) (i32.const 0))
 (export "parse" (func $assembly/index/parse))
 (export "memory" (memory $0))
 (func $assembly/index/readVaruint (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/index.ts:38:2
  (set_local $0
   ;;@ assembly/index.ts:38:12
   (get_global $assembly/index/off)
  )
  ;;@ assembly/index.ts:39:2
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
    ;;@ assembly/index.ts:41:4
    (set_local $1
     (i32.or
      (get_local $1)
      ;;@ assembly/index.ts:41:11
      (i32.shl
       (i32.and
        ;;@ assembly/index.ts:40:4
        (tee_local $3
         ;;@ assembly/index.ts:40:10
         (i32.load8_u
          (get_local $3)
         )
        )
        ;;@ assembly/index.ts:41:18
        (i32.const 127)
       )
       (get_local $2)
      )
     )
    )
    ;;@ assembly/index.ts:42:23
    (br_if $break|0
     ;;@ assembly/index.ts:42:8
     (i32.eqz
      ;;@ assembly/index.ts:42:9
      (i32.and
       (get_local $3)
       ;;@ assembly/index.ts:42:16
       (i32.const 128)
      )
     )
    )
    ;;@ assembly/index.ts:43:4
    (set_local $2
     (i32.add
      (get_local $2)
      ;;@ assembly/index.ts:43:11
      (i32.const 7)
     )
    )
    (br $continue|0)
   )
  )
  ;;@ assembly/index.ts:45:2
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
  ;;@ assembly/index.ts:54:2
  (set_local $2
   ;;@ assembly/index.ts:54:12
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
   ;;@ assembly/index.ts:57:4
   (set_local $3
    (i32.or
     (get_local $3)
     ;;@ assembly/index.ts:57:11
     (i32.shl
      (i32.and
       ;;@ assembly/index.ts:56:4
       (tee_local $5
        ;;@ assembly/index.ts:56:10
        (i32.load8_u
         (get_local $4)
        )
       )
       ;;@ assembly/index.ts:57:18
       (i32.const 127)
      )
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:58:4
   (set_local $1
    (i32.add
     (get_local $1)
     ;;@ assembly/index.ts:58:11
     (i32.const 7)
    )
   )
   (br_if $continue|0
    ;;@ assembly/index.ts:59:11
    (i32.and
     (get_local $5)
     ;;@ assembly/index.ts:59:17
     (i32.const 128)
    )
   )
  )
  ;;@ assembly/index.ts:60:2
  (set_global $assembly/index/off
   (get_local $2)
  )
  (set_local $2
   ;;@ assembly/index.ts:61:21
   (i32.or
    (get_local $3)
    ;;@ assembly/index.ts:61:27
    (i32.shl
     (i32.const -1)
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:61:45
  (if
   (tee_local $4
    (i32.lt_u
     (get_local $1)
     (get_local $0)
    )
   )
   (set_local $4
    ;;@ assembly/index.ts:61:59
    (i32.ne
     (i32.and
      (get_local $5)
      ;;@ assembly/index.ts:61:66
      (i32.const 64)
     )
     ;;@ assembly/index.ts:61:75
     (i32.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:61:76
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
  ;;@ assembly/index.ts:69:2
  (set_local $3
   ;;@ assembly/index.ts:69:12
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
   ;;@ assembly/index.ts:72:4
   (set_local $1
    (i64.or
     (get_local $1)
     ;;@ assembly/index.ts:72:11
     (i64.shl
      (i64.and
       ;;@ assembly/index.ts:71:4
       (tee_local $4
        ;;@ assembly/index.ts:71:10
        (i64.load8_u
         (get_local $2)
        )
       )
       ;;@ assembly/index.ts:72:18
       (i64.const 127)
      )
      (get_local $0)
     )
    )
   )
   ;;@ assembly/index.ts:73:4
   (set_local $0
    (i64.add
     (get_local $0)
     ;;@ assembly/index.ts:73:11
     (i64.const 7)
    )
   )
   (br_if $continue|0
    (i64.ne
     ;;@ assembly/index.ts:74:11
     (i64.and
      (get_local $4)
      ;;@ assembly/index.ts:74:17
      (i64.const 128)
     )
     (i64.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:75:2
  (set_global $assembly/index/off
   (get_local $3)
  )
  (set_local $5
   ;;@ assembly/index.ts:76:21
   (i64.or
    (get_local $1)
    ;;@ assembly/index.ts:76:27
    (i64.shl
     (i64.const -1)
     (get_local $0)
    )
   )
  )
  ;;@ assembly/index.ts:76:45
  (if
   (tee_local $2
    (i64.lt_u
     (get_local $0)
     ;;@ assembly/index.ts:76:51
     (i64.const 64)
    )
   )
   (set_local $2
    ;;@ assembly/index.ts:76:57
    (i64.ne
     (i64.and
      (get_local $4)
      ;;@ assembly/index.ts:76:64
      (i64.const 64)
     )
     ;;@ assembly/index.ts:76:73
     (i64.const 0)
    )
   )
  )
  ;;@ assembly/index.ts:76:74
  (select
   (get_local $5)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $assembly/index/skipInitExpr (; 21 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  ;;@ assembly/index.ts:81:2
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
          ;;@ assembly/index.ts:82:9
          (i32.const 65)
         )
         (block
          (br_if $case1|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:86:9
            (i32.const 66)
           )
          )
          (br_if $case2|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:90:9
            (i32.const 67)
           )
          )
          (br_if $case3|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:94:9
            (i32.const 68)
           )
          )
          (br_if $case4|0
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:98:9
            (i32.const 35)
           )
          )
          (br $case5|0)
         )
        )
        ;;@ assembly/index.ts:83:6
        (drop
         (call $assembly/index/readVarint
          ;;@ assembly/index.ts:83:17
          (i32.const 32)
         )
        )
        ;;@ assembly/index.ts:84:6
        (br $break|0)
       )
       ;;@ assembly/index.ts:87:6
       (drop
        (call $assembly/index/readVarint64)
       )
       ;;@ assembly/index.ts:88:6
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
      ;;@ assembly/index.ts:92:6
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
     ;;@ assembly/index.ts:96:6
     (br $break|0)
    )
    ;;@ assembly/index.ts:99:6
    (drop
     (call $assembly/index/readVaruint
      ;;@ assembly/index.ts:99:18
      (i32.const 32)
     )
    )
    ;;@ assembly/index.ts:100:6
    (br $break|0)
   )
   ;;@ assembly/index.ts:102:13
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
  ;;@ assembly/index.ts:104:2
  (if
   ;;@ assembly/index.ts:104:6
   (i32.ne
    (get_local $0)
    ;;@ assembly/index.ts:104:24
    (i32.const 11)
   )
   ;;@ assembly/index.ts:104:36
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
  ;;@ assembly/index.ts:129:2
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
  ;;@ assembly/index.ts:131:2
  (if
   ;;@ assembly/index.ts:131:6
   (i32.ne
    (get_local $2)
    ;;@ assembly/index.ts:131:15
    (i32.const 1836278016)
   )
   ;;@ assembly/index.ts:131:27
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
  ;;@ assembly/index.ts:133:2
  (if
   ;;@ assembly/index.ts:133:6
   (i32.ne
    (get_local $2)
    ;;@ assembly/index.ts:133:17
    (i32.const 1)
   )
   ;;@ assembly/index.ts:133:20
   (unreachable)
  )
  (loop $continue|0
   (if
    ;;@ assembly/index.ts:138:9
    (i32.lt_u
     (get_global $assembly/index/off)
     (get_local $1)
    )
    (block
     ;;@ assembly/index.ts:140:4
     (set_local $4
      ;;@ assembly/index.ts:140:13
      (call $assembly/index/readVaruint
       ;;@ assembly/index.ts:140:25
       (i32.const 7)
      )
     )
     ;;@ assembly/index.ts:141:4
     (set_local $2
      ;;@ assembly/index.ts:141:22
      (call $assembly/index/readVaruint
       ;;@ assembly/index.ts:141:34
       (i32.const 32)
      )
     )
     ;;@ assembly/index.ts:142:4
     (set_local $6
      ;;@ assembly/index.ts:142:19
      (i32.const 0)
     )
     ;;@ assembly/index.ts:143:4
     (set_local $0
      ;;@ assembly/index.ts:143:19
      (i32.const 0)
     )
     ;;@ assembly/index.ts:144:4
     (if
      (get_local $4)
      ;;@ assembly/index.ts:150:11
      (if
       ;;@ assembly/index.ts:150:15
       (i32.gt_u
        (get_local $4)
        ;;@ assembly/index.ts:150:20
        (i32.const 11)
       )
       ;;@ assembly/index.ts:150:41
       (unreachable)
      )
      ;;@ assembly/index.ts:144:13
      (block
       ;;@ assembly/index.ts:145:6
       (set_local $8
        ;;@ assembly/index.ts:145:19
        (get_global $assembly/index/off)
       )
       ;;@ assembly/index.ts:146:6
       (set_local $0
        ;;@ assembly/index.ts:146:17
        (call $assembly/index/readVaruint
         ;;@ assembly/index.ts:146:29
         (i32.const 32)
        )
       )
       ;;@ assembly/index.ts:147:6
       (set_local $6
        ;;@ assembly/index.ts:147:17
        (get_global $assembly/index/off)
       )
       ;;@ assembly/index.ts:148:6
       (set_global $assembly/index/off
        (i32.add
         (get_global $assembly/index/off)
         (get_local $0)
        )
       )
       ;;@ assembly/index.ts:149:6
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ assembly/index.ts:149:21
         (i32.sub
          (get_global $assembly/index/off)
          (get_local $8)
         )
        )
       )
      )
     )
     ;;@ assembly/index.ts:152:4
     (if
      (i32.and
       ;;@ assembly/index.ts:152:8
       (call $assembly/index/onSection
        (get_local $4)
        ;;@ assembly/index.ts:151:4
        (tee_local $8
         ;;@ assembly/index.ts:151:22
         (get_global $assembly/index/off)
        )
        (get_local $2)
        (get_local $6)
        (get_local $0)
       )
       (i32.const 1)
      )
      ;;@ assembly/index.ts:158:7
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
                  ;;@ assembly/index.ts:160:13
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
                ;;@ assembly/index.ts:161:10
                (set_local $4
                 ;;@ assembly/index.ts:161:22
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:161:34
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:162:10
                (block $break|2
                 ;;@ assembly/index.ts:162:15
                 (set_local $3
                  ;;@ assembly/index.ts:162:32
                  (i32.const 0)
                 )
                 (loop $repeat|2
                  (br_if $break|2
                   ;;@ assembly/index.ts:162:35
                   (i32.ge_u
                    (get_local $3)
                    (get_local $4)
                   )
                  )
                  ;;@ assembly/index.ts:164:12
                  (call $assembly/index/onType
                   (get_local $3)
                   ;;@ assembly/index.ts:163:23
                   (i32.and
                    (call $assembly/index/readVarint
                     ;;@ assembly/index.ts:163:34
                     (i32.const 7)
                    )
                    ;;@ assembly/index.ts:163:39
                    (i32.const 127)
                   )
                  )
                  ;;@ assembly/index.ts:168:12
                  (set_local $0
                   ;;@ assembly/index.ts:168:29
                   (call $assembly/index/readVaruint
                    ;;@ assembly/index.ts:168:41
                    (i32.const 32)
                   )
                  )
                  ;;@ assembly/index.ts:169:12
                  (block $break|3
                   ;;@ assembly/index.ts:169:17
                   (set_local $7
                    ;;@ assembly/index.ts:169:39
                    (i32.const 0)
                   )
                   (loop $repeat|3
                    (br_if $break|3
                     ;;@ assembly/index.ts:169:42
                     (i32.ge_u
                      (get_local $7)
                      (get_local $0)
                     )
                    )
                    ;;@ assembly/index.ts:171:14
                    (call $assembly/index/onTypeParam
                     (get_local $3)
                     (get_local $7)
                     ;;@ assembly/index.ts:170:30
                     (i32.and
                      (call $assembly/index/readVarint
                       ;;@ assembly/index.ts:170:41
                       (i32.const 7)
                      )
                      ;;@ assembly/index.ts:170:46
                      (i32.const 127)
                     )
                    )
                    ;;@ assembly/index.ts:169:67
                    (set_local $7
                     (i32.add
                      (get_local $7)
                      (i32.const 1)
                     )
                    )
                    (br $repeat|3)
                   )
                  )
                  ;;@ assembly/index.ts:177:12
                  (set_local $7
                   ;;@ assembly/index.ts:177:30
                   (call $assembly/index/readVaruint
                    ;;@ assembly/index.ts:177:42
                    (i32.const 1)
                   )
                  )
                  ;;@ assembly/index.ts:178:12
                  (block $break|4
                   ;;@ assembly/index.ts:178:17
                   (set_local $5
                    ;;@ assembly/index.ts:178:40
                    (i32.const 0)
                   )
                   (loop $repeat|4
                    (br_if $break|4
                     ;;@ assembly/index.ts:178:43
                     (i32.ge_u
                      (get_local $5)
                      (get_local $7)
                     )
                    )
                    ;;@ assembly/index.ts:180:14
                    (call $assembly/index/onTypeReturn
                     (get_local $3)
                     (get_local $5)
                     ;;@ assembly/index.ts:179:31
                     (i32.and
                      (call $assembly/index/readVarint
                       ;;@ assembly/index.ts:179:42
                       (i32.const 7)
                      )
                      ;;@ assembly/index.ts:179:47
                      (i32.const 127)
                     )
                    )
                    ;;@ assembly/index.ts:178:70
                    (set_local $5
                     (i32.add
                      (get_local $5)
                      (i32.const 1)
                     )
                    )
                    (br $repeat|4)
                   )
                  )
                  ;;@ assembly/index.ts:162:50
                  (set_local $3
                   (i32.add
                    (get_local $3)
                    (i32.const 1)
                   )
                  )
                  (br $repeat|2)
                 )
                )
                ;;@ assembly/index.ts:187:10
                (br $break|1)
               )
               ;;@ assembly/index.ts:190:10
               (set_local $4
                ;;@ assembly/index.ts:190:22
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:190:34
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:191:10
               (block $break|5
                ;;@ assembly/index.ts:191:15
                (set_local $3
                 ;;@ assembly/index.ts:191:32
                 (i32.const 0)
                )
                (loop $repeat|5
                 (br_if $break|5
                  ;;@ assembly/index.ts:191:35
                  (i32.ge_u
                   (get_local $3)
                   (get_local $4)
                  )
                 )
                 ;;@ assembly/index.ts:192:12
                 (set_local $7
                  ;;@ assembly/index.ts:192:29
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:192:41
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:193:12
                 (set_local $0
                  ;;@ assembly/index.ts:193:29
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:194:12
                 (set_global $assembly/index/off
                  (i32.add
                   (get_global $assembly/index/off)
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:195:12
                 (set_local $9
                  ;;@ assembly/index.ts:195:28
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:195:40
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:196:12
                 (set_local $5
                  ;;@ assembly/index.ts:196:28
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:197:12
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
                 ;;@ assembly/index.ts:199:12
                 (call $assembly/index/onImport
                  (get_local $3)
                  (get_local $2)
                  (get_local $0)
                  (get_local $7)
                  (get_local $5)
                  (get_local $9)
                 )
                 ;;@ assembly/index.ts:207:12
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
                      ;;@ assembly/index.ts:210:16
                      (call $assembly/index/onFunctionImport
                       (get_local $8)
                       ;;@ assembly/index.ts:209:27
                       (call $assembly/index/readVaruint
                        ;;@ assembly/index.ts:209:39
                        (i32.const 32)
                       )
                      )
                      ;;@ assembly/index.ts:214:16
                      (br $break|6)
                     )
                     ;;@ assembly/index.ts:217:16
                     (set_local $6
                      ;;@ assembly/index.ts:217:27
                      (i32.and
                       (call $assembly/index/readVarint
                        ;;@ assembly/index.ts:217:38
                        (i32.const 7)
                       )
                       ;;@ assembly/index.ts:217:43
                       (i32.const 127)
                      )
                     )
                     ;;@ assembly/index.ts:218:16
                     (set_local $8
                      ;;@ assembly/index.ts:218:28
                      (call $assembly/index/readVaruint
                       ;;@ assembly/index.ts:218:40
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
                     ;;@ assembly/index.ts:221:16
                     (call $assembly/index/onTableImport
                      (get_local $0)
                      (get_local $6)
                      (tee_local $2
                       ;;@ assembly/index.ts:219:30
                       (call $assembly/index/readVaruint
                        ;;@ assembly/index.ts:219:42
                        (i32.const 32)
                       )
                      )
                      (tee_local $10
                       ;;@ assembly/index.ts:220:35
                       (if (result i32)
                        (i32.and
                         (get_local $8)
                         ;;@ assembly/index.ts:220:43
                         (i32.const 1)
                        )
                        ;;@ assembly/index.ts:220:47
                        (call $assembly/index/readVaruint
                         ;;@ assembly/index.ts:220:59
                         (i32.const 32)
                        )
                        ;;@ assembly/index.ts:220:65
                        (i32.const 1)
                       )
                      )
                      (get_local $8)
                     )
                     ;;@ assembly/index.ts:228:16
                     (br $break|6)
                    )
                    ;;@ assembly/index.ts:231:16
                    (set_local $10
                     ;;@ assembly/index.ts:231:28
                     (call $assembly/index/readVaruint
                      ;;@ assembly/index.ts:231:40
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
                    ;;@ assembly/index.ts:234:16
                    (call $assembly/index/onMemoryImport
                     (get_local $6)
                     (tee_local $0
                      ;;@ assembly/index.ts:232:30
                      (call $assembly/index/readVaruint
                       ;;@ assembly/index.ts:232:42
                       (i32.const 32)
                      )
                     )
                     (tee_local $8
                      ;;@ assembly/index.ts:233:35
                      (if (result i32)
                       (i32.and
                        (get_local $10)
                        ;;@ assembly/index.ts:233:43
                        (i32.const 1)
                       )
                       ;;@ assembly/index.ts:233:47
                       (call $assembly/index/readVaruint
                        ;;@ assembly/index.ts:233:59
                        (i32.const 32)
                       )
                       ;;@ assembly/index.ts:233:65
                       (i32.const 65535)
                      )
                     )
                     (get_local $10)
                    )
                    ;;@ assembly/index.ts:240:16
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
                   ;;@ assembly/index.ts:245:16
                   (call $assembly/index/onGlobalImport
                    (get_local $10)
                    ;;@ assembly/index.ts:243:27
                    (i32.and
                     (call $assembly/index/readVarint
                      ;;@ assembly/index.ts:243:38
                      (i32.const 7)
                     )
                     ;;@ assembly/index.ts:243:43
                     (i32.const 127)
                    )
                    ;;@ assembly/index.ts:244:33
                    (call $assembly/index/readVaruint
                     ;;@ assembly/index.ts:244:45
                     (i32.const 1)
                    )
                   )
                   ;;@ assembly/index.ts:250:16
                   (br $break|6)
                  )
                  ;;@ assembly/index.ts:252:23
                  (unreachable)
                 )
                 ;;@ assembly/index.ts:191:50
                 (set_local $3
                  (i32.add
                   (get_local $3)
                   (i32.const 1)
                  )
                 )
                 (br $repeat|5)
                )
               )
               ;;@ assembly/index.ts:255:10
               (br $break|1)
              )
              ;;@ assembly/index.ts:258:10
              (set_local $4
               ;;@ assembly/index.ts:258:22
               (call $assembly/index/readVaruint
                ;;@ assembly/index.ts:258:34
                (i32.const 32)
               )
              )
              ;;@ assembly/index.ts:259:10
              (block $break|7
               ;;@ assembly/index.ts:259:15
               (set_local $3
                ;;@ assembly/index.ts:259:28
                (i32.const 0)
               )
               (loop $repeat|7
                (br_if $break|7
                 ;;@ assembly/index.ts:259:31
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
                ;;@ assembly/index.ts:261:12
                (call $assembly/index/onFunction
                 (get_local $5)
                 ;;@ assembly/index.ts:260:28
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:260:40
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:259:42
                (set_local $3
                 (i32.add
                  (get_local $3)
                  (i32.const 1)
                 )
                )
                (br $repeat|7)
               )
              )
              ;;@ assembly/index.ts:266:10
              (br $break|1)
             )
             ;;@ assembly/index.ts:269:10
             (set_local $4
              ;;@ assembly/index.ts:269:22
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:269:34
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:270:10
             (block $break|8
              ;;@ assembly/index.ts:270:15
              (set_local $3
               ;;@ assembly/index.ts:270:32
               (i32.const 0)
              )
              (loop $repeat|8
               (br_if $break|8
                ;;@ assembly/index.ts:270:35
                (i32.ge_u
                 (get_local $3)
                 (get_local $4)
                )
               )
               ;;@ assembly/index.ts:271:12
               (set_local $2
                ;;@ assembly/index.ts:271:24
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:271:36
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
               ;;@ assembly/index.ts:274:12
               (call $assembly/index/onMemory
                (get_local $0)
                (tee_local $6
                 ;;@ assembly/index.ts:272:26
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:272:38
                  (i32.const 32)
                 )
                )
                (tee_local $9
                 ;;@ assembly/index.ts:273:31
                 (if (result i32)
                  (get_local $2)
                  ;;@ assembly/index.ts:273:39
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:273:51
                   (i32.const 32)
                  )
                  ;;@ assembly/index.ts:273:57
                  (i32.const 65535)
                 )
                )
                (get_local $2)
               )
               ;;@ assembly/index.ts:270:50
               (set_local $3
                (i32.add
                 (get_local $3)
                 (i32.const 1)
                )
               )
               (br $repeat|8)
              )
             )
             ;;@ assembly/index.ts:281:10
             (br $break|1)
            )
            ;;@ assembly/index.ts:284:10
            (set_local $4
             ;;@ assembly/index.ts:284:22
             (call $assembly/index/readVaruint
              ;;@ assembly/index.ts:284:34
              (i32.const 32)
             )
            )
            ;;@ assembly/index.ts:285:10
            (block $break|9
             ;;@ assembly/index.ts:285:15
             (set_local $3
              ;;@ assembly/index.ts:285:28
              (i32.const 0)
             )
             (loop $repeat|9
              (br_if $break|9
               ;;@ assembly/index.ts:285:31
               (i32.ge_u
                (get_local $3)
                (get_local $4)
               )
              )
              ;;@ assembly/index.ts:286:12
              (set_local $9
               ;;@ assembly/index.ts:286:23
               (i32.and
                (call $assembly/index/readVarint
                 ;;@ assembly/index.ts:286:34
                 (i32.const 7)
                )
                ;;@ assembly/index.ts:286:39
                (i32.const 127)
               )
              )
              ;;@ assembly/index.ts:287:12
              (set_local $5
               ;;@ assembly/index.ts:287:29
               (call $assembly/index/readVaruint
                ;;@ assembly/index.ts:287:41
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:288:12
              (call $assembly/index/skipInitExpr)
              (set_local $13
               (i32.add
                (tee_local $2
                 (get_local $13)
                )
                (i32.const 1)
               )
              )
              ;;@ assembly/index.ts:289:12
              (call $assembly/index/onGlobal
               (get_local $2)
               (get_local $9)
               (get_local $5)
              )
              ;;@ assembly/index.ts:285:42
              (set_local $3
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (br $repeat|9)
             )
            )
            ;;@ assembly/index.ts:295:10
            (br $break|1)
           )
           ;;@ assembly/index.ts:298:10
           (set_local $4
            ;;@ assembly/index.ts:298:22
            (call $assembly/index/readVaruint
             ;;@ assembly/index.ts:298:34
             (i32.const 32)
            )
           )
           ;;@ assembly/index.ts:299:10
           (block $break|10
            ;;@ assembly/index.ts:299:15
            (set_local $3
             ;;@ assembly/index.ts:299:32
             (i32.const 0)
            )
            (loop $repeat|10
             (br_if $break|10
              ;;@ assembly/index.ts:299:35
              (i32.ge_u
               (get_local $3)
               (get_local $4)
              )
             )
             ;;@ assembly/index.ts:300:12
             (set_local $5
              ;;@ assembly/index.ts:300:28
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:300:40
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:301:12
             (set_local $9
              ;;@ assembly/index.ts:301:28
              (get_global $assembly/index/off)
             )
             ;;@ assembly/index.ts:302:12
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
             ;;@ assembly/index.ts:305:12
             (call $assembly/index/onExport
              (get_local $3)
              (get_local $2)
              ;;@ assembly/index.ts:304:29
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:304:41
               (i32.const 32)
              )
              (get_local $9)
              (get_local $5)
             )
             ;;@ assembly/index.ts:299:50
             (set_local $3
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (br $repeat|10)
            )
           )
           ;;@ assembly/index.ts:313:10
           (br $break|1)
          )
          ;;@ assembly/index.ts:317:10
          (call $assembly/index/onStart
           ;;@ assembly/index.ts:316:22
           (call $assembly/index/readVaruint
            ;;@ assembly/index.ts:316:34
            (i32.const 32)
           )
          )
          ;;@ assembly/index.ts:320:10
          (br $break|1)
         )
         ;;@ assembly/index.ts:324:12
         (if
          (tee_local $4
           (i32.eq
            (get_local $0)
            ;;@ assembly/index.ts:324:24
            (i32.const 4)
           )
          )
          (set_local $4
           ;;@ assembly/index.ts:325:12
           (i32.eq
            (i32.load
             (get_local $6)
            )
            ;;@ assembly/index.ts:325:35
            (i32.const 1701667182)
           )
          )
         )
         ;;@ assembly/index.ts:323:10
         (if
          (get_local $4)
          ;;@ assembly/index.ts:326:12
          (block
           ;;@ assembly/index.ts:327:12
           (set_local $4
            ;;@ assembly/index.ts:327:28
            (call $assembly/index/readVaruint
             ;;@ assembly/index.ts:327:40
             (i32.const 7)
            )
           )
           ;;@ assembly/index.ts:328:12
           (set_local $3
            ;;@ assembly/index.ts:328:35
            (call $assembly/index/readVaruint
             ;;@ assembly/index.ts:328:47
             (i32.const 32)
            )
           )
           ;;@ assembly/index.ts:329:12
           (set_local $0
            ;;@ assembly/index.ts:329:35
            (get_global $assembly/index/off)
           )
           ;;@ assembly/index.ts:330:12
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
                   ;;@ assembly/index.ts:340:19
                   (i32.const 1)
                  )
                 )
                 (br_if $case2|11
                  (i32.eq
                   (get_local $2)
                   ;;@ assembly/index.ts:355:19
                   (i32.const 2)
                  )
                 )
                 (br $case3|11)
                )
               )
               ;;@ assembly/index.ts:332:16
               (set_local $2
                ;;@ assembly/index.ts:332:38
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:332:50
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:334:16
               (call $assembly/index/onModuleName
                ;;@ assembly/index.ts:333:38
                (get_global $assembly/index/off)
                (get_local $2)
               )
               ;;@ assembly/index.ts:338:16
               (br $break|11)
              )
              ;;@ assembly/index.ts:341:16
              (set_local $9
               ;;@ assembly/index.ts:341:28
               (call $assembly/index/readVaruint
                ;;@ assembly/index.ts:341:40
                (i32.const 32)
               )
              )
              ;;@ assembly/index.ts:342:16
              (block $break|12
               ;;@ assembly/index.ts:342:21
               (set_local $2
                ;;@ assembly/index.ts:342:34
                (i32.const 0)
               )
               (loop $repeat|12
                (br_if $break|12
                 ;;@ assembly/index.ts:342:37
                 (i32.ge_u
                  (get_local $2)
                  (get_local $9)
                 )
                )
                ;;@ assembly/index.ts:343:18
                (set_local $5
                 ;;@ assembly/index.ts:343:33
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:343:45
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:344:18
                (set_local $7
                 ;;@ assembly/index.ts:344:36
                 (call $assembly/index/readVaruint
                  ;;@ assembly/index.ts:344:48
                  (i32.const 32)
                 )
                )
                ;;@ assembly/index.ts:345:18
                (set_local $4
                 ;;@ assembly/index.ts:345:36
                 (get_global $assembly/index/off)
                )
                ;;@ assembly/index.ts:346:18
                (set_global $assembly/index/off
                 (i32.add
                  (get_global $assembly/index/off)
                  (get_local $7)
                 )
                )
                ;;@ assembly/index.ts:347:18
                (call $assembly/index/onFunctionName
                 (get_local $5)
                 (get_local $4)
                 (get_local $7)
                )
                ;;@ assembly/index.ts:342:48
                (set_local $2
                 (i32.add
                  (get_local $2)
                  (i32.const 1)
                 )
                )
                (br $repeat|12)
               )
              )
              ;;@ assembly/index.ts:353:16
              (br $break|11)
             )
             ;;@ assembly/index.ts:356:16
             (set_local $9
              ;;@ assembly/index.ts:356:28
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:356:40
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:357:16
             (block $break|13
              ;;@ assembly/index.ts:357:21
              (set_local $2
               ;;@ assembly/index.ts:357:34
               (i32.const 0)
              )
              (loop $repeat|13
               (br_if $break|13
                ;;@ assembly/index.ts:357:37
                (i32.ge_u
                 (get_local $2)
                 (get_local $9)
                )
               )
               ;;@ assembly/index.ts:358:18
               (set_local $4
                ;;@ assembly/index.ts:358:33
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:358:45
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:359:18
               (set_local $7
                ;;@ assembly/index.ts:359:33
                (call $assembly/index/readVaruint
                 ;;@ assembly/index.ts:359:45
                 (i32.const 32)
                )
               )
               ;;@ assembly/index.ts:360:18
               (block $break|14
                ;;@ assembly/index.ts:360:23
                (set_local $5
                 ;;@ assembly/index.ts:360:36
                 (i32.const 0)
                )
                (loop $repeat|14
                 (br_if $break|14
                  ;;@ assembly/index.ts:360:39
                  (i32.ge_u
                   (get_local $5)
                   (get_local $7)
                  )
                 )
                 ;;@ assembly/index.ts:361:20
                 (set_local $8
                  ;;@ assembly/index.ts:361:35
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:361:47
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:362:20
                 (set_local $10
                  ;;@ assembly/index.ts:362:38
                  (call $assembly/index/readVaruint
                   ;;@ assembly/index.ts:362:50
                   (i32.const 32)
                  )
                 )
                 ;;@ assembly/index.ts:363:20
                 (set_local $6
                  ;;@ assembly/index.ts:363:38
                  (get_global $assembly/index/off)
                 )
                 ;;@ assembly/index.ts:364:20
                 (set_global $assembly/index/off
                  (i32.add
                   (get_global $assembly/index/off)
                   (get_local $10)
                  )
                 )
                 ;;@ assembly/index.ts:365:20
                 (call $assembly/index/onLocalName
                  (get_local $4)
                  (get_local $8)
                  (get_local $6)
                  (get_local $10)
                 )
                 ;;@ assembly/index.ts:360:53
                 (set_local $5
                  (i32.add
                   (get_local $5)
                   (i32.const 1)
                  )
                 )
                 (br $repeat|14)
                )
               )
               ;;@ assembly/index.ts:357:48
               (set_local $2
                (i32.add
                 (get_local $2)
                 (i32.const 1)
                )
               )
               (br $repeat|13)
              )
             )
             ;;@ assembly/index.ts:373:16
             (br $break|11)
            )
            ;;@ assembly/index.ts:375:23
            (unreachable)
           )
           ;;@ assembly/index.ts:377:12
           (set_global $assembly/index/off
            ;;@ assembly/index.ts:377:18
            (i32.add
             (get_local $0)
             (get_local $3)
            )
           )
           ;;@ assembly/index.ts:378:12
           (br $break|1)
          )
          (block
           ;;@ assembly/index.ts:380:12
           (if
            (tee_local $0
             (i32.eq
              (get_local $0)
              ;;@ assembly/index.ts:380:24
              (i32.const 16)
             )
            )
            (set_local $0
             ;;@ assembly/index.ts:381:12
             (i64.eq
              (i64.load
               (get_local $6)
              )
              ;;@ assembly/index.ts:381:39
              (i64.const 7011371672682196851)
             )
            )
           )
           ;;@ assembly/index.ts:380:12
           (if
            (get_local $0)
            (set_local $0
             ;;@ assembly/index.ts:382:12
             (i64.eq
              (i64.load
               ;;@ assembly/index.ts:382:22
               (i32.add
                (get_local $6)
                ;;@ assembly/index.ts:382:33
                (i32.const 8)
               )
              )
              ;;@ assembly/index.ts:382:39
              (i64.const 5499551997695193200)
             )
            )
           )
           ;;@ assembly/index.ts:379:17
           (if
            (get_local $0)
            ;;@ assembly/index.ts:383:12
            (block
             ;;@ assembly/index.ts:384:12
             (set_local $0
              ;;@ assembly/index.ts:384:26
              (call $assembly/index/readVaruint
               ;;@ assembly/index.ts:384:38
               (i32.const 32)
              )
             )
             ;;@ assembly/index.ts:385:12
             (set_local $3
              ;;@ assembly/index.ts:385:26
              (get_global $assembly/index/off)
             )
             ;;@ assembly/index.ts:386:12
             (set_global $assembly/index/off
              (i32.add
               (get_global $assembly/index/off)
               (get_local $0)
              )
             )
             ;;@ assembly/index.ts:387:12
             (call $assembly/index/onSourceMappingURL
              (get_local $3)
              (get_local $0)
             )
            )
           )
          )
         )
         ;;@ assembly/index.ts:392:10
         (set_global $assembly/index/off
          ;;@ assembly/index.ts:392:16
          (i32.add
           (get_local $8)
           (get_local $2)
          )
         )
         ;;@ assembly/index.ts:393:10
         (br $break|1)
        )
        ;;@ assembly/index.ts:398:10
        (set_global $assembly/index/off
         (i32.add
          (get_global $assembly/index/off)
          (get_local $2)
         )
        )
        ;;@ assembly/index.ts:399:10
        (br $break|1)
       )
       ;;@ assembly/index.ts:401:17
       (unreachable)
      )
      ;;@ assembly/index.ts:403:11
      (set_global $assembly/index/off
       (i32.add
        ;;@ assembly/index.ts:404:6
        (get_global $assembly/index/off)
        (get_local $2)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/index.ts:407:2
  (if
   ;;@ assembly/index.ts:407:6
   (i32.ne
    (get_global $assembly/index/off)
    (get_local $1)
   )
   ;;@ assembly/index.ts:407:18
   (unreachable)
  )
 )
)
