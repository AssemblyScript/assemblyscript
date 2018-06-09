(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iv (func (param i32)))
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $exports/Animal.CAT i32 (i32.const 0))
 (global $exports/Animal.DOG i32 (i32.const 1))
 (global $exports/animals.Animal.CAT i32 (i32.const 0))
 (global $exports/animals.Animal.DOG i32 (i32.const 1))
 (global $exports/Car.TIRES i32 (i32.const 4))
 (global $exports/vehicles.Car.TIRES i32 (i32.const 4))
 (global $exports/outer.inner.a i32 (i32.const 42))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 1)
 (export "add" (func $exports/add))
 (export "_setargc" (func $~setargc))
 (export "subOpt" (func $exports/subOpt|trampoline))
 (export "math.sub" (func $exports/subOpt))
 (export "Animal.CAT" (global $exports/Animal.CAT))
 (export "Animal.DOG" (global $exports/Animal.DOG))
 (export "animals.Animal.CAT" (global $exports/animals.Animal.CAT))
 (export "animals.Animal.DOG" (global $exports/animals.Animal.DOG))
 (export "Car.TIRES" (global $exports/Car.TIRES))
 (export "Car.getNumTires" (func $exports/Car.getNumTires))
 (export "Car#constructor" (func $exports/Car#constructor|trampoline))
 (export "Car#get:doors" (func $Car#get:doors))
 (export "Car#set:doors" (func $Car#set:doors))
 (export "Car#get:numDoors" (func $Car#get:doors))
 (export "Car#set:numDoors" (func $Car#set:doors))
 (export "Car#openDoors" (func $exports/Car#openDoors))
 (export "vehicles.Car.TIRES" (global $exports/vehicles.Car.TIRES))
 (export "vehicles.Car.getNumTires" (func $exports/Car.getNumTires))
 (export "vehicles.Car#constructor" (func $exports/Car#constructor|trampoline))
 (export "vehicles.Car#get:doors" (func $Car#get:doors))
 (export "vehicles.Car#set:doors" (func $Car#set:doors))
 (export "vehicles.Car#get:numDoors" (func $Car#get:doors))
 (export "vehicles.Car#set:numDoors" (func $Car#set:doors))
 (export "vehicles.Car#openDoors" (func $exports/Car#openDoors))
 (export "outer.inner.a" (global $exports/outer.inner.a))
 (export "memory" (memory $0))
 (start $start)
 (func $exports/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $exports/subOpt (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $exports/subOpt|trampoline (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (call $exports/subOpt
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~setargc (; 3 ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
 (func $exports/Car.getNumTires (; 4 ;) (type $i) (result i32)
  (i32.const 4)
 )
 (func $~lib/allocator/arena/allocate_memory (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $3
          (i32.shr_u
           (i32.and
            (i32.add
             (i32.sub
              (get_local $0)
              (get_local $1)
             )
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           (i32.const 16)
          )
         )
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (i32.const 0)
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        (i32.const 0)
       )
       (unreachable)
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $exports/Car#constructor (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (i32.store
    (tee_local $0
     (call $~lib/allocator/arena/allocate_memory
      (i32.const 4)
     )
    )
    (get_local $1)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $exports/Car#constructor|trampoline (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 2)
   )
  )
  (call $exports/Car#constructor
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Car#get:doors (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $Car#set:doors (; 9 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $exports/Car#openDoors (; 10 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $start (; 11 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
)
