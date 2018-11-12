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
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/pson/offset (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
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
  loop $continue|0
   get_local $0
   block (result i32)
    get_global $assembly/pson/offset
    tee_local $0
    i32.const 1
    i32.add
    set_global $assembly/pson/offset
    get_local $0
    i32.load8_u
    tee_local $2
    i32.const 127
    i32.and
    block (result i32)
     get_local $1
     tee_local $0
     i32.const 1
     i32.add
     set_local $1
     get_local $0
     i32.const 7
     i32.mul
    end
    i32.shl
   end
   i32.or
   set_local $0
   get_local $2
   i32.const 128
   i32.and
   br_if $continue|0
  end
  get_local $0
 )
 (func $assembly/pson/readVarint64 (; 15 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i32)
  (local $2 i64)
  loop $continue|0
   get_local $0
   block (result i64)
    get_global $assembly/pson/offset
    tee_local $1
    i32.const 1
    i32.add
    set_global $assembly/pson/offset
    get_local $2
    tee_local $0
    i64.const 1
    i64.add
    set_local $2
    get_local $1
    i32.load8_u
    tee_local $1
    i32.const 127
    i32.and
    i64.extend_u/i32
    get_local $0
    i64.const 7
    i64.mul
    i64.shl
   end
   i64.or
   set_local $0
   get_local $1
   i32.const 128
   i32.and
   br_if $continue|0
  end
  get_local $0
 )
 (func $assembly/pson/decodeValue (; 16 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  block $break|0
   block $case16|0
    block $case15|0
     block $case14|0
      block $case12|0
       block $case11|0
        block $case10|0
         block $case9|0
          block $case8|0
           block $case7|0
            block $case6|0
             block $case5|0
              block $case4|0
               block $case3|0
                block $case2|0
                 block $case1|0
                  block (result i32)
                   get_global $assembly/pson/offset
                   tee_local $1
                   i32.const 1
                   i32.add
                   set_global $assembly/pson/offset
                   get_local $1
                   i32.load8_u
                   tee_local $0
                   tee_local $1
                   i32.const 240
                   i32.ne
                  end
                  if
                   block $tablify|0
                    get_local $1
                    i32.const 241
                    i32.sub
                    br_table $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $case12|0 $tablify|0
                   end
                   get_local $1
                   i32.const 253
                   i32.eq
                   get_local $1
                   i32.const 254
                   i32.eq
                   i32.or
                   br_if $case14|0
                   get_local $1
                   i32.const 255
                   i32.eq
                   br_if $case15|0
                   br $case16|0
                  end
                  call $assembly/pson/onNull
                  br $break|0
                 end
                 call $assembly/pson/onTrue
                 br $break|0
                end
                call $assembly/pson/onFalse
                br $break|0
               end
               call $assembly/pson/onEObject
               br $break|0
              end
              call $assembly/pson/onEArray
              br $break|0
             end
             call $assembly/pson/onEString
             br $break|0
            end
            call $assembly/pson/readVarint32
            tee_local $0
            call $assembly/pson/onObject
            loop $continue|1
             block (result i32)
              get_local $0
              tee_local $1
              i32.const 1
              i32.sub
              set_local $0
              get_local $1
             end
             if
              call $assembly/pson/decodeValue
              call $assembly/pson/decodeValue
              br $continue|1
             end
            end
            br $break|0
           end
           call $assembly/pson/readVarint32
           tee_local $0
           call $assembly/pson/onArray
           loop $continue|2
            block (result i32)
             get_local $0
             tee_local $1
             i32.const 1
             i32.sub
             set_local $0
             get_local $1
            end
            if
             call $assembly/pson/decodeValue
             br $continue|2
            end
           end
           br $break|0
          end
          call $assembly/pson/readVarint32
          tee_local $0
          i32.const 1
          i32.shr_u
          i32.const 0
          get_local $0
          i32.const 1
          i32.and
          i32.sub
          i32.xor
          call $assembly/pson/onInteger
          br $break|0
         end
         call $assembly/pson/readVarint64
         tee_local $2
         i64.const 1
         i64.shr_u
         i64.const 0
         get_local $2
         i64.const 1
         i64.and
         i64.sub
         i64.xor
         tee_local $2
         i32.wrap/i64
         get_local $2
         i64.const 32
         i64.shr_u
         i32.wrap/i64
         call $assembly/pson/onLong
         br $break|0
        end
        get_global $assembly/pson/offset
        f32.load
        call $assembly/pson/onFloat
        get_global $assembly/pson/offset
        i32.const 4
        i32.add
        set_global $assembly/pson/offset
        br $break|0
       end
       get_global $assembly/pson/offset
       f64.load
       call $assembly/pson/onDouble
       get_global $assembly/pson/offset
       i32.const 8
       i32.add
       set_global $assembly/pson/offset
       br $break|0
      end
      call $assembly/pson/readVarint32
      set_local $0
      get_global $assembly/pson/offset
      get_local $0
      call $assembly/pson/onString
      get_global $assembly/pson/offset
      get_local $0
      i32.add
      set_global $assembly/pson/offset
      br $break|0
     end
     unreachable
    end
    call $assembly/pson/readVarint32
    set_local $0
    get_global $assembly/pson/offset
    get_local $0
    call $assembly/pson/onBinary
    get_global $assembly/pson/offset
    get_local $0
    i32.add
    set_global $assembly/pson/offset
    br $break|0
   end
   get_local $0
   i32.const 239
   i32.gt_u
   if
    unreachable
   end
   get_local $0
   i32.const 1
   i32.shr_u
   i32.const 0
   get_local $0
   i32.const 1
   i32.and
   i32.sub
   i32.xor
   call $assembly/pson/onInteger
  end
 )
 (func $assembly/pson/decode (; 17 ;) (type $iv) (param $0 i32)
  i32.const 0
  set_global $assembly/pson/offset
  loop $continue|0
   get_global $assembly/pson/offset
   get_local $0
   i32.lt_u
   if
    call $assembly/pson/decodeValue
    br $continue|0
   end
  end
  get_global $assembly/pson/offset
  get_local $0
  i32.ne
  if
   unreachable
  end
 )
 (func $null (; 18 ;) (type $v)
  nop
 )
)
