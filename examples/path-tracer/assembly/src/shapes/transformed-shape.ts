import { Box } from "./box";
import { Hit } from "../math/hit";
import { Ray } from "../math/ray";
import { Vector3 } from "../math/vector3";
import { Material } from "../materials/material";
import { Color } from "../math/color";
import { Shape, ShapeType } from "./shape";
import { Matrix4 } from "../math/matrix4";
import { HitInfo } from "../math/hit-info";
/**
 * Created by Nidin Vinayakan on 11-01-2016.
 */
export class TransformedShape implements Shape {
    type: ShapeType = ShapeType.TRANSFORMED_SHAPE;
    index: number;

    constructor(
        public shape: Shape = null,
        public matrix: Matrix4 = new Matrix4(),
        public inverse: Matrix4 = new Matrix4(),
    ) {}

    static newTransformedShape(s: Shape, m: Matrix4): Shape {
        return new TransformedShape(s, m, m.inverse());
    }

    get bbox(): Box {
        return this.matrix.mulBox(this.shape.bbox);
    }

    compile(): void {
        this.shape.compile();
    }

    intersect(r: Ray): Hit {
        var shapeRay: Ray = this.inverse.mulRay(r);
        var hit: Hit = this.shape.intersect(shapeRay);
        if (!hit.ok()) {
            return hit;
        }
        var shape = hit.shape;
        var shapePosition = shapeRay.position(hit.T);
        var shapeNormal = shape.getNormal(shapePosition);
        var position = this.matrix.mulPosition(shapePosition);
        var normal = this.inverse.transpose().mulDirection(shapeNormal);
        var color = shape.getColor(shapePosition);
        var material = shape.getMaterial(shapePosition);
        var inside = false;
        if (shapeNormal.dot(shapeRay.direction) > 0) {
            normal = normal.mulScalar(-1);
            inside = true;
        }
        var ray = new Ray(position, normal);
        var info = new HitInfo(shape, position, normal, ray, color, material, inside);
        hit.T = position.sub(r.origin).length();
        hit.info = info;
        return hit;
    }

    getColor(p: Vector3): Color {
        return this.shape.getColor(this.inverse.mulPosition(p));
    }

    getMaterial(p: Vector3): Material {
        return this.shape.getMaterial(this.inverse.mulPosition(p));
    }

    getNormal(p: Vector3): Vector3 {
        // return null;
        return this.matrix.mulDirection(this.shape.getNormal(this.inverse.mulPosition(p)));
    }

    getRandomPoint(): Vector3 {
        return this.shape.getRandomPoint();
        //return this.matrix.mulPosition(this.shape.getRandomPoint());
    }
}
