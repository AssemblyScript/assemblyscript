(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $function-expression/f1 (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 1))
 (global $function-expression/f3 (mut i32) (i32.const 2))
 (global $function-expression/i32Adder (mut i32) (i32.const 0))
 (global $function-expression/f32Adder (mut i32) (i32.const 0))
 (global $function-expression/i8Adder (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 52))
 (table 6 6 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~someName|2 $function-expression/makeAdder<i32>~theAdder|3 $function-expression/makeAdder<f32>~theAdder|4 $function-expression/makeAdderArrow<i8>~anonymous|5)
 (memory $0 1)
 (data (i32.const 4) "\16\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start~anonymous|0 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $start~anonymous|1 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (get_local $0)
  )
 )
 (func $start~someName|2 (; 3 ;) (type $v)
 )
 (func $function-expression/makeAdder<i32>~theAdder|3 (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $function-expression/makeAdder<i32> (; 5 ;) (type $i) (result i32)
  (return
   (i32.const 3)
  )
 )
 (func $function-expression/makeAdder<f32>~theAdder|4 (; 6 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (return
   (f32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $function-expression/makeAdder<f32> (; 7 ;) (type $i) (result i32)
  (return
   (i32.const 4)
  )
 )
 (func $function-expression/makeAdderArrow<i8>~anonymous|5 (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.shr_s
    (i32.shl
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
 )
 (func $function-expression/makeAdderArrow<i8> (; 9 ;) (type $i) (result i32)
  (return
   (i32.const 5)
  )
 )
 (func $start (; 10 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $ii)
      (i32.const 1)
      (get_global $function-expression/f1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $ii)
      (i32.const 2)
      (get_global $function-expression/f2)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call_indirect (type $v)
   (get_global $function-expression/f3)
  )
  (set_global $function-expression/i32Adder
   (call $function-expression/makeAdder<i32>)
  )
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $iii)
      (i32.const 4)
      (i32.const 2)
      (get_global $function-expression/i32Adder)
     )
     (i32.const 6)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $function-expression/f32Adder
   (call $function-expression/makeAdder<f32>)
  )
  (if
   (i32.eqz
    (f32.eq
     (call_indirect (type $fff)
      (f32.const 1.5)
      (f32.const 2.5)
      (get_global $function-expression/f32Adder)
     )
     (f32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $function-expression/i8Adder
   (call $function-expression/makeAdderArrow<i8>)
  )
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $iii)
      (i32.const 127)
      (i32.const 127)
      (get_global $function-expression/i8Adder)
     )
     (i32.const -2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 34)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $function-expression/f1
   (get_global $function-expression/f2)
  )
  (if
   (i32.eqz
    (i32.eq
     (call_indirect (type $ii)
      (i32.const 4)
      (get_global $function-expression/f1)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 37)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
