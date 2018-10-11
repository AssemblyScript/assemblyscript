"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
require("allocator/arena");
const SOLAR_MASS = (4.0 * Math.PI * Math.PI);
const DAYS_PER_YEAR = 365.24;
class Body {
    constructor(x, y, z, vx, vy, vz, mass) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.vx = vx;
        this.vy = vy;
        this.vz = vz;
        this.mass = mass;
    }
    offsetMomentum(px, py, pz) {
        this.vx = -px / SOLAR_MASS;
        this.vy = -py / SOLAR_MASS;
        this.vz = -pz / SOLAR_MASS;
        return this;
    }
}
function Sun() {
    return new Body(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, SOLAR_MASS);
}
function Jupiter() {
    return new Body(4.84143144246472090e+00, -1.16032004402742839e+00, -1.03622044471123109e-01, 1.66007664274403694e-03 * DAYS_PER_YEAR, 7.69901118419740425e-03 * DAYS_PER_YEAR, -6.90460016972063023e-05 * DAYS_PER_YEAR, 9.54791938424326609e-04 * SOLAR_MASS);
}
function Saturn() {
    return new Body(8.34336671824457987e+00, 4.12479856412430479e+00, -4.03523417114321381e-01, -2.76742510726862411e-03 * DAYS_PER_YEAR, 4.99852801234917238e-03 * DAYS_PER_YEAR, 2.30417297573763929e-05 * DAYS_PER_YEAR, 2.85885980666130812e-04 * SOLAR_MASS);
}
function Uranus() {
    return new Body(1.28943695621391310e+01, -1.51111514016986312e+01, -2.23307578892655734e-01, 2.96460137564761618e-03 * DAYS_PER_YEAR, 2.37847173959480950e-03 * DAYS_PER_YEAR, -2.96589568540237556e-05 * DAYS_PER_YEAR, 4.36624404335156298e-05 * SOLAR_MASS);
}
function Neptune() {
    return new Body(1.53796971148509165e+01, -2.59193146099879641e+01, 1.79258772950371181e-01, 2.68067772490389322e-03 * DAYS_PER_YEAR, 1.62824170038242295e-03 * DAYS_PER_YEAR, -9.51592254519715870e-05 * DAYS_PER_YEAR, 5.15138902046611451e-05 * SOLAR_MASS);
}
class NBodySystem {
    constructor(bodies) {
        this.bodies = bodies;
        var px = 0.0;
        var py = 0.0;
        var pz = 0.0;
        var size = bodies.length;
        for (let i = 0; i < size; ++i) {
            let b = unchecked(bodies[i]);
            let m = b.mass;
            px += b.vx * m;
            py += b.vy * m;
            pz += b.vz * m;
        }
        bodies[0].offsetMomentum(px, py, pz);
    }
    advance(dt) {
        var bodies = this.bodies;
        var size = bodies.length;
        // var buffer = changetype<usize>(bodies.buffer_);
        for (let i = 0; i < size; ++i) {
            let bodyi = unchecked(bodies[i]);
            // let bodyi = load<Body>(buffer + i * sizeof<Body>(), 8);
            let ix = bodyi.x;
            let iy = bodyi.y;
            let iz = bodyi.z;
            let bivx = bodyi.vx;
            let bivy = bodyi.vy;
            let bivz = bodyi.vz;
            let bodyim = bodyi.mass;
            for (let j = i + 1; j < size; ++j) {
                let bodyj = unchecked(bodies[j]);
                // let bodyj = load<Body>(buffer + j * sizeof<Body>(), 8);
                let dx = ix - bodyj.x;
                let dy = iy - bodyj.y;
                let dz = iz - bodyj.z;
                let distanceSq = dx * dx + dy * dy + dz * dz;
                let distance = Math.sqrt(distanceSq);
                let mag = dt / (distanceSq * distance);
                let bim = bodyim * mag;
                let bjm = bodyj.mass * mag;
                bivx -= dx * bjm;
                bivy -= dy * bjm;
                bivz -= dz * bjm;
                bodyj.vx += dx * bim;
                bodyj.vy += dy * bim;
                bodyj.vz += dz * bim;
            }
            bodyi.vx = bivx;
            bodyi.vy = bivy;
            bodyi.vz = bivz;
            bodyi.x += dt * bivx;
            bodyi.y += dt * bivy;
            bodyi.z += dt * bivz;
        }
    }
    energy() {
        var e = 0.0;
        var bodies = this.bodies;
        for (let i = 0, size = bodies.length; i < size; ++i) {
            let bodyi = unchecked(bodies[i]);
            let ix = bodyi.x;
            let iy = bodyi.y;
            let iz = bodyi.z;
            let vx = bodyi.vx;
            let vy = bodyi.vy;
            let vz = bodyi.vz;
            let bim = bodyi.mass;
            e += 0.5 * bim * (vx * vx + vy * vy + vz * vz);
            for (let j = i + 1; j < size; ++j) {
                let bodyj = unchecked(bodies[j]);
                let dx = ix - bodyj.x;
                let dy = iy - bodyj.y;
                let dz = iz - bodyj.z;
                let distance = Math.sqrt(dx * dx + dy * dy + dz * dz);
                e -= bim * bodyj.mass / distance;
            }
        }
        return e;
    }
}
var system;
function init() {
    system = new NBodySystem([
        Sun(),
        Jupiter(),
        Saturn(),
        Uranus(),
        Neptune()
    ]);
}
exports.init = init;
function step() {
    system.advance(0.01);
    return system.energy();
}
exports.step = step;
function bench(steps) {
    for (let i = 0; i < steps; ++i)
        system.advance(0.01);
}
exports.bench = bench;
function getBody(index) {
    var bodies = system.bodies;
    return index < bodies.length ? bodies[index] : null;
}
exports.getBody = getBody;
