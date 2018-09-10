// import "allocator/tlsf";
// import "allocator/arena";
// import "allocator/buddy";
import "allocator/shared";

type float = f64;
type int = i32;

// Usage: time ./smallpt 5000 && xv image.ppm

declare function logf(arg: float): void;
declare function logi(arg: i32): void;

export function GET_MEMORY_TOP(): usize {
    return allocator_get_offset();
}

export function SET_MEMORY_TOP(offset: usize): void {
    allocator_set_offset(offset);
}

function rand(): float {
    // return <float>NativeMath.random();
    return JSMath.random();
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

class Sphere {
    constructor(public rad: float, public p: Vec, public e: Vec, public c: Vec, public refl: Refl_t) {}
    // double rad;       // radius
    // Vec p, e, c;      // position, emission, color
    // Refl_t refl;      // reflection type (DIFFuse, SPECular, REFRactive)
    // Sphere(double rad_, Vec p_, Vec e_, Vec c_, Refl_t refl_):
    // rad(rad_), p(p_), e(e_), c(c_), refl(refl_) { }
    intersect(r: Ray, locals: Locals): float {
        // returns distance, 0 if nohit
        // var op: Vec = <Vec>(this.p - r.o); // Solve t^2*d.d + 2*t*(o-p).d + (o-p).(o-p)-R^2 = 0
        var op: Vec = this.p.sub2(r.o, locals.loc17); // Solve t^2*d.d + 2*t*(o-p).d + (o-p).(o-p)-R^2 = 0
        var t: float;
        var eps = 1e-4;
        var b = op.dot(r.d);
        var det = b * b - op.dot(op) + this.rad * this.rad;
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

function intersect(r: Ray, hit: Hit, locals: Locals): Hit {
    var t: float = Infinity;
    var id: int = -1;
    var n: int = context.spheres.length;
    var d: float = 0;
    // var inf: float = (t = 1e20);
    for (let i = 0; i < n; i++) {
        d = context.spheres[i].intersect(r, locals);
        if (d && d < t) {
            t = d;
            id = i;
        }
    }
    hit.t = t;
    hit.id = id;

    hit.ray.copy(r);
    return hit;
}

class Context {
    pixels: Vec[];
    dir: Vec;
    pos: Vec;
    cam: Ray;
    cx: Vec;
    cy: Vec;
    spheres: Sphere[];
    constructor(public width: int = 0, public height: int = 0) {}
}
var context: Context;

class Locals {
    black: Vec = new Vec(0, 0, 0);
    red: Vec = new Vec(1, 0, 0);
    hit: Hit = new Hit();
    _f: Vec = new Vec();
    loc1: Vec = new Vec();
    loc2: Vec = new Vec();
    loc3: Vec = new Vec();
    loc4: Vec = new Vec();
    loc5: Vec = new Vec();
    loc6: Vec = new Vec();
    loc7: Vec = new Vec();
    loc8: Vec = new Vec();
    loc9: Vec = new Vec();
    loc10: Vec = new Vec();
    loc11: Vec = new Vec();
    loc12: Vec = new Vec();
    loc13: Vec = new Vec();
    loc14: Vec = new Vec();
    loc15: Vec = new Vec();
    loc16: Vec = new Vec();
    loc17: Vec = new Vec();
    loc18: Vec = new Vec();
    loc19: Vec = new Vec();
    loc20: Vec = new Vec();
    result: Vec = new Vec();
    loc_r1: Ray = new Ray();
    loc_r2: Ray = new Ray();

    constructor() {}
}

export function getPixels(): Vec[] {
    return context.pixels;
}

export function setPixels(p: Vec[]): void {
    context.pixels = p;
}

export function setContext(ctx: Context): void {
    context = ctx;
}

export function getContext(): Context {
    return context;
}

export function createContext(w: int, h: int): Context {
    context = new Context();
    context.spheres = [
        //Scene: radius, position, emission, color, material
        new Sphere(1e5, new Vec(1e5 + 1, 40.8, 81.6), new Vec(), new Vec(0.75, 0, 0), Refl_t.DIFF), //Left
        new Sphere(1e5, new Vec(-1e5 + 99, 40.8, 81.6), new Vec(), new Vec(0, 0.75, 0), Refl_t.DIFF), //Rght
        new Sphere(1e5, new Vec(50, 40.8, 1e5), new Vec(), new Vec(0.75, 0.75, 0.75), Refl_t.DIFF), //Back
        new Sphere(1e5, new Vec(50, 40.8, -1e5 + 170), new Vec(), new Vec(), Refl_t.DIFF), //Frnt
        new Sphere(1e5, new Vec(50, 1e5, 81.6), new Vec(), new Vec(0.75, 0.75, 0.75), Refl_t.DIFF), //Botm
        new Sphere(1e5, new Vec(50, -1e5 + 81.6, 81.6), new Vec(), new Vec(0.75, 0.75, 0.75), Refl_t.DIFF), //Top
        new Sphere(16.5, new Vec(27, 16.5, 47), new Vec(), new Vec(0.999, 0.999, 0.999), Refl_t.SPEC), //Mirr
        new Sphere(16.5, new Vec(73, 16.5, 78), new Vec(), new Vec(0.999, 0.999, 0.999), Refl_t.REFR), //Glas
        new Sphere(600, new Vec(50, 681.6 - 0.27, 81.6), new Vec(112, 112, 112), new Vec(), Refl_t.DIFF), //Lite
    ];
    context.dir = new Vec(0, -0.042612, -1);
    context.pos = new Vec(50, 52, 295.6);
    context.cam = new Ray(context.pos, context.dir.norm_in()); // cam pos, dir
    context.cx = new Vec();
    context.cy = new Vec();
    context.width = w;
    context.height = h;
    context.cx.set((<float>w * 0.5135) / <float>h, 0, 0);
    context.cx
        .mod2(context.cam.d, context.cy)
        .norm_in()
        .multScalar_in(0.5135);
    var len = w * h;
    context.pixels = new Array<Vec>(len);
    for (let i = 0; i < len; i++) {
        context.pixels[i] = new Vec();
    }
    return context;
}

export function createLocals(): Locals {
    var locals = new Locals();
    return locals;
}

function radiance(r: Ray, depth: int, f: Vec, locals: Locals): Vec {
    // return locals.red;
    intersect(r, locals.hit, locals);

    if (locals.hit.t == Infinity) {
        return locals.black; // if miss, return black
    }
    // return locals.red.set(locals.hit.t, 0, 0);
    var obj: Sphere = unchecked(context.spheres[locals.hit.id]); // the hit object
    // var obj: Sphere = context.spheres[locals.hit.id]; // the hit object
    r.d.multScalar2(locals.hit.t, locals.loc1);

    var x: Vec = locals.loc1.add2(r.o, locals.loc2);
    var n: Vec = x.sub2(obj.p, locals.loc3).norm_in();
    var nl: Vec = n.dot(r.d) < 0 ? n.clone(locals.loc4) : n.multScalar2(-1, locals.loc4);
    if (!f) {
        f = locals._f;
    }
    f.setFrom(obj.c);

    var p: float = f.x > f.y && f.x > f.z ? f.x : f.y > f.z ? f.y : f.z; // max refl
    if (++depth > 5) {
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
        let u: Vec = locals.loc5;
        if (abs<float>(w.x) > 0.1) {
            u.set(0, 1, 0);
        } else {
            u.set(1, 1, 0);
            u.mod_in(w).norm_in();
        }
        let v: Vec = w.mod2(u, locals.loc6);
        let d: Vec = u
            .multScalar_in(JSMath.cos(r1) * r2s)
            .add_in(v.multScalar_in(JSMath.sin(r1) * r2s))
            .add_in(w.multScalar_in(sqrt<float>(1.0 - r2)))
            .norm_in();
        let ray = locals.loc_r1.set(x, d);
        let rad = locals.loc7.set(0, 0, 0);
        radiance(ray, depth, rad, locals);
        f.mul_in(rad);
        f.add_in(obj.e);
        return f;
    } else if (obj.refl == Refl_t.SPEC) {
        // Ideal SPECULAR reflection
        let d1 = r.d.sub2(n.multScalar_in(2 * n.dot(r.d)), locals.loc18);
        let ray = locals.loc_r1.set(x, d1);
        let rad = locals.loc7.set(0, 0, 0);
        radiance(ray, depth, rad, locals);
        f.mul_in(rad);
        return f.add_in(obj.e);
    }

    var d = n.multScalar2(2 * n.dot(r.d), locals.loc19);
    r.d.sub(d, true);
    var reflRay: Ray = locals.loc_r1.set(x, d); // Ideal dielectric REFRACTION
    var into: bool = n.dot(nl) > 0; // Ray from outside going in?
    var nc: float = 1,
        nt = 1.5;
    var nnt: float = into ? nc / nt : nt / nc;
    var ddn: float = r.d.dot(nl);
    var cos2t: float = 0;

    if ((cos2t = 1 - nnt * nnt * (1 - ddn * ddn)) < 0) {
        // Total internal reflection
        let rad = locals.loc7.set(0, 0, 0);
        radiance(reflRay, depth, rad, locals);
        f.mul_in(rad);
        return f.add_in(obj.e);
    }

    var n1 = n.multScalar2((into ? 1 : -1) * (ddn * nnt + sqrt<float>(cos2t)), locals.loc8);
    var tdir: Vec = r.d
        .multScalar2(nnt, locals.loc9)
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
    var ray = locals.loc_r1.set(x, tdir);

    var rad: Vec = locals.loc10.set(0, 0, 0);
    if (depth > 2) {
        if (rand() < P) {
            radiance(reflRay, depth, rad, locals).multScalar_in(RP);
        } else {
            radiance(ray, depth, rad, locals).multScalar_in(TP);
        }
    } else {
        radiance(ray, depth, locals.loc20, locals).multScalar_in(Tr);
        radiance(reflRay, depth, rad, locals)
            .multScalar_in(Re)
            .add_in(locals.loc20);
    }
    f.mul_in(rad);
    return f.add_in(obj.e);
}

export function render(locals: Locals, samps: int, ox: int, oy: int, w: int, h: int): void {
    // Loop over image rows
    for (let y: int = oy; y < oy + h; y++) {
        // fprintf(stderr, "\rRendering (%d spp) %5.2f%%", samps * 4, 100. * y / (h - 1));
        // Loop cols
        for (let x: int = ox; x < ox + w; x++) {
            // 2x2 subpixel rows
            for (let sy: int = 0; sy < 2; sy++) {
                // let i = (context.height - y - 1) * context.width + x;
                let i = y * context.width + x;
                // 2x2 subpixel cols
                for (let sx: int = 0; sx < 2; sx++) {
                    locals.result.set(0, 0, 0);
                    for (let s: int = 0; s < samps; s++) {
                        let r1: float = 2.0 * <float>rand();
                        let dx = r1 < 1.0 ? sqrt<float>(r1) - 1.0 : 1.0 - sqrt<float>(2.0 - r1);
                        let r2: float = 2.0 * <float>rand();
                        let dy = r2 < 1.0 ? sqrt<float>(r2) - 1.0 : 1.0 - sqrt<float>(2.0 - r2);
                        let d1 = context.cx.multScalar2(
                            <float>(((sx + 0.5 + dx) / 2.0 + x) / context.width - 0.5),
                            locals.loc11,
                        );
                        let d2 = context.cy.multScalar2(
                            <float>(((sy + 0.5 + dy) / 2.0 + y) / context.height - 0.5),
                            locals.loc12,
                        );
                        d1.add_in(d2);
                        d1.add_in(context.cam.d);
                        let d3 = d1.multScalar2(140, locals.loc13);
                        d3.add_in(context.cam.o);
                        let d4 = d1.norm_in();
                        let _r1 = locals.loc_r2.set(d3, d4);
                        let _r2 = radiance(_r1, 0, locals.loc15, locals);
                        _r2.multScalar_in(1.0 / <float>samps);
                        locals.result.add_in(_r2);
                    }

                    // Camera rays are pushed ^^^^^ forward to start in interior
                    let _x = clamp(locals.result.x);
                    let _y = clamp(locals.result.y);
                    let _z = clamp(locals.result.z);
                    let v1 = locals.loc16.set(_x, _y, _z);
                    v1.multScalar_in(0.55);

                    let _c = context.pixels[i];
                    _c.add_in(v1);
                }
            }
        }
    }
}
