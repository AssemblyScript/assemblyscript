(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $I (func (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $fv (func (param f32)))
 (type $Fv (func (param f64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (import "pson" "onNull" (func $assembly/pson/pson.onNull))
 (import "pson" "onTrue" (func $assembly/pson/pson.onTrue))
 (import "pson" "onFalse" (func $assembly/pson/pson.onFalse))
 (import "pson" "onEObject" (func $assembly/pson/pson.onEObject))
 (import "pson" "onEArray" (func $assembly/pson/pson.onEArray))
 (import "pson" "onEString" (func $assembly/pson/pson.onEString))
 (import "pson" "onObject" (func $assembly/pson/pson.onObject (param i32)))
 (import "pson" "onArray" (func $assembly/pson/pson.onArray (param i32)))
 (import "pson" "onInteger" (func $assembly/pson/pson.onInteger (param i32)))
 (import "pson" "onLong" (func $assembly/pson/pson.onLong (param i32 i32)))
 (import "pson" "onFloat" (func $assembly/pson/pson.onFloat (param f32)))
 (import "pson" "onDouble" (func $assembly/pson/pson.onDouble (param f64)))
 (import "pson" "onString" (func $assembly/pson/pson.onString (param i32 i32)))
 (import "pson" "onBinary" (func $assembly/pson/pson.onBinary (param i32 i32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
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
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 4) "\10\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00p\00s\00o\00n\00.\00t\00s\00")
 (export "decode" (func $assembly/pson/decode))
 (export "memory" (memory $0))
 (func $assembly/pson/readVarint32 (; 15 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/pson.ts:137:2
  (set_local $0
   ;;@ assembly/pson.ts:137:19
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:138:2
  (set_local $1
   ;;@ assembly/pson.ts:138:19
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:139:2
  (block $break|0
   (loop $continue|0
    ;;@ assembly/pson.ts:139:5
    (block
     ;;@ assembly/pson.ts:140:4
     (set_local $3
      ;;@ assembly/pson.ts:140:12
      (i32.load8_u
       ;;@ assembly/pson.ts:140:21
       (block (result i32)
        (set_local $2
         (get_global $assembly/pson/offset)
        )
        (set_global $assembly/pson/offset
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (get_local $2)
       )
      )
     )
     ;;@ assembly/pson.ts:141:4
     (set_local $0
      (i32.or
       (get_local $0)
       ;;@ assembly/pson.ts:141:13
       (i32.shl
        (i32.and
         (i32.and
          ;;@ assembly/pson.ts:141:19
          (get_local $3)
          ;;@ assembly/pson.ts:141:23
          (i32.const 127)
         )
         (i32.const 255)
        )
        ;;@ assembly/pson.ts:141:32
        (i32.mul
         ;;@ assembly/pson.ts:141:33
         (i32.const 7)
         ;;@ assembly/pson.ts:141:37
         (block (result i32)
          (set_local $2
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
          )
          (get_local $2)
         )
        )
       )
      )
     )
    )
    (br_if $continue|0
     ;;@ assembly/pson.ts:142:11
     (i32.and
      (i32.and
       (get_local $3)
       ;;@ assembly/pson.ts:142:15
       (i32.const 128)
      )
      (i32.const 255)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:143:9
  (return
   (get_local $0)
  )
 )
 (func $assembly/pson/readVarint64 (; 16 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  ;;@ assembly/pson.ts:147:2
  (set_local $0
   ;;@ assembly/pson.ts:147:19
   (i64.const 0)
  )
  ;;@ assembly/pson.ts:148:2
  (set_local $1
   ;;@ assembly/pson.ts:148:19
   (i64.const 0)
  )
  ;;@ assembly/pson.ts:149:2
  (block $break|0
   (loop $continue|0
    ;;@ assembly/pson.ts:149:5
    (block
     ;;@ assembly/pson.ts:150:4
     (set_local $3
      ;;@ assembly/pson.ts:150:12
      (i32.load8_u
       ;;@ assembly/pson.ts:150:21
       (block (result i32)
        (set_local $2
         (get_global $assembly/pson/offset)
        )
        (set_global $assembly/pson/offset
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (get_local $2)
       )
      )
     )
     ;;@ assembly/pson.ts:151:4
     (set_local $0
      (i64.or
       (get_local $0)
       ;;@ assembly/pson.ts:151:13
       (i64.shl
        (i64.extend_u/i32
         ;;@ assembly/pson.ts:151:19
         (i32.and
          (i32.and
           (get_local $3)
           ;;@ assembly/pson.ts:151:23
           (i32.const 127)
          )
          (i32.const 255)
         )
        )
        ;;@ assembly/pson.ts:151:32
        (i64.mul
         ;;@ assembly/pson.ts:151:33
         (i64.const 7)
         ;;@ assembly/pson.ts:151:37
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
     ;;@ assembly/pson.ts:152:11
     (i32.and
      (i32.and
       (get_local $3)
       ;;@ assembly/pson.ts:152:15
       (i32.const 128)
      )
      (i32.const 255)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:153:9
  (return
   (get_local $0)
  )
 )
 (func $assembly/pson/decodeValue (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  ;;@ assembly/pson.ts:49:2
  (set_local $1
   ;;@ assembly/pson.ts:49:19
   (i32.load8_u
    ;;@ assembly/pson.ts:49:28
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
  ;;@ assembly/pson.ts:50:2
  (nop)
  ;;@ assembly/pson.ts:51:2
  (nop)
  ;;@ assembly/pson.ts:52:2
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
                     ;;@ assembly/pson.ts:52:10
                     (get_local $1)
                    )
                    (br_if $case0|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:54:9
                      (i32.const 240)
                     )
                    )
                    (br_if $case1|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:58:9
                      (i32.const 241)
                     )
                    )
                    (br_if $case2|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:62:9
                      (i32.const 242)
                     )
                    )
                    (br_if $case3|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:66:9
                      (i32.const 243)
                     )
                    )
                    (br_if $case4|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:70:9
                      (i32.const 244)
                     )
                    )
                    (br_if $case5|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:74:9
                      (i32.const 245)
                     )
                    )
                    (br_if $case6|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:78:9
                      (i32.const 246)
                     )
                    )
                    (br_if $case7|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:86:9
                      (i32.const 247)
                     )
                    )
                    (br_if $case8|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:92:9
                      (i32.const 248)
                     )
                    )
                    (br_if $case9|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:96:9
                      (i32.const 249)
                     )
                    )
                    (br_if $case10|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:101:9
                      (i32.const 250)
                     )
                    )
                    (br_if $case11|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:106:9
                      (i32.const 251)
                     )
                    )
                    (br_if $case12|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:111:9
                      (i32.const 252)
                     )
                    )
                    (br_if $case13|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:117:9
                      (i32.const 253)
                     )
                    )
                    (br_if $case14|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:118:9
                      (i32.const 254)
                     )
                    )
                    (br_if $case15|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:122:9
                      (i32.const 255)
                     )
                    )
                    (br $case16|0)
                   )
                   ;;@ assembly/pson.ts:55:11
                   (call $assembly/pson/pson.onNull)
                   ;;@ assembly/pson.ts:56:6
                   (br $break|0)
                  )
                  ;;@ assembly/pson.ts:59:11
                  (call $assembly/pson/pson.onTrue)
                  ;;@ assembly/pson.ts:60:6
                  (br $break|0)
                 )
                 ;;@ assembly/pson.ts:63:11
                 (call $assembly/pson/pson.onFalse)
                 ;;@ assembly/pson.ts:64:6
                 (br $break|0)
                )
                ;;@ assembly/pson.ts:67:11
                (call $assembly/pson/pson.onEObject)
                ;;@ assembly/pson.ts:68:6
                (br $break|0)
               )
               ;;@ assembly/pson.ts:71:11
               (call $assembly/pson/pson.onEArray)
               ;;@ assembly/pson.ts:72:6
               (br $break|0)
              )
              ;;@ assembly/pson.ts:75:11
              (call $assembly/pson/pson.onEString)
              ;;@ assembly/pson.ts:76:6
              (br $break|0)
             )
             ;;@ assembly/pson.ts:79:11
             (call $assembly/pson/pson.onObject
              ;;@ assembly/pson.ts:79:20
              (tee_local $2
               ;;@ assembly/pson.ts:79:27
               (call $assembly/pson/readVarint32)
              )
             )
             ;;@ assembly/pson.ts:80:6
             (block $break|1
              (loop $continue|1
               (if
                ;;@ assembly/pson.ts:80:13
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
                  ;;@ assembly/pson.ts:81:8
                  (call $assembly/pson/decodeValue)
                  ;;@ assembly/pson.ts:82:8
                  (call $assembly/pson/decodeValue)
                 )
                 (br $continue|1)
                )
               )
              )
             )
             ;;@ assembly/pson.ts:84:6
             (br $break|0)
            )
            ;;@ assembly/pson.ts:87:11
            (call $assembly/pson/pson.onArray
             ;;@ assembly/pson.ts:87:19
             (tee_local $2
              ;;@ assembly/pson.ts:87:26
              (call $assembly/pson/readVarint32)
             )
            )
            ;;@ assembly/pson.ts:88:6
            (block $break|2
             (loop $continue|2
              (if
               ;;@ assembly/pson.ts:88:13
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
                ;;@ assembly/pson.ts:89:8
                (call $assembly/pson/decodeValue)
                (br $continue|2)
               )
              )
             )
            )
            ;;@ assembly/pson.ts:90:6
            (br $break|0)
           )
           ;;@ assembly/pson.ts:93:11
           (call $assembly/pson/pson.onInteger
            ;;@ assembly/pson.ts:93:21
            (i32.xor
             (i32.shr_u
              ;;@ assembly/pson.ts:93:22
              (tee_local $2
               ;;@ assembly/pson.ts:93:30
               (call $assembly/pson/readVarint32)
              )
              ;;@ assembly/pson.ts:93:49
              (i32.const 1)
             )
             ;;@ assembly/pson.ts:93:54
             (i32.sub
              (i32.const 0)
              ;;@ assembly/pson.ts:93:55
              (i32.and
               ;;@ assembly/pson.ts:93:56
               (get_local $2)
               ;;@ assembly/pson.ts:93:63
               (i32.const 1)
              )
             )
            )
           )
           ;;@ assembly/pson.ts:94:6
           (br $break|0)
          )
          ;;@ assembly/pson.ts:97:6
          (set_local $3
           ;;@ assembly/pson.ts:97:13
           (i64.xor
            (i64.shr_u
             ;;@ assembly/pson.ts:97:14
             (tee_local $3
              ;;@ assembly/pson.ts:97:22
              (call $assembly/pson/readVarint64)
             )
             ;;@ assembly/pson.ts:97:41
             (i64.const 1)
            )
            ;;@ assembly/pson.ts:97:46
            (i64.sub
             (i64.const 0)
             ;;@ assembly/pson.ts:97:47
             (i64.and
              ;;@ assembly/pson.ts:97:48
              (get_local $3)
              ;;@ assembly/pson.ts:97:55
              (i64.const 1)
             )
            )
           )
          )
          ;;@ assembly/pson.ts:98:11
          (call $assembly/pson/pson.onLong
           ;;@ assembly/pson.ts:98:18
           (i32.wrap/i64
            (get_local $3)
           )
           ;;@ assembly/pson.ts:98:29
           (i32.wrap/i64
            ;;@ assembly/pson.ts:98:35
            (i64.shr_u
             (get_local $3)
             ;;@ assembly/pson.ts:98:44
             (i64.const 32)
            )
           )
          )
          ;;@ assembly/pson.ts:99:6
          (br $break|0)
         )
         ;;@ assembly/pson.ts:102:11
         (call $assembly/pson/pson.onFloat
          ;;@ assembly/pson.ts:102:19
          (f32.load
           ;;@ assembly/pson.ts:102:29
           (get_global $assembly/pson/offset)
          )
         )
         ;;@ assembly/pson.ts:103:6
         (set_global $assembly/pson/offset
          (i32.add
           (get_global $assembly/pson/offset)
           ;;@ assembly/pson.ts:103:16
           (i32.const 4)
          )
         )
         ;;@ assembly/pson.ts:104:6
         (br $break|0)
        )
        ;;@ assembly/pson.ts:107:11
        (call $assembly/pson/pson.onDouble
         ;;@ assembly/pson.ts:107:20
         (f64.load
          ;;@ assembly/pson.ts:107:30
          (get_global $assembly/pson/offset)
         )
        )
        ;;@ assembly/pson.ts:108:6
        (set_global $assembly/pson/offset
         (i32.add
          (get_global $assembly/pson/offset)
          ;;@ assembly/pson.ts:108:16
          (i32.const 8)
         )
        )
        ;;@ assembly/pson.ts:109:6
        (br $break|0)
       )
       ;;@ assembly/pson.ts:112:6
       (set_local $2
        ;;@ assembly/pson.ts:112:13
        (call $assembly/pson/readVarint32)
       )
       ;;@ assembly/pson.ts:113:11
       (call $assembly/pson/pson.onString
        ;;@ assembly/pson.ts:113:20
        (get_global $assembly/pson/offset)
        ;;@ assembly/pson.ts:113:28
        (get_local $2)
       )
       ;;@ assembly/pson.ts:114:6
       (set_global $assembly/pson/offset
        (i32.add
         (get_global $assembly/pson/offset)
         ;;@ assembly/pson.ts:114:16
         (get_local $2)
        )
       )
       ;;@ assembly/pson.ts:115:6
       (br $break|0)
      )
     )
     ;;@ assembly/pson.ts:120:6
     (unreachable)
    )
    ;;@ assembly/pson.ts:123:6
    (set_local $2
     ;;@ assembly/pson.ts:123:13
     (call $assembly/pson/readVarint32)
    )
    ;;@ assembly/pson.ts:124:11
    (call $assembly/pson/pson.onBinary
     ;;@ assembly/pson.ts:124:20
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:124:28
     (get_local $2)
    )
    ;;@ assembly/pson.ts:125:6
    (set_global $assembly/pson/offset
     (i32.add
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:125:16
      (get_local $2)
     )
    )
    ;;@ assembly/pson.ts:126:6
    (br $break|0)
   )
   ;;@ assembly/pson.ts:129:6
   (if
    ;;@ assembly/pson.ts:129:10
    (i32.gt_u
     (get_local $1)
     ;;@ assembly/pson.ts:129:18
     (i32.const 239)
    )
    ;;@ assembly/pson.ts:130:8
    (unreachable)
   )
   ;;@ assembly/pson.ts:131:11
   (call $assembly/pson/pson.onInteger
    ;;@ assembly/pson.ts:131:21
    (i32.xor
     (i32.shr_u
      ;;@ assembly/pson.ts:131:22
      (get_local $1)
      ;;@ assembly/pson.ts:131:31
      (i32.const 1)
     )
     ;;@ assembly/pson.ts:131:36
     (i32.sub
      (i32.const 0)
      ;;@ assembly/pson.ts:131:37
      (i32.and
       ;;@ assembly/pson.ts:131:38
       (get_local $1)
       ;;@ assembly/pson.ts:131:46
       (i32.const 1)
      )
     )
    )
   )
   ;;@ assembly/pson.ts:132:6
   (br $break|0)
  )
 )
 (func $assembly/pson/decode (; 18 ;) (type $iv) (param $0 i32)
  ;;@ assembly/pson.ts:42:2
  (set_global $assembly/pson/offset
   ;;@ assembly/pson.ts:42:11
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:43:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ assembly/pson.ts:43:9
     (i32.lt_u
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:43:18
      (get_local $0)
     )
     (block
      ;;@ assembly/pson.ts:44:4
      (call $assembly/pson/decodeValue)
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:45:2
  (if
   (i32.eqz
    ;;@ assembly/pson.ts:45:9
    (i32.eq
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:45:19
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 45)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
)
