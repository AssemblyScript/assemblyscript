import {Vector3} from "../../math/vector3";
import {Material} from "../materials/material";
import {Box} from "./box";
import {Shape} from "./shape";
import {Ray} from "../../math/ray";
import {Hit} from "../../math/hit";
import {NoHit} from "../../math/hit";
import {Color} from "../../math/color";
import {ShapeType} from "./shape";
import {MaterialUtils} from "../materials/material-utils";
import {ByteArrayBase} from "../../../pointer/src/byte-array-base";
import {DirectMemory} from "../../../pointer/src/direct-memory";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Sphere implements Shape {

    type:ShapeType = ShapeType.SPHERE;
    memorySize:number = Vector3.SIZE + 3;// center, radius, material index, type
    index:number;

    constructor(public center:Vector3 = new Vector3(),
                public radius:number=1,
                public material:Material=null,
                public bbox:Box=null) {
        if(!bbox && center){
            var min = new Vector3(center.x - radius, center.y - radius, center.z - radius);
            var max = new Vector3(center.x + radius, center.y + radius, center.z + radius);
            this.bbox = new Box(min, max);
        }
    }

    directRead(memory:Float32Array, offset:number):number {
        offset = this.center.directRead(memory, offset);
        this.radius = memory[offset++];

        var min = new Vector3(this.center.x - this.radius, this.center.y - this.radius, this.center.z - this.radius);
        var max = new Vector3(this.center.x + this.radius, this.center.y + this.radius, this.center.z + this.radius);
        this.bbox = new Box(min, max);

        var materialIndex:number = memory[offset++];
        var material:Material = Material.map[materialIndex];
        if(material){
            this.material = material;
        }
        return offset;
    }

    directWrite(memory:Float32Array, offset:number):number {
        memory[offset++] = this.type;
        offset = this.center.directWrite(memory, offset);
        memory[offset++] = this.radius;
        memory[offset++] = this.material.index;
        return offset;
    }

    read(memory:ByteArrayBase|DirectMemory):number{
        this.center.read(memory);
        this.radius = memory.readFloat();

        var min = new Vector3(this.center.x - this.radius, this.center.y - this.radius, this.center.z - this.radius);
        var max = new Vector3(this.center.x + this.radius, this.center.y + this.radius, this.center.z + this.radius);
        this.bbox = new Box(min, max);

        var materialIndex:number = memory.readInt();
        var material:Material = Material.map[materialIndex];
        if(material){
            this.material = material;
        }
        return memory.position;
    }

    write(memory:ByteArrayBase|DirectMemory):number{
        memory.writeByte(this.type);
        this.center.write(memory);
        memory.writeFloat(this.radius);
        memory.writeInt(this.material.index);
        return memory.position;
    }

    static fromJson(sphere:Sphere):Sphere {
        return new Sphere(
            Vector3.fromJson(sphere.center),
            sphere.radius,
            MaterialUtils.fromJson(sphere.material),
            Box.fromJson(sphere.bbox)
        );
    }

    static newSphere(center:Vector3, radius:number, material:Material):Shape {
        var min = new Vector3(center.x - radius, center.y - radius, center.z - radius);
        var max = new Vector3(center.x + radius, center.y + radius, center.z + radius);
        var box = new Box(min, max);
        return new Sphere(center, radius, material, box);
    }

    compile() {
    }


    intersect(r:Ray):Hit {
        var to = r.origin.sub(this.center);
        var b = to.dot(r.direction);
        var c = to.dot(to) - this.radius * this.radius;
        var d = b * b - c;
        if (d > 0) {
            d = Math.sqrt(d);
            var t1 = -b - d;
            if (t1 > 0) {
                return new Hit(this, t1);
            }
            // t2 = -b + d
            // if t2 > 0 {
            // 	return Hit{this, t2}
            // }
        }
        return NoHit;
    }

    getColor(p:Vector3):Color {
        if (this.material.texture == null) {
            return this.material.color;
        }
        var u:number = Math.atan2(p.z, p.x);
        var v:number = Math.atan2(p.y, new Vector3(p.x, 0, p.z).length());
        u = (u + Math.PI) / (2 * Math.PI);
        v = 1 - (v + Math.PI / 2) / Math.PI;
        return this.material.texture.sample(u, v);
    }

    getMaterial(p:Vector3):Material {
        return this.material;
    }

    getNormal(p:Vector3):Vector3 {
        return p.sub(this.center).normalize()
    }

    getRandomPoint():Vector3 {
        while (true) {
            var x:number = Math.random() * 2 - 1;
            var y:number = Math.random() * 2 - 1;
            var z:number = Math.random() * 2 - 1;
            var v:Vector3 = new Vector3(x, y, z);
            if (v.length() <= 1) {
                return v.mulScalar(this.radius).add(this.center);
            }
        }
    }
}
