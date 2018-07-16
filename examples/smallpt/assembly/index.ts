// import "allocator/tlsf";
import "allocator/arena";

type float = f64;
type int = i32;

// Usage: time ./smallpt 5000 && xv image.ppm
var seed = reinterpret<u64>(JSMath.random());
NativeMath.seedRandom(seed);

declare function logf(arg: float): void;
declare function logi(arg: i32): void;

function rand(): float {
    return <float>NativeMath.random();
}

export class Vec {
    // position, also color (r,g,b)
    constructor(public x: float = 0.0, public y: float = 0.0, public z: float = 0.0) {}

    free(): void {
        free_memory(<usize>this);
    }

    // @operator("+")
    add(b: Vec): Vec {
        return new Vec(this.x + b.x, this.y + b.y, this.z + b.z);
    }
    add_in(b: Vec): Vec {
        this.x = this.x + b.x;
        this.y = this.y + b.y;
        this.z = this.z + b.z;
        return this;
    }
    add2(b: Vec, c: Vec): Vec {
        c.x = this.x + b.x;
        c.y = this.y + b.y;
        c.z = this.z + b.z;
        return c;
    }
    set(x: float, y: float, z: float): Vec {
        this.x = x;
        this.y = y;
        this.z = z;
        return this;
    }
    setFrom(b: Vec): Vec {
        this.x = b.x;
        this.y = b.y;
        this.z = b.z;
        return this;
    }
    // @operator("-")
    sub(b: Vec, copyToB: bool = false): Vec {
        if (copyToB) {
            b.x = this.x - b.x;
            b.y = this.y - b.y;
            b.z = this.z - b.z;
            return b;
        }
        return new Vec(this.x - b.x, this.y - b.y, this.z - b.z);
    }
    sub2(b: Vec, c: Vec): Vec {
        c.x = this.x - b.x;
        c.y = this.y - b.y;
        c.z = this.z - b.z;
        return c;
    }
    sub_in(b: Vec): Vec {
        this.x = this.x - b.x;
        this.y = this.y - b.y;
        this.z = this.z - b.z;
        return this;
    }

    // @operator("*")
    mul(b: Vec): Vec {
        return new Vec(this.x * b.x, this.y * b.y, this.z * b.z);
    }
    mul_in(b: Vec): Vec {
        this.x = this.x * b.x;
        this.y = this.y * b.y;
        this.z = this.z * b.z;
        return this;
    }

    multScalar(b: float): Vec {
        return new Vec(this.x * b, this.y * b, this.z * b);
    }
    multScalar2(b: float, c: Vec): Vec {
        c.x = this.x * b;
        c.y = this.y * b;
        c.z = this.z * b;
        return c;
    }
    multScalar_in(b: float): Vec {
        this.x = this.x * b;
        this.y = this.y * b;
        this.z = this.z * b;
        return this;
    }
    // @operator("%")
    mod(b: Vec): Vec {
        return new Vec(this.y * b.z - this.z * b.y, this.z * b.x - this.x * b.z, this.x * b.y - this.y * b.x);
    }
    mod_in(b: Vec): Vec {
        this.x = this.y * b.z - this.z * b.y;
        this.y = this.z * b.x - this.x * b.z;
        this.z = this.x * b.y - this.y * b.x;
        return this;
    }
    mod2(b: Vec, c: Vec): Vec {
        c.x = this.y * b.z - this.z * b.y;
        c.y = this.z * b.x - this.x * b.z;
        c.z = this.x * b.y - this.y * b.x;
        return c;
    }

    length(): float {
        return sqrt<float>(this.x * this.x + this.y * this.y + this.z * this.z);
    }

    norm(): Vec {
        var d = this.length();
        return new Vec(this.x / d, this.y / d, this.z / d);
    }

    norm_in(): Vec {
        var d = this.length();
        this.x = this.x / d;
        this.y = this.y / d;
        this.z = this.z / d;
        return this;
    }

    dot(b: Vec): float {
        return this.x * b.x + this.y * b.y + this.z * b.z;
    }

    clone(c: Vec = new Vec()): Vec {
        c.x = this.x;
        c.y = this.y;
        c.z = this.z;
        return c;
    }
}
// Vec operator - (const Vec & b) const { return Vec(x - b.x, y - b.y, z - b.z); }
// Vec operator * (double b) const { return Vec(x * b, y * b, z * b); }
// Vec mult(const Vec & b) const { return Vec(x * b.x, y * b.y, z * b.z); }
// Vec & norm(){ return * this = * this * (1 / sqrt<float>(x * x + y * y + z * z)); }
// double dot(const Vec & b) const { return x* b.x + y * b.y + z * b.z; } // cross:
// Vec operator % (Vec & b){ return Vec(y * b.z - z * b.y, z * b.x - x * b.z, x * b.y - y * b.x); }
//  };

