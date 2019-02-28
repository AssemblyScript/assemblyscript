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
 var $lib_allocator_arena_startOffset = 0;
 var $lib_allocator_arena_offset = 0;
 var assembly_index_system = 0;
 var i64toi32_i32$HIGH_BITS = 0;
 function $lib_allocator_arena___memory_allocate($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0, $3 = 0, wasm2js_i32$0 = 0, wasm2js_i32$1 = 0, wasm2js_i32$2 = 0;
  if ($0 >>> 0 > 1073741824 >>> 0) abort();
  $1 = $lib_allocator_arena_offset;
  $2 = (($1 + (wasm2js_i32$0 = $0, wasm2js_i32$1 = 1, wasm2js_i32$2 = $0 >>> 0 > 1 >>> 0, wasm2js_i32$2 ? wasm2js_i32$0 : wasm2js_i32$1) | 0) + 7 | 0) & 4294967288 | 0;
  $3 = __wasm_current_memory();
  if ($2 >>> 0 > ($3 << 16 | 0) >>> 0) {
   $0 = ((($2 - $1 | 0) + 65535 | 0) & 4294901760 | 0) >>> 16 | 0;
   if ((__wasm_grow_memory((wasm2js_i32$0 = $3, wasm2js_i32$1 = $0, wasm2js_i32$2 = ($3 | 0) > ($0 | 0), wasm2js_i32$2 ? wasm2js_i32$0 : wasm2js_i32$1) | 0) | 0) < (0 | 0)) if ((__wasm_grow_memory($0 | 0) | 0) < (0 | 0)) abort();;
  }
  $lib_allocator_arena_offset = $2;
  return $1 | 0;
 }
 
 function assembly_index_NBodySystem_constructor($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0, $3 = 0.0, $4 = 0.0, $5 = 0.0, $6 = 0.0, $7 = 0, $49 = 0, wasm2js_i32$0 = 0, wasm2js_f64$0 = 0.0, wasm2js_i32$1 = 0;
  $7 = HEAP32[($0 + 4 | 0) >> 2] | 0;
  repeat_0 : do {
   if (($1 | 0) < ($7 | 0)) {
    $2 = HEAPU32[(((HEAPU32[$0 >> 2] | 0) + ($1 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $3 = +HEAPF64[($2 + 48 | 0) >> 3];
    $4 = $4 + +HEAPF64[($2 + 24 | 0) >> 3] * $3;
    $5 = $5 + +HEAPF64[($2 + 32 | 0) >> 3] * $3;
    $6 = $6 + +HEAPF64[($2 + 40 | 0) >> 3] * $3;
    $1 = $1 + 1 | 0;
    continue repeat_0;
   }
   break repeat_0;
  } while (1);
  $1 = HEAPU32[$0 >> 2] | 0;
  if (0 >>> 0 < ((HEAP32[$1 >> 2] | 0) >>> 2 | 0) >>> 0) $49 = HEAPU32[($1 + 8 | 0) >> 2] | 0; else abort();
  $1 = $49;
  wasm2js_i32$0 = $1;
  wasm2js_f64$0 = -$4 / 39.47841760435743;
  HEAPF64[(wasm2js_i32$0 + 24 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $1;
  wasm2js_f64$0 = -$5 / 39.47841760435743;
  HEAPF64[(wasm2js_i32$0 + 32 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $1;
  wasm2js_f64$0 = -$6 / 39.47841760435743;
  HEAPF64[(wasm2js_i32$0 + 40 | 0) >> 3] = wasm2js_f64$0;
  $1 = $lib_allocator_arena___memory_allocate(4 | 0) | 0;
  wasm2js_i32$0 = $1;
  wasm2js_i32$1 = $0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  return $1 | 0;
 }
 
 function assembly_index_Body_constructor($0, $1, $2, $3, $4, $5, $6) {
  $0 = +$0;
  $1 = +$1;
  $2 = +$2;
  $3 = +$3;
  $4 = +$4;
  $5 = +$5;
  $6 = +$6;
  var $7 = 0, wasm2js_i32$0 = 0, wasm2js_f64$0 = 0.0;
  $7 = $lib_allocator_arena___memory_allocate(56 | 0) | 0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $0;
  HEAPF64[wasm2js_i32$0 >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $1;
  HEAPF64[(wasm2js_i32$0 + 8 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $2;
  HEAPF64[(wasm2js_i32$0 + 16 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $3;
  HEAPF64[(wasm2js_i32$0 + 24 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $4;
  HEAPF64[(wasm2js_i32$0 + 32 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $5;
  HEAPF64[(wasm2js_i32$0 + 40 | 0) >> 3] = wasm2js_f64$0;
  wasm2js_i32$0 = $7;
  wasm2js_f64$0 = $6;
  HEAPF64[(wasm2js_i32$0 + 48 | 0) >> 3] = wasm2js_f64$0;
  return $7 | 0;
 }
 
 function $lib_internal_memory_memset($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0, i64toi32_i32$1 = 0, i64toi32_i32$0 = 0, wasm2js_i32$0 = 0, wasm2js_i32$1 = 0, wasm2js_i32$2 = 0, wasm2js_i32$3 = 0;
  wasm2js_i32$0 = $0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  $1 = $0 + 20 | 0;
  wasm2js_i32$0 = $1 - 1 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 1 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 2 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 2 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 3 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 3 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 4 | 0;
  wasm2js_i32$1 = 0;
  HEAP8[wasm2js_i32$0 >> 0] = wasm2js_i32$1;
  $1 = (0 - $0 | 0) & 3 | 0;
  $0 = $1 + $0 | 0;
  wasm2js_i32$0 = $0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  $2 = (20 - $1 | 0) & 4294967292 | 0;
  wasm2js_i32$0 = ($2 + $0 | 0) - 4 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  if ($2 >>> 0 <= 8 >>> 0) return;
  wasm2js_i32$0 = $0 + 4 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 8 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  $1 = $0 + $2 | 0;
  wasm2js_i32$0 = $1 - 12 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 8 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  if ($2 >>> 0 <= 24 >>> 0) return;
  wasm2js_i32$0 = $0 + 12 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 16 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 20 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0 + 24 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  $1 = $0 + $2 | 0;
  wasm2js_i32$0 = $1 - 28 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 24 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 20 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $1 - 16 | 0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  $1 = ($0 & 4 | 0) + 24 | 0;
  $0 = $1 + $0 | 0;
  $2 = $2 - $1 | 0;
  continue_0 : do {
   if ($2 >>> 0 >= 32 >>> 0) {
    i64toi32_i32$1 = $0;
    i64toi32_i32$0 = 0;
    wasm2js_i32$0 = $0;
    wasm2js_i32$1 = 0;
    HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
    wasm2js_i32$0 = $0;
    wasm2js_i32$1 = i64toi32_i32$0;
    (wasm2js_i32$2 = wasm2js_i32$0, wasm2js_i32$3 = wasm2js_i32$1), ((HEAP8[(wasm2js_i32$2 + 4 | 0) >> 0] = wasm2js_i32$3 & 255 | 0, HEAP8[(wasm2js_i32$2 + 5 | 0) >> 0] = (wasm2js_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 6 | 0) >> 0] = (wasm2js_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 7 | 0) >> 0] = (wasm2js_i32$3 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$1 = $0 + 8 | 0;
    i64toi32_i32$0 = 0;
    wasm2js_i32$0 = i64toi32_i32$1;
    wasm2js_i32$1 = 0;
    HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
    wasm2js_i32$0 = i64toi32_i32$1;
    wasm2js_i32$1 = i64toi32_i32$0;
    (wasm2js_i32$2 = wasm2js_i32$0, wasm2js_i32$3 = wasm2js_i32$1), ((HEAP8[(wasm2js_i32$2 + 4 | 0) >> 0] = wasm2js_i32$3 & 255 | 0, HEAP8[(wasm2js_i32$2 + 5 | 0) >> 0] = (wasm2js_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 6 | 0) >> 0] = (wasm2js_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 7 | 0) >> 0] = (wasm2js_i32$3 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$1 = $0 + 16 | 0;
    i64toi32_i32$0 = 0;
    wasm2js_i32$0 = i64toi32_i32$1;
    wasm2js_i32$1 = 0;
    HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
    wasm2js_i32$0 = i64toi32_i32$1;
    wasm2js_i32$1 = i64toi32_i32$0;
    (wasm2js_i32$2 = wasm2js_i32$0, wasm2js_i32$3 = wasm2js_i32$1), ((HEAP8[(wasm2js_i32$2 + 4 | 0) >> 0] = wasm2js_i32$3 & 255 | 0, HEAP8[(wasm2js_i32$2 + 5 | 0) >> 0] = (wasm2js_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 6 | 0) >> 0] = (wasm2js_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 7 | 0) >> 0] = (wasm2js_i32$3 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$1 = $0 + 24 | 0;
    i64toi32_i32$0 = 0;
    wasm2js_i32$0 = i64toi32_i32$1;
    wasm2js_i32$1 = 0;
    HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
    wasm2js_i32$0 = i64toi32_i32$1;
    wasm2js_i32$1 = i64toi32_i32$0;
    (wasm2js_i32$2 = wasm2js_i32$0, wasm2js_i32$3 = wasm2js_i32$1), ((HEAP8[(wasm2js_i32$2 + 4 | 0) >> 0] = wasm2js_i32$3 & 255 | 0, HEAP8[(wasm2js_i32$2 + 5 | 0) >> 0] = (wasm2js_i32$3 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 6 | 0) >> 0] = (wasm2js_i32$3 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2js_i32$2 + 7 | 0) >> 0] = (wasm2js_i32$3 >>> 24 | 0) & 255 | 0;
    $2 = $2 - 32 | 0;
    $0 = $0 + 32 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
 }
 
 function $lib_array_Array_Body__constructor() {
  var $0 = 0, $1 = 0, wasm2js_i32$0 = 0, wasm2js_i32$1 = 0;
  $1 = $lib_allocator_arena___memory_allocate(32 | 0) | 0;
  wasm2js_i32$0 = $1;
  wasm2js_i32$1 = 20;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  $0 = $lib_allocator_arena___memory_allocate(8 | 0) | 0;
  wasm2js_i32$0 = $0;
  wasm2js_i32$1 = 0;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0;
  wasm2js_i32$1 = 0;
  HEAP32[(wasm2js_i32$0 + 4 | 0) >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0;
  wasm2js_i32$1 = $1;
  HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  wasm2js_i32$0 = $0;
  wasm2js_i32$1 = 5;
  HEAP32[(wasm2js_i32$0 + 4 | 0) >> 2] = wasm2js_i32$1;
  $lib_internal_memory_memset($1 + 8 | 0 | 0);
  return $0 | 0;
 }
 
 function assembly_index_init() {
  var $0 = 0, $1 = 0, wasm2js_i32$0 = 0, wasm2js_i32$1 = 0;
  $1 = $lib_array_Array_Body__constructor() | 0;
  $0 = assembly_index_Body_constructor(+(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(39.47841760435743)) | 0;
  wasm2js_i32$0 = HEAPU32[$1 >> 2] | 0;
  wasm2js_i32$1 = $0;
  HEAP32[(wasm2js_i32$0 + 8 | 0) >> 2] = wasm2js_i32$1;
  $0 = assembly_index_Body_constructor(+(4.841431442464721), +(-1.1603200440274284), +(-.10362204447112311), +(.606326392995832), +(2.81198684491626), +(-.02521836165988763), +(.03769367487038949)) | 0;
  wasm2js_i32$0 = (HEAPU32[$1 >> 2] | 0) + 4 | 0;
  wasm2js_i32$1 = $0;
  HEAP32[(wasm2js_i32$0 + 8 | 0) >> 2] = wasm2js_i32$1;
  $0 = assembly_index_Body_constructor(+(8.34336671824458), +(4.124798564124305), +(-.4035234171143214), +(-1.0107743461787924), +(1.8256623712304119), +(.008415761376584154), +(.011286326131968767)) | 0;
  wasm2js_i32$0 = (HEAPU32[$1 >> 2] | 0) + 8 | 0;
  wasm2js_i32$1 = $0;
  HEAP32[(wasm2js_i32$0 + 8 | 0) >> 2] = wasm2js_i32$1;
  $0 = assembly_index_Body_constructor(+(12.894369562139131), +(-15.111151401698631), +(-.22330757889265573), +(1.0827910064415354), +(.8687130181696082), +(-.010832637401363636), +(1.7237240570597112e-03)) | 0;
  wasm2js_i32$0 = (HEAPU32[$1 >> 2] | 0) + 12 | 0;
  wasm2js_i32$1 = $0;
  HEAP32[(wasm2js_i32$0 + 8 | 0) >> 2] = wasm2js_i32$1;
  $0 = assembly_index_Body_constructor(+(15.379697114850917), +(-25.919314609987964), +(.17925877295037118), +(.979090732243898), +(.5946989986476762), +(-.034755955504078104), +(2.0336868699246304e-03)) | 0;
  wasm2js_i32$0 = (HEAPU32[$1 >> 2] | 0) + 16 | 0;
  wasm2js_i32$1 = $0;
  HEAP32[(wasm2js_i32$0 + 8 | 0) >> 2] = wasm2js_i32$1;
  assembly_index_system = assembly_index_NBodySystem_constructor($1 | 0) | 0;
 }
 
 function assembly_index_NBodySystem_advance($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0.0, $8 = 0.0, $3 = 0, $4 = 0.0, $5 = 0.0, $6 = 0.0, $7 = 0, $9 = 0.0, $10 = 0.0, $11 = 0.0, $12 = 0, $13 = 0, $18 = 0.0, $14 = 0.0, $15 = 0.0, $16 = 0.0, $17 = 0.0, wasm2js_i32$0 = 0, wasm2js_f64$0 = 0.0;
  $12 = HEAPU32[$0 >> 2] | 0;
  $13 = HEAP32[($12 + 4 | 0) >> 2] | 0;
  repeat_0 : do {
   if ($3 >>> 0 < $13 >>> 0) {
    $0 = HEAPU32[(((HEAPU32[$12 >> 2] | 0) + ($3 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $14 = +HEAPF64[$0 >> 3];
    $15 = +HEAPF64[($0 + 8 | 0) >> 3];
    $16 = +HEAPF64[($0 + 16 | 0) >> 3];
    $4 = +HEAPF64[($0 + 24 | 0) >> 3];
    $5 = +HEAPF64[($0 + 32 | 0) >> 3];
    $6 = +HEAPF64[($0 + 40 | 0) >> 3];
    $17 = +HEAPF64[($0 + 48 | 0) >> 3];
    $7 = $3 + 1 | 0;
    repeat_1 : do {
     if ($7 >>> 0 < $13 >>> 0) {
      $1 = HEAPU32[(((HEAPU32[$12 >> 2] | 0) + ($7 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
      $18 = $14 - +HEAPF64[$1 >> 3];
      $2 = $18;
      $9 = $15 - +HEAPF64[($1 + 8 | 0) >> 3];
      $10 = $16 - +HEAPF64[($1 + 16 | 0) >> 3];
      $8 = $2 * $2 + $9 * $9 + $10 * $10;
      $11 = Math_sqrt($8);
      $11 = .01 / ($8 * $11);
      $8 = +HEAPF64[($1 + 48 | 0) >> 3] * $11;
      $4 = $4 - $2 * $8;
      $5 = $5 - $9 * $8;
      $6 = $6 - $10 * $8;
      $2 = $17 * $11;
      wasm2js_i32$0 = $1;
      wasm2js_f64$0 = +HEAPF64[($1 + 24 | 0) >> 3] + $18 * $2;
      HEAPF64[(wasm2js_i32$0 + 24 | 0) >> 3] = wasm2js_f64$0;
      wasm2js_i32$0 = $1;
      wasm2js_f64$0 = +HEAPF64[($1 + 32 | 0) >> 3] + $9 * $2;
      HEAPF64[(wasm2js_i32$0 + 32 | 0) >> 3] = wasm2js_f64$0;
      wasm2js_i32$0 = $1;
      wasm2js_f64$0 = +HEAPF64[($1 + 40 | 0) >> 3] + $10 * $2;
      HEAPF64[(wasm2js_i32$0 + 40 | 0) >> 3] = wasm2js_f64$0;
      $7 = $7 + 1 | 0;
      continue repeat_1;
     }
     break repeat_1;
    } while (1);
    wasm2js_i32$0 = $0;
    wasm2js_f64$0 = $4;
    HEAPF64[(wasm2js_i32$0 + 24 | 0) >> 3] = wasm2js_f64$0;
    wasm2js_i32$0 = $0;
    wasm2js_f64$0 = $5;
    HEAPF64[(wasm2js_i32$0 + 32 | 0) >> 3] = wasm2js_f64$0;
    wasm2js_i32$0 = $0;
    wasm2js_f64$0 = $6;
    HEAPF64[(wasm2js_i32$0 + 40 | 0) >> 3] = wasm2js_f64$0;
    wasm2js_i32$0 = $0;
    wasm2js_f64$0 = +HEAPF64[$0 >> 3] + .01 * $4;
    HEAPF64[wasm2js_i32$0 >> 3] = wasm2js_f64$0;
    wasm2js_i32$0 = $0;
    wasm2js_f64$0 = +HEAPF64[($0 + 8 | 0) >> 3] + .01 * $5;
    HEAPF64[(wasm2js_i32$0 + 8 | 0) >> 3] = wasm2js_f64$0;
    wasm2js_i32$0 = $0;
    wasm2js_f64$0 = +HEAPF64[($0 + 16 | 0) >> 3] + .01 * $6;
    HEAPF64[(wasm2js_i32$0 + 16 | 0) >> 3] = wasm2js_f64$0;
    $3 = $3 + 1 | 0;
    continue repeat_0;
   }
   break repeat_0;
  } while (1);
 }
 
 function assembly_index_NBodySystem_energy($0) {
  $0 = $0 | 0;
  var $1 = 0.0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $10 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0.0, $9 = 0.0, $30 = 0.0, $39 = 0.0, $45 = 0.0, $69 = 0.0, $84 = 0.0;
  $4 = HEAPU32[$0 >> 2] | 0;
  $5 = HEAP32[($4 + 4 | 0) >> 2] | 0;
  repeat_0 : do {
   if ($2 >>> 0 < $5 >>> 0) {
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
    $0 = $2 + 1 | 0;
    repeat_1 : do {
     if ($0 >>> 0 < $5 >>> 0) {
      $3 = HEAPU32[(((HEAPU32[$4 >> 2] | 0) + ($0 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
      $6 = $7 - +HEAPF64[$3 >> 3];
      $69 = $1;
      $1 = $8 - +HEAPF64[($3 + 8 | 0) >> 3];
      $84 = $6 * $6 + $1 * $1;
      $1 = $9 - +HEAPF64[($3 + 16 | 0) >> 3];
      $1 = $69 - $10 * +HEAPF64[($3 + 48 | 0) >> 3] / Math_sqrt($84 + $1 * $1);
      $0 = $0 + 1 | 0;
      continue repeat_1;
     }
     break repeat_1;
    } while (1);
    $2 = $2 + 1 | 0;
    continue repeat_0;
   }
   break repeat_0;
  } while (1);
  return +$1;
 }
 
 function assembly_index_step() {
  assembly_index_NBodySystem_advance(assembly_index_system | 0);
  return +(+assembly_index_NBodySystem_energy(assembly_index_system | 0));
 }
 
 function assembly_index_bench($0) {
  $0 = $0 | 0;
  var $1 = 0;
  break_0 : {
   repeat_0 : do {
    if ($1 >>> 0 >= $0 >>> 0) break break_0;
    assembly_index_NBodySystem_advance(assembly_index_system | 0);
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
   if ($0 >>> 0 < ((HEAP32[$1 >> 2] | 0) >>> 2 | 0) >>> 0) $20 = HEAPU32[((($0 << 2 | 0) + $1 | 0) + 8 | 0) >> 2] | 0; else abort();
   $22 = $20;
  } else $22 = 0;
  return $22 | 0;
 }
 
 function start() {
  $lib_allocator_arena_startOffset = 40;
  $lib_allocator_arena_offset = $lib_allocator_arena_startOffset;
 }
 
 function null_() {
  
 }
 
 var FUNCTION_TABLE_v = [null_];
 function __wasm_grow_memory(pagesToAdd) {
  pagesToAdd = pagesToAdd | 0;
  var oldPages = __wasm_current_memory() | 0;
  var newPages = oldPages + pagesToAdd | 0;
  if ((oldPages < newPages) && (newPages < 65536)) {
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

const memasmFunc = new ArrayBuffer(65536);
const assignasmFunc = (
      function(mem) {
        const _mem = new Uint8Array(mem);
        return function(offset, s) {
          if (typeof Buffer === 'undefined') {
            const bytes = atob(s);
            for (let i = 0; i < bytes.length; i++)
              _mem[offset + i] = bytes.charCodeAt(i);
          } else {
            const bytes = Buffer.from(s, 'base64');
            for (let i = 0; i < bytes.length; i++)
              _mem[offset + i] = bytes[i];
          }
        }
      }
    )(memasmFunc);
assignasmFunc(8, "DQAAAH4AbABpAGIALwBhAHIAcgBhAHkALgB0AHM=");
const retasmFunc = asmFunc({Math,Int8Array,Uint8Array,Int16Array,Uint16Array,Int32Array,Uint32Array,Float32Array,Float64Array,NaN,Infinity}, {abort:function() { throw new Error('abort'); }},memasmFunc);
export const memory = retasmFunc.memory;
export const init = retasmFunc.init;
export const step = retasmFunc.step;
export const bench = retasmFunc.bench;
