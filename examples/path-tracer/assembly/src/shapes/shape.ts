import { Box } from "./box";
import { Hit } from "../math/hit";
import { Color } from "../math/color";
import { Material } from "../materials/material";
import { Vector3 } from "../math/vector3";
import { Ray } from "../math/ray";
import { Cube } from "./cube";
import { Sphere } from "./sphere";
import { Mesh } from "./mesh";
import { Triangle } from "./triangle";
import { TransformedShape } from "./transformed-shape";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export enum ShapeType {
    TRIANGLE,
    CUBE,
    SPHERE,
    MESH,
    TRANSFORMED_SHAPE,
}
export interface Shape {
    index: number;
    /*id:number;*/
    type: ShapeType;
    bbox: Box;
    compile(): void;
    intersect(r: Ray): Hit;
    getColor(p: Vector3): Color;
    getMaterial(p: Vector3): Material;
    getNormal(p: Vector3): Vector3;
    getRandomPoint(): Vector3;
}