class Ray {
    constructor(public o: Vec = new Vec(), public d: Vec = new Vec()) {}
    copy(r: Ray): void {
        this.o.setFrom(r.o);
        this.d.setFrom(r.d);
    }
    set(o: Vec, d: Vec): Ray {
        this.o.setFrom(o);
        this.d.setFrom(d);
        return this;
    }
    free(): void {
        this.o.free();
        this.d.free();
        free_memory(<usize>this);
    }
}

enum Refl_t {
    DIFF,
    SPEC,
    REFR,
} // material types, used in radiance()

var loc17 = new Vec();

class Sphere {
    constructor(public rad: float, public p: Vec, public e: Vec, public c: Vec, public refl: Refl_t) {}
    // double rad;       // radius
    // Vec p, e, c;      // position, emission, color
    // Refl_t refl;      // reflection type (DIFFuse, SPECular, REFRactive)
    // Sphere(double rad_, Vec p_, Vec e_, Vec c_, Refl_t refl_):
    // rad(rad_), p(p_), e(e_), c(c_), refl(refl_) { }
    intersect(r: Ray): float {
        // returns distance, 0 if nohit
        // var op: Vec = <Vec>(this.p - r.o); // Solve t^2*d.d + 2*t*(o-p).d + (o-p).(o-p)-R^2 = 0
        var op: Vec = this.p.sub2(r.o, loc17); // Solve t^2*d.d + 2*t*(o-p).d + (o-p).(o-p)-R^2 = 0
        var t: float,
            eps = 1e-4,
            b = op.dot(r.d),
            det = b * b - op.dot(op) + this.rad * this.rad;
        if (det < 0) {
            return 0;
        } else {
            det = sqrt<float>(det);
        }
        return (t = b - det) > eps ? t : (t = b + det) > eps ? t : 0;
    }

    free(): void {
        free_memory(<usize>this);
    }
}

var spheres: Sphere[] = [
    //Scene: radius, position, emission, color, material
    new Sphere(1e5, new Vec(1e5 + 1, 40.8, 81.6), new Vec(), new Vec(0.75, 0, 0), Refl_t.DIFF), //Left
    new Sphere(1e5, new Vec(-1e5 + 99, 40.8, 81.6), new Vec(), new Vec(0, 0.75, 0), Refl_t.DIFF), //Rght
    new Sphere(1e5, new Vec(50, 40.8, 1e5), new Vec(), new Vec(0.75, 0.75, 0.75), Refl_t.DIFF), //Back
    new Sphere(1e5, new Vec(50, 40.8, -1e5 + 170), new Vec(), new Vec(), Refl_t.DIFF), //Frnt
    new Sphere(1e5, new Vec(50, 1e5, 81.6), new Vec(), new Vec(0.75, 0.75, 0.75), Refl_t.DIFF), //Botm
    new Sphere(1e5, new Vec(50, -1e5 + 81.6, 81.6), new Vec(), new Vec(0.75, 0.75, 0.75), Refl_t.DIFF), //Top
    new Sphere(16.5, new Vec(27, 16.5, 47), new Vec(), new Vec(0.999, 0.999, 0.999), Refl_t.SPEC), //Mirr
    new Sphere(16.5, new Vec(73, 16.5, 78), new Vec(), new Vec(0.999, 0.999, 0.999), Refl_t.REFR), //Glas
    new Sphere(600, new Vec(50, 681.6 - 0.27, 81.6), new Vec(150, 50, 50), new Vec(), Refl_t.DIFF), //Lite
];

// function int(x: float): int {
//     return x as int;
// }

function clamp(x: float): float {
    return x < 0.0 ? 0.0 : x > 1.0 ? 1.0 : x;
}
// function toInt(x: float): int {
//     return int(Math.pow(clamp(x), 1.0 / 2.2) * 255.0 + 0.5);
// }
class Hit {
    constructor(public ray: Ray = new Ray(), public t: float = 0, public id: int = -1) {}
    free(): void {
        free_memory(<usize>this);
    }
}
function intersect(r: Ray, hit: Hit): Hit {
    var t: float = Infinity;
    var id: int = -1;
    var n: int = spheres.length;
    var d: float = 0;
    var inf: float = (t = 1e20);
    for (let i = n; i--; ) {
        if ((d = spheres[i].intersect(r)) && d < t) {
            t = d;
            id = i;
        }
    }
    hit.t = t;
    hit.id = id;
    hit.ray.copy(r);
    return hit;
}

