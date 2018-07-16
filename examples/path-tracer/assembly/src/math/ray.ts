import {Vector3} from "./vector3";
import {EPS} from "./constants";
import {HitInfo} from "./hit-info";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Ray {

    public data:Float32Array;

    constructor(public origin:Vector3 = new Vector3(), public direction:Vector3 = new Vector3()) {
        this.data = new Float32Array([
            origin.x, origin.y, origin.z,
            direction.x, direction.y, direction.z
        ])
    }

    position(t:number):Vector3 {
        return this.origin.add(this.direction.mulScalar(t));
    }

    reflect(i:Ray):Ray {
        return new Ray(this.origin, this.direction.reflect(i.direction));
    }

    Refract(i:Ray, n1:number, n2:number):Ray {
        return new Ray(this.origin, this.direction.refract(i.direction, n1, n2));
    }

    reflectance(i:Ray, n1:number, n2:number):number {
        return this.direction.reflectance(i.direction, n1, n2);
    }

    weightedBounce(u, v:number):Ray {
        var m1 = Math.sqrt(u);
        var m2 = Math.sqrt(1 - u);
        var a = v * 2 * Math.PI;
        var q = new Vector3(u - 0.5, v - 0.5, u + v - 1);
        var s = this.direction.cross(q.normalize());
        var t = this.direction.cross(s);
        var d = new Vector3();
        d = d.add(s.mulScalar(m1 * Math.cos(a)));
        d = d.add(t.mulScalar(m1 * Math.sin(a)));
        d = d.add(this.direction.mulScalar(m2));
        return new Ray(this.origin, d);
    }

    coneBounce(theta, u, v:number):Ray {
        if (theta < EPS) {
            return this;
        }
        theta = theta * (1 - (2 * Math.acos(u) / Math.PI));
        var m1 = Math.sin(theta);
        var m2 = Math.cos(theta);
        var a = v * 2 * Math.PI;
        var s = this.direction.cross(this.direction.minAxis());
        var t = this.direction.cross(s);
        var d = new Vector3();
        d = d.add(s.mulScalar(m1 * Math.cos(a)));
        d = d.add(t.mulScalar(m1 * Math.sin(a)));
        d = d.add(this.direction.mulScalar(m2));
        return new Ray(this.origin, d);
    }

    bounce(info:HitInfo, p:number, u:number, v:number):{ray:Ray,reflected:boolean} {
        var n:Ray = info.ray;
        var n1:number = 1.0;
        var n2:number = info.material.ior;

        if (info.inside) {
            var _n1 = n1;
            n1 = n2;
            n2 = _n1;
        }
        if (p < n.reflectance(this, n1, n2)) {
            var reflected:Ray = n.reflect(this);
            var ray:Ray = reflected.coneBounce(info.material.gloss, u, v);
            return {ray: ray, reflected: true};
        } else if (info.material.transparent) {
            var refracted = n.Refract(this, n1, n2);
            var ray = refracted.coneBounce(info.material.gloss, u, v);
            return {ray: ray, reflected: true};
        } else {
            var ray:Ray = n.weightedBounce(u, v);
            return {ray: ray, reflected: false};
        }
    }

    toString():string {
        return "Ray:" + this.origin.toString() + " -> " + this.direction.toString();
    }
}
