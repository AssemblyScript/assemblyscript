(module
 (type $v (func))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (import "console" "logs" (func $hello-string/console.logs (param i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 60))
 (memory $0 1)
 (data (i32.const 4) "\19\00\00\00H\00e\00l\00l\00o\00 \00A\00s\00s\00e\00m\00b\00l\00y\00S\00c\00r\00i\00p\00t\00 \00=\d8;\de\t\00!\00")
 (export "main" (func $hello-string/main))
 (export "memory" (memory $0))
 (func $hello-string/size (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.shl
     (i32.mul
      (i32.load16_s
       (get_local $0)
      )
      (i32.const 2)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
 )
 (func $hello-string/console.log (; 2 ;) (type $iv) (param $0 i32)
  (call $hello-string/console.logs
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $hello-string/size
    (get_local $0)
   )
   (i32.const 16)
  )
 )
 (func $hello-string/main (; 3 ;) (type $v)
  (call $hello-string/console.log
   (i32.const 4)
  )
 )
)