var hit: Hit = new Hit();
var _f = new Vec();
var loc1 = new Vec();
var loc2 = new Vec();
var loc3 = new Vec();
var loc4 = new Vec();
var loc5 = new Vec();
var loc6 = new Vec();
var loc7 = new Vec();
var loc8 = new Vec();
var loc9 = new Vec();
var loc10 = new Vec();
var loc18 = new Vec();
var loc19 = new Vec();
var loc20 = new Vec();
//
var loc_r1 = new Ray();
var loc_r2 = new Ray();
var black = new Vec(0, 0, 0);
var red = new Vec(1, 0, 0);

function radiance(r: Ray, depth: int, Xi: u16, f: Vec = _f): Vec {
    intersect(r, hit);
    if (hit.t == Infinity) {
        return black; // if miss, return black
    }
    var obj: Sphere = spheres[hit.id]; // the hit object
    r.d.multScalar2(hit.t, loc1);

    var x: Vec = loc1.add2(r.o, loc2);
    var n: Vec = x.sub2(obj.p, loc3).norm_in();
    var nl: Vec = n.dot(r.d) < 0 ? n.clone(loc4) : n.multScalar2(-1, loc4);

    f.setFrom(obj.c);

    var p: float = f.x > f.y && f.x > f.z ? f.x : f.y > f.z ? f.y : f.z; // max refl
    // Xi = rand();
    if (++depth > 4) {
        if (rand() < p) {
            f.multScalar_in(1 / p);
            f.setFrom(obj.e); //R.R.
            return f;
        } else {
            f.setFrom(obj.e); //R.R.
            return f;
        }
    }

    if (obj.refl == Refl_t.DIFF) {
        // Ideal DIFFUSE reflection
        let r1: float = 2 * Math.PI * rand();
        let r2: float = rand();
        let r2s: float = sqrt<float>(r2);
        let w: Vec = nl;
        let u: Vec = loc5;
        if (abs<float>(w.x) > 0.1) {
            u.set(0, 1, 0);
        } else {
            u.set(1, 1, 0);
            u.mod_in(w).norm_in();
        }
        let v: Vec = w.mod2(u, loc6);
        let d: Vec = u
            .multScalar_in(JSMath.cos(r1) * r2s)
            .add_in(v.multScalar_in(JSMath.sin(r1) * r2s))
            .add_in(w.multScalar_in(sqrt<float>(1.0 - r2)))
            .norm_in();
        let ray = loc_r1.set(x, d);
        let rad = loc7.set(0, 0, 0);
        radiance(ray, depth, Xi, rad);
        f.mul_in(rad);
        f.add_in(obj.e);
        return f;
    } else if (obj.refl == Refl_t.SPEC) {
        // Ideal SPECULAR reflection
        let d1 = r.d.sub2(n.multScalar_in(2 * n.dot(r.d)), loc18);
        let ray = loc_r1.set(x, d1);
        let rad = loc7.set(0, 0, 0);
        radiance(ray, depth, Xi, rad);
        f.mul_in(rad);
        return f.add_in(obj.e);
    }

    var d = n.multScalar2(2 * n.dot(r.d), loc19);
    r.d.sub(d, true);
    var reflRay: Ray = loc_r1.set(x, d); // Ideal dielectric REFRACTION
    var into: bool = n.dot(nl) > 0; // Ray from outside going in?
    var nc: float = 1,
        nt = 1.5;
    var nnt: float = into ? nc / nt : nt / nc;
    var ddn: float = r.d.dot(nl);
    var cos2t: float = 0;

    if ((cos2t = 1 - nnt * nnt * (1 - ddn * ddn)) < 0) {
        // Total internal reflection
        let rad = loc7.set(0, 0, 0);
        radiance(reflRay, depth, Xi, rad);
        f.mul_in(rad);
        return f.add_in(obj.e);
    }

    var n1 = n.multScalar2((into ? 1 : -1) * (ddn * nnt + sqrt<float>(cos2t)), loc8);
    var tdir: Vec = r.d
        .multScalar2(nnt, loc9)
        .sub_in(n1)
        .norm_in();
    var a: float = nt - nc,
        b = nt + nc,
        R0 = (a * a) / (b * b),
        c = 1 - (into ? -ddn : tdir.dot(n));
    var Re: float = R0 + (1 - R0) * c * c * c * c * c,
        Tr = 1 - Re,
        P = 0.25 + 0.5 * Re,
        RP = Re / P,
        TP = Tr / (1 - P);
    var ray = loc_r1.set(x, tdir);

    var rad: Vec = loc10.set(0, 0, 0);
    if (depth > 2) {
        if (rand() < P) {
            radiance(reflRay, depth, Xi, rad).multScalar_in(RP);
        } else {
            radiance(ray, depth, Xi, rad).multScalar_in(TP);
        }
    } else {
        radiance(ray, depth, Xi, loc20).multScalar_in(Tr);
        radiance(reflRay, depth, Xi, rad)
            .multScalar_in(Re)
            .add_in(loc20);
    }
    f.mul_in(rad);
    return f.add_in(obj.e);
}

