(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifff (func (param i32 f32 f32) (result f32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "test" (func $class/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class/Animal.add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/Animal.sub<f32> (; 1 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (return
   (f32.add
    (f32.sub
     (get_local $0)
     (get_local $1)
    )
    (f32.convert_s/i32
     (get_global $class/Animal.ONE)
    )
   )
  )
 )
 (func $class/Animal#instanceAdd (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (return
   (i32.add
    (i32.add
     (get_local $1)
     (get_local $2)
    )
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/Animal#instanceSub<f32> (; 3 ;) (type $ifff) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
  (return
   (f32.add
    (f32.sub
     (get_local $1)
     (get_local $2)
    )
    (f32.convert_s/i32
     (get_global $class/Animal.ONE)
    )
   )
  )
 )
 (func $class/test (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (call $class/Animal#instanceAdd
    (get_local $0)
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $class/Animal#instanceSub<f32>
    (get_local $0)
    (f32.const 1)
    (f32.const 2)
   )
  )
  (drop
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (i32.load16_s offset=4
    (get_local $0)
   )
  )
  (drop
   (i32.load8_s offset=6
    (get_local $0)
   )
  )
  (i32.store
   (get_local $0)
   (i32.add
    (i32.const 0)
    (i32.const 1)
   )
  )
  (i32.store16 offset=4
   (get_local $0)
   (i32.add
    (i32.const 1)
    (i32.const 1)
   )
  )
  (i32.store8 offset=6
   (get_local $0)
   (i32.add
    (i32.add
     (i32.const 1)
     (i32.const 1)
    )
    (i32.const 1)
   )
  )
  (block
   (set_local $1
    (get_local $0)
   )
  )
  (block
   (set_local $2
    (get_local $1)
   )
  )
  (return
   (get_local $2)
  )
 )
 (func $start (; 5 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (i32.const 7)
     (i32.const 7)
    )
   )
   (unreachable)
  )
  (drop
   (get_global $class/Animal.ONE)
  )
  (drop
   (call $class/Animal.add
    (i32.const 1)
    (i32.const 2)
   )
  )
  (drop
   (call $class/Animal.sub<f32>
    (f32.const 1)
    (f32.const 2)
   )
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: parseInt
  FUNCTION_PROTOTYPE: parseFloat
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  CLASS_PROTOTYPE: class/Animal
  GLOBAL: class/Animal.ONE
  FUNCTION_PROTOTYPE: class/Animal.add
  FUNCTION_PROTOTYPE: class/Animal.sub
  FUNCTION_PROTOTYPE: class/test
[program.exports]
  FUNCTION_PROTOTYPE: class/test
;)
