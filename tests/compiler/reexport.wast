(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
 (export "renamed_a" (global $export/a))
 (export "rerenamed_b" (global $export/b))
 (export "renamed_add" (func $export/add))
 (export "rerenamed_sub" (func $export/sub))
 (export "memory" (memory $0))
 (start $start)
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $export/sub (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.sub
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $export/ns.two (; 2 ;) (type $v)
 )
 (func $start (; 3 ;) (type $v)
  (drop
   (i32.const 2)
  )
  (drop
   (i32.add
    (call $export/add
     (i32.const 1)
     (i32.const 2)
    )
    (call $export/sub
     (i32.const 3)
     (i32.const 4)
    )
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
  FUNCTION_PROTOTYPE: export/add
  FUNCTION_PROTOTYPE: export/sub
  GLOBAL: export/a
  GLOBAL: export/b
  NAMESPACE: export/ns
  FUNCTION_PROTOTYPE: export/ns.one
  FUNCTION_PROTOTYPE: export/ns.two
  FUNCTION_PROTOTYPE: reexport/imported_add
  FUNCTION_PROTOTYPE: reexport/imported_sub
  NAMESPACE: reexport/imported_ns
[program.exports]
  FUNCTION_PROTOTYPE: export/add
  FUNCTION_PROTOTYPE: export/renamed_sub
  GLOBAL: export/a
  GLOBAL: export/renamed_b
  NAMESPACE: export/ns
  FUNCTION_PROTOTYPE: reexport/add
  FUNCTION_PROTOTYPE: reexport/renamed_sub
  GLOBAL: reexport/renamed_a
  GLOBAL: reexport/rerenamed_b
  FUNCTION_PROTOTYPE: reexport/renamed_add
  FUNCTION_PROTOTYPE: reexport/rerenamed_sub
  NAMESPACE: reexport/renamed_ns
;)
