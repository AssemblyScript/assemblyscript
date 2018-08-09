function asmFunc(global, env, buffer) {
 "almost asm";
 var HEAP8 = new global.Int8Array(buffer);
 var HEAP16 = new global.Int16Array(buffer);
 var HEAP32 = new global.Int32Array(buffer);
 var HEAPU8 = new global.Uint8Array(buffer);
 var HEAPU16 = new global.Uint16Array(buffer);
 var HEAPU32 = new global.Uint32Array(buffer);
 var HEAPF32 = new global.Float32Array(buffer);
 var HEAPF64 = new global.Float64Array(buffer);
 var Math_imul = global.Math.imul;
 var Math_fround = global.Math.fround;
 var Math_abs = global.Math.abs;
 var Math_clz32 = global.Math.clz32;
 var Math_min = global.Math.min;
 var Math_max = global.Math.max;
 var Math_floor = global.Math.floor;
 var Math_ceil = global.Math.ceil;
 var Math_sqrt = global.Math.sqrt;
 var abort = env.abort;
 var nan = global.NaN;
 var infinity = global.Infinity;
 var $lib_env_abort = env.abort;
 var $lib_allocator_arena_startOffset = 0;
 var $lib_allocator_arena_offset = 0;
 var assembly_index_system = 0;
 var i64toi32_i32$HIGH_BITS = 0;
 function $lib_allocator_arena___memory_allocate($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0, $3 = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0, wasm2asm_i32$2 = 0;
  if ($0) {
   if ($0 >>> 0 > 1073741824 >>> 0) abort();
   $1 = $lib_allocator_arena_offset;
   $0 = (($1 + $0 | 0) + 7 | 0) & 4294967288 | 0;
   $2 = __wasm_current_memory();
   if ($0 >>> 0 > ($2 << 16 | 0) >>> 0) {
    $3 = ((($0 - $1 | 0) + 65535 | 0) & 4294901760 | 0) >>> 16 | 0;
    if ((__wasm_grow_memory((wasm2asm_i32$0 = $2, wasm2asm_i32$1 = $3, wasm2asm_i32$2 = ($2 | 0) > ($3 | 0), wasm2asm_i32$2 ? wasm2asm_i32$0 : wasm2asm_i32$1) | 0) | 0) < (0 | 0)) if ((__wasm_grow_memory($3 | 0) | 0) < (0 | 0)) abort();;
   }
   $lib_allocator_arena_offset = $0;
   return $1 | 0;
  }
  return 0 | 0;
 }
 
 function assembly_index_Body_constructor($0, $1, $2, $3, $4, $5, $6, $7) {
  $0 = $0 | 0;
  $1 = +$1;
  $2 = +$2;
  $3 = +$3;
  $4 = +$4;
  $5 = +$5;
  $6 = +$6;
  $7 = +$7;
  var wasm2asm_i32$0 = 0, wasm2asm_f64$0 = 0.0;
  if (($0 | 0) == (0 | 0)) {
   $0 = $lib_allocator_arena___memory_allocate(56 | 0) | 0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $1;
   HEAPF64[wasm2asm_i32$0 >> 3] = wasm2asm_f64$0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $2;
   HEAPF64[(wasm2asm_i32$0 + 8 | 0) >> 3] = wasm2asm_f64$0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $3;
   HEAPF64[(wasm2asm_i32$0 + 16 | 0) >> 3] = wasm2asm_f64$0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $4;
   HEAPF64[(wasm2asm_i32$0 + 24 | 0) >> 3] = wasm2asm_f64$0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $5;
   HEAPF64[(wasm2asm_i32$0 + 32 | 0) >> 3] = wasm2asm_f64$0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $6;
   HEAPF64[(wasm2asm_i32$0 + 40 | 0) >> 3] = wasm2asm_f64$0;
   wasm2asm_i32$0 = $0;
   wasm2asm_f64$0 = $7;
   HEAPF64[(wasm2asm_i32$0 + 48 | 0) >> 3] = wasm2asm_f64$0;
  }
  return $0 | 0;
 }
 
 function $lib_memory_memset($0, $1, $2) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  $2 = $2 | 0;
  var i64toi32_i32$2 = 0, i64toi32_i32$0 = 0, $3 = 0, $4 = 0, i64toi32_i32$1 = 0, i64toi32_i32$4 = 0, i64toi32_i32$3 = 0, $4$hi = 0, $14 = 0, $121 = 0, $121$hi = 0, $123$hi = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0, wasm2asm_i32$2 = 0, wasm2asm_i32$3 = 0;
  if (($2 | 0) == (0 | 0)) return;
  wasm2asm_i32$0 = $0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  wasm2asm_i32$0 = ($0 + $2 | 0) - 1 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  if ($2 >>> 0 <= 2 >>> 0) return;
  wasm2asm_i32$0 = $0 + 1 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $0 + 2 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  $3 = $0 + $2 | 0;
  wasm2asm_i32$0 = $3 - 2 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $3 - 3 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  if ($2 >>> 0 <= 6 >>> 0) return;
  wasm2asm_i32$0 = $0 + 3 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  wasm2asm_i32$0 = ($0 + $2 | 0) - 4 | 0;
  wasm2asm_i32$1 = $1;
  HEAP8[wasm2asm_i32$0 >> 0] = wasm2asm_i32$1;
  if ($2 >>> 0 <= 8 >>> 0) return;
  $3 = (0 - $0 | 0) & 3 | 0;
  $2 = $2 - $3 | 0;
  $0 = $0 + $3 | 0;
  $1 = Math_imul($1 & 255 | 0, 16843009);
  wasm2asm_i32$0 = $0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  $2 = $2 & 4294967292 | 0;
  wasm2asm_i32$0 = ($0 + $2 | 0) - 4 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  if ($2 >>> 0 <= 8 >>> 0) return;
  wasm2asm_i32$0 = $0 + 4 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $0 + 8 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  $3 = $0 + $2 | 0;
  wasm2asm_i32$0 = $3 - 12 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $3 - 8 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  if ($2 >>> 0 <= 24 >>> 0) return;
  wasm2asm_i32$0 = $0 + 12 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $0 + 16 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $0 + 20 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $0 + 24 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  $3 = $0 + $2 | 0;
  wasm2asm_i32$0 = $3 - 28 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $3 - 24 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $3 - 20 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $3 - 16 | 0;
  wasm2asm_i32$1 = $1;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  $3 = ($0 & 4 | 0) + 24 | 0;
  $0 = $0 + $3 | 0;
  $2 = $2 - $3 | 0;
  i64toi32_i32$0 = 0;
  i64toi32_i32$0 = i64toi32_i32$0;
  $4 = $1;
  $4$hi = i64toi32_i32$0;
  i64toi32_i32$0 = i64toi32_i32$0;
  $121 = $1;
  $121$hi = i64toi32_i32$0;
  i64toi32_i32$0 = i64toi32_i32$0;
  i64toi32_i32$0 = i64toi32_i32$0;
  i64toi32_i32$2 = $1;
  i64toi32_i32$1 = 0;
  i64toi32_i32$3 = 32;
  i64toi32_i32$4 = i64toi32_i32$3 & 31 | 0;
  if (32 >>> 0 <= (i64toi32_i32$3 & 63 | 0) >>> 0) {
   i64toi32_i32$1 = i64toi32_i32$2 << i64toi32_i32$4 | 0;
   $14 = 0;
  } else {
   i64toi32_i32$1 = ((1 << i64toi32_i32$4 | 0) - 1 | 0) & (i64toi32_i32$2 >>> (32 - i64toi32_i32$4 | 0) | 0) | 0 | (i64toi32_i32$0 << i64toi32_i32$4 | 0) | 0;
   $14 = i64toi32_i32$2 << i64toi32_i32$4 | 0;
  }
  $123$hi = i64toi32_i32$1;
  i64toi32_i32$1 = $121$hi;
  i64toi32_i32$0 = $121;
  i64toi32_i32$2 = $123$hi;
  i64toi32_i32$3 = $14;
  i64toi32_i32$2 = i64toi32_i32$1 | i64toi32_i32$2 | 0;
  i64toi32_i32$2 = i64toi32_i32$2;
  $4 = i64toi32_i32$0 | i64toi32_i32$3 | 0;
  $4$hi = i64toi32_i32$2;
  continue_0 : do {
   if ($2 >>> 0 >= 32 >>> 0) {
    i64toi32_i32$2 = $4$hi;
    i64toi32_i32$0 = $0;
    i64toi32_i32$2 = i64toi32_i32$2;
    wasm2asm_i32$0 = $0;
    wasm2asm_i32$1 = $4;
    HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
    wasm2asm_i32$0 = $0;
    wasm2asm_i32$1 = i64toi32_i32$2;
    (wasm2asm_i32$2 = wasm2asm_i32$0, wasm2asm_i32$3 = wasm2asm_i32$1), ((HEAP8[(wasm2asm_i32$2 + 4 | 0) >> 0] = wasm2asm_i32$3 & 255 | 0, HEAP8[(wasm2asm_i32$2 + 5 | 0) >> 0] = (wasm2asm_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 6 | 0) >> 0] = (wasm2asm_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 7 | 0) >> 0] = (wasm2asm_i32$3 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$2 = i64toi32_i32$2;
    i64toi32_i32$0 = $0 + 8 | 0;
    i64toi32_i32$2 = i64toi32_i32$2;
    wasm2asm_i32$0 = i64toi32_i32$0;
    wasm2asm_i32$1 = $4;
    HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
    wasm2asm_i32$0 = i64toi32_i32$0;
    wasm2asm_i32$1 = i64toi32_i32$2;
    (wasm2asm_i32$2 = wasm2asm_i32$0, wasm2asm_i32$3 = wasm2asm_i32$1), ((HEAP8[(wasm2asm_i32$2 + 4 | 0) >> 0] = wasm2asm_i32$3 & 255 | 0, HEAP8[(wasm2asm_i32$2 + 5 | 0) >> 0] = (wasm2asm_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 6 | 0) >> 0] = (wasm2asm_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 7 | 0) >> 0] = (wasm2asm_i32$3 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$2 = i64toi32_i32$2;
    i64toi32_i32$0 = $0 + 16 | 0;
    i64toi32_i32$2 = i64toi32_i32$2;
    wasm2asm_i32$0 = i64toi32_i32$0;
    wasm2asm_i32$1 = $4;
    HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
    wasm2asm_i32$0 = i64toi32_i32$0;
    wasm2asm_i32$1 = i64toi32_i32$2;
    (wasm2asm_i32$2 = wasm2asm_i32$0, wasm2asm_i32$3 = wasm2asm_i32$1), ((HEAP8[(wasm2asm_i32$2 + 4 | 0) >> 0] = wasm2asm_i32$3 & 255 | 0, HEAP8[(wasm2asm_i32$2 + 5 | 0) >> 0] = (wasm2asm_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 6 | 0) >> 0] = (wasm2asm_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 7 | 0) >> 0] = (wasm2asm_i32$3 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$2 = i64toi32_i32$2;
    i64toi32_i32$0 = $0 + 24 | 0;
    i64toi32_i32$2 = i64toi32_i32$2;
    wasm2asm_i32$0 = i64toi32_i32$0;
    wasm2asm_i32$1 = $4;
    HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
    wasm2asm_i32$0 = i64toi32_i32$0;
    wasm2asm_i32$1 = i64toi32_i32$2;
    (wasm2asm_i32$2 = wasm2asm_i32$0, wasm2asm_i32$3 = wasm2asm_i32$1), ((HEAP8[(wasm2asm_i32$2 + 4 | 0) >> 0] = wasm2asm_i32$3 & 255 | 0, HEAP8[(wasm2asm_i32$2 + 5 | 0) >> 0] = (wasm2asm_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 6 | 0) >> 0] = (wasm2asm_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$2 + 7 | 0) >> 0] = (wasm2asm_i32$3 >>> 24 | 0) & 255 | 0;
    $2 = $2 - 32 | 0;
    $0 = $0 + 32 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
 }
 
 function $lib_array_Array_Body__constructor($0, $1) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  var $2 = 0, $3 = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0;
  if ($1 >>> 0 > 268435454 >>> 0) {
   $lib_env_abort(0 | 0, 8 | 0, 23 | 0, 39 | 0);
   abort();
  }
  $2 = $1 << 2 | 0;
  $3 = $lib_allocator_arena___memory_allocate(1 << (32 - Math_clz32($2 + 7 | 0) | 0) | 0 | 0) | 0;
  wasm2asm_i32$0 = $3;
  wasm2asm_i32$1 = $2;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  if (($0 | 0) == (0 | 0)) {
   $0 = $lib_allocator_arena___memory_allocate(8 | 0) | 0;
   wasm2asm_i32$0 = $0;
   wasm2asm_i32$1 = 0;
   HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
   wasm2asm_i32$0 = $0;
   wasm2asm_i32$1 = 0;
   HEAP32[(wasm2asm_i32$0 + 4 | 0) >> 2] = wasm2asm_i32$1;
  }
  wasm2asm_i32$0 = $0;
  wasm2asm_i32$1 = $3;
  HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
  wasm2asm_i32$0 = $0;
  wasm2asm_i32$1 = $1;
  HEAP32[(wasm2asm_i32$0 + 4 | 0) >> 2] = wasm2asm_i32$1;
  $lib_memory_memset($3 + 8 | 0 | 0, 0 | 0, $2 | 0);
  return $0 | 0;
 }
 
 function assembly_index_NBodySystem_constructor($0, $1) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  var $2 = 0, $3 = 0, $4 = 0.0, $5 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0, $50 = 0, wasm2asm_i32$0 = 0, wasm2asm_f64$0 = 0.0, wasm2asm_i32$1 = 0;
  $8 = HEAP32[($1 + 4 | 0) >> 2] | 0;
  break_0 : {
   repeat_0 : do {
    if (($2 | 0) >= ($8 | 0)) break break_0;
    $3 = HEAPU32[(((HEAPU32[$1 >> 2] | 0) + ($2 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $4 = +HEAPF64[($3 + 48 | 0) >> 3];
    $5 = $5 + +HEAPF64[($3 + 24 | 0) >> 3] * $4;
    $6 = $6 + +HEAPF64[($3 + 32 | 0) >> 3] * $4;
    $7 = $7 + +HEAPF64[($3 + 40 | 0) >> 3] * $4;
    $2 = $2 + 1 | 0;
    continue repeat_0;
    break repeat_0;
   } while (1);
  };
  $2 = HEAPU32[$1 >> 2] | 0;
  if (0 >>> 0 < ((HEAP32[$2 >> 2] | 0) >>> 2 | 0) >>> 0) $50 = HEAPU32[($2 + 8 | 0) >> 2] | 0; else abort();
  $2 = $50;
  wasm2asm_i32$0 = $2;
  wasm2asm_f64$0 = -$5 / 39.47841760435743;
  HEAPF64[(wasm2asm_i32$0 + 24 | 0) >> 3] = wasm2asm_f64$0;
  wasm2asm_i32$0 = $2;
  wasm2asm_f64$0 = -$6 / 39.47841760435743;
  HEAPF64[(wasm2asm_i32$0 + 32 | 0) >> 3] = wasm2asm_f64$0;
  wasm2asm_i32$0 = $2;
  wasm2asm_f64$0 = -$7 / 39.47841760435743;
  HEAPF64[(wasm2asm_i32$0 + 40 | 0) >> 3] = wasm2asm_f64$0;
  if (($0 | 0) == (0 | 0)) {
   $2 = $lib_allocator_arena___memory_allocate(4 | 0) | 0;
   wasm2asm_i32$0 = $2;
   wasm2asm_i32$1 = $1;
   HEAP32[wasm2asm_i32$0 >> 2] = wasm2asm_i32$1;
   $0 = $2;
  }
  return $0 | 0;
 }
 
 function assembly_index_init() {
  var $0 = 0, $1 = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0;
  $1 = $lib_array_Array_Body__constructor(0 | 0, 5 | 0) | 0;
  $0 = assembly_index_Body_constructor(0 | 0, +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(39.47841760435743)) | 0;
  wasm2asm_i32$0 = HEAPU32[$1 >> 2] | 0;
  wasm2asm_i32$1 = $0;
  HEAP32[(wasm2asm_i32$0 + 8 | 0) >> 2] = wasm2asm_i32$1;
  $0 = assembly_index_Body_constructor(0 | 0, +(4.841431442464721), +(-1.1603200440274284), +(-.10362204447112311), +(.606326392995832), +(2.81198684491626), +(-.02521836165988763), +(.03769367487038949)) | 0;
  wasm2asm_i32$0 = (HEAPU32[$1 >> 2] | 0) + 4 | 0;
  wasm2asm_i32$1 = $0;
  HEAP32[(wasm2asm_i32$0 + 8 | 0) >> 2] = wasm2asm_i32$1;
  $0 = assembly_index_Body_constructor(0 | 0, +(8.34336671824458), +(4.124798564124305), +(-.4035234171143214), +(-1.0107743461787924), +(1.8256623712304119), +(.008415761376584154), +(.011286326131968767)) | 0;
  wasm2asm_i32$0 = (HEAPU32[$1 >> 2] | 0) + 8 | 0;
  wasm2asm_i32$1 = $0;
  HEAP32[(wasm2asm_i32$0 + 8 | 0) >> 2] = wasm2asm_i32$1;
  $0 = assembly_index_Body_constructor(0 | 0, +(12.894369562139131), +(-15.111151401698631), +(-.22330757889265573), +(1.0827910064415354), +(.8687130181696082), +(-.010832637401363636), +(1.7237240570597112e-03)) | 0;
  wasm2asm_i32$0 = (HEAPU32[$1 >> 2] | 0) + 12 | 0;
  wasm2asm_i32$1 = $0;
  HEAP32[(wasm2asm_i32$0 + 8 | 0) >> 2] = wasm2asm_i32$1;
  $0 = assembly_index_Body_constructor(0 | 0, +(15.379697114850917), +(-25.919314609987964), +(.17925877295037118), +(.979090732243898), +(.5946989986476762), +(-.034755955504078104), +(2.0336868699246304e-03)) | 0;
  wasm2asm_i32$0 = (HEAPU32[$1 >> 2] | 0) + 16 | 0;
  wasm2asm_i32$1 = $0;
  HEAP32[(wasm2asm_i32$0 + 8 | 0) >> 2] = wasm2asm_i32$1;
  assembly_index_system = assembly_index_NBodySystem_constructor(0 | 0, $1 | 0) | 0;
 }
 
 function assembly_index_NBodySystem_advance($0, $1) {
  $0 = $0 | 0;
  $1 = +$1;
  var $2 = 0, $3 = 0.0, $9 = 0.0, $4 = 0, $5 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0, $10 = 0.0, $11 = 0.0, $12 = 0.0, $13 = 0, $14 = 0, $19 = 0.0, $15 = 0.0, $16 = 0.0, $17 = 0.0, $18 = 0.0, wasm2asm_i32$0 = 0, wasm2asm_f64$0 = 0.0;
  $13 = HEAPU32[$0 >> 2] | 0;
  $14 = HEAP32[($13 + 4 | 0) >> 2] | 0;
  break_0 : {
   repeat_0 : do {
    if ($4 >>> 0 >= $14 >>> 0) break break_0;
    $0 = HEAPU32[(((HEAPU32[$13 >> 2] | 0) + ($4 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $15 = +HEAPF64[$0 >> 3];
    $16 = +HEAPF64[($0 + 8 | 0) >> 3];
    $17 = +HEAPF64[($0 + 16 | 0) >> 3];
    $5 = +HEAPF64[($0 + 24 | 0) >> 3];
    $6 = +HEAPF64[($0 + 32 | 0) >> 3];
    $7 = +HEAPF64[($0 + 40 | 0) >> 3];
    $18 = +HEAPF64[($0 + 48 | 0) >> 3];
    break_1 : {
     $8 = $4 + 1 | 0;
     repeat_1 : do {
      if ($8 >>> 0 >= $14 >>> 0) break break_1;
      $2 = HEAPU32[(((HEAPU32[$13 >> 2] | 0) + ($8 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
      $19 = $15 - +HEAPF64[$2 >> 3];
      $3 = $19;
      $10 = $16 - +HEAPF64[($2 + 8 | 0) >> 3];
      $11 = $17 - +HEAPF64[($2 + 16 | 0) >> 3];
      $9 = $3 * $3 + $10 * $10 + $11 * $11;
      $12 = Math_sqrt($9);
      $12 = $1 / ($9 * $12);
      $9 = +HEAPF64[($2 + 48 | 0) >> 3] * $12;
      $5 = $5 - $3 * $9;
      $6 = $6 - $10 * $9;
      $7 = $7 - $11 * $9;
      $3 = $18 * $12;
      wasm2asm_i32$0 = $2;
      wasm2asm_f64$0 = +HEAPF64[($2 + 24 | 0) >> 3] + $19 * $3;
      HEAPF64[(wasm2asm_i32$0 + 24 | 0) >> 3] = wasm2asm_f64$0;
      wasm2asm_i32$0 = $2;
      wasm2asm_f64$0 = +HEAPF64[($2 + 32 | 0) >> 3] + $10 * $3;
      HEAPF64[(wasm2asm_i32$0 + 32 | 0) >> 3] = wasm2asm_f64$0;
      wasm2asm_i32$0 = $2;
      wasm2asm_f64$0 = +HEAPF64[($2 + 40 | 0) >> 3] + $11 * $3;
      HEAPF64[(wasm2asm_i32$0 + 40 | 0) >> 3] = wasm2asm_f64$0;
      $8 = $8 + 1 | 0;
      continue repeat_1;
      break repeat_1;
     } while (1);
    };
    wasm2asm_i32$0 = $0;
    wasm2asm_f64$0 = $5;
    HEAPF64[(wasm2asm_i32$0 + 24 | 0) >> 3] = wasm2asm_f64$0;
    wasm2asm_i32$0 = $0;
    wasm2asm_f64$0 = $6;
    HEAPF64[(wasm2asm_i32$0 + 32 | 0) >> 3] = wasm2asm_f64$0;
    wasm2asm_i32$0 = $0;
    wasm2asm_f64$0 = $7;
    HEAPF64[(wasm2asm_i32$0 + 40 | 0) >> 3] = wasm2asm_f64$0;
    wasm2asm_i32$0 = $0;
    wasm2asm_f64$0 = +HEAPF64[$0 >> 3] + $1 * $5;
    HEAPF64[wasm2asm_i32$0 >> 3] = wasm2asm_f64$0;
    wasm2asm_i32$0 = $0;
    wasm2asm_f64$0 = +HEAPF64[($0 + 8 | 0) >> 3] + $1 * $6;
    HEAPF64[(wasm2asm_i32$0 + 8 | 0) >> 3] = wasm2asm_f64$0;
    wasm2asm_i32$0 = $0;
    wasm2asm_f64$0 = +HEAPF64[($0 + 16 | 0) >> 3] + $1 * $7;
    HEAPF64[(wasm2asm_i32$0 + 16 | 0) >> 3] = wasm2asm_f64$0;
    $4 = $4 + 1 | 0;
    continue repeat_0;
    break repeat_0;
   } while (1);
  };
 }
 
 function assembly_index_NBodySystem_energy($0) {
  $0 = $0 | 0;
  var $1 = 0.0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $10 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0.0, $9 = 0.0, $30 = 0.0, $39 = 0.0, $45 = 0.0, $69 = 0.0, $84 = 0.0;
  break_0 : {
   $4 = HEAPU32[$0 >> 2] | 0;
   $5 = HEAP32[($4 + 4 | 0) >> 2] | 0;
   repeat_0 : do {
    if ($2 >>> 0 >= $5 >>> 0) break break_0;
    $0 = HEAPU32[(((HEAPU32[$4 >> 2] | 0) + ($2 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $7 = +HEAPF64[$0 >> 3];
    $8 = +HEAPF64[($0 + 8 | 0) >> 3];
    $9 = +HEAPF64[($0 + 16 | 0) >> 3];
    $30 = $1;
    $10 = +HEAPF64[($0 + 48 | 0) >> 3];
    $1 = +HEAPF64[($0 + 24 | 0) >> 3];
    $39 = $1 * $1;
    $1 = +HEAPF64[($0 + 32 | 0) >> 3];
    $45 = $39 + $1 * $1;
    $1 = +HEAPF64[($0 + 40 | 0) >> 3];
    $1 = $30 + .5 * $10 * ($45 + $1 * $1);
    break_1 : {
     $0 = $2 + 1 | 0;
     repeat_1 : do {
      if ($0 >>> 0 >= $5 >>> 0) break break_1;
      $3 = HEAPU32[(((HEAPU32[$4 >> 2] | 0) + ($0 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
      $6 = $7 - +HEAPF64[$3 >> 3];
      $69 = $1;
      $1 = $8 - +HEAPF64[($3 + 8 | 0) >> 3];
      $84 = $6 * $6 + $1 * $1;
      $1 = $9 - +HEAPF64[($3 + 16 | 0) >> 3];
      $1 = $69 - $10 * +HEAPF64[($3 + 48 | 0) >> 3] / Math_sqrt($84 + $1 * $1);
      $0 = $0 + 1 | 0;
      continue repeat_1;
      break repeat_1;
     } while (1);
    };
    $2 = $2 + 1 | 0;
    continue repeat_0;
    break repeat_0;
   } while (1);
  };
  return +$1;
 }
 
 function assembly_index_step() {
  assembly_index_NBodySystem_advance(assembly_index_system | 0, +(.01));
  return +(+assembly_index_NBodySystem_energy(assembly_index_system | 0));
 }
 
 function assembly_index_bench($0) {
  $0 = $0 | 0;
  var $1 = 0;
  break_0 : {
   repeat_0 : do {
    if ($1 >>> 0 >= $0 >>> 0) break break_0;
    assembly_index_NBodySystem_advance(assembly_index_system | 0, +(.01));
    $1 = $1 + 1 | 0;
    continue repeat_0;
    break repeat_0;
   } while (1);
  };
 }
 
 function assembly_index_getBody($0) {
  $0 = $0 | 0;
  var $1 = 0, $22 = 0, $20 = 0;
  $1 = HEAPU32[assembly_index_system >> 2] | 0;
  if ($0 >>> 0 < (HEAP32[($1 + 4 | 0) >> 2] | 0) >>> 0) {
   $1 = HEAPU32[$1 >> 2] | 0;
   if ($0 >>> 0 < ((HEAP32[$1 >> 2] | 0) >>> 2 | 0) >>> 0) $20 = HEAPU32[(($1 + ($0 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
   $22 = $20;
  } else $22 = 0;
  $0 = $22;
  return $0 | 0;
 }
 
 function start() {
  $lib_allocator_arena_startOffset = 40;
  $lib_allocator_arena_offset = $lib_allocator_arena_startOffset;
 }
 
 function __wasm_grow_memory(pagesToAdd) {
  pagesToAdd = pagesToAdd | 0;
  var oldPages = __wasm_current_memory() | 0;
  var newPages = oldPages + pagesToAdd | 0;
  if ((oldPages < newPages) && (newPages < 65535)) {
   var newBuffer = new ArrayBuffer(Math_imul(newPages, 65536));
   var newHEAP8 = new global.Int8Array(newBuffer);
   newHEAP8.set(HEAP8);
   HEAP8 = newHEAP8;
   HEAP16 = new global.Int16Array(newBuffer);
   HEAP32 = new global.Int32Array(newBuffer);
   HEAPU8 = new global.Uint8Array(newBuffer);
   HEAPU16 = new global.Uint16Array(newBuffer);
   HEAPU32 = new global.Uint32Array(newBuffer);
   HEAPF32 = new global.Float32Array(newBuffer);
   HEAPF64 = new global.Float64Array(newBuffer);
   buffer = newBuffer;
  }
  return oldPages;
 }
 
 function __wasm_current_memory() {
  return buffer.byteLength / 65536 | 0;
 }
 
 return {
  memory: Object.create(Object.prototype, {
   grow: {
    value: __wasm_grow_memory
   }, 
   buffer: {
    get: function () {
     return buffer;
    }
    
   }
  }), 
  init: assembly_index_init, 
  step: assembly_index_step, 
  bench: assembly_index_bench, 
  getBody: assembly_index_getBody
 };
}
