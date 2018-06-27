(module
 (type $iv (func (param i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $fv (func (param f32)))
 (type $Fv (func (param f64)))
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
 (global $assembly/pson/offset (mut i32) (i32.const 0))
 (memory $0 1)
 (export "decode" (func $assembly/pson/decode))
 (export "memory" (memory $0))
 (func $assembly/pson/readVarint32 (; 14 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (loop $continue|0
   ;;@ assembly/pson.ts:140:4
   (set_local $0
    (i32.or
     (get_local $0)
     ;;@ assembly/pson.ts:139:17
     (block (result i32)
      (set_global $assembly/pson/offset
       (i32.add
        (tee_local $0
         (get_global $assembly/pson/offset)
        )
        (i32.const 1)
       )
      )
      ;;@ assembly/pson.ts:140:13
      (i32.shl
       (i32.and
        ;;@ assembly/pson.ts:139:4
        (tee_local $2
         ;;@ assembly/pson.ts:139:8
         (i32.load8_u
          (get_local $0)
         )
        )
        ;;@ assembly/pson.ts:140:23
        (i32.const 127)
       )
       ;;@ assembly/pson.ts:140:37
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $0
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        ;;@ assembly/pson.ts:140:32
        (i32.mul
         (get_local $0)
         ;;@ assembly/pson.ts:140:33
         (i32.const 7)
        )
       )
      )
     )
    )
   )
   (br_if $continue|0
    ;;@ assembly/pson.ts:141:11
    (i32.and
     (get_local $2)
     ;;@ assembly/pson.ts:141:15
     (i32.const 128)
    )
   )
  )
  ;;@ assembly/pson.ts:142:9
  (get_local $0)
 )
 (func $assembly/pson/readVarint64 (; 15 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i32)
  (local $2 i64)
  (loop $continue|0
   ;;@ assembly/pson.ts:151:4
   (set_local $0
    (i64.or
     (get_local $0)
     ;;@ assembly/pson.ts:150:17
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
         ;;@ assembly/pson.ts:151:37
         (get_local $2)
        )
        (i64.const 1)
       )
      )
      ;;@ assembly/pson.ts:151:13
      (i64.shl
       (i64.extend_u/i32
        ;;@ assembly/pson.ts:151:19
        (i32.and
         ;;@ assembly/pson.ts:150:4
         (tee_local $1
          ;;@ assembly/pson.ts:150:8
          (i32.load8_u
           (get_local $1)
          )
         )
         ;;@ assembly/pson.ts:151:23
         (i32.const 127)
        )
       )
       ;;@ assembly/pson.ts:151:32
       (i64.mul
        (get_local $0)
        ;;@ assembly/pson.ts:151:33
        (i64.const 7)
       )
      )
     )
    )
   )
   (br_if $continue|0
    ;;@ assembly/pson.ts:152:11
    (i32.and
     (get_local $1)
     ;;@ assembly/pson.ts:152:15
     (i32.const 128)
    )
   )
  )
  ;;@ assembly/pson.ts:153:9
  (get_local $0)
 )
 (func $assembly/pson/decodeValue (; 16 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  ;;@ assembly/pson.ts:51:2
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
                  (block $case0|0
                   (block $tablify|0
                    (set_global $assembly/pson/offset
                     (i32.add
                      (tee_local $1
                       ;;@ assembly/pson.ts:48:28
                       (get_global $assembly/pson/offset)
                      )
                      (i32.const 1)
                     )
                    )
                    (br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $tablify|0
                     (i32.sub
                      (tee_local $1
                       ;;@ assembly/pson.ts:48:2
                       (tee_local $0
                        ;;@ assembly/pson.ts:48:19
                        (i32.load8_u
                         (get_local $1)
                        )
                       )
                      )
                      (i32.const 240)
                     )
                    )
                   )
                   (br_if $case14|0
                    (i32.or
                     (i32.eq
                      (get_local $1)
                      ;;@ assembly/pson.ts:114:9
                      (i32.const 253)
                     )
                     (i32.eq
                      (get_local $1)
                      ;;@ assembly/pson.ts:115:9
                      (i32.const 254)
                     )
                    )
                   )
                   (br_if $case15|0
                    (i32.eq
                     (get_local $1)
                     ;;@ assembly/pson.ts:120:9
                     (i32.const 255)
                    )
                   )
                   (br $case16|0)
                  )
                  ;;@ assembly/pson.ts:53:11
                  (call $assembly/pson/pson.onNull)
                  ;;@ assembly/pson.ts:54:6
                  (br $break|0)
                 )
                 ;;@ assembly/pson.ts:57:11
                 (call $assembly/pson/pson.onTrue)
                 ;;@ assembly/pson.ts:58:6
                 (br $break|0)
                )
                ;;@ assembly/pson.ts:61:11
                (call $assembly/pson/pson.onFalse)
                ;;@ assembly/pson.ts:62:6
                (br $break|0)
               )
               ;;@ assembly/pson.ts:65:11
               (call $assembly/pson/pson.onEObject)
               ;;@ assembly/pson.ts:66:6
               (br $break|0)
              )
              ;;@ assembly/pson.ts:69:11
              (call $assembly/pson/pson.onEArray)
              ;;@ assembly/pson.ts:70:6
              (br $break|0)
             )
             ;;@ assembly/pson.ts:73:11
             (call $assembly/pson/pson.onEString)
             ;;@ assembly/pson.ts:74:6
             (br $break|0)
            )
            ;;@ assembly/pson.ts:77:11
            (call $assembly/pson/pson.onObject
             ;;@ assembly/pson.ts:77:20
             (tee_local $0
              ;;@ assembly/pson.ts:77:27
              (call $assembly/pson/readVarint32)
             )
            )
            (loop $continue|1
             (if
              ;;@ assembly/pson.ts:78:13
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
               ;;@ assembly/pson.ts:79:8
               (call $assembly/pson/decodeValue)
               ;;@ assembly/pson.ts:80:8
               (call $assembly/pson/decodeValue)
               (br $continue|1)
              )
             )
            )
            ;;@ assembly/pson.ts:82:6
            (br $break|0)
           )
           ;;@ assembly/pson.ts:85:11
           (call $assembly/pson/pson.onArray
            ;;@ assembly/pson.ts:85:19
            (tee_local $0
             ;;@ assembly/pson.ts:85:26
             (call $assembly/pson/readVarint32)
            )
           )
           (loop $continue|2
            (if
             ;;@ assembly/pson.ts:86:13
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
              ;;@ assembly/pson.ts:86:21
              (call $assembly/pson/decodeValue)
              (br $continue|2)
             )
            )
           )
           ;;@ assembly/pson.ts:87:6
           (br $break|0)
          )
          ;;@ assembly/pson.ts:90:11
          (call $assembly/pson/pson.onInteger
           ;;@ assembly/pson.ts:90:21
           (i32.xor
            (i32.shr_u
             ;;@ assembly/pson.ts:90:22
             (tee_local $0
              ;;@ assembly/pson.ts:90:30
              (call $assembly/pson/readVarint32)
             )
             ;;@ assembly/pson.ts:90:49
             (i32.const 1)
            )
            ;;@ assembly/pson.ts:90:54
            (i32.sub
             (i32.const 0)
             ;;@ assembly/pson.ts:90:55
             (i32.and
              ;;@ assembly/pson.ts:90:56
              (get_local $0)
              ;;@ assembly/pson.ts:90:63
              (i32.const 1)
             )
            )
           )
          )
          ;;@ assembly/pson.ts:91:6
          (br $break|0)
         )
         ;;@ assembly/pson.ts:95:11
         (call $assembly/pson/pson.onLong
          ;;@ assembly/pson.ts:95:18
          (i32.wrap/i64
           ;;@ assembly/pson.ts:94:6
           (tee_local $2
            ;;@ assembly/pson.ts:94:13
            (i64.xor
             (i64.shr_u
              ;;@ assembly/pson.ts:94:14
              (tee_local $2
               ;;@ assembly/pson.ts:94:22
               (call $assembly/pson/readVarint64)
              )
              ;;@ assembly/pson.ts:94:41
              (i64.const 1)
             )
             ;;@ assembly/pson.ts:94:46
             (i64.sub
              (i64.const 0)
              ;;@ assembly/pson.ts:94:47
              (i64.and
               ;;@ assembly/pson.ts:94:48
               (get_local $2)
               ;;@ assembly/pson.ts:94:55
               (i64.const 1)
              )
             )
            )
           )
          )
          ;;@ assembly/pson.ts:95:29
          (i32.wrap/i64
           ;;@ assembly/pson.ts:95:35
           (i64.shr_u
            (get_local $2)
            ;;@ assembly/pson.ts:95:44
            (i64.const 32)
           )
          )
         )
         ;;@ assembly/pson.ts:96:6
         (br $break|0)
        )
        ;;@ assembly/pson.ts:99:11
        (call $assembly/pson/pson.onFloat
         ;;@ assembly/pson.ts:99:19
         (f32.load
          ;;@ assembly/pson.ts:99:29
          (get_global $assembly/pson/offset)
         )
        )
        ;;@ assembly/pson.ts:100:6
        (set_global $assembly/pson/offset
         (i32.add
          (get_global $assembly/pson/offset)
          ;;@ assembly/pson.ts:100:16
          (i32.const 4)
         )
        )
        ;;@ assembly/pson.ts:101:6
        (br $break|0)
       )
       ;;@ assembly/pson.ts:104:11
       (call $assembly/pson/pson.onDouble
        ;;@ assembly/pson.ts:104:20
        (f64.load
         ;;@ assembly/pson.ts:104:30
         (get_global $assembly/pson/offset)
        )
       )
       ;;@ assembly/pson.ts:105:6
       (set_global $assembly/pson/offset
        (i32.add
         (get_global $assembly/pson/offset)
         ;;@ assembly/pson.ts:105:16
         (i32.const 8)
        )
       )
       ;;@ assembly/pson.ts:106:6
       (br $break|0)
      )
      ;;@ assembly/pson.ts:109:6
      (set_local $0
       ;;@ assembly/pson.ts:109:13
       (call $assembly/pson/readVarint32)
      )
      ;;@ assembly/pson.ts:110:11
      (call $assembly/pson/pson.onString
       ;;@ assembly/pson.ts:110:20
       (get_global $assembly/pson/offset)
       ;;@ assembly/pson.ts:110:28
       (get_local $0)
      )
      ;;@ assembly/pson.ts:111:6
      (set_global $assembly/pson/offset
       (i32.add
        (get_global $assembly/pson/offset)
        ;;@ assembly/pson.ts:111:16
        (get_local $0)
       )
      )
      ;;@ assembly/pson.ts:112:6
      (br $break|0)
     )
     ;;@ assembly/pson.ts:117:6
     (unreachable)
    )
    ;;@ assembly/pson.ts:121:6
    (set_local $0
     ;;@ assembly/pson.ts:121:13
     (call $assembly/pson/readVarint32)
    )
    ;;@ assembly/pson.ts:122:11
    (call $assembly/pson/pson.onBinary
     ;;@ assembly/pson.ts:122:20
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:122:28
     (get_local $0)
    )
    ;;@ assembly/pson.ts:123:6
    (set_global $assembly/pson/offset
     (i32.add
      (get_global $assembly/pson/offset)
      ;;@ assembly/pson.ts:123:16
      (get_local $0)
     )
    )
    ;;@ assembly/pson.ts:124:6
    (br $break|0)
   )
   ;;@ assembly/pson.ts:127:6
   (if
    ;;@ assembly/pson.ts:127:10
    (i32.gt_u
     (get_local $0)
     ;;@ assembly/pson.ts:127:18
     (i32.const 239)
    )
    ;;@ assembly/pson.ts:127:34
    (unreachable)
   )
   ;;@ assembly/pson.ts:128:11
   (call $assembly/pson/pson.onInteger
    ;;@ assembly/pson.ts:128:21
    (i32.xor
     (i32.shr_u
      ;;@ assembly/pson.ts:128:22
      (get_local $0)
      ;;@ assembly/pson.ts:128:31
      (i32.const 1)
     )
     ;;@ assembly/pson.ts:128:36
     (i32.sub
      (i32.const 0)
      ;;@ assembly/pson.ts:128:37
      (i32.and
       ;;@ assembly/pson.ts:128:38
       (get_local $0)
       ;;@ assembly/pson.ts:128:46
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $assembly/pson/decode (; 17 ;) (type $iv) (param $0 i32)
  ;;@ assembly/pson.ts:42:2
  (set_global $assembly/pson/offset
   ;;@ assembly/pson.ts:42:11
   (i32.const 0)
  )
  (loop $continue|0
   (if
    ;;@ assembly/pson.ts:43:9
    (i32.lt_u
     (get_global $assembly/pson/offset)
     ;;@ assembly/pson.ts:43:18
     (get_local $0)
    )
    (block
     ;;@ assembly/pson.ts:43:26
     (call $assembly/pson/decodeValue)
     (br $continue|0)
    )
   )
  )
  ;;@ assembly/pson.ts:44:2
  (if
   ;;@ assembly/pson.ts:44:6
   (i32.ne
    (get_global $assembly/pson/offset)
    ;;@ assembly/pson.ts:44:16
    (get_local $0)
   )
   ;;@ assembly/pson.ts:44:24
   (unreachable)
  )
 )
)
