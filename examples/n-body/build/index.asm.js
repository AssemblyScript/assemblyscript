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
 
 function $lib_internal_arraybuffer_allocUnsafe($0) {
  $0 = $0 | 0;
  var $1 = 0;
  $1 = $0;
  $1 = $lib_allocator_arena_allocate_memory(1 << (32 - Math_clz32($1 + 7 | 0) | 0) | 0 | 0) | 0;
  HEAP32[$1 >> 2] = $0;
  return $1 | 0;
 }
 
 function $lib_array_Array_Body__constructor($0, $1) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  var $2 = 0, $3 = 0;
  if ($1 >>> 0 > 268435454 >>> 0) {
   abort(0 | 0, 4 | 0, 23 | 0, 39 | 0);
   abort();
  }
  if ($0) $3 = $0; else {
   $2 = $lib_allocator_arena_allocate_memory(8 | 0) | 0;
   HEAP32[$2 >> 2] = 0;
   HEAP32[($2 + 4 | 0) >> 2] = 0;
   $0 = $2;
   $3 = $0;
  }
  HEAP32[$3 >> 2] = $lib_internal_arraybuffer_allocUnsafe($1 << 2 | 0 | 0) | 0;
  HEAP32[($0 + 4 | 0) >> 2] = $1;
  return $0 | 0;
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
 
 function $lib_memory_copy_memory($0, $1, $2) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  $2 = $2 | 0;
  var $3 = 0, $4 = 0, $5 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $10 = 0, $11 = 0, $12 = 0, $13 = 0, $14 = 0, $15 = 0, $16 = 0, $17 = 0, $18 = 0, $19 = 0, $20 = 0, $21 = 0, $22 = 0, $23 = 0, $24 = 0, $25 = 0, $26 = 0, $27 = 0, $28 = 0, $29 = 0, $30 = 0, $31 = 0, $32 = 0, $33 = 0, $34 = 0, $35 = 0, $36 = 0, $37 = 0, $38 = 0, $39 = 0, $40 = 0, $41 = 0, $42 = 0, $43 = 0, $44 = 0;
  continue_0 : do {
   if ($2) $5 = $1 & 3 | 0; else $5 = $2;
   if ($5) {
    $3 = $0;
    $0 = $3 + 1 | 0;
    $6 = $3;
    $3 = $1;
    $1 = $3 + 1 | 0;
    HEAP8[$6 >> 0] = HEAPU8[$3 >> 0] | 0;
    $2 = $2 - 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
  if (($0 & 3 | 0 | 0) == (0 | 0)) {
   continue_1 : do {
    if ($2 >>> 0 >= 16 >>> 0) {
     HEAP32[$0 >> 2] = HEAPU32[$1 >> 2] | 0;
     HEAP32[($0 + 4 | 0) >> 2] = HEAPU32[($1 + 4 | 0) >> 2] | 0;
     HEAP32[($0 + 8 | 0) >> 2] = HEAPU32[($1 + 8 | 0) >> 2] | 0;
     HEAP32[($0 + 12 | 0) >> 2] = HEAPU32[($1 + 12 | 0) >> 2] | 0;
     $1 = $1 + 16 | 0;
     $0 = $0 + 16 | 0;
     $2 = $2 - 16 | 0;
     continue continue_1;
    }
    break continue_1;
   } while (1);
   if ($2 & 8 | 0) {
    HEAP32[$0 >> 2] = HEAPU32[$1 >> 2] | 0;
    HEAP32[($0 + 4 | 0) >> 2] = HEAPU32[($1 + 4 | 0) >> 2] | 0;
    $0 = $0 + 8 | 0;
    $1 = $1 + 8 | 0;
   }
   if ($2 & 4 | 0) {
    HEAP32[$0 >> 2] = HEAPU32[$1 >> 2] | 0;
    $0 = $0 + 4 | 0;
    $1 = $1 + 4 | 0;
   }
   if ($2 & 2 | 0) {
    HEAP16[$0 >> 1] = HEAPU16[$1 >> 1] | 0;
    $0 = $0 + 2 | 0;
    $1 = $1 + 2 | 0;
   }
   if ($2 & 1 | 0) {
    $3 = $0;
    $7 = $3;
    $3 = $1;
    HEAP8[$7 >> 0] = HEAPU8[$3 >> 0] | 0;
   }
   return;
  }
  if ($2 >>> 0 >= 32 >>> 0) break_2 : {
   case2_2 : {
    case1_2 : {
     case0_2 : {
      tablify_0 : {
       switch (($0 & 3 | 0) - 1 | 0 | 0) {
       case 0:
        break case0_2;
       case 1:
        break case1_2;
       case 2:
        break case2_2;
       default:
        break tablify_0;
       };
      };
      break break_2;
     };
     $4 = HEAPU32[$1 >> 2] | 0;
     $3 = $0;
     $0 = $3 + 1 | 0;
     $8 = $3;
     $3 = $1;
     $1 = $3 + 1 | 0;
     HEAP8[$8 >> 0] = HEAPU8[$3 >> 0] | 0;
     $3 = $0;
     $0 = $3 + 1 | 0;
     $9 = $3;
     $3 = $1;
     $1 = $3 + 1 | 0;
     HEAP8[$9 >> 0] = HEAPU8[$3 >> 0] | 0;
     $3 = $0;
     $0 = $3 + 1 | 0;
     $10 = $3;
     $3 = $1;
     $1 = $3 + 1 | 0;
     HEAP8[$10 >> 0] = HEAPU8[$3 >> 0] | 0;
     $2 = $2 - 3 | 0;
     continue_3 : do {
      if ($2 >>> 0 >= 17 >>> 0) {
       $3 = HEAPU32[($1 + 1 | 0) >> 2] | 0;
       HEAP32[$0 >> 2] = $4 >>> 24 | 0 | ($3 << 8 | 0) | 0;
       $4 = HEAPU32[($1 + 5 | 0) >> 2] | 0;
       HEAP32[($0 + 4 | 0) >> 2] = $3 >>> 24 | 0 | ($4 << 8 | 0) | 0;
       $3 = HEAPU32[($1 + 9 | 0) >> 2] | 0;
       HEAP32[($0 + 8 | 0) >> 2] = $4 >>> 24 | 0 | ($3 << 8 | 0) | 0;
       $4 = HEAPU32[($1 + 13 | 0) >> 2] | 0;
       HEAP32[($0 + 12 | 0) >> 2] = $3 >>> 24 | 0 | ($4 << 8 | 0) | 0;
       $1 = $1 + 16 | 0;
       $0 = $0 + 16 | 0;
       $2 = $2 - 16 | 0;
       continue continue_3;
      }
      break continue_3;
     } while (1);
     break break_2;
    };
    $4 = HEAPU32[$1 >> 2] | 0;
    $3 = $0;
    $0 = $3 + 1 | 0;
    $11 = $3;
    $3 = $1;
    $1 = $3 + 1 | 0;
    HEAP8[$11 >> 0] = HEAPU8[$3 >> 0] | 0;
    $3 = $0;
    $0 = $3 + 1 | 0;
    $12 = $3;
    $3 = $1;
    $1 = $3 + 1 | 0;
    HEAP8[$12 >> 0] = HEAPU8[$3 >> 0] | 0;
    $2 = $2 - 2 | 0;
    continue_4 : do {
     if ($2 >>> 0 >= 18 >>> 0) {
      $3 = HEAPU32[($1 + 2 | 0) >> 2] | 0;
      HEAP32[$0 >> 2] = $4 >>> 16 | 0 | ($3 << 16 | 0) | 0;
      $4 = HEAPU32[($1 + 6 | 0) >> 2] | 0;
      HEAP32[($0 + 4 | 0) >> 2] = $3 >>> 16 | 0 | ($4 << 16 | 0) | 0;
      $3 = HEAPU32[($1 + 10 | 0) >> 2] | 0;
      HEAP32[($0 + 8 | 0) >> 2] = $4 >>> 16 | 0 | ($3 << 16 | 0) | 0;
      $4 = HEAPU32[($1 + 14 | 0) >> 2] | 0;
      HEAP32[($0 + 12 | 0) >> 2] = $3 >>> 16 | 0 | ($4 << 16 | 0) | 0;
      $1 = $1 + 16 | 0;
      $0 = $0 + 16 | 0;
      $2 = $2 - 16 | 0;
      continue continue_4;
     }
     break continue_4;
    } while (1);
    break break_2;
   };
   $4 = HEAPU32[$1 >> 2] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $13 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$13 >> 0] = HEAPU8[$3 >> 0] | 0;
   $2 = $2 - 1 | 0;
   continue_5 : do {
    if ($2 >>> 0 >= 19 >>> 0) {
     $3 = HEAPU32[($1 + 3 | 0) >> 2] | 0;
     HEAP32[$0 >> 2] = $4 >>> 8 | 0 | ($3 << 24 | 0) | 0;
     $4 = HEAPU32[($1 + 7 | 0) >> 2] | 0;
     HEAP32[($0 + 4 | 0) >> 2] = $3 >>> 8 | 0 | ($4 << 24 | 0) | 0;
     $3 = HEAPU32[($1 + 11 | 0) >> 2] | 0;
     HEAP32[($0 + 8 | 0) >> 2] = $4 >>> 8 | 0 | ($3 << 24 | 0) | 0;
     $4 = HEAPU32[($1 + 15 | 0) >> 2] | 0;
     HEAP32[($0 + 12 | 0) >> 2] = $3 >>> 8 | 0 | ($4 << 24 | 0) | 0;
     $1 = $1 + 16 | 0;
     $0 = $0 + 16 | 0;
     $2 = $2 - 16 | 0;
     continue continue_5;
    }
    break continue_5;
   } while (1);
  };
  if ($2 & 16 | 0) {
   $3 = $0;
   $0 = $3 + 1 | 0;
   $14 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$14 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $15 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$15 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $16 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$16 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $17 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$17 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $18 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$18 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $19 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$19 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $20 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$20 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $21 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$21 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $22 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$22 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $23 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$23 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $24 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$24 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $25 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$25 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $26 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$26 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $27 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$27 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $28 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$28 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $29 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$29 >> 0] = HEAPU8[$3 >> 0] | 0;
  }
  if ($2 & 8 | 0) {
   $3 = $0;
   $0 = $3 + 1 | 0;
   $30 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$30 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $31 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$31 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $32 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$32 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $33 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$33 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $34 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$34 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $35 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$35 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $36 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$36 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $37 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$37 >> 0] = HEAPU8[$3 >> 0] | 0;
  }
  if ($2 & 4 | 0) {
   $3 = $0;
   $0 = $3 + 1 | 0;
   $38 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$38 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $39 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$39 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $40 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$40 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $41 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$41 >> 0] = HEAPU8[$3 >> 0] | 0;
  }
  if ($2 & 2 | 0) {
   $3 = $0;
   $0 = $3 + 1 | 0;
   $42 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$42 >> 0] = HEAPU8[$3 >> 0] | 0;
   $3 = $0;
   $0 = $3 + 1 | 0;
   $43 = $3;
   $3 = $1;
   $1 = $3 + 1 | 0;
   HEAP8[$43 >> 0] = HEAPU8[$3 >> 0] | 0;
  }
  if ($2 & 1 | 0) {
   $3 = $0;
   $44 = $3;
   $3 = $1;
   HEAP8[$44 >> 0] = HEAPU8[$3 >> 0] | 0;
  }
 }
 
 function $lib_memory_move_memory($0, $1, $2) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  $2 = $2 | 0;
  var $3 = 0, i64toi32_i32$1 = 0, i64toi32_i32$0 = 0, $6 = 0, $7 = 0, $8 = 0, $9 = 0, $10 = 0, wasm2asm_i32$0 = 0, wasm2asm_i32$1 = 0;
  if (($0 | 0) == ($1 | 0)) return;
  $3 = ($1 + $2 | 0) >>> 0 <= $0 >>> 0;
  if ($3) $6 = $3; else $6 = ($0 + $2 | 0) >>> 0 <= $1 >>> 0;
  if ($6 & 1 | 0) {
   $lib_memory_copy_memory($0 | 0, $1 | 0, $2 | 0);
   return;
  }
  if ($0 >>> 0 < $1 >>> 0) {
   if (($1 & 7 | 0 | 0) == ($0 & 7 | 0 | 0)) {
    continue_0 : do {
     if ($0 & 7 | 0) {
      if (($2 | 0) == (0 | 0)) return;
      $2 = $2 - 1 | 0;
      $3 = $0;
      $0 = $3 + 1 | 0;
      $7 = $3;
      $3 = $1;
      $1 = $3 + 1 | 0;
      HEAP8[$7 >> 0] = HEAPU8[$3 >> 0] | 0;
      continue continue_0;
     }
     break continue_0;
    } while (1);
    continue_1 : do {
     if ($2 >>> 0 >= 8 >>> 0) {
      i64toi32_i32$1 = $0;
      $8 = i64toi32_i32$1;
      i64toi32_i32$1 = $1;
      i64toi32_i32$0 = (wasm2asm_i32$0 = i64toi32_i32$1, HEAPU8[(wasm2asm_i32$0 + 4 | 0) >> 0] | 0 | 0 | (HEAPU8[(wasm2asm_i32$0 + 5 | 0) >> 0] | 0 | 0) << 8 | (HEAPU8[(wasm2asm_i32$0 + 6 | 0) >> 0] | 0 | 0) << 16 | (HEAPU8[(wasm2asm_i32$0 + 7 | 0) >> 0] | 0 | 0) << 24);
      HEAP32[$8 >> 2] = HEAPU32[i64toi32_i32$1 >> 2] | 0;
      (wasm2asm_i32$0 = i64toi32_i32$1, wasm2asm_i32$1 = i64toi32_i32$0), ((HEAP8[(wasm2asm_i32$0 + 4 | 0) >> 0] = wasm2asm_i32$1 & 255 | 0, HEAP8[(wasm2asm_i32$0 + 5 | 0) >> 0] = (wasm2asm_i32$1 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 6 | 0) >> 0] = (wasm2asm_i32$1 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 7 | 0) >> 0] = (wasm2asm_i32$1 >>> 24 | 0) & 255 | 0;
      $2 = $2 - 8 | 0;
      $0 = $0 + 8 | 0;
      $1 = $1 + 8 | 0;
      continue continue_1;
     }
     break continue_1;
    } while (1);
   }
   continue_2 : do {
    if ($2) {
     $3 = $0;
     $0 = $3 + 1 | 0;
     $9 = $3;
     $3 = $1;
     $1 = $3 + 1 | 0;
     HEAP8[$9 >> 0] = HEAPU8[$3 >> 0] | 0;
     $2 = $2 - 1 | 0;
     continue continue_2;
    }
    break continue_2;
   } while (1);
  } else {
   if (($1 & 7 | 0 | 0) == ($0 & 7 | 0 | 0)) {
    continue_3 : do {
     if (($0 + $2 | 0) & 7 | 0) {
      if (($2 | 0) == (0 | 0)) return;
      $2 = $2 - 1 | 0;
      HEAP8[($0 + $2 | 0) >> 0] = HEAPU8[($1 + $2 | 0) >> 0] | 0;
      continue continue_3;
     }
     break continue_3;
    } while (1);
    continue_4 : do {
     if ($2 >>> 0 >= 8 >>> 0) {
      $2 = $2 - 8 | 0;
      i64toi32_i32$1 = $0 + $2 | 0;
      $10 = i64toi32_i32$1;
      i64toi32_i32$1 = $1 + $2 | 0;
      i64toi32_i32$0 = (wasm2asm_i32$0 = i64toi32_i32$1, HEAPU8[(wasm2asm_i32$0 + 4 | 0) >> 0] | 0 | 0 | (HEAPU8[(wasm2asm_i32$0 + 5 | 0) >> 0] | 0 | 0) << 8 | (HEAPU8[(wasm2asm_i32$0 + 6 | 0) >> 0] | 0 | 0) << 16 | (HEAPU8[(wasm2asm_i32$0 + 7 | 0) >> 0] | 0 | 0) << 24);
      HEAP32[$10 >> 2] = HEAPU32[i64toi32_i32$1 >> 2] | 0;
      (wasm2asm_i32$0 = i64toi32_i32$1, wasm2asm_i32$1 = i64toi32_i32$0), ((HEAP8[(wasm2asm_i32$0 + 4 | 0) >> 0] = wasm2asm_i32$1 & 255 | 0, HEAP8[(wasm2asm_i32$0 + 5 | 0) >> 0] = (wasm2asm_i32$1 >>> 8 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 6 | 0) >> 0] = (wasm2asm_i32$1 >>> 16 | 0) & 255 | 0), HEAP8[(wasm2asm_i32$0 + 7 | 0) >> 0] = (wasm2asm_i32$1 >>> 24 | 0) & 255 | 0;
      continue continue_4;
     }
     break continue_4;
    } while (1);
   }
   continue_5 : do {
    if ($2) {
     $2 = $2 - 1 | 0;
     HEAP8[($0 + $2 | 0) >> 0] = HEAPU8[($1 + $2 | 0) >> 0] | 0;
     continue continue_5;
    }
    break continue_5;
   } while (1);
  }
 }
 
 function $lib_internal_arraybuffer_reallocUnsafe($0, $1) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  var $2 = 0, $3 = 0;
  $2 = HEAP32[$0 >> 2] | 0;
  if (($1 | 0) > ($2 | 0)) {
   $3 = $2;
   if (($1 | 0) <= ((1 << (32 - Math_clz32($3 + 7 | 0) | 0) | 0) - 8 | 0 | 0)) {
    HEAP32[$0 >> 2] = $1;
    $lib_memory_set_memory(($0 + 8 | 0) + $2 | 0 | 0, 0 | 0, $1 - $2 | 0 | 0);
   } else {
    $3 = $lib_internal_arraybuffer_allocUnsafe($1 | 0) | 0;
    $lib_memory_move_memory($3 + 8 | 0 | 0, $0 + 8 | 0 | 0, $2 | 0);
    $lib_memory_set_memory(($3 + 8 | 0) + $2 | 0 | 0, 0 | 0, $1 - $2 | 0 | 0);
    return $3 | 0;
   }
  } else if (($1 | 0) < ($2 | 0)) HEAP32[$0 >> 2] = $1;;
  return $0 | 0;
 }
 
 function $lib_array_Array_Body____set($0, $1, $2) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  $2 = $2 | 0;
  var $3 = 0;
  $3 = HEAPU32[$0 >> 2] | 0;
  if ($1 >>> 0 >= ((HEAP32[$3 >> 2] | 0) >>> 2 | 0) >>> 0) {
   if ($1 >>> 0 >= 268435454 >>> 0) {
    abort(0 | 0, 4 | 0, 81 | 0, 41 | 0);
    abort();
   }
   $3 = $lib_internal_arraybuffer_reallocUnsafe($3 | 0, ($1 + 1 | 0) << 2 | 0 | 0) | 0;
   HEAP32[$0 >> 2] = $3;
   HEAP32[($0 + 4 | 0) >> 2] = $1 + 1 | 0;
  }
  HEAP32[(($3 + ($1 << 2 | 0) | 0) + 8 | 0) >> 2] = $2;
 }
 
 function assembly_index_NBodySystem_constructor($0, $1) {
  $0 = $0 | 0;
  $1 = $1 | 0;
  var $2 = 0, $3 = 0, $5 = 0, $4 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0.0, $9 = 0, $9 = 0, $11 = 0, $12 = 0;
  $2 = $1;
  $9 = HEAP32[($2 + 4 | 0) >> 2] | 0;
  continue_0 : do {
   if (($3 | 0) < ($9 | 0)) {
    $2 = $3;
    $5 = $1;
    $5 = HEAPU32[$5 >> 2] | 0;
    if ($2 >>> 0 < ((HEAP32[$5 >> 2] | 0) >>> 2 | 0) >>> 0) $11 = HEAPU32[(($5 + ($2 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
    $2 = $11;
    $4 = +HEAPF64[($2 + 48 | 0) >> 3];
    $6 = $6 + +HEAPF64[($2 + 24 | 0) >> 3] * $4;
    $7 = $7 + +HEAPF64[($2 + 32 | 0) >> 3] * $4;
    $8 = $8 + +HEAPF64[($2 + 40 | 0) >> 3] * $4;
    $3 = $3 + 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
  if ($0) $9 = $0; else {
   $3 = $lib_allocator_arena_allocate_memory(4 | 0) | 0;
   HEAP32[$3 >> 2] = 0;
   $0 = $3;
   $9 = $0;
  }
  HEAP32[$9 >> 2] = $1;
  $1 = HEAPU32[$0 >> 2] | 0;
  $1 = HEAPU32[$1 >> 2] | 0;
  if (0 >>> 0 < ((HEAP32[$1 >> 2] | 0) >>> 2 | 0) >>> 0) $12 = HEAPU32[(($1 + 0 | 0) + 8 | 0) >> 2] | 0; else abort();
  $1 = $12;
  HEAPF64[($1 + 24 | 0) >> 3] = -$6 / 39.47841760435743;
  HEAPF64[($1 + 32 | 0) >> 3] = -$7 / 39.47841760435743;
  HEAPF64[($1 + 40 | 0) >> 3] = -$8 / 39.47841760435743;
  return $0 | 0;
 }
 
 function assembly_index_init() {
  var $0 = 0;
  $0 = $lib_array_Array_Body__constructor(0 | 0, 5 | 0) | 0;
  $lib_array_Array_Body____set($0 | 0, 0 | 0, assembly_index_Body_constructor(0 | 0, +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(0.0), +(39.47841760435743)) | 0 | 0);
  $lib_array_Array_Body____set($0 | 0, 1 | 0, assembly_index_Body_constructor(0 | 0, +(4.841431442464721), +(-1.1603200440274284), +(-.10362204447112311), +(.606326392995832), +(2.81198684491626), +(-.02521836165988763), +(.03769367487038949)) | 0 | 0);
  $lib_array_Array_Body____set($0 | 0, 2 | 0, assembly_index_Body_constructor(0 | 0, +(8.34336671824458), +(4.124798564124305), +(-.4035234171143214), +(-1.0107743461787924), +(1.8256623712304119), +(.008415761376584154), +(.011286326131968767)) | 0 | 0);
  $lib_array_Array_Body____set($0 | 0, 3 | 0, assembly_index_Body_constructor(0 | 0, +(12.894369562139131), +(-15.111151401698631), +(-.22330757889265573), +(1.0827910064415354), +(.8687130181696082), +(-.010832637401363636), +(1.7237240570597112e-03)) | 0 | 0);
  $lib_array_Array_Body____set($0 | 0, 4 | 0, assembly_index_Body_constructor(0 | 0, +(15.379697114850917), +(-25.919314609987964), +(.17925877295037118), +(.979090732243898), +(.5946989986476762), +(-.034755955504078104), +(2.0336868699246304e-03)) | 0 | 0);
  assembly_index_system = assembly_index_NBodySystem_constructor(0 | 0, $0 | 0) | 0;
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
  var $2 = 0, $4 = 0.0, $3 = 0, $5 = 0.0, $6 = 0, $7 = 0.0, $8 = 0.0, $9 = 0.0, $10 = 0.0, $11 = 0.0, $12 = 0.0, $13 = 0, $14 = 0, $19 = 0, $16 = 0, $15 = 0.0, $16 = 0.0, $17 = 0.0, $18 = 0.0, $21 = 0.0, $22 = 0;
  $13 = HEAPU32[$0 >> 2] | 0;
  $0 = $13;
  $14 = HEAP32[($0 + 4 | 0) >> 2] | 0;
  continue_0 : do {
   if (($6 | 0) < ($14 | 0)) {
    $3 = $6;
    $0 = $13;
    $0 = HEAPU32[$0 >> 2] | 0;
    if ($3 >>> 0 < ((HEAP32[$0 >> 2] | 0) >>> 2 | 0) >>> 0) $16 = HEAPU32[(($0 + ($3 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
    $0 = $16;
    $15 = +HEAPF64[$0 >> 3];
    $16 = +HEAPF64[($0 + 8 | 0) >> 3];
    $17 = +HEAPF64[($0 + 16 | 0) >> 3];
    $7 = +HEAPF64[($0 + 24 | 0) >> 3];
    $8 = +HEAPF64[($0 + 32 | 0) >> 3];
    $9 = +HEAPF64[($0 + 40 | 0) >> 3];
    $18 = +HEAPF64[($0 + 48 | 0) >> 3];
    $3 = $6 + 1 | 0;
    continue_1 : do {
     if (($3 | 0) < ($14 | 0)) {
      $21 = $15;
      $19 = $3;
      $2 = $13;
      $2 = HEAPU32[$2 >> 2] | 0;
      if ($19 >>> 0 < ((HEAP32[$2 >> 2] | 0) >>> 2 | 0) >>> 0) $22 = HEAPU32[(($2 + ($19 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
      $2 = $22;
      $10 = $21 - +HEAPF64[$2 >> 3];
      $11 = $16 - +HEAPF64[($2 + 8 | 0) >> 3];
      $12 = $17 - +HEAPF64[($2 + 16 | 0) >> 3];
      $4 = $10 * $10 + $11 * $11 + $12 * $12;
      $5 = Math_sqrt($4);
      $4 = $1 / ($4 * $5);
      $5 = $18 * $4;
      $4 = +HEAPF64[($2 + 48 | 0) >> 3] * $4;
      $7 = $7 - $10 * $4;
      $8 = $8 - $11 * $4;
      $9 = $9 - $12 * $4;
      HEAPF64[($2 + 24 | 0) >> 3] = +HEAPF64[($2 + 24 | 0) >> 3] + $10 * $5;
      HEAPF64[($2 + 32 | 0) >> 3] = +HEAPF64[($2 + 32 | 0) >> 3] + $11 * $5;
      HEAPF64[($2 + 40 | 0) >> 3] = +HEAPF64[($2 + 40 | 0) >> 3] + $12 * $5;
      $3 = $3 + 1 | 0;
      continue continue_1;
     }
     break continue_1;
    } while (1);
    HEAPF64[($0 + 24 | 0) >> 3] = $7;
    HEAPF64[($0 + 32 | 0) >> 3] = $8;
    HEAPF64[($0 + 40 | 0) >> 3] = $9;
    HEAPF64[$0 >> 3] = +HEAPF64[$0 >> 3] + $1 * $7;
    HEAPF64[($0 + 8 | 0) >> 3] = +HEAPF64[($0 + 8 | 0) >> 3] + $1 * $8;
    HEAPF64[($0 + 16 | 0) >> 3] = +HEAPF64[($0 + 16 | 0) >> 3] + $1 * $9;
    $6 = $6 + 1 | 0;
    continue continue_0;
   }
   break continue_0;
  } while (1);
 }
 
 function assembly_index_NBodySystem_energy($0) {
  $0 = $0 | 0;
  var $1 = 0.0, $2 = 0, $3 = 0, $4 = 0, $5 = 0, $10 = 0.0, $11 = 0, $6 = 0.0, $9 = 0, $7 = 0.0, $8 = 0.0, $9 = 0.0, $13 = 0.0, $14 = 0.0, $15 = 0.0, $16 = 0.0, $17 = 0, $18 = 0.0, $19 = 0.0;
  $4 = HEAPU32[$0 >> 2] | 0;
  $0 = $4;
  $5 = HEAP32[($0 + 4 | 0) >> 2] | 0;
  continue_0 : do {
   if (($3 | 0) < ($5 | 0)) {
    $2 = $3;
    $0 = $4;
    $0 = HEAPU32[$0 >> 2] | 0;
    if ($2 >>> 0 < ((HEAP32[$0 >> 2] | 0) >>> 2 | 0) >>> 0) $9 = HEAPU32[(($0 + ($2 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
    $0 = $9;
    $7 = +HEAPF64[$0 >> 3];
    $8 = +HEAPF64[($0 + 8 | 0) >> 3];
    $9 = +HEAPF64[($0 + 16 | 0) >> 3];
    $13 = $1;
    $10 = +HEAPF64[($0 + 48 | 0) >> 3];
    $1 = +HEAPF64[($0 + 24 | 0) >> 3];
    $14 = $1 * $1;
    $1 = +HEAPF64[($0 + 32 | 0) >> 3];
    $15 = $14 + $1 * $1;
    $1 = +HEAPF64[($0 + 40 | 0) >> 3];
    $1 = $13 + .5 * $10 * ($15 + $1 * $1);
    $0 = $3 + 1 | 0;
    continue_1 : do {
     if (($0 | 0) < ($5 | 0)) {
      $16 = $7;
      $11 = $0;
      $2 = $4;
      $2 = HEAPU32[$2 >> 2] | 0;
      if ($11 >>> 0 < ((HEAP32[$2 >> 2] | 0) >>> 2 | 0) >>> 0) $17 = HEAPU32[(($2 + ($11 << 2 | 0) | 0) + 8 | 0) >> 2] | 0; else abort();
      $2 = $17;
      $6 = $16 - +HEAPF64[$2 >> 3];
      $18 = $1;
      $1 = $8 - +HEAPF64[($2 + 8 | 0) >> 3];
      $19 = $6 * $6 + $1 * $1;
      $1 = $9 - +HEAPF64[($2 + 16 | 0) >> 3];
      $1 = $18 - $10 * +HEAPF64[($2 + 48 | 0) >> 3] / Math_sqrt($19 + $1 * $1);
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
