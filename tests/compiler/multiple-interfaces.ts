interface W {
  w: f64
}

interface X {
  x: f64
}

interface Y {
  y: f64
}

interface Z {
  z: f64
}

// WX XY XZ YZ
// |  \__|__/
// |     |
// |    Vec3
// \_____|
//      Vec4

interface WX extends W, X {}
interface XY extends X, Y {}
interface XZ extends X, Z {}
interface YZ extends Y, Z {}

interface Vec3 extends XY, XZ, YZ {}

/**
 * Who needs a regular old Vec3, when you can have a Vec4?
 * Vec3 is overused anyway :^)
 */
interface Vec4 extends WX, Vec3 {}

class Vec4TheClass implements Vec4 {
  constructor(
    public w: f64,
    public x: f64,
    public y: f64,
    public z: f64
  ) {}
}

const vec4 = new Vec4TheClass(1, 2, 3, 4);

const anotherVec4: Vec4 = vec4;
assert(anotherVec4.w == vec4.w);

const y: Y = vec4;
assert(y.y == vec4.y);

const yz: YZ = vec4;
assert(yz.z == vec4.z);

const vec3: Vec3 = vec4;
const x: X = vec3;
assert(vec3.x == x.x);

// Up-cast, down-cast, left-cast, right-cast
const wx = vec3 as Vec4 as WX;
assert(wx.w == vec4.w);