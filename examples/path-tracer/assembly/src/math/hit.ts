import { Shape } from "../shapes/shape";
import { INF } from "./constants";
import { HitInfo } from "./hit-info";
import { Ray } from "./ray";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Hit {
    constructor(public shape: Shape = null, public T: float = 0, public info: HitInfo = null) {}
    ok(): boolean {
        return this.T < INF;
    }
    getInfo(ray: Ray): HitInfo {
        if (this.info) {
            return this.info;
        }
        var shape = this.shape;
        var position = ray.position(this.T);
        var normal = shape.getNormal(position);
        var color = shape.getColor(position);
        var material = shape.getMaterial(position);
        var inside = false;
        if (normal.dot(ray.direction) > 0) {
            normal = normal.mulScalar(-1);
            inside = true;
        }
        ray = new Ray(position, normal);
        this.info = new HitInfo(shape, position, normal, ray, color, material, inside);
        return this.info;
    }
}
export var NoHit: Hit = new Hit(null, INF);
