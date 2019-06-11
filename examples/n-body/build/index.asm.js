
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
 var assembly_index_system = 0;
 var $lib_rt_stub_startOffset = 0;
 var $lib_rt_stub_offset = 0;
 function $lib_rt_stub___alloc($0, $1) {
  var $2 = 0, $3 = 0, $4 = 0, $5 = 0;
  if ($0 >>> 0 > 1073741808 >>> 0) {
   abort()
  }
  $3 = $lib_rt_stub_offset + 16 | 0;
  $2 = (($3 + ($0 >>> 0 > 1 >>> 0 ? $0 : 1) | 0) + 15 | 0) & -16 | 0;
  $4 = __wasm_memory_size();
  if ($2 >>> 0 > ($4 << 16 | 0) >>> 0) {
   $5 = ((($2 - $3 | 0) + 65535 | 0) & -65536 | 0) >>> 16 | 0;
   if ((__wasm_memory_grow((($4 | 0) > ($5 | 0) ? $4 : $5) | 0) | 0) < (0 | 0)) {
    if ((__wasm_memory_grow($5 | 0) | 0) < (0 | 0)) {
     abort()
    }
   }
  }
  $lib_rt_stub_offset = $2;
  $2 = $3 - 16 | 0;
  HEAP32[($2 + 8 | 0) >> 2] = $1;
  HEAP32[($2 + 12 | 0) >> 2] = $0;
  return $3;
 }
 
 function assembly_index_NBodySystem_constructor($0) {
  var $1 = 0, $2 = 0, $3 = 0.0, $4 = 0.0, $5 = 0.0, $6 = 0.0, $7 = 0;
  $7 = HEAP32[($0 + 12 | 0) >> 2];
  loop_0 : while (1) {
   if (($1 | 0) < ($7 | 0)) {
    $2 = HEAP32[(HEAP32[($0 + 4 | 0) >> 2] + ($1 << 2 | 0) | 0) >> 2];
    $3 = HEAPF64[($2 + 48 | 0) >> 3];
    $4 = $4 + HEAPF64[($2 + 24 | 0) >> 3] * $3;
    $5 = $5 + HEAPF64[($2 + 32 | 0) >> 3] * $3;
    $6 = $6 + HEAPF64[($2 + 40 | 0) >> 3] * $3;
    $1 = $1 + 1 | 0;
    continue loop_0;
   }
   break loop_0;
  };
  $1 = HEAP32[HEAP32[($0 + 4 | 0) >> 2] >> 2];
  HEAPF64[($1 + 24 | 0) >> 3] = -$4 / 39.47841760435743;
  HEAPF64[($1 + 32 | 0) >> 3] = -$5 / 39.47841760435743;
  HEAPF64[($1 + 40 | 0) >> 3] = -$6 / 39.47841760435743;
  $1 = $lib_rt_stub___alloc(4, 3);
  HEAP32[$1 >> 2] = $0;
  return $1;
 }
 
 function assembly_index_Body_constructor($0, $1, $2, $3, $4, $5, $6) {
  var $7 = 0;
  $7 = $lib_rt_stub___alloc(56, 4);
  HEAPF64[$7 >> 3] = $0;
  HEAPF64[($7 + 8 | 0) >> 3] = $1;
  HEAPF64[($7 + 16 | 0) >> 3] = $2;
  HEAPF64[($7 + 24 | 0) >> 3] = $3;
  HEAPF64[($7 + 32 | 0) >> 3] = $4;
  HEAPF64[($7 + 40 | 0) >> 3] = $5;
  HEAPF64[($7 + 48 | 0) >> 3] = $6;
  return $7;
 }
 
 function $lib_rt___allocArray() {
  var $0 = 0, $1 = 0;
  $0 = $lib_rt_stub___alloc(16, 5);
  $1 = $lib_rt_stub___alloc(20, 0);
  HEAP32[$0 >> 2] = $1;
  HEAP32[($0 + 4 | 0) >> 2] = $1;
  HEAP32[($0 + 8 | 0) >> 2] = 20;
  HEAP32[($0 + 12 | 0) >> 2] = 5;
  return $0;
 }
 
 function assembly_index_init() {
  var $0 = 0, $1 = 0, wasm2js_i32$0 = 0, wasm2js_i32$1 = 0;
  $1 = $lib_rt___allocArray();
  $0 = HEAP32[($1 + 4 | 0) >> 2];
  (wasm2js_i32$0 = $0, wasm2js_i32$1 = assembly_index_Body_constructor(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 39.47841760435743)), HEAP32[wasm2js_i32$0 >> 2] = wasm2js_i32$1;
  (wasm2js_i32$0 = $0, wasm2js_i32$1 = assembly_index_Body_constructor(4.841431442464721, -1.1603200440274284, -.10362204447112311, .606326392995832, 2.81198684491626, -.02521836165988763, .03769367487038949)), HEAP32[(wasm2js_i32$0 + 4 | 0) >> 2] = wasm2js_i32$1;
  (wasm2js_i32$0 = $0, wasm2js_i32$1 = assembly_index_Body_constructor(8.34336671824458, 4.124798564124305, -.4035234171143214, -1.0107743461787924, 1.8256623712304119, .008415761376584154, .011286326131968767)), HEAP32[(wasm2js_i32$0 + 8 | 0) >> 2] = wasm2js_i32$1;
  (wasm2js_i32$0 = $0, wasm2js_i32$1 = assembly_index_Body_constructor(12.894369562139131, -15.111151401698631, -.22330757889265573, 1.0827910064415354, .8687130181696082, -.010832637401363636, 1.7237240570597112e-03)), HEAP32[(wasm2js_i32$0 + 12 | 0) >> 2] = wasm2js_i32$1;
  (wasm2js_i32$0 = $0, wasm2js_i32$1 = assembly_index_Body_constructor(15.379697114850917, -25.919314609987964, .17925877295037118, .979090732243898, .5946989986476762, -.034755955504078104, 2.0336868699246304e-03)), HEAP32[(wasm2js_i32$0 + 16 | 0) >> 2] = wasm2js_i32$1;
  assembly_index_system = assembly_index_NBodySystem_constructor($1);
 }
 
 function assembly_index_NBodySystem_advance($0) {
  var $1 = 0, $2 = 0.0, $3 = 0.0, $4 = 0, $5 = 0.0, $6 = 0.0, $7 = 0.0, $8 = 0, $9 = 0.0, $10 = 0.0, $11 = 0.0, $12 = 0, $13 = 0, $14 = 0.0, $15 = 0.0, $16 = 0.0, $17 = 0.0;
  $12 = HEAP32[$0 >> 2];
  $13 = HEAP32[($12 + 12 | 0) >> 2];
  loop_0 : while (1) {
   if ($4 >>> 0 < $13 >>> 0) {
    $0 = HEAP32[(HEAP32[($12 + 4 | 0) >> 2] + ($4 << 2 | 0) | 0) >> 2];
    $14 = HEAPF64[$0 >> 3];
    $15 = HEAPF64[($0 + 8 | 0) >> 3];
    $16 = HEAPF64[($0 + 16 | 0) >> 3];
    $5 = HEAPF64[($0 + 24 | 0) >> 3];
    $6 = HEAPF64[($0 + 32 | 0) >> 3];
    $7 = HEAPF64[($0 + 40 | 0) >> 3];
    $17 = HEAPF64[($0 + 48 | 0) >> 3];
    $8 = $4 + 1 | 0;
    loop_1 : while (1) {
     if ($8 >>> 0 < $13 >>> 0) {
      $1 = HEAP32[(HEAP32[($12 + 4 | 0) >> 2] + ($8 << 2 | 0) | 0) >> 2];
      $2 = $14 - HEAPF64[$1 >> 3];
      $9 = $15 - HEAPF64[($1 + 8 | 0) >> 3];
      $10 = $16 - HEAPF64[($1 + 16 | 0) >> 3];
      $3 = $2 * $2 + $9 * $9 + $10 * $10;
      $11 = Math_sqrt($3);
      $11 = .01 / ($3 * $11);
      $3 = HEAPF64[($1 + 48 | 0) >> 3] * $11;
      $5 = $5 - $2 * $3;
      $6 = $6 - $9 * $3;
      $7 = $7 - $10 * $3;
      $3 = $2;
      $2 = $17 * $11;
      HEAPF64[($1 + 24 | 0) >> 3] = HEAPF64[($1 + 24 | 0) >> 3] + $3 * $2;
      HEAPF64[($1 + 32 | 0) >> 3] = HEAPF64[($1 + 32 | 0) >> 3] + $9 * $2;
      HEAPF64[($1 + 40 | 0) >> 3] = HEAPF64[($1 + 40 | 0) >> 3] + $10 * $2;
      $8 = $8 + 1 | 0;
      continue loop_1;
     }
     break loop_1;
    };
    HEAPF64[($0 + 24 | 0) >> 3] = $5;
    HEAPF64[($0 + 32 | 0) >> 3] = $6;
    HEAPF64[($0 + 40 | 0) >> 3] = $7;
    HEAPF64[$0 >> 3] = HEAPF64[$0 >> 3] + .01 * $5;
    HEAPF64[($0 + 8 | 0) >> 3] = HEAPF64[($0 + 8 | 0) >> 3] + .01 * $6;
    HEAPF64[($0 + 16 | 0) >> 3] = HEAPF64[($0 + 16 | 0) >> 3] + .01 * $7;
    $4 = $4 + 1 | 0;
    continue loop_0;
   }
   break loop_0;
  };
 }
 
 function assembly_index_NBodySystem_energy($0) {
  var $1 = 0.0, $2 = 0.0, $3 = 0, $4 = 0, $5 = 0, $6 = 0.0, $7 = 0, $8 = 0.0, $9 = 0.0, $10 = 0.0, $11 = 0.0;
  $5 = HEAP32[$0 >> 2];
  $7 = HEAP32[($5 + 12 | 0) >> 2];
  loop_0 : while (1) {
   if ($3 >>> 0 < $7 >>> 0) {
    $0 = HEAP32[(HEAP32[($5 + 4 | 0) >> 2] + ($3 << 2 | 0) | 0) >> 2];
    $9 = HEAPF64[$0 >> 3];
    $10 = HEAPF64[($0 + 8 | 0) >> 3];
    $11 = HEAPF64[($0 + 16 | 0) >> 3];
    $6 = $1;
    $8 = HEAPF64[($0 + 48 | 0) >> 3];
    $1 = HEAPF64[($0 + 24 | 0) >> 3];
    $2 = $1 * $1;
    $1 = HEAPF64[($0 + 32 | 0) >> 3];
    $2 = $2 + $1 * $1;
    $1 = HEAPF64[($0 + 40 | 0) >> 3];
    $1 = $6 + .5 * $8 * ($2 + $1 * $1);
    $0 = $3 + 1 | 0;
    loop_1 : while (1) {
     if ($0 >>> 0 < $7 >>> 0) {
      $4 = HEAP32[(HEAP32[($5 + 4 | 0) >> 2] + ($0 << 2 | 0) | 0) >> 2];
      $6 = $1;
      $1 = $9 - HEAPF64[$4 >> 3];
      $2 = $1 * $1;
      $1 = $10 - HEAPF64[($4 + 8 | 0) >> 3];
      $2 = $2 + $1 * $1;
      $1 = $11 - HEAPF64[($4 + 16 | 0) >> 3];
      $1 = $6 - $8 * HEAPF64[($4 + 48 | 0) >> 3] / Math_sqrt($2 + $1 * $1);
      $0 = $0 + 1 | 0;
      continue loop_1;
     }
     break loop_1;
    };
    $3 = $3 + 1 | 0;
    continue loop_0;
   }
   break loop_0;
  };
  return $1;
 }
 
 function assembly_index_step() {
  assembly_index_NBodySystem_advance(assembly_index_system);
  return +assembly_index_NBodySystem_energy(assembly_index_system);
 }
 
 function assembly_index_bench($0) {
  $0 = $0 | 0;
  var $1 = 0;
  loop_0 : while (1) {
   if (!($1 >>> 0 >= $0 >>> 0)) {
    assembly_index_NBodySystem_advance(assembly_index_system);
    $1 = $1 + 1 | 0;
    continue loop_0;
   }
   break loop_0;
  };
 }
 
 function assembly_index_getBody($0) {
  $0 = $0 | 0;
  var $1 = 0;
  $1 = HEAP32[assembly_index_system >> 2];
  if ($0 >>> 0 < HEAP32[($1 + 12 | 0) >> 2] >>> 0) {
   $0 = HEAP32[(HEAP32[($1 + 4 | 0) >> 2] + ($0 << 2 | 0) | 0) >> 2]
  } else {
   $0 = 0
  }
  return $0 | 0;
 }
 
 function start() {
  $lib_rt_stub_startOffset = 16;
  $lib_rt_stub_offset = $lib_rt_stub_startOffset;
 }
 
 var FUNCTION_TABLE = [];
 function __wasm_memory_grow(pagesToAdd) {
  pagesToAdd = pagesToAdd | 0;
  var oldPages = __wasm_memory_size() | 0;
  var newPages = oldPages + pagesToAdd | 0;
  if ((oldPages < newPages) && (newPages < 65536)) {
   var newBuffer = new ArrayBuffer(Math_imul(newPages, 65536));
   var newHEAP8 = new global.Int8Array(newBuffer);
   newHEAP8.set(HEAP8);
   HEAP8 = newHEAP8;
   HEAP8 = new global.Int8Array(newBuffer);
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
 
 function __wasm_memory_size() {
  return buffer.byteLength / 65536 | 0;
 }
 
 return {
  "memory": Object.create(Object.prototype, {
   "grow": {
    "value": __wasm_memory_grow
   }, 
   "buffer": {
    "get": function () {
     return buffer;
    }
    
   }
  }), 
  "init": assembly_index_init, 
  "step": assembly_index_step, 
  "bench": assembly_index_bench, 
  "getBody": assembly_index_getBody
 };
}

var memasmFunc = new ArrayBuffer(65536);
var retasmFunc = asmFunc({Math,Int8Array,Uint8Array,Int16Array,Uint16Array,Int32Array,Uint32Array,Float32Array,Float64Array,NaN,Infinity}, {abort:function() { throw new Error('abort'); }},memasmFunc);
exports.memory =  retasmFunc.memory;
exports.init =  retasmFunc.init;
exports.step =  retasmFunc.step;
exports.bench =  retasmFunc.bench;
exports.getBody =  retasmFunc.getBody;
