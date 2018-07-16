import * as THREE from "three";
import {Vector3} from "./vector3";
import {Box} from "../scene/shapes/box";
import {Ray} from "./ray";
import {ByteArrayBase} from "../../pointer/src/byte-array-base";
import {DirectMemory} from "../../pointer/src/direct-memory";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class TMatrix4 {

    static SIZE:number = 16;
    public tm:THREE.Matrix4;

    get x00():number{return this.tm.elements[0]};
    set x00(v:number){this.tm.elements[0] = v};

    get x01():number{return this.tm.elements[4]};
    set x01(v:number){this.tm.elements[4] = v};

    get x02():number{return this.tm.elements[8]};
    set x02(v:number){this.tm.elements[8] = v};

    get x03():number{return this.tm.elements[12]};
    set x03(v:number){this.tm.elements[12] = v};

    get x10():number{return this.tm.elements[1]};
    set x10(v:number){this.tm.elements[1] = v};

    get x11():number{return this.tm.elements[5]};
    set x11(v:number){this.tm.elements[5] = v};

    get x12():number{return this.tm.elements[9]};
    set x12(v:number){this.tm.elements[9] = v};

    get x13():number{return this.tm.elements[13]};
    set x13(v:number){this.tm.elements[13] = v};

    get x20():number{return this.tm.elements[2]};
    set x20(v:number){this.tm.elements[2] = v};

    get x21():number{return this.tm.elements[6]};
    set x21(v:number){this.tm.elements[6] = v};

    get x22():number{return this.tm.elements[10]};
    set x22(v:number){this.tm.elements[10] = v};

    get x23():number{return this.tm.elements[14]};
    set x23(v:number){this.tm.elements[14] = v};

    get x30():number{return this.tm.elements[3]};
    set x30(v:number){this.tm.elements[3] = v};

    get x31():number{return this.tm.elements[7]};
    set x31(v:number){this.tm.elements[7] = v};

    get x32():number{return this.tm.elements[11]};
    set x32(v:number){this.tm.elements[11] = v};

    get x33():number{return this.tm.elements[15]};
    set x33(v:number){this.tm.elements[15] = v};

    constructor(x00:any = 0, x01 = 0, x02 = 0, x03 = 0,
                x10 = 0, x11 = 0, x12 = 0, x13 = 0,
                x20 = 0, x21 = 0, x22 = 0, x23 = 0,
                x30 = 0, x31 = 0, x32 = 0, x33 = 0) {
        if(x00 instanceof THREE.Matrix4){
            this.tm = x00;
        }else{
            this.tm = new THREE.Matrix4();
            this.tm.elements = new Float32Array([
                x00, x10, x20, x30,
                x01, x11, x21, x31,
                x02, x12, x22, x32,
                x03, x13, x23, x33
            ]);
        }
    }

    directRead(memory:Float32Array, offset:number):number {
        var m:TMatrix4 = this;
        m.x00 = memory[offset++];
        m.x01 = memory[offset++];
        m.x02 = memory[offset++];
        m.x03 = memory[offset++];
        m.x10 = memory[offset++];
        m.x11 = memory[offset++];
        m.x12 = memory[offset++];
        m.x13 = memory[offset++];
        m.x20 = memory[offset++];
        m.x21 = memory[offset++];
        m.x22 = memory[offset++];
        m.x23 = memory[offset++];
        m.x30 = memory[offset++];
        m.x31 = memory[offset++];
        m.x32 = memory[offset++];
        m.x33 = memory[offset++];
        return offset;
    }

    directWrite(memory:Float32Array, offset:number):number {
        var m:TMatrix4 = this;
        memory[offset++] = m.x00;
        memory[offset++] = m.x01;
        memory[offset++] = m.x02;
        memory[offset++] = m.x03;
        memory[offset++] = m.x10;
        memory[offset++] = m.x11;
        memory[offset++] = m.x12;
        memory[offset++] = m.x13;
        memory[offset++] = m.x20;
        memory[offset++] = m.x21;
        memory[offset++] = m.x22;
        memory[offset++] = m.x23;
        memory[offset++] = m.x30;
        memory[offset++] = m.x31;
        memory[offset++] = m.x32;
        memory[offset++] = m.x33;
        return offset;
    }

    read(memory:ByteArrayBase|DirectMemory):number {
        this.x00 = memory.readFloat();
        this.x01 = memory.readFloat();
        this.x02 = memory.readFloat();
        this.x03 = memory.readFloat();
        this.x10 = memory.readFloat();
        this.x11 = memory.readFloat();
        this.x12 = memory.readFloat();
        this.x13 = memory.readFloat();
        this.x20 = memory.readFloat();
        this.x21 = memory.readFloat();
        this.x22 = memory.readFloat();
        this.x23 = memory.readFloat();
        this.x30 = memory.readFloat();
        this.x31 = memory.readFloat();
        this.x32 = memory.readFloat();
        this.x33 = memory.readFloat();
        return memory.position;
    }

    write(memory:ByteArrayBase|DirectMemory):number {
        memory.writeFloat(this.x00);
        memory.writeFloat(this.x01);
        memory.writeFloat(this.x02);
        memory.writeFloat(this.x03);
        memory.writeFloat(this.x10);
        memory.writeFloat(this.x11);
        memory.writeFloat(this.x12);
        memory.writeFloat(this.x13);
        memory.writeFloat(this.x20);
        memory.writeFloat(this.x21);
        memory.writeFloat(this.x22);
        memory.writeFloat(this.x23);
        memory.writeFloat(this.x30);
        memory.writeFloat(this.x31);
        memory.writeFloat(this.x32);
        memory.writeFloat(this.x33);
        return memory.position;
    }

    static fromJson(m:TMatrix4):TMatrix4 {
        return new TMatrix4(
            m.x00, m.x01, m.x02, m.x03,
            m.x10, m.x11, m.x12, m.x13,
            m.x20, m.x21, m.x22, m.x23,
            m.x30, m.x31, m.x32, m.x33
        )
    }

    static identity():TMatrix4 {
        return new TMatrix4(
            1, 0, 0, 0,
            0, 1, 0, 0,
            0, 0, 1, 0,
            0, 0, 0, 1)
    }

    static translate(v:Vector3):TMatrix4 {
        return new TMatrix4(
            1, 0, 0, v.x,
            0, 1, 0, v.y,
            0, 0, 1, v.z,
            0, 0, 0, 1)
    }

    static scale(v:Vector3):TMatrix4 {
        return new TMatrix4(
            v.x, 0, 0, 0,
            0, v.y, 0, 0,
            0, 0, v.z, 0,
            0, 0, 0, 1);
    }

    static rotate(v:Vector3, a:number):TMatrix4 {
        v = v.normalize();
        var s = Math.sin(a);
        var c = Math.cos(a);
        var m = 1 - c;
        return new TMatrix4(
            m * v.x * v.x + c, m * v.x * v.y + v.z * s, m * v.z * v.x - v.y * s, 0,
            m * v.x * v.y - v.z * s, m * v.y * v.y + c, m * v.y * v.z + v.x * s, 0,
            m * v.z * v.x + v.y * s, m * v.y * v.z - v.x * s, m * v.z * v.z + c, 0,
            0, 0, 0, 1);
    }

    static frustum(l:number, r:number, b:number, t:number, n:number, f:number):TMatrix4 {
        var t1 = 2 * n;
        var t2 = r - l;
        var t3 = t - b;
        var t4 = f - n;
        return new TMatrix4(
            t1 / t2, 0, (r + l) / t2, 0,
            0, t1 / t3, (t + b) / t3, 0,
            0, 0, (-f - n) / t4, (-t1 * f) / t4,
            0, 0, -1, 0);
    }

    static orthographic(l:number, r:number, b:number, t:number, n:number, f:number):TMatrix4 {
        return new TMatrix4(
            2 / (r - l), 0, 0, -(r + l) / (r - l),
            0, 2 / (t - b), 0, -(t + b) / (t - b),
            0, 0, -2 / (f - n), -(f + n) / (f - n),
            0, 0, 0, 1);
    }

    static perspective(fov:number, aspect:number, near:number, far:number):TMatrix4 {
        var ymax:number = near * Math.tan(fov * Math.PI / 360);
        var xmax:number = ymax * aspect;
        return TMatrix4.frustum(-xmax, xmax, -ymax, ymax, near, far);
    }

    translate(v:Vector3):TMatrix4 {
        return TMatrix4.translate(v).mul(this);
    }

    scale(v:Vector3):TMatrix4 {
        return TMatrix4.scale(v).mul(this);
    }

    rotate(v:Vector3, a:number):TMatrix4 {
        return TMatrix4.rotate(v, a).mul(this);
    }

    frustum(l:number, r:number, b:number, t:number, n:number, f:number):TMatrix4 {
        //return TMatrix4.frustum(l, r, b, t, n, f).mul(this);
        (<THREE.Matrix4>this.tm).makeFrustum(l,r,b,t,n,f);
        return this;
    }

    orthographic(l:number, r:number, b:number, t:number, n:number, f:number):TMatrix4 {
        //return TMatrix4.orthographic(l, r, b, t, n, f).mul(this);
        this.tm.makeOrthographic(l,r,t,b,n,f);
        return this;
    }

    perspective(fov, aspect, near, far:number):TMatrix4 {
        //return TMatrix4.perspective(fov, aspect, near, far).mul(this);
        this.tm.makePerspective(fov,aspect,near, far);
        return this;
    }

    mul(b:TMatrix4):TMatrix4 {
        var a:TMatrix4 = this;
        var m:TMatrix4 = new TMatrix4();
        m.tm = a.tm.multiply(b.tm);
        return m;
    }

    mulPosition(b:Vector3):Vector3 {
        var a:TMatrix4 = this;
        var x:number = a.x00 * b.x + a.x01 * b.y + a.x02 * b.z + a.x03;
        var y:number = a.x10 * b.x + a.x11 * b.y + a.x12 * b.z + a.x13;
        var z:number = a.x20 * b.x + a.x21 * b.y + a.x22 * b.z + a.x23;
        return new Vector3(x, y, z);
    }

    mulDirection(b:Vector3):Vector3 {
        var a:TMatrix4 = this;
        var x:number = a.x00 * b.x + a.x01 * b.y + a.x02 * b.z;
        var y:number = a.x10 * b.x + a.x11 * b.y + a.x12 * b.z;
        var z:number = a.x20 * b.x + a.x21 * b.y + a.x22 * b.z;
        return new Vector3(x, y, z).normalize();
    }

    mulRay(b:Ray):Ray {
        var a:TMatrix4 = this;
        return new Ray(a.mulPosition(b.origin), a.mulDirection(b.direction));
    }

    mulBox(b:Box):Box {
        // http://dev.theomader.com/transform-bounding-boxes/
        var a:TMatrix4 = this;
        var minx = b.min.x;
        var maxx = b.max.x;
        var miny = b.min.y;
        var maxy = b.max.y;
        var minz = b.min.z;
        var maxz = b.max.z;
        var xa = a.x00 * minx + a.x10 * minx + a.x20 * minx + a.x30 * minx;
        var xb = a.x00 * maxx + a.x10 * maxx + a.x20 * maxx + a.x30 * maxx;
        var ya = a.x01 * miny + a.x11 * miny + a.x21 * miny + a.x31 * miny;
        var yb = a.x01 * maxy + a.x11 * maxy + a.x21 * maxy + a.x31 * maxy;
        var za = a.x02 * minz + a.x12 * minz + a.x22 * minz + a.x32 * minz;
        var zb = a.x02 * maxz + a.x12 * maxz + a.x22 * maxz + a.x32 * maxz;
        minx = Math.min(xa, xb);
        maxx = Math.max(xa, xb);
        miny = Math.min(ya, yb);
        maxy = Math.max(ya, yb);
        minz = Math.min(za, zb);
        maxz = Math.max(za, zb);
        var min:Vector3 = new Vector3(minx + a.x03, miny + a.x13, minz + a.x23);
        var max:Vector3 = new Vector3(maxx + a.x03, maxy + a.x13, maxz + a.x23);
        return new Box(min, max);
    }

    transpose():TMatrix4 {
        var a:TMatrix4 = this;
        return new TMatrix4(a.tm.transpose());
    }

    determinant():number {
        var a:TMatrix4 = this;
        return a.tm.determinant();
    }

    inverse():TMatrix4 {
        var a:TMatrix4 = this;
        var m:TMatrix4 = new TMatrix4();

        m.tm.getInverse(a.tm);

        return m;
    }
}