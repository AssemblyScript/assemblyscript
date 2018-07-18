(module
 (type $v (func))
 (global $i8.MIN_VALUE i32 (i32.const -128))
 (global $i8.MAX_VALUE i32 (i32.const 127))
 (global $i16.MIN_VALUE i32 (i32.const -32768))
 (global $i16.MAX_VALUE i32 (i32.const 32767))
 (global $i32.MIN_VALUE i32 (i32.const -2147483648))
 (global $i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $i64.MIN_VALUE i64 (i64.const -9223372036854775808))
 (global $i64.MAX_VALUE i64 (i64.const 9223372036854775807))
 (global $isize.MIN_VALUE i32 (i32.const -2147483648))
 (global $isize.MAX_VALUE i32 (i32.const 2147483647))
 (global $u8.MIN_VALUE i32 (i32.const 0))
 (global $u8.MAX_VALUE i32 (i32.const 255))
 (global $u16.MIN_VALUE i32 (i32.const 0))
 (global $u16.MAX_VALUE i32 (i32.const 65535))
 (global $u32.MIN_VALUE i32 (i32.const 0))
 (global $u32.MAX_VALUE i32 (i32.const -1))
 (global $u64.MIN_VALUE i64 (i64.const 0))
 (global $u64.MAX_VALUE i64 (i64.const -1))
 (global $usize.MIN_VALUE i32 (i32.const 0))
 (global $usize.MAX_VALUE i32 (i32.const -1))
 (global $bool.MIN_VALUE i32 (i32.const 0))
 (global $bool.MAX_VALUE i32 (i32.const 1))
 (global $f32.MIN_SAFE_INTEGER f32 (f32.const -16777215))
 (global $f32.MAX_SAFE_INTEGER f32 (f32.const 16777215))
 (global $f64.MIN_SAFE_INTEGER f64 (f64.const -9007199254740991))
 (global $f64.MAX_SAFE_INTEGER f64 (f64.const 9007199254740991))
 (global $HEAP_BASE i32 (i32.const 8))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (drop
   (get_global $i8.MIN_VALUE)
  )
  (drop
   (get_global $i8.MAX_VALUE)
  )
  (drop
   (get_global $i16.MIN_VALUE)
  )
  (drop
   (get_global $i16.MAX_VALUE)
  )
  (drop
   (get_global $i32.MIN_VALUE)
  )
  (drop
   (get_global $i32.MAX_VALUE)
  )
  (drop
   (get_global $i64.MIN_VALUE)
  )
  (drop
   (get_global $i64.MAX_VALUE)
  )
  (drop
   (get_global $isize.MIN_VALUE)
  )
  (drop
   (get_global $isize.MAX_VALUE)
  )
  (drop
   (get_global $u8.MIN_VALUE)
  )
  (drop
   (get_global $u8.MAX_VALUE)
  )
  (drop
   (get_global $u16.MIN_VALUE)
  )
  (drop
   (get_global $u16.MAX_VALUE)
  )
  (drop
   (get_global $u32.MIN_VALUE)
  )
  (drop
   (get_global $u32.MAX_VALUE)
  )
  (drop
   (get_global $u64.MIN_VALUE)
  )
  (drop
   (get_global $u64.MAX_VALUE)
  )
  (drop
   (get_global $usize.MIN_VALUE)
  )
  (drop
   (get_global $usize.MAX_VALUE)
  )
  (drop
   (get_global $bool.MIN_VALUE)
  )
  (drop
   (get_global $bool.MAX_VALUE)
  )
  (drop
   (get_global $f32.MIN_SAFE_INTEGER)
  )
  (drop
   (get_global $f32.MAX_SAFE_INTEGER)
  )
  (drop
   (get_global $f64.MIN_SAFE_INTEGER)
  )
  (drop
   (get_global $f64.MAX_SAFE_INTEGER)
  )
 )
)
