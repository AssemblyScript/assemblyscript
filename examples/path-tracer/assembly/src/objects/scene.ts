import {Color} from "../math/color";
import {Shape, ShapeType} from "./shapes/shape";
import {Tree} from "./tree/tree";
import {append} from "../utils/MapUtils";
import {Vector3} from "../math/vector3";
import {Ray} from "../math/ray";
import {Hit} from "../math/hit";
import {Cube} from "./shapes/cube";
import {Sphere} from "./shapes/sphere";
import {Mesh} from "./shapes/mesh";
import {TransformedShape} from "./shapes/transformed-shape";
import {Triangle} from "./shapes/triangle";
import {SharedTree} from "./tree/shared-tree";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Scene {

    get estimatedMemory(): number {
        var size: number = Color.SIZE + 1;// 1 for shape length;
        this.shapes.forEach(function (shape: Shape) {
            size += shape.memorySize;
        });
        return size;
    }

    shared: boolean = false;

    constructor(public color: Color = new Color(),
                public shapes: Shape[] = [],
                public lights: Shape[] = [],
                public tree: Tree | SharedTree = null,
                public rays: number = 0) {

    }

    static fromJson(scene: Scene): Scene {
        var _scene: Scene = new Scene(
            Color.fromJson(scene.color)
        );

        scene.shapes.forEach(function (shape: Shape) {
            switch (shape.type) {
                case ShapeType.CUBE:
                    _scene.add(Cube.fromJson(<Cube>shape));
                    break;
                case ShapeType.SPHERE:
                    _scene.add(Sphere.fromJson(<Sphere>shape));
                    break;
                case ShapeType.MESH:
                    _scene.add(Mesh.fromJson(<Mesh>shape));
                    break;
                case ShapeType.TRANSFORMED_SHAPE:
                    _scene.add(TransformedShape.fromJson(<TransformedShape>shape));
                    break;
                case ShapeType.TRIANGLE:
                    _scene.add(<Triangle>Triangle.fromJson(<Triangle>shape));
                    break;
            }
        });

        return _scene;
    }

    compile(): Scene {
        this.shapes.forEach(function (shape: Shape) {
            shape.compile();
        });
        if (this.tree == null) {
            this.tree = Tree.newTree(this.shapes);
        }
        return this;
    }

    add(shape: Shape) {
        this.shapes = append(this.shapes, shape);
        shape.index = this.shapes.length - 1;
        var mat = shape.getMaterial(new Vector3());
        if (mat && mat.emittance > 0) {
            this.lights = append(this.lights, shape)
        }
    }

    rayCount(): number {
        return this.rays;
    }

    intersect(r: Ray): Hit {
        //Atomics.add(this.rays, 1);
        this.rays++;
        return this.tree.intersect(r);
    }

    shadow(r: Ray, light: Shape, max: number): boolean {
        var hit = this.intersect(r);
        return hit.shape != light && hit.T < max;
    }

    directLight(n: Ray): Color {
        if (this.lights.length == 0) {
            return new Color();
        }
        var color = new Color();
        var self = this;

        var i: number = 0;
        var light;

        for (; i < this.lights.length; i++) {
            light = this.lights[i];
            var p = light.getRandomPoint();
            var d = p.sub(n.origin);
            var lr = new Ray(n.origin, d.normalize());
            var diffuse = lr.direction.dot(n.direction);
            if (diffuse <= 0) {
                continue
            }
            var distance = d.length();
            if (self.shadow(lr, light, distance)) {
                continue;
            }
            var material = light.getMaterial(p);
            var emittance = material.emittance;
            var attenuation = material.attenuation.compute(distance);
            color = color.add(light.getColor(p).mulScalar(diffuse * emittance * attenuation));
        }

        /*this.lights.forEach(function (light:Shape) {
         var p = light.getRandomPoint();
         var d = p.sub(n.origin);
         var lr = new Ray(n.origin, d.normalize());
         var diffuse = lr.direction.dot(n.direction);
         if (diffuse <= 0) {
         return
         }
         var distance = d.length();
         if (self.shadow(lr, light, distance)) {
         return;
         }
         var material = light.getMaterial(p);
         var emittance = material.emittance;
         var attenuation = material.attenuation.compute(distance);
         color = color.add(light.getColor(p).mulScalar(diffuse * emittance * attenuation));
         });*/

        return color.divScalar(this.lights.length);
    }

    static interval = 0;

    sample(r: Ray, emission: boolean, samples: number, depth: number): Color {
        if (depth < 0) {
            return new Color(0, 0, 0);
        }
        var hit = this.intersect(r);
        if (!hit.ok()) {
            return this.color;
            //return new Color(1,0,0);
        }
        var info = hit.getInfo(r);
        var result: Color = new Color();
        if (emission) {
            var emittance = info.material.emittance;
            if (emittance > 0) {
                var attenuation = info.material.attenuation.compute(hit.T);
                result = result.add(info.color.mulScalar(emittance * attenuation * samples));
            }
        }
        var n: number = Math.round(Math.sqrt(samples));
        for (var u = 0; u < n; u++) {
            for (var v = 0; v < n; v++) {
                var p = Math.random();
                var fu = (u + Math.random()) / n;
                var fv = (v + Math.random()) / n;
                var bounce = r.bounce(info, p, fu, fv);
                var indirect = this.sample(bounce.ray, bounce.reflected, 1, depth - 1);
                if (bounce.reflected) {
                    var tinted = indirect.mix(info.color.mul(indirect), info.material.tint);
                    result = result.add(tinted);
                } else {
                    var direct = this.directLight(info.ray);
                    result = result.add(info.color.mul(direct.add(indirect)));
                }
            }
        }

        /*if(Scene.interval % 10 == 0){
         console.log(result);
         Scene.interval++;
         }*/

        return result.divScalar(n * n);
    }
}
