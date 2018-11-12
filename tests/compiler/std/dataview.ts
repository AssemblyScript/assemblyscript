import "allocator/arena";

var array = new Uint8Array(8);

array[0] = 246;
array[1] = 224;
array[2] = 88;
array[3] = 159;
array[4] = 130;
array[5] = 101;
array[6] = 67;
array[7] = 95;

var view = new DataView(array.buffer, array.byteOffset, array.byteLength);

assert(view.getFloat32(0, true) === -4.592586247781397e-20);
assert(view.getFloat32(1, true) === -2.3413961970849473e-37);
assert(view.getFloat32(2, true) === 7.710587701863113e+22);
assert(view.getFloat32(3, true) === 229.51023864746094);
assert(view.getFloat32(4, true) === 14079802746555335000.0);

assert(view.getFloat32(0, false) === -2.2751405188178955e+33);
assert(view.getFloat32(1, false) === -62437351080004160000.0);
assert(view.getFloat32(2, false) === 1403059112509440.0);
assert(view.getFloat32(3, false) === -5.522466503261712e-20);
assert(view.getFloat32(4, false) === -1.6843597451835358e-37);

assert(view.getFloat64(0, true) === 7.936550095674706e+150);
assert(view.getFloat64(0, false) === -4.1177747581885255e+264);

assert(view.getInt8(0) === -10);
assert(view.getInt8(1) === -32);
assert(view.getInt8(2) === 88);
assert(view.getInt8(3) === -97);
assert(view.getInt8(4) === -126);
assert(view.getInt8(5) === 101);
assert(view.getInt8(6) === 67);
assert(view.getInt8(7) === 95);

assert(view.getInt16(0, true) === -7946);
assert(view.getInt16(1, true) === 22752);
assert(view.getInt16(2, true) === -24744);
assert(view.getInt16(3, true) === -32097);
assert(view.getInt16(4, true) === 25986);
assert(view.getInt16(5, true) === 17253);
assert(view.getInt16(6, true) === 24387);

assert(view.getInt16(0, false) === -2336);
assert(view.getInt16(1, false) === -8104);
assert(view.getInt16(2, false) === 22687);
assert(view.getInt16(3, false) === -24702);
assert(view.getInt16(4, false) === -32155);
assert(view.getInt16(5, false) === 25923);
assert(view.getInt16(6, false) === 17247);

assert(view.getInt32(0, true) === -1621565194);
assert(view.getInt32(1, true) === -2103486240);
assert(view.getInt32(2, true) === 1703059288);
assert(view.getInt32(3, true) === 1130726047);
assert(view.getInt32(4, true) === 1598252418);

assert(view.getInt32(0, false) === -153069409);
assert(view.getInt32(1, false) === -531062910);
assert(view.getInt32(2, false) === 1486848613);
assert(view.getInt32(3, false) === -1618844349);
assert(view.getInt32(4, false) === -2107292833);

assert(view.getInt64(0, true) === 6864441868736323830);
assert(view.getInt64(0, false) === -657428103485373601);

assert(view.getUint8(0) === 246);
assert(view.getUint8(1) === 224);
assert(view.getUint8(2) === 88);
assert(view.getUint8(3) === 159);
assert(view.getUint8(4) === 130);
assert(view.getUint8(5) === 101);
assert(view.getUint8(6) === 67);
assert(view.getUint8(7) === 95);

assert(view.getUint16(0, true) === 57590);
assert(view.getUint16(1, true) === 22752);
assert(view.getUint16(2, true) === 40792);
assert(view.getUint16(3, true) === 33439);
assert(view.getUint16(4, true) === 25986);
assert(view.getUint16(5, true) === 17253);
assert(view.getUint16(6, true) === 24387);

assert(view.getUint16(0, false) === 63200);
assert(view.getUint16(1, false) === 57432);
assert(view.getUint16(2, false) === 22687);
assert(view.getUint16(3, false) === 40834);
assert(view.getUint16(4, false) === 33381);
assert(view.getUint16(5, false) === 25923);
assert(view.getUint16(6, false) === 17247);

assert(view.getUint32(0, true) === 2673402102);
assert(view.getUint32(1, true) === 2191481056);
assert(view.getUint32(2, true) === 1703059288);
assert(view.getUint32(3, true) === 1130726047);
assert(view.getUint32(4, true) === 1598252418);

assert(view.getUint32(0, false) === 4141897887);
assert(view.getUint32(1, false) === 3763904386);
assert(view.getUint32(2, false) === 1486848613);
assert(view.getUint32(3, false) === 2676122947);
assert(view.getUint32(4, false) === 2187674463);

assert(view.getUint64(0, true) === 6864441868736323830);
assert(view.getUint64(0, false) === 17789315970224178015);

view.setFloat32(0, 1.5976661625240943e-18, true);
assert(view.getFloat32(0, true) === 1.5976661625240943e-18);

view.setFloat32(0, 1.9762819733816963e+21, false);
assert(view.getFloat32(0, false) === 1.9762819733816963e+21);

view.setFloat64(0, -1.094252199637739e+148, true);
assert(view.getFloat64(0, true) === -1.094252199637739e+148);

view.setFloat64(0, 6.022586634778589e-103, false);
assert(view.getFloat64(0, false) === 6.022586634778589e-103);

view.setInt8(0, 108);
assert(view.getInt8(0) === 108);

view.setInt16(0, -13360, true);
assert(view.getInt16(0, true) === -13360);

view.setInt16(0, 14689, false);
assert(view.getInt16(0, false) === 14689);

view.setInt32(0, 1204680201, true);
assert(view.getInt32(0, true) === 1204680201);

view.setInt32(0, 660673230, false);
assert(view.getInt32(0, false) === 660673230);

view.setInt64(0, -3290739641816099749, true);
assert(view.getInt64(0, true) === -3290739641816099749);

view.setInt64(0, 8178932412950708047, false);
assert(view.getInt64(0, false) === 8178932412950708047);

view.setUint8(0, 238);
assert(view.getUint8(0) === 238);

view.setUint16(0, 58856, true);
assert(view.getUint16(0, true) === 58856);

view.setUint16(0, 60400, false);
assert(view.getUint16(0, false) === 60400);

view.setUint32(0, 3448161552, true);
assert(view.getUint32(0, true) === 3448161552);

view.setUint32(0, 2784175665, false);
assert(view.getUint32(0, false) === 2784175665);

view.setUint64(0, 2334704782995986958, true);
assert(view.getUint64(0, true) === 2334704782995986958);

view.setUint64(0, 11323557176419695287, false);
assert(view.getUint64(0, false) === 11323557176419695287);
