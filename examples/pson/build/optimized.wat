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
  (loop $continue|0
   ;;@ assembly/pson.ts:138:4
   (set_local $0
    (i32.or
     (get_local $0)
     ;;@ assembly/pson.ts:137:17
     (block (result i32)
      (set_global $assembly/pson/offset
       (i32.add
        (tee_local $0
         (get_global $assembly/pson/offset)
        )
        (i32.const 1)
       )
      )
      ;;@ assembly/pson.ts:138:13
      (i32.shl
       (i32.and
        ;;@ assembly/pson.ts:137:4
        (tee_local $2
         ;;@ assembly/pson.ts:137:8
         (i32.load8_u
          (get_local $0)
         )
        )
        ;;@ assembly/pson.ts:138:23
        (i32.const 127)
       )
       ;;@ assembly/pson.ts:138:37
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $0
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ assembly/pson.ts:138:32
        (i32.mul
         (get_local $0)
         ;;@ assembly/pson.ts:138:33
         (i32.const 7)
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
  ;;@ assembly/pson.ts:140:9
  (get_local $0)
 )
 (func $assembly/pson/readVarint64 (; 15 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i32)
  (local $2 i64)
  (loop $continue|0
   ;;@ assembly/pson.ts:149:4
   (set_local $0
    (i64.or
     (get_local $0)
     ;;@ assembly/pson.ts:148:17
     (block (result i64)
      (set_global $assembly/pson/offset
       (i32.add
        (tee_local $1
         (get_global $assembly/pson/offset)
        )
        (i32.const 1)
       )
      )
      (set_local $2
       (i64.add
        (tee_local $0
         ;;@ assembly/pson.ts:149:37
         (get_local $2)
        )
        (i64.const 1)
       )
      )
      ;;@ assembly/pson.ts:149:13
      (i64.shl
       (i64.extend_u/i32
        ;;@ assembly/pson.ts:149:19
        (i32.and
         ;;@ assembly/pson.ts:148:4
         (tee_local $1
          ;;@ assembly/pson.ts:148:8
          (i32.load8_u
           (get_local $1)
          )
         )
         ;;@ assembly/pson.ts:149:23
         (i32.const 127)
        )
       )
       ;;@ assembly/pson.ts:149:32
       (i64.mul
        (get_local $0)
        ;;@ assembly/pson.ts:149:33
        (i64.const 7)
       )
      )
     )
    )
   )
   (br_if $continue|0
    ;;@ assembly/pson.ts:150:11
    (i32.and
     (get_local $1)
     ;;@ assembly/pson.ts:150:15
     (i32.const 128)
    )
   )
  )
  ;;@ assembly/pson.ts:151:9
  (get_local $0)
 )
 (func $assembly/pson/decodeValue (; 16 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  ;;@ assembly/pson.ts:49:2
  (block $break|0
   (block $case16|0
    (block $case15|0
     (block $case14|0
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
                  (if
                   ;;@ assembly/pson.ts:46:28
                   (block (result i32)
                    (set_global $assembly/pson/offset
                     (i32.add
                      (tee_local $1
                       (get_global $assembly/pson/offset)
                      )
                      (i32.const 1)
                     )
                    )
                    (i32.ne
                     (tee_local $1
                      ;;@ assembly/pson.ts:46:2
                      (tee_local $0
                       ;;@ assembly/pson.ts:46:19
                       (i32.load8_u
                        (get_local $1)
                       )
                      )
                     )
                     (i32.const 240)
                    )
                   )
                   (block
                    (block $tablify|0
                     (br_table $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $tablify|0
                      (i32.sub
                       (get_local $1)
                       (i32.const 241)
                      )
                     )
                    )
                    (br_if $case14|0
                     (i32.or
                      (i32.eq
                       (get_local $1)
                       (i32.const 253)
                      )
                      (i32.eq
                       (get_local $1)
                       (i32.const 254)
                      )
                     )
                    )
                    (br_if $case15|0
                     (i32.eq
                      (get_local $1)
                      (i32.const 255)
                     )
                    )
                    (br $case16|0)
                   )
                  )
                  ;;@ assembly/pson.ts:51:6
                  (call $assembly/pson/onNull)
                  ;;@ assembly/pson.ts:52:6
                  (br $break|0)
                 )
                 ;;@ assembly/pson.ts:55:6
                 (call $assembly/pson/onTrue)
                 ;;@ assembly/pson.ts:56:6
                 (br $break|0)
                )
                ;;@ assembly/pson.ts:59:6
                (call $assembly/pson/onFalse)
                ;;@ assembly/pson.ts:60:6
                (br $break|0)
               )
               ;;@ assembly/pson.ts:63:6
               (call $assembly/pson/onEObject)
               ;;@ assembly/pson.ts:64:6
               (br $break|0)
              )
              ;;@ assembly/pson.ts:67:6
              (call $assembly/pson/onEArray)
              ;;@ assembly/pson.ts:68:6
              (br $break|0)
             )
             ;;@ assembly/pson.ts:71:6
             (call $assembly/pson/onEString)
             ;;@ assembly/pson.ts:72:6
             (br $break|0)
            )
            ;;@ assembly/pson.ts:75:6
            (call $assembly/pson/onObject
             ;;@ assembly/pson.ts:75:15
             (tee_local $0
              ;;@ assembly/pson.ts:75:22
              (call $assembly/pson/readVarint32)
             )
            )
            (loop $continue|1
             (if
              ;;@ assembly/pson.ts:76:13
              (block (result i32)
               (set_local $0
                (i32.sub
                 (tee_local $1
                  (get_local $0)
                 )
                 (i32.const 1)
                )
               )
               (get_local $1)
              )
              (block
               ;;@ assembly/pson.ts:77:8
               (call $assembly/pson/decodeValue)
               ;;@ assembly/pson.ts:78:8
               (call $assembly/pson/decodeValue)
               (br $continue|1)
              )
             )
            )
            ;;@ assembly/pson.ts:80:6
            (br $break|0)
           )
           ;;@ assembly/pson.ts:83:6
           (call $assembly/pson/onArray
            ;;@ assembly/pson.ts:83:14
            (tee_local $0
             ;;@ assembly/pson.ts:83:21
             (call $assembly/pson/readVarint32)
            )
           )
           (loop $continue|2
            (if
             ;;@ assembly/pson.ts:84:13
             (block (result i32)
              (set_local $0
               (i32.sub
                (tee_local $1
                 (get_local $0)
                )
                (i32.const 1)
               )
              )
              (get_local $1)
             )
             (block
              ;;@ assembly/pson.ts:84:21
              (call $assembly/pson/decodeValue)
              (br $continue|2)
             )
            )
           )
           ;;@ assembly/pson.ts:85:6
           (br $break|0)
          )
          ;;@ assembly/pson.ts:88:6
          (call $assembly/pson/onInteger
           ;;@ assembly/pson.ts:88:16
           (i32.xor
            (i32.shr_u
             ;;@ assembly/pson.ts:88:17
             (tee_local $0
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
              (get_local $0)
              ;;@ assembly/pson.ts:88:58
              (i32.const 1)
             )
            )
           )
          )
          ;;@ assembly/pson.ts:89:6
          (br $break|0)
         )
         ;;@ assembly/pson.ts:93:6
         (call $assembly/pson/onLong
          ;;@ assembly/pson.ts:93:13
          (i32.wrap/i64
           ;;@ assembly/pson.ts:92:6
           (tee_local $2
            ;;@ assembly/pson.ts:92:13
            (i64.xor
             (i64.shr_u
              ;;@ assembly/pson.ts:92:14
              (tee_local $2
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
               (get_local $2)
               ;;@ assembly/pson.ts:92:55
               (i64.const 1)
              )
             )
            )
           )
          )
          ;;@ assembly/pson.ts:93:24
          (i32.wrap/i64
           ;;@ assembly/pson.ts:93:30
           (i64.shr_u
            (get_local $2)
            ;;@ assembly/pson.ts:93:39
            (i64.const 32)
           )
          )
         )
         ;;@ assembly/pson.ts:94:6
         (br $break|0)
        )
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
      ;;@ assembly/pson.ts:107:6
      (set_local $0
       ;;@ assembly/pson.ts:107:13
       (call $assembly/pson/readVarint32)
      )
      ;;@ assembly/pson.ts:108:6
      (call $assembly/pson/onString
       ;;@ assembly/pson.ts:108:15
       (get_global $assembly/pson/offset)
       ;;@ assembly/pson.ts:108:23
       (get_local $0)
      )
      ;;@ assembly/pson.ts:109:6
      (set_global $assembly/pson/offset
       (i32.add
        (get_global $assembly/pson/offset)
        ;;@ assembly/pson.ts:109:16
        (get_local $0)
       )
      )
      ;;@ assembly/pson.ts:110:6
      (br $break|0)
     )
     ;;@ assembly/pson.ts:115:6
     (unreachable)
    )
    ;;@ assembly/pson.ts:119:6
    (set_local $0
     ;;@ assembly/pson.ts:119:13
     (call $assembly/pson/readVarint32)
    )
    ;;@ assembly/pson.ts:120:6
    (call $assembly/pson/onBinary
     ;;@ assembly/pson.ts:120:15
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:120:23
     (get_local $0)
    )
    ;;@ assembly/pson.ts:121:6
    (set_global $assembly/pson/offset
     (i32.add
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:121:16
      (get_local $0)
     )
    )
    ;;@ assembly/pson.ts:122:6
    (br $break|0)
   )
   ;;@ assembly/pson.ts:125:6
   (if
    ;;@ assembly/pson.ts:125:10
    (i32.gt_u
     (get_local $0)
     (i32.const 239)
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
      (get_local $0)
      ;;@ assembly/pson.ts:126:26
      (i32.const 1)
     )
     ;;@ assembly/pson.ts:126:31
     (i32.sub
      (i32.const 0)
      ;;@ assembly/pson.ts:126:32
      (i32.and
       ;;@ assembly/pson.ts:126:33
       (get_local $0)
       ;;@ assembly/pson.ts:126:41
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $assembly/pson/decode (; 17 ;) (type $iv) (param $0 i32)
  ;;@ assembly/pson.ts:40:2
  (set_global $assembly/pson/offset
   ;;@ assembly/pson.ts:40:11
   (i32.const 0)
  )
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
