import { Vector3 } from "./vector3";
import { Box } from "../shapes/box";
import { Ray } from "./ray";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Matrix4 {
    static SIZE: number = 16;

    m: Float32Array;

    constructor(
        public x00 = 0,
        public x01 = 0,
        public x02 = 0,
        public x03 = 0,
        public x10 = 0,
        public x11 = 0,
        public x12 = 0,
        public x13 = 0,
        public x20 = 0,
        public x21 = 0,
        public x22 = 0,
        public x23 = 0,
        public x30 = 0,
        public x31 = 0,
        public x32 = 0,
        public x33 = 0,
    ) {
        //this.m = new Float32Array(16);
    }

    static identity(): Matrix4 {
        return new Matrix4(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
    }

    static translate(v: Vector3): Matrix4 {
        return new Matrix4(1, 0, 0, v.x, 0, 1, 0, v.y, 0, 0, 1, v.z, 0, 0, 0, 1);
    }

    static scale(v: Vector3): Matrix4 {
        return new Matrix4(v.x, 0, 0, 0, 0, v.y, 0, 0, 0, 0, v.z, 0, 0, 0, 0, 1);
    }

    static rotate(v: Vector3, a: number): Matrix4 {
        v = v.normalize();
        var s = Math.sin(a);
        var c = Math.cos(a);
        var m = 1 - c;
        return new Matrix4(
            m * v.x * v.x + c,
            m * v.x * v.y + v.z * s,
            m * v.z * v.x - v.y * s,
            0,
            m * v.x * v.y - v.z * s,
            m * v.y * v.y + c,
            m * v.y * v.z + v.x * s,
            0,
            m * v.z * v.x + v.y * s,
            m * v.y * v.z - v.x * s,
            m * v.z * v.z + c,
            0,
            0,
            0,
            0,
            1,
        );
    }

    static frustum(l: number, r: number, b: number, t: number, n: number, f: number): Matrix4 {
        var t1 = 2 * n;
        var t2 = r - l;
        var t3 = t - b;
        var t4 = f - n;
        return new Matrix4(
            t1 / t2,
            0,
            (r + l) / t2,
            0,
            0,
            t1 / t3,
            (t + b) / t3,
            0,
            0,
            0,
            (-f - n) / t4,
            (-t1 * f) / t4,
            0,
            0,
            -1,
            0,
        );
    }

    static orthographic(l: number, r: number, b: number, t: number, n: number, f: number): Matrix4 {
        return new Matrix4(
            2 / (r - l),
            0,
            0,
            -(r + l) / (r - l),
            0,
            2 / (t - b),
            0,
            -(t + b) / (t - b),
            0,
            0,
            -2 / (f - n),
            -(f + n) / (f - n),
            0,
            0,
            0,
            1,
        );
    }

    static perspective(fov: number, aspect: number, near: number, far: number): Matrix4 {
        var ymax: number = near * Math.tan((fov * Math.PI) / 360);
        var xmax: number = ymax * aspect;
        return Matrix4.frustum(-xmax, xmax, -ymax, ymax, near, far);
    }

    static LookAtMatrix(eye: Vector3, center: Vector3, up: Vector3, fovy: number): Matrix4 {
        up = up.normalize();
        var f: Vector3 = center.sub(eye).normalize();
        var s: Vector3 = f.cross(up);
        var u: Vector3 = s.cross(f);
        var m: Matrix4 = new Matrix4(s.x, u.x, -f.x, eye.x, s.y, u.y, -f.y, eye.y, s.z, u.z, -f.z, eye.z, 0, 0, 0, 1);
        return m.inverse();
    }

    translate(v: Vector3): Matrix4 {
        return Matrix4.translate(v).mul(this);
    }

    scale(v: Vector3): Matrix4 {
        return Matrix4.scale(v).mul(this);
    }

    rotate(v: Vector3, a: number): Matrix4 {
        return Matrix4.rotate(v, a).mul(this);
    }

    frustum(l: number, r: number, b: number, t: number, n: number, f: number): Matrix4 {
        return Matrix4.frustum(l, r, b, t, n, f).mul(this);
    }

    orthographic(l: number, r: number, b: number, t: number, n: number, f: number): Matrix4 {
        return Matrix4.orthographic(l, r, b, t, n, f).mul(this);
    }

    perspective(fov, aspect, near, far: number): Matrix4 {
        return Matrix4.perspective(fov, aspect, near, far).mul(this);
    }

    mul(b: Matrix4): Matrix4 {
        var a: Matrix4 = this;
        var m: Matrix4 = new Matrix4();
        m.x00 = a.x00 * b.x00 + a.x01 * b.x10 + a.x02 * b.x20 + a.x03 * b.x30;
        m.x10 = a.x10 * b.x00 + a.x11 * b.x10 + a.x12 * b.x20 + a.x13 * b.x30;
        m.x20 = a.x20 * b.x00 + a.x21 * b.x10 + a.x22 * b.x20 + a.x23 * b.x30;
        m.x30 = a.x30 * b.x00 + a.x31 * b.x10 + a.x32 * b.x20 + a.x33 * b.x30;
        m.x01 = a.x00 * b.x01 + a.x01 * b.x11 + a.x02 * b.x21 + a.x03 * b.x31;
        m.x11 = a.x10 * b.x01 + a.x11 * b.x11 + a.x12 * b.x21 + a.x13 * b.x31;
        m.x21 = a.x20 * b.x01 + a.x21 * b.x11 + a.x22 * b.x21 + a.x23 * b.x31;
        m.x31 = a.x30 * b.x01 + a.x31 * b.x11 + a.x32 * b.x21 + a.x33 * b.x31;
        m.x02 = a.x00 * b.x02 + a.x01 * b.x12 + a.x02 * b.x22 + a.x03 * b.x32;
        m.x12 = a.x10 * b.x02 + a.x11 * b.x12 + a.x12 * b.x22 + a.x13 * b.x32;
        m.x22 = a.x20 * b.x02 + a.x21 * b.x12 + a.x22 * b.x22 + a.x23 * b.x32;
        m.x32 = a.x30 * b.x02 + a.x31 * b.x12 + a.x32 * b.x22 + a.x33 * b.x32;
        m.x03 = a.x00 * b.x03 + a.x01 * b.x13 + a.x02 * b.x23 + a.x03 * b.x33;
        m.x13 = a.x10 * b.x03 + a.x11 * b.x13 + a.x12 * b.x23 + a.x13 * b.x33;
        m.x23 = a.x20 * b.x03 + a.x21 * b.x13 + a.x22 * b.x23 + a.x23 * b.x33;
        m.x33 = a.x30 * b.x03 + a.x31 * b.x13 + a.x32 * b.x23 + a.x33 * b.x33;
        return m;
    }

    mulPosition(b: Vector3): Vector3 {
        var a: Matrix4 = this;
        var x: number = a.x00 * b.x + a.x01 * b.y + a.x02 * b.z + a.x03;
        var y: number = a.x10 * b.x + a.x11 * b.y + a.x12 * b.z + a.x13;
        var z: number = a.x20 * b.x + a.x21 * b.y + a.x22 * b.z + a.x23;
        return new Vector3(x, y, z);
    }

    mulDirection(b: Vector3): Vector3 {
        var a: Matrix4 = this;
        var x: number = a.x00 * b.x + a.x01 * b.y + a.x02 * b.z;
        var y: number = a.x10 * b.x + a.x11 * b.y + a.x12 * b.z;
        var z: number = a.x20 * b.x + a.x21 * b.y + a.x22 * b.z;
        return new Vector3(x, y, z).normalize();
    }

    mulRay(b: Ray): Ray {
        var a: Matrix4 = this;
        return new Ray(a.mulPosition(b.origin), a.mulDirection(b.direction));
    }

    mulBox(box: Box): Box {
        // http://dev.theomader.com/transform-bounding-boxes/
        var a: Matrix4 = this;
        var r: Vector3 = new Vector3(a.x00, a.x10, a.x20);
        var u: Vector3 = new Vector3(a.x01, a.x11, a.x21);
        var b: Vector3 = new Vector3(a.x02, a.x12, a.x22);
        var t: Vector3 = new Vector3(a.x03, a.x13, a.x23);
        var xa: Vector3 = r.mulScalar(box.min.x);
        var xb: Vector3 = r.mulScalar(box.max.x);
        var ya: Vector3 = u.mulScalar(box.min.y);
        var yb: Vector3 = u.mulScalar(box.max.y);
        var za: Vector3 = b.mulScalar(box.min.z);
        var zb: Vector3 = b.mulScalar(box.max.z);
        xa = xa.min(xb);
        xb = xa.max(xb);
        ya = ya.min(yb);
        yb = ya.max(yb);
        za = za.min(zb);
        zb = za.max(zb);
        var min: Vector3 = xa
            .add(ya)
            .add(za)
            .add(t);
        var max: Vector3 = xb
            .add(yb)
            .add(zb)
            .add(t);
        return new Box(min, max);
    }

    transpose(): Matrix4 {
        var a: Matrix4 = this;
        return new Matrix4(
            a.x00,
            a.x10,
            a.x20,
            a.x30,
            a.x01,
            a.x11,
            a.x21,
            a.x31,
            a.x02,
            a.x12,
            a.x22,
            a.x32,
            a.x03,
            a.x13,
            a.x23,
            a.x33,
        );
    }

    determinant(): number {
        var a: Matrix4 = this;
        return (
            a.x00 * a.x11 * a.x22 * a.x33 -
            a.x00 * a.x11 * a.x23 * a.x32 +
            a.x00 * a.x12 * a.x23 * a.x31 -
            a.x00 * a.x12 * a.x21 * a.x33 +
            a.x00 * a.x13 * a.x21 * a.x32 -
            a.x00 * a.x13 * a.x22 * a.x31 -
            a.x01 * a.x12 * a.x23 * a.x30 +
            a.x01 * a.x12 * a.x20 * a.x33 -
            a.x01 * a.x13 * a.x20 * a.x32 +
            a.x01 * a.x13 * a.x22 * a.x30 -
            a.x01 * a.x10 * a.x22 * a.x33 +
            a.x01 * a.x10 * a.x23 * a.x32 +
            a.x02 * a.x13 * a.x20 * a.x31 -
            a.x02 * a.x13 * a.x21 * a.x30 +
            a.x02 * a.x10 * a.x21 * a.x33 -
            a.x02 * a.x10 * a.x23 * a.x31 +
            a.x02 * a.x11 * a.x23 * a.x30 -
            a.x02 * a.x11 * a.x20 * a.x33 -
            a.x03 * a.x10 * a.x21 * a.x32 +
            a.x03 * a.x10 * a.x22 * a.x31 -
            a.x03 * a.x11 * a.x22 * a.x30 +
            a.x03 * a.x11 * a.x20 * a.x32 -
            a.x03 * a.x12 * a.x20 * a.x31 +
            a.x03 * a.x12 * a.x21 * a.x30
        );
    }

    inverse(): Matrix4 {
        var a: Matrix4 = this;
        var m: Matrix4 = new Matrix4();
        var d: number = a.determinant();
        m.x00 =
            (a.x12 * a.x23 * a.x31 -
                a.x13 * a.x22 * a.x31 +
                a.x13 * a.x21 * a.x32 -
                a.x11 * a.x23 * a.x32 -
                a.x12 * a.x21 * a.x33 +
                a.x11 * a.x22 * a.x33) /
            d;
        m.x01 =
            (a.x03 * a.x22 * a.x31 -
                a.x02 * a.x23 * a.x31 -
                a.x03 * a.x21 * a.x32 +
                a.x01 * a.x23 * a.x32 +
                a.x02 * a.x21 * a.x33 -
                a.x01 * a.x22 * a.x33) /
            d;
        m.x02 =
            (a.x02 * a.x13 * a.x31 -
                a.x03 * a.x12 * a.x31 +
                a.x03 * a.x11 * a.x32 -
                a.x01 * a.x13 * a.x32 -
                a.x02 * a.x11 * a.x33 +
                a.x01 * a.x12 * a.x33) /
            d;
        m.x03 =
            (a.x03 * a.x12 * a.x21 -
                a.x02 * a.x13 * a.x21 -
                a.x03 * a.x11 * a.x22 +
                a.x01 * a.x13 * a.x22 +
                a.x02 * a.x11 * a.x23 -
                a.x01 * a.x12 * a.x23) /
            d;
        m.x10 =
            (a.x13 * a.x22 * a.x30 -
                a.x12 * a.x23 * a.x30 -
                a.x13 * a.x20 * a.x32 +
                a.x10 * a.x23 * a.x32 +
                a.x12 * a.x20 * a.x33 -
                a.x10 * a.x22 * a.x33) /
            d;
        m.x11 =
            (a.x02 * a.x23 * a.x30 -
                a.x03 * a.x22 * a.x30 +
                a.x03 * a.x20 * a.x32 -
                a.x00 * a.x23 * a.x32 -
                a.x02 * a.x20 * a.x33 +
                a.x00 * a.x22 * a.x33) /
            d;
        m.x12 =
            (a.x03 * a.x12 * a.x30 -
                a.x02 * a.x13 * a.x30 -
                a.x03 * a.x10 * a.x32 +
                a.x00 * a.x13 * a.x32 +
                a.x02 * a.x10 * a.x33 -
                a.x00 * a.x12 * a.x33) /
            d;
        m.x13 =
            (a.x02 * a.x13 * a.x20 -
                a.x03 * a.x12 * a.x20 +
                a.x03 * a.x10 * a.x22 -
                a.x00 * a.x13 * a.x22 -
                a.x02 * a.x10 * a.x23 +
                a.x00 * a.x12 * a.x23) /
            d;
        m.x20 =
            (a.x11 * a.x23 * a.x30 -
                a.x13 * a.x21 * a.x30 +
                a.x13 * a.x20 * a.x31 -
                a.x10 * a.x23 * a.x31 -
                a.x11 * a.x20 * a.x33 +
                a.x10 * a.x21 * a.x33) /
            d;
        m.x21 =
            (a.x03 * a.x21 * a.x30 -
                a.x01 * a.x23 * a.x30 -
                a.x03 * a.x20 * a.x31 +
                a.x00 * a.x23 * a.x31 +
                a.x01 * a.x20 * a.x33 -
                a.x00 * a.x21 * a.x33) /
            d;
        m.x22 =
            (a.x01 * a.x13 * a.x30 -
                a.x03 * a.x11 * a.x30 +
                a.x03 * a.x10 * a.x31 -
                a.x00 * a.x13 * a.x31 -
                a.x01 * a.x10 * a.x33 +
                a.x00 * a.x11 * a.x33) /
            d;
        m.x23 =
            (a.x03 * a.x11 * a.x20 -
                a.x01 * a.x13 * a.x20 -
                a.x03 * a.x10 * a.x21 +
                a.x00 * a.x13 * a.x21 +
                a.x01 * a.x10 * a.x23 -
                a.x00 * a.x11 * a.x23) /
            d;
        m.x30 =
            (a.x12 * a.x21 * a.x30 -
                a.x11 * a.x22 * a.x30 -
                a.x12 * a.x20 * a.x31 +
                a.x10 * a.x22 * a.x31 +
                a.x11 * a.x20 * a.x32 -
                a.x10 * a.x21 * a.x32) /
            d;
        m.x31 =
            (a.x01 * a.x22 * a.x30 -
                a.x02 * a.x21 * a.x30 +
                a.x02 * a.x20 * a.x31 -
                a.x00 * a.x22 * a.x31 -
                a.x01 * a.x20 * a.x32 +
                a.x00 * a.x21 * a.x32) /
            d;
        m.x32 =
            (a.x02 * a.x11 * a.x30 -
                a.x01 * a.x12 * a.x30 -
                a.x02 * a.x10 * a.x31 +
                a.x00 * a.x12 * a.x31 +
                a.x01 * a.x10 * a.x32 -
                a.x00 * a.x11 * a.x32) /
            d;
        m.x33 =
            (a.x01 * a.x12 * a.x20 -
                a.x02 * a.x11 * a.x20 +
                a.x02 * a.x10 * a.x21 -
                a.x00 * a.x12 * a.x21 -
                a.x01 * a.x10 * a.x22 +
                a.x00 * a.x11 * a.x22) /
            d;
        return m;
    }
}
