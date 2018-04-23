import "allocator/arena";

const SOLAR_MASS = 4.0 * Math.PI * Math.PI;
const DAYS_PER_YEAR = 365.24;

class Body {

  constructor(
    public x: f64,
    public y: f64,
    public z: f64,
    public vx: f64,
    public vy: f64,
    public vz: f64,
    public mass: f64
  ) {}

  offsetMomentum(px: f64, py: f64, pz: f64): this {
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

  bodies: Body[];

  constructor(bodies: Body[]) {
    var px = 0.0;
    var py = 0.0;
    var pz = 0.0;
    var size = bodies.length;
    for (let i = 0; i < size; i++) {
      let b = bodies[i];
      let m = b.mass;
      px += b.vx * m;
      py += b.vy * m;
      pz += b.vz * m;
    }
    this.bodies = bodies;
    this.bodies[0].offsetMomentum(px, py, pz);
  }

  advance(dt: f64): void {
    var bodies = this.bodies;
    var size = bodies.length;

    for (let i = 0; i < size; ++i) {
      let bodyi = bodies[i];

      let ix = bodyi.x;
      let iy = bodyi.y;
      let iz = bodyi.z;

      let bivx = bodyi.vx;
      let bivy = bodyi.vy;
      let bivz = bodyi.vz;

      let bodyim = bodyi.mass;
      for (let j = i + 1; j < size; ++j) {
        let bodyj = bodies[j];
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

  energy(): f64 {
    var e = 0.0;
    var bodies = this.bodies;
    var size = bodies.length;

    for (let i = 0; i < size; ++i) {
      let bodyi = bodies[i];

      let ix = bodyi.x;
      let iy = bodyi.y;
      let iz = bodyi.z;

      let vx = bodyi.vx;
      let vy = bodyi.vy;
      let vz = bodyi.vz;

      let bim = bodyi.mass;

      e += 0.5 * bim * (vx * vx + vy * vy + vz * vz);

      for (let j = i + 1; j < size; ++j) {
        let bodyj = bodies[j];
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

var system: NBodySystem;

export function init(): void {
  var bodies = new Array<Body>();
  bodies.push(Sun());
  bodies.push(Jupiter());
  bodies.push(Saturn());
  bodies.push(Uranus());
  bodies.push(Neptune());
  system = new NBodySystem(bodies);
}

export function getBody(index: i32): Body | null {
  var bodies = system.bodies;
  return <u32>index < <u32>bodies.length ? bodies[index] : null;
}

export function step(): f64 {
  system.advance(0.01);
  return system.energy();
}

export function bench(steps: u32): void {
  for (let i: u32 = 0; i < steps; i++) system.advance(0.01);
}
