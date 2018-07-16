import { Vector3 } from "../math/vector3";
import { Ray } from "../math/ray";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Camera {
    constructor(
        public p: Vector3 = new Vector3(),
        public u: Vector3 = new Vector3(),
        public v: Vector3 = new Vector3(),
        public w: Vector3 = new Vector3(),
        public m: float = 0,
        public focalDistance: float = 0,
        public apertureRadius: float = 0,
    ) {}

    static lookAt(eye: Vector3, look: Vector3, up: Vector3, fov: number): Camera {
        var c: Camera = new Camera();
        c.p = eye;
        c.w = look.sub(eye).normalize();
        c.u = up.cross(c.w).normalize();
        c.v = c.w.cross(c.u).normalize();
        c.m = 1 / Math.tan((fov * Math.PI) / 360);
        return c;
    }

    updateFromArray(eye, look, up, fovy: number, focus?: number, aperture?: number) {
        eye = new Vector3(eye[0], eye[1], eye[2]);
        look = new Vector3(look[0], look[1], look[2]);
        up = new Vector3(up[0], up[1], up[2]);

        var c: Camera = this;
        c.p = eye;
        c.w = look.sub(eye).normalize();
        c.u = up.cross(c.w).normalize();
        c.v = c.w.cross(c.u).normalize();
        c.m = 1 / Math.tan((fovy * Math.PI) / 360);

        c.focalDistance = focus < 0 ? null : focus;
        c.apertureRadius = aperture < 0 ? null : aperture;
    }

    updateFromJson(prop) {
        this.p.setFromJson(prop.p);
        this.w.setFromJson(prop.w);
        this.u.setFromJson(prop.u);
        this.v.setFromJson(prop.v);
        this.m = prop.m;
        if (prop.focalDistance && prop.apertureRadius) {
            this.focalDistance = prop.focalDistance;
            this.apertureRadius = prop.apertureRadius;
        }
    }

    setFocus(focalPoint: Vector3, apertureRadius: number) {
        this.focalDistance = focalPoint.sub(this.p).length();
        this.apertureRadius = apertureRadius;
    }

    static debug: boolean = true;

    castRay(x: number, y: number, w: number, h: number, u: number, v: number): Ray {
        var c: Camera = this;
        var aspect: number = w / h;
        var px: number = ((x + u - 0.5) / (w - 1)) * 2 - 1;
        var py: number = ((y + v - 0.5) / (h - 1)) * 2 - 1;
        var d: Vector3 = new Vector3();
        d = d.add(c.u.mulScalar(-px * aspect));
        d = d.add(c.v.mulScalar(-py));
        d = d.add(c.w.mulScalar(c.m));
        d = d.normalize();
        var p = c.p;
        if (c.apertureRadius > 0) {
            var focalPoint = c.p.add(d.mulScalar(c.focalDistance));
            var angle = Math.random() * 2 * Math.PI;
            var radius = Math.random() * c.apertureRadius;
            p = p.add(c.u.mulScalar(Math.cos(angle) * radius));
            p = p.add(c.v.mulScalar(Math.sin(angle) * radius));
            d = focalPoint.sub(p).normalize();
        }

        return new Ray(p, d);
    }

    toJSON(): {
        p: Vector3;
        w: Vector3;
        u: Vector3;
        v: Vector3;
        m: number;
        focalDistance: number;
        apertureRadius: number;
    } {
        return {
            p: this.p,
            w: this.w,
            u: this.u,
            v: this.v,
            m: this.m,
            focalDistance: this.focalDistance,
            apertureRadius: this.apertureRadius,
        };
    }
}