class Params {
    constructor(public width: int = 0, public height: int = 0) {}
}
var params = new Params();

var dir = new Vec(0, -0.042612, -1);
var pos = new Vec(50, 52, 295.6);
var cam: Ray = new Ray(pos, dir.norm_in()); // cam pos, dir
var cx: Vec = new Vec();
var cy: Vec = new Vec();
var loc11 = new Vec();
var loc12 = new Vec();
var loc13 = new Vec();
var loc14 = new Vec();
var loc15 = new Vec();
var loc16 = new Vec();
var result = new Vec();

export function createPixels(w: int, h: int): Vec[] {
    params.width = w;
    params.height = h;
    cx.set((<float>w * 0.5135) / <float>h, 0, 0);
    cx.mod2(cam.d, cy)
        .norm_in()
        .multScalar_in(0.5135);
    var len = w * h;
    var c: Vec[] = new Array<Vec>(len);
    for (let i = 0; i < len; i++) {
        c[i] = new Vec();
    }
    return c;
}

export function render(c: Vec[], samps: int, ox: int, oy: int, w: int, h: int): Vec[] {
    // #pragma omp parallel for schedule(dynamic, 1) private(r)       // OpenMP
    var Xi = <u16>seed;
    // Loop over image rows
    for (let y: int = oy; y < oy + h; y++) {
        // fprintf(stderr, "\rRendering (%d spp) %5.2f%%", samps * 4, 100. * y / (h - 1));
        // Loop cols
        for (let x: int = ox; x < ox + w; x++) {
            // 2x2 subpixel rows
            for (let sy: int = 0; sy < 2; sy++) {
                // let i = (params.height - y - 1) * params.width + x;
                let i = y * params.width + x;
                // 2x2 subpixel cols
                for (let sx: int = 0; sx < 2; sx++) {
                    result.set(0, 0, 0);
                    for (let s: int = 0; s < samps; s++) {
                        let r1: float = 2.0 * <float>rand(),
                            dx = r1 < 1.0 ? sqrt<float>(r1) - 1.0 : 1.0 - sqrt<float>(2.0 - r1);

                        let r2: float = 2.0 * <float>rand(),
                            dy = r2 < 1.0 ? sqrt<float>(r2) - 1.0 : 1.0 - sqrt<float>(2.0 - r2);

                        let d1 = cx.multScalar2(<float>(((sx + 0.5 + dx) / 2.0 + x) / params.width - 0.5), loc11);
                        let d2 = cy.multScalar2(<float>(((sy + 0.5 + dy) / 2.0 + y) / params.height - 0.5), loc12);
                        d1.add_in(d2);
                        d1.add_in(cam.d);
                        let d3 = d1.multScalar2(140, loc13);
                        d3.add_in(cam.o);
                        let d4 = d1.norm_in();
                        let _r1 = loc_r2.set(d3, d4);
                        let _r2 = radiance(_r1, 0, Xi, loc15);
                        _r2.multScalar_in(1.0 / <float>samps);
                        result.add_in(_r2);
                    }

                    // Camera rays are pushed ^^^^^ forward to start in interior
                    let _x = clamp(result.x);
                    let _y = clamp(result.y);
                    let _z = clamp(result.z);
                    let v1 = loc16.set(_x, _y, _z);
                    v1.multScalar_in(0.5);

                    let _c = c[i];
                    _c.add_in(v1);
                }
            }
        }
    }

    return c;
}
