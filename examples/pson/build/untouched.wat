(module
 (type $v (func))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $fv (func (param f32)))
 (type $Fv (func (param f64)))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (import "pson" "onNull" (func $assembly/pson/onNull))
 (import "pson" "onTrue" (func $assembly/pson/onTrue))
 (import "pson" "onFalse" (func $assembly/pson/onFalse))
 (import "pson" "onEObject" (func $assembly/pson/onEObject))
 (import "pson" "onEArray" (func $assembly/pson/onEArray))
 (import "pson" "onEString" (func $assembly/pson/onEString))
 (import "pson" "onObject" (func $assembly/pson/onObject (param i32)))
 (import "pson" "onArray" (func $assembly/pson/onArray (param i32)))
 (import "pson" "onInteger" (func $assembly/pson/onInteger (param i32)))
 (import "pson" "onLong" (func $assembly/pson/onLong (param i32 i32)))
 (import "pson" "onFloat" (func $assembly/pson/onFloat (param f32)))
 (import "pson" "onDouble" (func $assembly/pson/onDouble (param f64)))
 (import "pson" "onString" (func $assembly/pson/onString (param i32 i32)))
 (import "pson" "onBinary" (func $assembly/pson/onBinary (param i32 i32)))
 (global $assembly/pson/offset (mut i32) (i32.const 0))
 (global $assembly/pson/Token.ZERO i32 (i32.const 0))
 (global $assembly/pson/Token.MAX i32 (i32.const 239))
 (global $assembly/pson/Token.NULL i32 (i32.const 240))
 (global $assembly/pson/Token.TRUE i32 (i32.const 241))
 (global $assembly/pson/Token.FALSE i32 (i32.const 242))
 (global $assembly/pson/Token.EOBJECT i32 (i32.const 243))
 (global $assembly/pson/Token.EARRAY i32 (i32.const 244))
 (global $assembly/pson/Token.ESTRING i32 (i32.const 245))
 (global $assembly/pson/Token.OBJECT i32 (i32.const 246))
 (global $assembly/pson/Token.ARRAY i32 (i32.const 247))
 (global $assembly/pson/Token.INTEGER i32 (i32.const 248))
 (global $assembly/pson/Token.LONG i32 (i32.const 249))
 (global $assembly/pson/Token.FLOAT i32 (i32.const 250))
 (global $assembly/pson/Token.DOUBLE i32 (i32.const 251))
 (global $assembly/pson/Token.STRING i32 (i32.const 252))
 (global $assembly/pson/Token.STRING_ADD i32 (i32.const 253))
 (global $assembly/pson/Token.STRING_GET i32 (i32.const 254))
 (global $assembly/pson/Token.BINARY i32 (i32.const 255))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "onNull" (func $assembly/pson/onNull))
 (export "onTrue" (func $assembly/pson/onTrue))
 (export "onFalse" (func $assembly/pson/onFalse))
 (export "onEObject" (func $assembly/pson/onEObject))
 (export "onEArray" (func $assembly/pson/onEArray))
 (export "onEString" (func $assembly/pson/onEString))
 (export "onObject" (func $assembly/pson/onObject))
 (export "onArray" (func $assembly/pson/onArray))
 (export "onInteger" (func $assembly/pson/onInteger))
 (export "onLong" (func $assembly/pson/onLong))
 (export "onFloat" (func $assembly/pson/onFloat))
 (export "onDouble" (func $assembly/pson/onDouble))
 (export "onString" (func $assembly/pson/onString))
 (export "onBinary" (func $assembly/pson/onBinary))
 (export "decode" (func $assembly/pson/decode))
 (func $assembly/pson/readVarint32 (; 14 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/pson.ts:133:2
  (set_local $0
   ;;@ assembly/pson.ts:133:19
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:134:2
  (set_local $1
   ;;@ assembly/pson.ts:134:19
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:136:2
  (block $break|0
   (loop $continue|0
    ;;@ assembly/pson.ts:136:5
    (block
     ;;@ assembly/pson.ts:137:4
     (set_local $2
      ;;@ assembly/pson.ts:137:8
      (i32.load8_u
       ;;@ assembly/pson.ts:137:17
       (block (result i32)
        (set_local $3
         (get_global $assembly/pson/offset)
        )
        (set_global $assembly/pson/offset
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
        (get_local $3)
       )
      )
     )
     ;;@ assembly/pson.ts:138:4
     (set_local $0
      (i32.or
       (get_local $0)
       ;;@ assembly/pson.ts:138:13
       (i32.shl
        (i32.and
         ;;@ assembly/pson.ts:138:19
         (get_local $2)
         ;;@ assembly/pson.ts:138:23
         (i32.const 127)
        )
        ;;@ assembly/pson.ts:138:32
        (i32.mul
         ;;@ assembly/pson.ts:138:33
         (i32.const 7)
         ;;@ assembly/pson.ts:138:37
         (block (result i32)
          (set_local $3
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $3)
            (i32.const 1)
           )
          )
          (get_local $3)
         )
        )
       )
      )
     )
    )
    (br_if $continue|0
     ;;@ assembly/pson.ts:139:11
     (i32.and
      (get_local $2)
      ;;@ assembly/pson.ts:139:15
      (i32.const 128)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:140:9
  (get_local $0)
 )
 (func $assembly/pson/readVarint64 (; 15 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  ;;@ assembly/pson.ts:144:2
  (set_local $0
   ;;@ assembly/pson.ts:144:19
   (i64.const 0)
  )
  ;;@ assembly/pson.ts:145:2
  (set_local $1
   ;;@ assembly/pson.ts:145:19
   (i64.const 0)
  )
  ;;@ assembly/pson.ts:147:2
  (block $break|0
   (loop $continue|0
    ;;@ assembly/pson.ts:147:5
    (block
     ;;@ assembly/pson.ts:148:4
     (set_local $2
      ;;@ assembly/pson.ts:148:8
      (i32.load8_u
       ;;@ assembly/pson.ts:148:17
       (block (result i32)
        (set_local $3
         (get_global $assembly/pson/offset)
        )
        (set_global $assembly/pson/offset
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
        (get_local $3)
       )
      )
     )
     ;;@ assembly/pson.ts:149:4
     (set_local $0
      (i64.or
       (get_local $0)
       ;;@ assembly/pson.ts:149:13
       (i64.shl
        (i64.extend_u/i32
         ;;@ assembly/pson.ts:149:19
         (i32.and
          (get_local $2)
          ;;@ assembly/pson.ts:149:23
          (i32.const 127)
         )
        )
        ;;@ assembly/pson.ts:149:32
        (i64.mul
         ;;@ assembly/pson.ts:149:33
         (i64.const 7)
         ;;@ assembly/pson.ts:149:37
         (block (result i64)
          (set_local $4
           (get_local $1)
          )
          (set_local $1
           (i64.add
            (get_local $4)
            (i64.const 1)
           )
          )
          (get_local $4)
         )
        )
       )
      )
     )
    )
    (br_if $continue|0
     ;;@ assembly/pson.ts:150:11
     (i32.and
      (get_local $2)
      ;;@ assembly/pson.ts:150:15
      (i32.const 128)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:151:9
  (get_local $0)
 )
 (func $assembly/pson/decodeValue (; 16 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  ;;@ assembly/pson.ts:46:2
  (set_local $1
   ;;@ assembly/pson.ts:46:19
   (i32.load8_u
    ;;@ assembly/pson.ts:46:28
    (block (result i32)
     (set_local $0
      (get_global $assembly/pson/offset)
     )
     (set_global $assembly/pson/offset
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (get_local $0)
    )
   )
  )
  ;;@ assembly/pson.ts:49:2
  (block $break|0
   (block $case16|0
    (block $case15|0
     (block $case14|0
      (block $case13|0
       (block $case12|0
        (block $case11|0
         (block $case10|0
          (block $case9|0
           (block $case8|0
            (block $case7|0
             (block $case6|0
              (block $case5|0
               (block $case4|0
                (block $case3|0
                 (block $case2|0
                  (block $case1|0
                   (block $case0|0
                    (set_local $0
                     ;;@ assembly/pson.ts:49:10
                     (get_local $1)
                    )
                    (br_if $case0|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:50:9
                      (get_global $assembly/pson/Token.NULL)
                     )
                    )
                    (br_if $case1|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:54:9
                      (get_global $assembly/pson/Token.TRUE)
                     )
                    )
                    (br_if $case2|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:58:9
                      (get_global $assembly/pson/Token.FALSE)
                     )
                    )
                    (br_if $case3|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:62:9
                      (get_global $assembly/pson/Token.EOBJECT)
                     )
                    )
                    (br_if $case4|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:66:9
                      (get_global $assembly/pson/Token.EARRAY)
                     )
                    )
                    (br_if $case5|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:70:9
                      (get_global $assembly/pson/Token.ESTRING)
                     )
                    )
                    (br_if $case6|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:74:9
                      (get_global $assembly/pson/Token.OBJECT)
                     )
                    )
                    (br_if $case7|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:82:9
                      (get_global $assembly/pson/Token.ARRAY)
                     )
                    )
                    (br_if $case8|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:87:9
                      (get_global $assembly/pson/Token.INTEGER)
                     )
                    )
                    (br_if $case9|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:91:9
                      (get_global $assembly/pson/Token.LONG)
                     )
                    )
                    (br_if $case10|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:96:9
                      (get_global $assembly/pson/Token.FLOAT)
                     )
                    )
                    (br_if $case11|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:101:9
                      (get_global $assembly/pson/Token.DOUBLE)
                     )
                    )
                    (br_if $case12|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:106:9
                      (get_global $assembly/pson/Token.STRING)
                     )
                    )
                    (br_if $case13|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:112:9
                      (get_global $assembly/pson/Token.STRING_ADD)
                     )
                    )
                    (br_if $case14|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:113:9
                      (get_global $assembly/pson/Token.STRING_GET)
                     )
                    )
                    (br_if $case15|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:118:9
                      (get_global $assembly/pson/Token.BINARY)
                     )
                    )
                    (br $case16|0)
                   )
                   ;;@ assembly/pson.ts:50:21
                   (block
                    ;;@ assembly/pson.ts:51:6
                    (call $assembly/pson/onNull)
                    ;;@ assembly/pson.ts:52:6
                    (br $break|0)
                   )
                  )
                  ;;@ assembly/pson.ts:54:21
                  (block
                   ;;@ assembly/pson.ts:55:6
                   (call $assembly/pson/onTrue)
                   ;;@ assembly/pson.ts:56:6
                   (br $break|0)
                  )
                 )
                 ;;@ assembly/pson.ts:58:22
                 (block
                  ;;@ assembly/pson.ts:59:6
                  (call $assembly/pson/onFalse)
                  ;;@ assembly/pson.ts:60:6
                  (br $break|0)
                 )
                )
                ;;@ assembly/pson.ts:62:24
                (block
                 ;;@ assembly/pson.ts:63:6
                 (call $assembly/pson/onEObject)
                 ;;@ assembly/pson.ts:64:6
                 (br $break|0)
                )
               )
               ;;@ assembly/pson.ts:66:23
               (block
                ;;@ assembly/pson.ts:67:6
                (call $assembly/pson/onEArray)
                ;;@ assembly/pson.ts:68:6
                (br $break|0)
               )
              )
              ;;@ assembly/pson.ts:70:24
              (block
               ;;@ assembly/pson.ts:71:6
               (call $assembly/pson/onEString)
               ;;@ assembly/pson.ts:72:6
               (br $break|0)
              )
             )
             ;;@ assembly/pson.ts:74:23
             (block
              ;;@ assembly/pson.ts:75:6
              (call $assembly/pson/onObject
               ;;@ assembly/pson.ts:75:15
               (tee_local $2
                ;;@ assembly/pson.ts:75:22
                (call $assembly/pson/readVarint32)
               )
              )
              ;;@ assembly/pson.ts:76:6
              (block $break|1
               (loop $continue|1
                (if
                 ;;@ assembly/pson.ts:76:13
                 (block (result i32)
                  (set_local $0
                   (get_local $2)
                  )
                  (set_local $2
                   (i32.sub
                    (get_local $0)
                    (i32.const 1)
                   )
                  )
                  (get_local $0)
                 )
                 (block
                  (block
                   ;;@ assembly/pson.ts:77:8
                   (call $assembly/pson/decodeValue)
                   ;;@ assembly/pson.ts:78:8
                   (call $assembly/pson/decodeValue)
                  )
                  (br $continue|1)
                 )
                )
               )
              )
              ;;@ assembly/pson.ts:80:6
              (br $break|0)
             )
            )
            ;;@ assembly/pson.ts:82:22
            (block
             ;;@ assembly/pson.ts:83:6
             (call $assembly/pson/onArray
              ;;@ assembly/pson.ts:83:14
              (tee_local $2
               ;;@ assembly/pson.ts:83:21
               (call $assembly/pson/readVarint32)
              )
             )
             ;;@ assembly/pson.ts:84:6
             (block $break|2
              (loop $continue|2
               (if
                ;;@ assembly/pson.ts:84:13
                (block (result i32)
                 (set_local $0
                  (get_local $2)
                 )
                 (set_local $2
                  (i32.sub
                   (get_local $0)
                   (i32.const 1)
                  )
                 )
                 (get_local $0)
                )
                (block
                 ;;@ assembly/pson.ts:84:21
                 (call $assembly/pson/decodeValue)
                 (br $continue|2)
                )
               )
              )
             )
             ;;@ assembly/pson.ts:85:6
             (br $break|0)
            )
           )
           ;;@ assembly/pson.ts:87:24
           (block
            ;;@ assembly/pson.ts:88:6
            (call $assembly/pson/onInteger
             ;;@ assembly/pson.ts:88:16
             (i32.xor
              (i32.shr_u
               ;;@ assembly/pson.ts:88:17
               (tee_local $2
                ;;@ assembly/pson.ts:88:25
                (call $assembly/pson/readVarint32)
               )
               ;;@ assembly/pson.ts:88:44
               (i32.const 1)
              )
              ;;@ assembly/pson.ts:88:49
              (i32.sub
               (i32.const 0)
               ;;@ assembly/pson.ts:88:50
               (i32.and
                ;;@ assembly/pson.ts:88:51
                (get_local $2)
                ;;@ assembly/pson.ts:88:58
                (i32.const 1)
               )
              )
             )
            )
            ;;@ assembly/pson.ts:89:6
            (br $break|0)
           )
          )
          ;;@ assembly/pson.ts:91:21
          (block
           ;;@ assembly/pson.ts:92:6
           (set_local $3
            ;;@ assembly/pson.ts:92:13
            (i64.xor
             (i64.shr_u
              ;;@ assembly/pson.ts:92:14
              (tee_local $3
               ;;@ assembly/pson.ts:92:22
               (call $assembly/pson/readVarint64)
              )
              ;;@ assembly/pson.ts:92:41
              (i64.const 1)
             )
             ;;@ assembly/pson.ts:92:46
             (i64.sub
              (i64.const 0)
              ;;@ assembly/pson.ts:92:47
              (i64.and
               ;;@ assembly/pson.ts:92:48
               (get_local $3)
               ;;@ assembly/pson.ts:92:55
               (i64.const 1)
              )
             )
            )
           )
           ;;@ assembly/pson.ts:93:6
           (call $assembly/pson/onLong
            ;;@ assembly/pson.ts:93:13
            (i32.wrap/i64
             (get_local $3)
            )
            ;;@ assembly/pson.ts:93:24
            (i32.wrap/i64
             ;;@ assembly/pson.ts:93:30
             (i64.shr_u
              (get_local $3)
              ;;@ assembly/pson.ts:93:39
              (i64.const 32)
             )
            )
           )
           ;;@ assembly/pson.ts:94:6
           (br $break|0)
          )
         )
         ;;@ assembly/pson.ts:96:22
         (block
          ;;@ assembly/pson.ts:97:6
          (call $assembly/pson/onFloat
           ;;@ assembly/pson.ts:97:14
           (f32.load
            ;;@ assembly/pson.ts:97:24
            (get_global $assembly/pson/offset)
           )
          )
          ;;@ assembly/pson.ts:98:6
          (set_global $assembly/pson/offset
           (i32.add
            (get_global $assembly/pson/offset)
            ;;@ assembly/pson.ts:98:16
            (i32.const 4)
           )
          )
          ;;@ assembly/pson.ts:99:6
          (br $break|0)
         )
        )
        ;;@ assembly/pson.ts:101:23
        (block
         ;;@ assembly/pson.ts:102:6
         (call $assembly/pson/onDouble
          ;;@ assembly/pson.ts:102:15
          (f64.load
           ;;@ assembly/pson.ts:102:25
           (get_global $assembly/pson/offset)
          )
         )
         ;;@ assembly/pson.ts:103:6
         (set_global $assembly/pson/offset
          (i32.add
           (get_global $assembly/pson/offset)
           ;;@ assembly/pson.ts:103:16
           (i32.const 8)
          )
         )
         ;;@ assembly/pson.ts:104:6
         (br $break|0)
        )
       )
       ;;@ assembly/pson.ts:106:23
       (block
        ;;@ assembly/pson.ts:107:6
        (set_local $2
         ;;@ assembly/pson.ts:107:13
         (call $assembly/pson/readVarint32)
        )
        ;;@ assembly/pson.ts:108:6
        (call $assembly/pson/onString
         ;;@ assembly/pson.ts:108:15
         (get_global $assembly/pson/offset)
         ;;@ assembly/pson.ts:108:23
         (get_local $2)
        )
        ;;@ assembly/pson.ts:109:6
        (set_global $assembly/pson/offset
         (i32.add
          (get_global $assembly/pson/offset)
          ;;@ assembly/pson.ts:109:16
          (get_local $2)
         )
        )
        ;;@ assembly/pson.ts:110:6
        (br $break|0)
       )
      )
     )
     ;;@ assembly/pson.ts:113:27
     (block
      ;;@ assembly/pson.ts:115:6
      (unreachable)
      ;;@ assembly/pson.ts:116:6
      (br $break|0)
     )
    )
    ;;@ assembly/pson.ts:118:23
    (block
     ;;@ assembly/pson.ts:119:6
     (set_local $2
      ;;@ assembly/pson.ts:119:13
      (call $assembly/pson/readVarint32)
     )
     ;;@ assembly/pson.ts:120:6
     (call $assembly/pson/onBinary
      ;;@ assembly/pson.ts:120:15
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:120:23
      (get_local $2)
     )
     ;;@ assembly/pson.ts:121:6
     (set_global $assembly/pson/offset
      (i32.add
       (get_global $assembly/pson/offset)
       ;;@ assembly/pson.ts:121:16
       (get_local $2)
      )
     )
     ;;@ assembly/pson.ts:122:6
     (br $break|0)
    )
   )
   ;;@ assembly/pson.ts:124:13
   (block
    ;;@ assembly/pson.ts:125:6
    (if
     ;;@ assembly/pson.ts:125:10
     (i32.gt_u
      (get_local $1)
      ;;@ assembly/pson.ts:125:18
      (get_global $assembly/pson/Token.MAX)
     )
     ;;@ assembly/pson.ts:125:34
     (unreachable)
    )
    ;;@ assembly/pson.ts:126:6
    (call $assembly/pson/onInteger
     ;;@ assembly/pson.ts:126:16
     (i32.xor
      (i32.shr_u
       ;;@ assembly/pson.ts:126:17
       (get_local $1)
       ;;@ assembly/pson.ts:126:26
       (i32.const 1)
      )
      ;;@ assembly/pson.ts:126:31
      (i32.sub
       (i32.const 0)
       ;;@ assembly/pson.ts:126:32
       (i32.and
        ;;@ assembly/pson.ts:126:33
        (get_local $1)
        ;;@ assembly/pson.ts:126:41
        (i32.const 1)
       )
      )
     )
    )
    ;;@ assembly/pson.ts:127:6
    (br $break|0)
   )
  )
 )
 (func $assembly/pson/decode (; 17 ;) (type $iv) (param $0 i32)
  ;;@ assembly/pson.ts:40:2
  (set_global $assembly/pson/offset
   ;;@ assembly/pson.ts:40:11
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:41:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/pson.ts:41:9
     (i32.lt_u
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:41:18
      (get_local $0)
     )
     (block
      ;;@ assembly/pson.ts:41:26
      (call $assembly/pson/decodeValue)
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:42:2
  (if
   ;;@ assembly/pson.ts:42:6
   (i32.ne
    (get_global $assembly/pson/offset)
    ;;@ assembly/pson.ts:42:16
    (get_local $0)
   )
   ;;@ assembly/pson.ts:42:24
   (unreachable)
  )
 )
)
