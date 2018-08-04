import "allocator/arena";

// From The Computer Language Benchmarks Game
// http://benchmarksgame.alioth.debian.org

type float = f64; // interchangeable f32/f64 for testing

const SOLAR_MASS = <float>(4.0 * Math.PI * Math.PI);
const DAYS_PER_YEAR: float = 365.24;

class Body {

  constructor(
    public x: float,
    public y: float,
    public z: float,
    public vx: float,
    public vy: float,
    public vz: float,
    public mass: float
  ) {}

  offsetMomentum(px: float, py: float, pz: float): this {
    this.vx = -px / SOLAR_MASS;
    this.vy = -py / SOLAR_MASS;
    this.vz = -pz / SOLAR_MASS;
    return this;
  }
}

function Sun(): Body {
  return new Body(
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, SOLAR_MASS
  );
}

function Jupiter(): Body {
  return new Body(
     4.84143144246472090e+00,
    -1.16032004402742839e+00,
    -1.03622044471123109e-01,
     1.66007664274403694e-03 * DAYS_PER_YEAR,
     7.69901118419740425e-03 * DAYS_PER_YEAR,
    -6.90460016972063023e-05 * DAYS_PER_YEAR,
     9.54791938424326609e-04 * SOLAR_MASS
  );
}

function Saturn(): Body {
  return new Body(
     8.34336671824457987e+00,
     4.12479856412430479e+00,
    -4.03523417114321381e-01,
    -2.76742510726862411e-03 * DAYS_PER_YEAR,
     4.99852801234917238e-03 * DAYS_PER_YEAR,
     2.30417297573763929e-05 * DAYS_PER_YEAR,
     2.85885980666130812e-04 * SOLAR_MASS
  );
}

function Uranus(): Body {
  return new Body(
     1.28943695621391310e+01,
    -1.51111514016986312e+01,
    -2.23307578892655734e-01,
     2.96460137564761618e-03 * DAYS_PER_YEAR,
     2.37847173959480950e-03 * DAYS_PER_YEAR,
    -2.96589568540237556e-05 * DAYS_PER_YEAR,
     4.36624404335156298e-05 * SOLAR_MASS
  );
}

function Neptune(): Body {
  return new Body(
     1.53796971148509165e+01,
    -2.59193146099879641e+01,
     1.79258772950371181e-01,
     2.68067772490389322e-03 * DAYS_PER_YEAR,
     1.62824170038242295e-03 * DAYS_PER_YEAR,
    -9.51592254519715870e-05 * DAYS_PER_YEAR,
     5.15138902046611451e-05 * SOLAR_MASS
  );
}

class NBodySystem {

  constructor(public bodies: Body[]) {
    var px: float = 0.0;
    var py: float = 0.0;
    var pz: float = 0.0;
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

  advance(dt: float): void {
    var bodies = this.bodies;
    var size: u32 = bodies.length;
    // var buffer = changetype<usize>(bodies.buffer_);

    for (let i: u32 = 0; i < size; ++i) {
      let bodyi = unchecked(bodies[i]);
      // let bodyi = load<Body>(buffer + i * sizeof<Body>(), 8);

      let ix = bodyi.x;
      let iy = bodyi.y;
      let iz = bodyi.z;

      let bivx = bodyi.vx;
      let bivy = bodyi.vy;
      let bivz = bodyi.vz;

      let bodyim = bodyi.mass;
      for (let j: u32 = i + 1; j < size; ++j) {
        let bodyj = unchecked(bodies[j]);
        // let bodyj = load<Body>(buffer + j * sizeof<Body>(), 8);

        let dx = ix - bodyj.x;
        let dy = iy - bodyj.y;
        let dz = iz - bodyj.z;

        let distanceSq = dx * dx + dy * dy + dz * dz;
        let distance = <float>Math.sqrt(distanceSq);
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

  energy(): float {
    var e: float = 0.0;
    var bodies = this.bodies;

    for (let i: u32 = 0, size: u32 = bodies.length; i < size; ++i) {
      let bodyi = unchecked(bodies[i]);

      let ix = bodyi.x;
      let iy = bodyi.y;
      let iz = bodyi.z;

      let vx = bodyi.vx;
      let vy = bodyi.vy;
      let vz = bodyi.vz;

      let bim = bodyi.mass;

      e += 0.5 * bim * (vx * vx + vy * vy + vz * vz);

      for (let j: u32 = i + 1; j < size; ++j) {
        let bodyj = unchecked(bodies[j]);
        let dx = ix - bodyj.x;
        let dy = iy - bodyj.y;
        let dz = iz - bodyj.z;
        let distance = <float>Math.sqrt(dx * dx + dy * dy + dz * dz);
        e -= bim * bodyj.mass / distance;
      }
    }
    return e;
  }
}

var system: NBodySystem;

export function init(): void {
  system = new NBodySystem([
    Sun(),
    Jupiter(),
    Saturn(),
    Uranus(),
    Neptune()
  ]);
}

export function step(): float {
  system.advance(0.01);
  return system.energy();
}

export function bench(steps: u32): void {
  for (let i: u32 = 0; i < steps; ++i) system.advance(0.01);
}

export function getBody(index: i32): Body | null {
  var bodies = system.bodies;
  return <u32>index < <u32>bodies.length ? bodies[index] : null;
}
