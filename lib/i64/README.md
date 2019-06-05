@assemblyscript/i64
===================

Exposes WebAssembly's i64 operations to JavaScript using 32-bit integers (low and high bits).

Usage
-----

```
$> npm install @assemblyscript/i64
```

```ts
import * as i64 from "@assemblyscript/i64";

i64.div(10, 0, 2, 0);

console.log("result: lo=" + i64.getLo() + ", hi=" + i64.getHi());
```

API
---

**Note** that `u32` is just an alias of `number` in JavaScript with values in 32-bit integer range.

* **getLo**(): `u32`<br />
  Gets the low 32 bits of the computed 64-bit value.

* **getHi**(): `u32`<br />
  Gets the high 32 bits of the computed 64-bit value.

* **clz**(loLeft: `u32`, hiLeft: `u32`): `void`<br />
  Performs the sign-agnostic count leading zero bits operation. All zero bits are considered leading if the value is zero.

* **ctz**(loLeft: `u32`, hiLeft: `u32`): `void`<br />
  Performs the sign-agnostic count tailing zero bits operation. All zero bits are considered trailing if the value is zero.

* **popcnt**(loLeft: `u32`, hiLeft: `u32`): `void`<br />
  Performs the sign-agnostic count number of one bits operation.

* **eqz**(loLeft: `u32`, hiLeft: `u32`): `void`<br />
  Performs the sign-agnostic equals-zero operation.

* **add**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic addition operation.

* **sub**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic subtraction operation.

* **mul**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic multiplication operation.

* **div_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed division operation.

* **div_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned division operation.

* **rem_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed remainder operation.

* **rem_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned remainder operation.

* **and**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic bitwise and operation.

* **or**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic bitwise or operation.

* **xor**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic bitwise xor operation.

* **shl**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic bitwise shift left operation.

* **shr_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed bitwise shift right operation.

* **shr_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned bitwise shift right operation.

* **rotl**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic rotate left operation.

* **rotr**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic rotate right operation.

* **eq**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic compare equal operation.

* **ne**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the sign-agnostic compare unequal operation.

* **lt_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed less than operation.

* **lt_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned less than operation.

* **le_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed less than or equal operation.

* **le_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned less than or equal operation.

* **gt_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed greater than operation.

* **gt_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned greater than operation.

* **ge_s**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the signed greater than or equal operation.

* **ge_u**(loLeft: `u32`, hiLeft: `u32`, loRight: `u32`, hiRight: `u32`): `void`<br />
  Performs the unsigned greater than or equal operation.

Building
--------

To build [assembly/i64.ts](./assembly/i64.ts) to an untouched and an optimized `.wasm` including their respective `.wat` representations, run:

```
$> npm run asbuild
```

Afterwards, to run the included [test](./tests/index.js):

```
$> npm test
```
