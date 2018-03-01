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
  ;;@ assembly/pson.ts:140:2
  (set_local $0
   ;;@ assembly/pson.ts:140:19
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:141:2
  (set_local $1
   ;;@ assembly/pson.ts:141:19
   (i32.const 0)
  )
  ;;@ assembly/pson.ts:142:2
  (block $break|0
   (loop $continue|0
    ;;@ assembly/pson.ts:142:5
    (block
     ;;@ assembly/pson.ts:143:4
     (set_local $3
      ;;@ assembly/pson.ts:143:12
      (i32.load8_u
       ;;@ assembly/pson.ts:143:21
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
     ;;@ assembly/pson.ts:144:4
     (set_local $0
      (i32.or
       (get_local $0)
       ;;@ assembly/pson.ts:144:13
       (i32.shl
        (i32.and
         (i32.and
          ;;@ assembly/pson.ts:144:19
          (get_local $3)
          ;;@ assembly/pson.ts:144:23
          (i32.const 127)
         )
         (i32.const 255)
        )
        ;;@ assembly/pson.ts:144:32
        (i32.mul
         ;;@ assembly/pson.ts:144:33
         (i32.const 7)
         ;;@ assembly/pson.ts:144:37
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
     ;;@ assembly/pson.ts:145:11
     (i32.and
      (i32.and
       (get_local $3)
       ;;@ assembly/pson.ts:145:15
       (i32.const 128)
      )
      (i32.const 255)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:146:9
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
  ;;@ assembly/pson.ts:150:2
  (set_local $0
   ;;@ assembly/pson.ts:150:19
   (i64.const 0)
  )
  ;;@ assembly/pson.ts:151:2
  (set_local $1
   ;;@ assembly/pson.ts:151:19
   (i64.const 0)
  )
  ;;@ assembly/pson.ts:152:2
  (block $break|0
   (loop $continue|0
    ;;@ assembly/pson.ts:152:5
    (block
     ;;@ assembly/pson.ts:153:4
     (set_local $3
      ;;@ assembly/pson.ts:153:12
      (i32.load8_u
       ;;@ assembly/pson.ts:153:21
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
     ;;@ assembly/pson.ts:154:4
     (set_local $0
      (i64.or
       (get_local $0)
       ;;@ assembly/pson.ts:154:13
       (i64.shl
        (i64.extend_u/i32
         ;;@ assembly/pson.ts:154:19
         (i32.and
          (i32.and
           (get_local $3)
           ;;@ assembly/pson.ts:154:23
           (i32.const 127)
          )
          (i32.const 255)
         )
        )
        ;;@ assembly/pson.ts:154:32
        (i64.mul
         ;;@ assembly/pson.ts:154:33
         (i64.const 7)
         ;;@ assembly/pson.ts:154:37
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
     ;;@ assembly/pson.ts:155:11
     (i32.and
      (i32.and
       (get_local $3)
       ;;@ assembly/pson.ts:155:15
       (i32.const 128)
      )
      (i32.const 255)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:156:9
  (return
   (get_local $0)
  )
 )
 (func $assembly/pson/decodeValue (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  ;;@ assembly/pson.ts:50:2
  (set_local $1
   ;;@ assembly/pson.ts:50:19
   (i32.load8_u
    ;;@ assembly/pson.ts:50:28
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
  ;;@ assembly/pson.ts:51:2
  (nop)
  ;;@ assembly/pson.ts:52:2
  (nop)
  ;;@ assembly/pson.ts:53:2
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
                     ;;@ assembly/pson.ts:53:10
                     (get_local $1)
                    )
                    (br_if $case0|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:55:9
                      (i32.const 240)
                     )
                    )
                    (br_if $case1|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:59:9
                      (i32.const 241)
                     )
                    )
                    (br_if $case2|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:63:9
                      (i32.const 242)
                     )
                    )
                    (br_if $case3|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:67:9
                      (i32.const 243)
                     )
                    )
                    (br_if $case4|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:71:9
                      (i32.const 244)
                     )
                    )
                    (br_if $case5|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:75:9
                      (i32.const 245)
                     )
                    )
                    (br_if $case6|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:79:9
                      (i32.const 246)
                     )
                    )
                    (br_if $case7|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:87:9
                      (i32.const 247)
                     )
                    )
                    (br_if $case8|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:94:9
                      (i32.const 248)
                     )
                    )
                    (br_if $case9|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:98:9
                      (i32.const 249)
                     )
                    )
                    (br_if $case10|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:103:9
                      (i32.const 250)
                     )
                    )
                    (br_if $case11|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:108:9
                      (i32.const 251)
                     )
                    )
                    (br_if $case12|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:113:9
                      (i32.const 252)
                     )
                    )
                    (br_if $case13|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:119:9
                      (i32.const 253)
                     )
                    )
                    (br_if $case14|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:120:9
                      (i32.const 254)
                     )
                    )
                    (br_if $case15|0
                     (i32.eq
                      (get_local $0)
                      ;;@ assembly/pson.ts:124:9
                      (i32.const 255)
                     )
                    )
                    (br $case16|0)
                   )
                   ;;@ assembly/pson.ts:56:11
                   (call $assembly/pson/pson.onNull)
                   ;;@ assembly/pson.ts:57:6
                   (br $break|0)
                  )
                  ;;@ assembly/pson.ts:60:11
                  (call $assembly/pson/pson.onTrue)
                  ;;@ assembly/pson.ts:61:6
                  (br $break|0)
                 )
                 ;;@ assembly/pson.ts:64:11
                 (call $assembly/pson/pson.onFalse)
                 ;;@ assembly/pson.ts:65:6
                 (br $break|0)
                )
                ;;@ assembly/pson.ts:68:11
                (call $assembly/pson/pson.onEObject)
                ;;@ assembly/pson.ts:69:6
                (br $break|0)
               )
               ;;@ assembly/pson.ts:72:11
               (call $assembly/pson/pson.onEArray)
               ;;@ assembly/pson.ts:73:6
               (br $break|0)
              )
              ;;@ assembly/pson.ts:76:11
              (call $assembly/pson/pson.onEString)
              ;;@ assembly/pson.ts:77:6
              (br $break|0)
             )
             ;;@ assembly/pson.ts:80:11
             (call $assembly/pson/pson.onObject
              ;;@ assembly/pson.ts:80:20
              (tee_local $2
               ;;@ assembly/pson.ts:80:27
               (call $assembly/pson/readVarint32)
              )
             )
             ;;@ assembly/pson.ts:81:6
             (block $break|1
              (loop $continue|1
               (if
                ;;@ assembly/pson.ts:81:13
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
                  ;;@ assembly/pson.ts:82:8
                  (call $assembly/pson/decodeValue)
                  ;;@ assembly/pson.ts:83:8
                  (call $assembly/pson/decodeValue)
                 )
                 (br $continue|1)
                )
               )
              )
             )
             ;;@ assembly/pson.ts:85:6
             (br $break|0)
            )
            ;;@ assembly/pson.ts:88:11
            (call $assembly/pson/pson.onArray
             ;;@ assembly/pson.ts:88:19
             (tee_local $2
              ;;@ assembly/pson.ts:88:26
              (call $assembly/pson/readVarint32)
             )
            )
            ;;@ assembly/pson.ts:89:6
            (block $break|2
             (loop $continue|2
              (if
               ;;@ assembly/pson.ts:89:13
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
                 ;;@ assembly/pson.ts:90:8
                 (call $assembly/pson/decodeValue)
                )
                (br $continue|2)
               )
              )
             )
            )
            ;;@ assembly/pson.ts:92:6
            (br $break|0)
           )
           ;;@ assembly/pson.ts:95:11
           (call $assembly/pson/pson.onInteger
            ;;@ assembly/pson.ts:95:21
            (i32.xor
             (i32.shr_u
              ;;@ assembly/pson.ts:95:22
              (tee_local $2
               ;;@ assembly/pson.ts:95:30
               (call $assembly/pson/readVarint32)
              )
              ;;@ assembly/pson.ts:95:49
              (i32.const 1)
             )
             ;;@ assembly/pson.ts:95:54
             (i32.sub
              (i32.const 0)
              ;;@ assembly/pson.ts:95:55
              (i32.and
               ;;@ assembly/pson.ts:95:56
               (get_local $2)
               ;;@ assembly/pson.ts:95:63
               (i32.const 1)
              )
             )
            )
           )
           ;;@ assembly/pson.ts:96:6
           (br $break|0)
          )
          ;;@ assembly/pson.ts:99:6
          (set_local $3
           ;;@ assembly/pson.ts:99:13
           (i64.xor
            (i64.shr_u
             ;;@ assembly/pson.ts:99:14
             (tee_local $3
              ;;@ assembly/pson.ts:99:22
              (call $assembly/pson/readVarint64)
             )
             ;;@ assembly/pson.ts:99:41
             (i64.const 1)
            )
            ;;@ assembly/pson.ts:99:46
            (i64.sub
             (i64.const 0)
             ;;@ assembly/pson.ts:99:47
             (i64.and
              ;;@ assembly/pson.ts:99:48
              (get_local $3)
              ;;@ assembly/pson.ts:99:55
              (i64.const 1)
             )
            )
           )
          )
          ;;@ assembly/pson.ts:100:11
          (call $assembly/pson/pson.onLong
           ;;@ assembly/pson.ts:100:18
           (i32.wrap/i64
            (get_local $3)
           )
           ;;@ assembly/pson.ts:100:29
           (i32.wrap/i64
            ;;@ assembly/pson.ts:100:35
            (i64.shr_u
             (get_local $3)
             ;;@ assembly/pson.ts:100:44
             (i64.const 32)
            )
           )
          )
          ;;@ assembly/pson.ts:101:6
          (br $break|0)
         )
         ;;@ assembly/pson.ts:104:11
         (call $assembly/pson/pson.onFloat
          ;;@ assembly/pson.ts:104:19
          (f32.load
           ;;@ assembly/pson.ts:104:29
           (get_global $assembly/pson/offset)
          )
         )
         ;;@ assembly/pson.ts:105:6
         (set_global $assembly/pson/offset
          (i32.add
           (get_global $assembly/pson/offset)
           ;;@ assembly/pson.ts:105:16
           (i32.const 4)
          )
         )
         ;;@ assembly/pson.ts:106:6
         (br $break|0)
        )
        ;;@ assembly/pson.ts:109:11
        (call $assembly/pson/pson.onDouble
         ;;@ assembly/pson.ts:109:20
         (f64.load
          ;;@ assembly/pson.ts:109:30
          (get_global $assembly/pson/offset)
         )
        )
        ;;@ assembly/pson.ts:110:6
        (set_global $assembly/pson/offset
         (i32.add
          (get_global $assembly/pson/offset)
          ;;@ assembly/pson.ts:110:16
          (i32.const 8)
         )
        )
        ;;@ assembly/pson.ts:111:6
        (br $break|0)
       )
       ;;@ assembly/pson.ts:114:6
       (set_local $2
        ;;@ assembly/pson.ts:114:13
        (call $assembly/pson/readVarint32)
       )
       ;;@ assembly/pson.ts:115:11
       (call $assembly/pson/pson.onString
        ;;@ assembly/pson.ts:115:20
        (get_global $assembly/pson/offset)
        ;;@ assembly/pson.ts:115:28
        (get_local $2)
       )
       ;;@ assembly/pson.ts:116:6
       (set_global $assembly/pson/offset
        (i32.add
         (get_global $assembly/pson/offset)
         ;;@ assembly/pson.ts:116:16
         (get_local $2)
        )
       )
       ;;@ assembly/pson.ts:117:6
       (br $break|0)
      )
     )
     ;;@ assembly/pson.ts:122:6
     (unreachable)
    )
    ;;@ assembly/pson.ts:125:6
    (set_local $2
     ;;@ assembly/pson.ts:125:13
     (call $assembly/pson/readVarint32)
    )
    ;;@ assembly/pson.ts:126:11
    (call $assembly/pson/pson.onBinary
     ;;@ assembly/pson.ts:126:20
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:126:28
     (get_local $2)
    )
    ;;@ assembly/pson.ts:127:6
    (set_global $assembly/pson/offset
     (i32.add
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:127:16
      (get_local $2)
     )
    )
    ;;@ assembly/pson.ts:128:6
    (br $break|0)
   )
   ;;@ assembly/pson.ts:131:6
   (if
    ;;@ assembly/pson.ts:131:10
    (i32.gt_u
     (get_local $1)
     ;;@ assembly/pson.ts:131:18
     (i32.const 239)
    )
    ;;@ assembly/pson.ts:132:8
    (unreachable)
   )
   ;;@ assembly/pson.ts:134:11
   (call $assembly/pson/pson.onInteger
    ;;@ assembly/pson.ts:134:21
    (i32.xor
     (i32.shr_u
      ;;@ assembly/pson.ts:134:22
      (get_local $1)
      ;;@ assembly/pson.ts:134:31
      (i32.const 1)
     )
     ;;@ assembly/pson.ts:134:36
     (i32.sub
      (i32.const 0)
      ;;@ assembly/pson.ts:134:37
      (i32.and
       ;;@ assembly/pson.ts:134:38
       (get_local $1)
       ;;@ assembly/pson.ts:134:46
       (i32.const 1)
      )
     )
    )
   )
   ;;@ assembly/pson.ts:135:6
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
      (block
       ;;@ assembly/pson.ts:44:4
       (call $assembly/pson/decodeValue)
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ assembly/pson.ts:46:2
  (if
   (i32.eqz
    ;;@ assembly/pson.ts:46:9
    (i32.eq
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:46:19
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 46)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
)
