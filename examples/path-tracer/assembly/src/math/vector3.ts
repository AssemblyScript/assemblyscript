/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */

export class Vector3 {
    constructor(public x: number = 0, public y: number = 0, public z: number = 0) {}

    length(): float {
        return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
    }

    dot(b: Vector3): float {
        return this.x * b.x + this.y * b.y + this.z * b.z;
    }

    cross(b: Vector3): Vector3 {
        var x = this.y * b.z - this.z * b.y;
        var y = this.z * b.x - this.x * b.z;
        var z = this.x * b.y - this.y * b.x;
        return new Vector3(x, y, z);
    }

    normalize(): Vector3 {
        var d = this.length();
        return new Vector3(this.x / d, this.y / d, this.z / d);
    }

    add(b: Vector3): Vector3 {
        return new Vector3(this.x + b.x, this.y + b.y, this.z + b.z);
    }

    sub(b: Vector3): Vector3 {
        return new Vector3(this.x - b.x, this.y - b.y, this.z - b.z);
    }

    mul(b: Vector3): Vector3 {
        return new Vector3(this.x * b.x, this.y * b.y, this.z * b.z);
    }

    div(b: Vector3): Vector3 {
        return new Vector3(this.x / b.x, this.y / b.y, this.z / b.z);
    }

    mulScalar(b: float): Vector3 {
        return new Vector3(this.x * b, this.y * b, this.z * b);
    }

    divScalar(b: float): Vector3 {
        return new Vector3(this.x / b, this.y / b, this.z / b);
    }

    min(b: Vector3): Vector3 {
        return new Vector3(Math.min(this.x, b.x), Math.min(this.y, b.y), Math.min(this.z, b.z));
    }

    max(b: Vector3): Vector3 {
        return new Vector3(Math.max(this.x, b.x), Math.max(this.y, b.y), Math.max(this.z, b.z));
    }

    minAxis(): Vector3 {
        var x: float = Math.abs(this.x);
        var y: float = Math.abs(this.y);
        var z: float = Math.abs(this.z);
        if (x <= y && x <= z) {
            return new Vector3(1, 0, 0);
        } else if (y <= x && y <= z) {
            return new Vector3(0, 1, 0);
        }
        return new Vector3(0, 0, 1);
    }

    minComponent(): float {
        return Math.min(Math.min(this.x, this.y), this.z);
    }

    reflect(i: Vector3): Vector3 {
        return i.sub(this.mulScalar(2 * this.dot(i)));
    }

    refract(i: Vector3, n1: float, n2: float): Vector3 {
        var nr = n1 / n2;
        var cosI = -this.dot(i);
        var sinT2 = nr * nr * (1 - cosI * cosI);
        if (sinT2 > 1) {
            return new Vector3();
        }
        var cosT = Math.sqrt(1 - sinT2);
        return i.mulScalar(nr).add(this.mulScalar(nr * cosI - cosT));
    }

    reflectance(i: Vector3, n1: float, n2: float): float {
        var nr = n1 / n2;
        var cosI = -this.dot(i);
        var sinT2 = nr * nr * (1 - cosI * cosI);
        if (sinT2 > 1) {
            return 1;
        }
        var cosT = Math.sqrt(1 - sinT2);
        var rOrth = (n1 * cosI - n2 * cosT) / (n1 * cosI + n2 * cosT);
        var rPar = (n2 * cosI - n1 * cosT) / (n2 * cosI + n1 * cosT);
        return (rOrth * rOrth + rPar * rPar) / 2;
    }

    toString(): string {
        return "(" + this.x + "," + this.y + "," + this.z + ")";
    }

    equals(v: Vector3): Boolean {
        return this.x == v.x && this.y == v.y && this.z == v.z;
    }

    isZero(): Boolean {
        return this.x == 0 && this.y == 0 && this.z == 0;
    }

    isNullVector(): boolean {
        return (
            this.x == MIN_FLOAT32_VALUE &&
            this.y == MIN_FLOAT32_VALUE &&
            this.z == MIN_FLOAT32_VALUE
        );
    }
}
