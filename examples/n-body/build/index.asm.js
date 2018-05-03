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
 var abort = env.abort;
 var $lib_allocator_arena_startOffset = 0;
 var $lib_allocator_arena_offset = 0;
 var assembly_index_system = 0;
 var HEAP_BASE = 36;
 var i64toi32_i32$HIGH_BITS = 0;
 function $lib_allocator_arena_allocate_memory($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0, $3 = 0, $4 = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0, wasm2asm_i32$2 = 0;
  if ($0) {
   if ($0 >>> 0 > 1073741824 >>> 0) abort();
   $1 = $lib_allocator_arena_offset;
   $2 = (($1 + $0 | 0) + 7 | 0) & 4294967288 | 0;
   $0 = __wasm_current_memory();
   if ($2 >>> 0 > ($0 << 16 | 0) >>> 0) {
    $3 = ((($2 - $1 | 0) + 65535 | 0) & 4294901760 | 0) >>> 16 | 0;
    $4 = $3;
    if ((__wasm_grow_memory((wasm2asm_i32$2 = ($0 | 0) > ($4 | 0), wasm2asm_i32$0 = $0, wasm2asm_i32$1 = $4, wasm2asm_i32$2 ? wasm2asm_i32$0 : wasm2asm_i32$1) | 0) | 0) < (0 | 0)) if ((__wasm_grow_memory($3 | 0) | 0) < (0 | 0)) abort();;
   }
   $lib_allocator_arena_offset = $2;
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
  var $8 = 0, $9 = 0;
  if ($0) $9 = $0; else {
   $8 = $lib_allocator_arena_allocate_memory(56 | 0) | 0;
   HEAPF64[$8 >> 3] = $1;
   HEAPF64[($8 + 8 | 0) >> 3] = $2;
   HEAPF64[($8 + 16 | 0) >> 3] = $3;
   HEAPF64[($8 + 24 | 0) >> 3] = $4;
   HEAPF64[($8 + 32 | 0) >> 3] = $5;
   HEAPF64[($8 + 40 | 0) >> 3] = $6;
   HEAPF64[($8 + 48 | 0) >> 3] = $7;
   $9 = $8;
  }
  return $9 | 0;
 }
 
 function $lib_memory_set_memory($0, $1, $2) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  $2 = $2 | 0;
  var i64toi32_i32$3 = 0, i64toi32_i32$2 = 0, $4 = 0, i64toi32_i32$5 = 0, $3 = 0, $3$hi = 0, i64toi32_i32$1 = 0, i64toi32_i32$4 = 0, $11 = 0, i64toi32_i32$0 = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0;
  if (($2 | 0) == (0 | 0)) return;
  HEAP8[$0 >> 0] = $1;
  HEAP8[(($0 + $2 | 0) - 1 | 0) >> 0] = $1;
  if ($2 >>> 0 <= 2 >>> 0) return;
  HEAP8[($0 + 1 | 0) >> 0] = $1;
  HEAP8[($0 + 2 | 0) >> 0] = $1;
  HEAP8[(($0 + $2 | 0) - 2 | 0) >> 0] = $1;
  HEAP8[(($0 + $2 | 0) - 3 | 0) >> 0] = $1;
  if ($2 >>> 0 <= 6 >>> 0) return;
  HEAP8[($0 + 3 | 0) >> 0] = $1;
  HEAP8[(($0 + $2 | 0) - 4 | 0) >> 0] = $1;
  if ($2 >>> 0 <= 8 >>> 0) return;
  $4 = (0 - $0 | 0) & 3 | 0;
  $0 = $0 + $4 | 0;
  $1 = Math_imul($1, 16843009);
  HEAP32[$0 >> 2] = $1;
  $2 = ($2 - $4 | 0) & 4294967292 | 0;
  HEAP32[(($0 + $2 | 0) - 4 | 0) >> 2] = $1;
  if ($2 >>> 0 <= 8 >>> 0) return;
  HEAP32[($0 + 4 | 0) >> 2] = $1;
  HEAP32[($0 + 8 | 0) >> 2] = $1;
  HEAP32[(($0 + $2 | 0) - 12 | 0) >> 2] = $1;
  HEAP32[(($0 + $2 | 0) - 8 | 0) >> 2] = $1;
  if ($2 >>> 0 <= 24 >>> 0) return;
  HEAP32[($0 + 12 | 0) >> 2] = $1;
  HEAP32[($0 + 16 | 0) >> 2] = $1;
  HEAP32[($0 + 20 | 0) >> 2] = $1;
  HEAP32[($0 + 24 | 0) >> 2] = $1;
  HEAP32[(($0 + $2 | 0) - 28 | 0) >> 2] = $1;
  HEAP32[(($0 + $2 | 0) - 24 | 0) >> 2] = $1;
  HEAP32[(($0 + $2 | 0) - 20 | 0) >> 2] = $1;
  HEAP32[(($0 + $2 | 0) - 16 | 0) >> 2] = $1;
  $4 = ($0 & 4 | 0) + 24 | 0;
  $0 = $0 + $4 | 0;
  $2 = $2 - $4 | 0;
  i64toi32_i32$0 = 0;
  i64toi32_i32$3 = $1;
  i64toi32_i32$1 = 0;
  i64toi32_i32$3 = $1;
  i64toi32_i32$2 = 0;
  i64toi32_i32$4 = 32;
  i64toi32_i32$5 = i64toi32_i32$4 & 31 | 0;
  if (32 >>> 0 <= (i64toi32_i32$4 & 63 | 0) >>> 0) {
   i64toi32_i32$2 = i64toi32_i32$3 << i64toi32_i32$5 | 0;
   $11 = 0;
  } else {
   i64toi32_i32$2 = ((1 << i64toi32_i32$5 | 0) - 1 | 0) & (i64toi32_i32$3 >>> (32 - i64toi32_i32$5 | 0) | 0) | 0 | (i64toi32_i32$1 << i64toi32_i32$5 | 0) | 0;
   $11 = i64toi32_i32$3 << i64toi32_i32$5 | 0;
  }
  i64toi32_i32$1 = $11;
  i64toi32_i32$2 = i64toi32_i32$0 | i64toi32_i32$2 | 0;
  $3 = i64toi32_i32$3 | i64toi32_i32$1 | 0;
  $3$hi = i64toi32_i32$2;
  continue_0 : do {
   if ($2 >>> 0 >= 32 >>> 0) {
    i64toi32_i32$3 = $0;
    i64toi32_i32$2 = $3$hi;
    HEAP32[i64toi32_i32$3 >> 2] = $3;
    (wasm2asm_i32$0 = i64toi32_i32$3, wasm2asm_i32$1 = i64toi32_i32$2), ((HEAP8[(wasm2asm_i32$0 + 4 | 0) >> 0] = wasm2asm_i32$1 & 255 | 0, HEAP8[(wasm2asm_i32$0 + 5 | 0) >> 0] = (wasm2asm_i32$1 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 6 | 0) >> 0] = (wasm2asm_i32$1 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 7 | 0) >> 0] = (wasm2asm_i32$1 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$3 = $0 + 8 | 0;
    i64toi32_i32$2 = $3$hi;
    HEAP32[i64toi32_i32$3 >> 2] = $3;
    (wasm2asm_i32$0 = i64toi32_i32$3, wasm2asm_i32$1 = i64toi32_i32$2), ((HEAP8[(wasm2asm_i32$0 + 4 | 0) >> 0] = wasm2asm_i32$1 & 255 | 0, HEAP8[(wasm2asm_i32$0 + 5 | 0) >> 0] = (wasm2asm_i32$1 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 6 | 0) >> 0] = (wasm2asm_i32$1 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 7 | 0) >> 0] = (wasm2asm_i32$1 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$3 = $0 + 16 | 0;
    i64toi32_i32$2 = $3$hi;
    HEAP32[i64toi32_i32$3 >> 2] = $3;
    (wasm2asm_i32$0 = i64toi32_i32$3, wasm2asm_i32$1 = i64toi32_i32$2), ((HEAP8[(wasm2asm_i32$0 + 4 | 0) >> 0] = wasm2asm_i32$1 & 255 | 0, HEAP8[(wasm2asm_i32$0 + 5 | 0) >> 0] = (wasm2asm_i32$1 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 6 | 0) >> 0] = (wasm2asm_i32$1 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 7 | 0) >> 0] = (wasm2asm_i32$1 >>> 24 | 0) & 255 | 0;
    i64toi32_i32$3 = $0 + 24 | 0;
    i64toi32_i32$2 = $3$hi;
    HEAP32[i64toi32_i32$3 >> 2] = $3;
    (wasm2asm_i32$0 = i64toi32_i32$3, wasm2asm_i32$1 = i64toi32_i32$2), ((HEAP8[(wasm2asm_i32$0 + 4 | 0) >> 0] = wasm2asm_i32$1 & 255 | 0, HEAP8[(wasm2asm_i32$0 + 5 | 0) >> 0] = (wasm2asm_i32$1 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 6 | 0) >> 0] = (wasm2asm_i32$1 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 7 | 0) >> 0] = (wasm2asm_i32$1 >>> 24 | 0) & 255 | 0;
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
  var $2 = 0, $3 = 0, $4 = 0;
  if ($1 >>> 0 > 268435454 >>> 0) {
   abort(0 | 0, 4 | 0, 23 | 0, 39 | 0);
   abort();
  }
  $3 = $1 << 2 | 0;
  $2 = $3;
  $4 = $lib_allocator_arena_allocate_memory(1 << (32 - Math_clz32($2 + 7 | 0) | 0) | 0 | 0) | 0;
  HEAP32[$4 >> 2] = $2;
  $2 = $4;
  if (($0 | 0) == (0 | 0)) {
   $0 = $lib_allocator_arena_allocate_memory(8 | 0) | 0;
   HEAP32[$0 >> 2] = 0;
   HEAP32[($0 + 4 | 0) >> 2] = 0;
  }
  HEAP32[$0 >> 2] = $2;
  HEAP32[($0 + 4 | 0) >> 2] = $1;
  $lib_memory_set_memory($2 + 8 | 0 | 0, 0 | 0, $3 | 0);
  return $0 | 0;
 }
 
 function assembly_index_NBodySystem_constructor($0, $1) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  var $2 = 0, $3 = 0, $4 = 0.0, $5 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0, $9 = 0;
  $8 = HEAP32[($1 + 4 | 0) >> 2] | 0;
  continue_0 : do {
   if (($2 | 0) < ($8 | 0)) {
    $3 = HEAPU32[(((HEAPU32[$1 >> 2] | 0) + ($2 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $4 = +HEAPF64[($3 + 48 | 0) >> 3];
    $5 = $5 + +HEAPF64[($3 + 24 | 0) >> 3] * $4;
    $6 = $6 + +HEAPF64[($3 + 32 | 0) >> 3] * $4;
    $7 = $7 + +HEAPF64[($3 + 40 | 0) >> 3] * $4;
    $2 = $2 + 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
  $2 = HEAPU32[$1 >> 2] | 0;
  if (0 >>> 0 < ((HEAP32[$2 >> 2] | 0) >>> 2 | 0) >>> 0) $9 = HEAPU32[($2 + 8 | 0) >> 2] | 0; else abort();
  $2 = $9;
  HEAPF64[($2 + 24 | 0) >> 3] = -$5 / 39.47841760435743;
  HEAPF64[($2 + 32 | 0) >> 3] = -$6 / 39.47841760435743;
  HEAPF64[($2 + 40 | 0) >> 3] = -$7 / 39.47841760435743;
  if (($0 | 0) == (0 | 0)) {
   $0 = $lib_allocator_arena_allocate_memory(4 | 0) | 0;
   HEAP32[$0 >> 2] = $1;
  }
  return $0 | 0;
 }
 
 function assembly_index_init() {
  var $0 = 0, $1 = 0, $2 = 0;
  $1 = $lib_array_Array_Body__constructor(0 | 0, 5 | 0) | 0;
  $0 = $1;
  $2 = assembly_index_Body_constructor(0 | 0, +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(39.47841760435743)) | 0;
  HEAP32[((HEAPU32[$0 >> 2] | 0) + 8 | 0) >> 2] = $2;
  $0 = assembly_index_Body_constructor(0 | 0, +(4.841431442464721), +(-1.1603200440274284), +(-.10362204447112311), +(.606326392995832), +(2.81198684491626), +(-.02521836165988763), +(.03769367487038949)) | 0;
  HEAP32[(((HEAPU32[$1 >> 2] | 0) + 4 | 0) + 8 | 0) >> 2] = $0;
  $0 = assembly_index_Body_constructor(0 | 0, +(8.34336671824458), +(4.124798564124305), +(-.4035234171143214), +(-1.0107743461787924), +(1.8256623712304119), +(.008415761376584154), +(.011286326131968767)) | 0;
  HEAP32[(((HEAPU32[$1 >> 2] | 0) + 8 | 0) + 8 | 0) >> 2] = $0;
  $0 = assembly_index_Body_constructor(0 | 0, +(12.894369562139131), +(-15.111151401698631), +(-.22330757889265573), +(1.0827910064415354), +(.8687130181696082), +(-.010832637401363636), +(1.7237240570597112e-03)) | 0;
  HEAP32[(((HEAPU32[$1 >> 2] | 0) + 12 | 0) + 8 | 0) >> 2] = $0;
  $0 = assembly_index_Body_constructor(0 | 0, +(15.379697114850917), +(-25.919314609987964), +(.17925877295037118), +(.979090732243898), +(.5946989986476762), +(-.034755955504078104), +(2.0336868699246304e-03)) | 0;
  HEAP32[(((HEAPU32[$1 >> 2] | 0) + 16 | 0) + 8 | 0) >> 2] = $0;
  assembly_index_system = assembly_index_NBodySystem_constructor(0 | 0, $1 | 0) | 0;
 }
 
 function assembly_index_getBody($0) {
  $0 = $0 | 0;
  var $1 = 0, $2 = 0, $3 = 0;
  $1 = HEAPU32[assembly_index_system >> 2] | 0;
  if ($0 >>> 0 < (HEAP32[($1 + 4 | 0) >> 2] | 0) >>> 0) {
   $1 = HEAPU32[$1 >> 2] | 0;
   if ($0 >>> 0 < ((HEAP32[$1 >> 2] | 0) >>> 2 | 0) >>> 0) $3 = HEAPU32[(($1 + ($0 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
   $2 = $3;
  } else $2 = 0;
  return $2 | 0;
 }
 
 function assembly_index_NBodySystem_advance($0, $1) {
  $0 = $0 | 0;
  $1 = +$1;
  var $2 = 0, $3 = 0.0, $9 = 0.0, $4 = 0, $5 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0, $10 = 0.0, $11 = 0.0, $12 = 0.0, $13 = 0, $14 = 0, $15 = 0.0, $16 = 0.0, $17 = 0.0, $18 = 0.0;
  $13 = HEAPU32[$0 >> 2] | 0;
  $14 = HEAP32[($13 + 4 | 0) >> 2] | 0;
  continue_0 : do {
   if ($4 >>> 0 < $14 >>> 0) {
    $0 = HEAPU32[(((HEAPU32[$13 >> 2] | 0) + ($4 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $15 = +HEAPF64[$0 >> 3];
    $16 = +HEAPF64[($0 + 8 | 0) >> 3];
    $17 = +HEAPF64[($0 + 16 | 0) >> 3];
    $5 = +HEAPF64[($0 + 24 | 0) >> 3];
    $6 = +HEAPF64[($0 + 32 | 0) >> 3];
    $7 = +HEAPF64[($0 + 40 | 0) >> 3];
    $18 = +HEAPF64[($0 + 48 | 0) >> 3];
    $8 = $4 + 1 | 0;
    continue_1 : do {
     if ($8 >>> 0 < $14 >>> 0) {
      $2 = HEAPU32[(((HEAPU32[$13 >> 2] | 0) + ($8 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
      $10 = $15 - +HEAPF64[$2 >> 3];
      $11 = $16 - +HEAPF64[($2 + 8 | 0) >> 3];
      $12 = $17 - +HEAPF64[($2 + 16 | 0) >> 3];
      $3 = $10 * $10 + $11 * $11 + $12 * $12;
      $9 = $1 / ($3 * Math_sqrt($3));
      $3 = $18 * $9;
      $9 = +HEAPF64[($2 + 48 | 0) >> 3] * $9;
      $5 = $5 - $10 * $9;
      $6 = $6 - $11 * $9;
      $7 = $7 - $12 * $9;
      HEAPF64[($2 + 24 | 0) >> 3] = +HEAPF64[($2 + 24 | 0) >> 3] + $10 * $3;
      HEAPF64[($2 + 32 | 0) >> 3] = +HEAPF64[($2 + 32 | 0) >> 3] + $11 * $3;
      HEAPF64[($2 + 40 | 0) >> 3] = +HEAPF64[($2 + 40 | 0) >> 3] + $12 * $3;
      $8 = $8 + 1 | 0;
      continue continue_1;
     }
     break continue_1;
    } while (1);
    HEAPF64[($0 + 24 | 0) >> 3] = $5;
    HEAPF64[($0 + 32 | 0) >> 3] = $6;
    HEAPF64[($0 + 40 | 0) >> 3] = $7;
    HEAPF64[$0 >> 3] = +HEAPF64[$0 >> 3] + $1 * $5;
    HEAPF64[($0 + 8 | 0) >> 3] = +HEAPF64[($0 + 8 | 0) >> 3] + $1 * $6;
    HEAPF64[($0 + 16 | 0) >> 3] = +HEAPF64[($0 + 16 | 0) >> 3] + $1 * $7;
    $4 = $4 + 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
 }
 
 function assembly_index_NBodySystem_energy($0) {
  $0 = $0 | 0;
  var $1 = 0.0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $10 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0.0, $9 = 0.0, $11 = 0.0, $12 = 0.0, $13 = 0.0, $14 = 0.0, $15 = 0, $16 = 0.0, $17 = 0.0;
  $4 = HEAPU32[$0 >> 2] | 0;
  $5 = HEAP32[($4 + 4 | 0) >> 2] | 0;
  continue_0 : do {
   if ($3 >>> 0 < $5 >>> 0) {
    $0 = HEAPU32[(((HEAPU32[$4 >> 2] | 0) + ($3 << 2 | 0) | 0) + 8 | 0) >> 2] | 0;
    $7 = +HEAPF64[$0 >> 3];
    $8 = +HEAPF64[($0 + 8 | 0) >> 3];
    $9 = +HEAPF64[($0 + 16 | 0) >> 3];
    $11 = $1;
    $10 = +HEAPF64[($0 + 48 | 0) >> 3];
    $1 = +HEAPF64[($0 + 24 | 0) >> 3];
    $12 = $1 * $1;
    $1 = +HEAPF64[($0 + 32 | 0) >> 3];
    $13 = $12 + $1 * $1;
    $1 = +HEAPF64[($0 + 40 | 0) >> 3];
    $1 = $11 + .5 * $10 * ($13 + $1 * $1);
    $0 = $3 + 1 | 0;
    continue_1 : do {
     if ($0 >>> 0 < $5 >>> 0) {
      $14 = $7;
      $2 = HEAPU32[$4 >> 2] | 0;
      if ($0 >>> 0 < ((HEAP32[$2 >> 2] | 0) >>> 2 | 0) >>> 0) $15 = HEAPU32[(($2 + ($0 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
      $2 = $15;
      $6 = $14 - +HEAPF64[$2 >> 3];
      $16 = $1;
      $1 = $8 - +HEAPF64[($2 + 8 | 0) >> 3];
      $17 = $6 * $6 + $1 * $1;
      $1 = $9 - +HEAPF64[($2 + 16 | 0) >> 3];
      $1 = $16 - $10 * +HEAPF64[($2 + 48 | 0) >> 3] / Math_sqrt($17 + $1 * $1);
      $0 = $0 + 1 | 0;
      continue continue_1;
     }
     break continue_1;
    } while (1);
    $3 = $3 + 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
  return +$1;
 }
 
 function assembly_index_step() {
  assembly_index_NBodySystem_advance(assembly_index_system | 0, +(.01));
  return +(+assembly_index_NBodySystem_energy(assembly_index_system | 0));
 }
 
 function assembly_index_bench($0) {
  $0 = $0 | 0;
  var $1 = 0;
  continue_0 : do {
   if ($1 >>> 0 < $0 >>> 0) {
    assembly_index_NBodySystem_advance(assembly_index_system | 0, +(.01));
    $1 = $1 + 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
 }
 
 function start() {
  $lib_allocator_arena_startOffset = (HEAP_BASE + 7 | 0) & 4294967288 | 0;
  $lib_allocator_arena_offset = $lib_allocator_arena_startOffset;
 }
 
 function __wasm_ctz_i32(x) {
  x = x | 0;
  var $1 = 0;
  if ((x | 0) == (0 | 0)) $1 = 32; else $1 = 31 - Math_clz32(x ^ (x - 1 | 0) | 0) | 0;
  return $1 | 0;
 }
 
 function __wasm_popcnt_i32(x) {
  x = x | 0;
  var count = 0, $2 = 0;
  count = 0;
  b : {
   l : do {
    $2 = count;
    if ((x | 0) == (0 | 0)) break b;
    x = x & (x - 1 | 0) | 0;
    count = count + 1 | 0;
    continue l;
    break l;
   } while (1);
  };
  return $2 | 0;
 }
 
 function __wasm_rotl_i32(x, k) {
  x = x | 0;
  k = k | 0;
  return ((4294967295 >>> (k & 31 | 0) | 0) & x | 0) << (k & 31 | 0) | 0 | (((4294967295 << (32 - (k & 31 | 0) | 0) | 0) & x | 0) >>> (32 - (k & 31 | 0) | 0) | 0) | 0 | 0;
 }
 
 function __wasm_rotr_i32(x, k) {
  x = x | 0;
  k = k | 0;
  return ((4294967295 << (k & 31 | 0) | 0) & x | 0) >>> (k & 31 | 0) | 0 | (((4294967295 >>> (32 - (k & 31 | 0) | 0) | 0) & x | 0) << (32 - (k & 31 | 0) | 0) | 0) | 0 | 0;
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
  init: assembly_index_init, 
  getBody: assembly_index_getBody, 
  step: assembly_index_step, 
  bench: assembly_index_bench, 
  memory: Object.create(Object.prototype, {
   grow: {
    value: __wasm_grow_memory
   }, 
   buffer: {
    get: function () {
     return buffer;
    }
    
   }
  })
 };
}
