import * as THREE from "three";
import {GIRenderBase} from "../render/GIRenderBase";
import {Color} from "../../../render-core/src/engine/math/color";
import {Camera} from "../../../render-core/src/engine/scene/camera";
import {SharedScene} from "../../../render-core/src/engine/scene/shared-scene";
import {Cube} from "../../../render-core/src/engine/scene/shapes/cube";
import {Vector3} from "../../../render-core/src/engine/math/vector3";
import {Sphere} from "../../../render-core/src/engine/scene/shapes/sphere";
import {LightMaterial} from "../../../render-core/src/engine/scene/materials/light-material";
import {Attenuation, LinearAttenuation} from "../../../render-core/src/engine/scene/materials/attenuation";
import {Shape} from "../../../render-core/src/engine/scene/shapes/shape";
import {ThreeObjects} from "../objects/ThreeObjects";
import {Mesh} from "../../../render-core/src/engine/scene/shapes/mesh";
import {Triangle} from "../../../render-core/src/engine/scene/shapes/triangle";
import {Material} from "../../../render-core/src/engine/scene/materials/material";
import {TransformedShape} from "../../../render-core/src/engine/scene/shapes/transformed-shape";
import {Matrix4} from "../../../render-core/src/engine/math/matrix4";
import {Texture} from "../../../render-core/src/engine/scene/materials/texture";

/**
 * Created by Nidin Vinayakan on 27-02-2016.
 */

export class GIJSView extends GIRenderBase {

    constructor(public width: number, public height: number, public container?: HTMLElement) {
        super(width, height, container);

        this.scene = new SharedScene(Color.hexColor(0x262626));

        //default ground
        //this.scene.add(Cube.newCube(new Vector3(-100, -1, -100), new Vector3(100, 0, 100), new DiffuseMaterial(new Color(1, 1, 1))));
        //lights
        //this.scene.add(Sphere.newSphere(new Vector3(0, 50, 0), 1, new LightMaterial(Color.hexColor(0xffeedd), 1, NoAttenuation)));
        //this.scene.add(Sphere.newSphere(new Vector3(0, 50, 0), 1, new LightMaterial(Color.hexColor(0xffeedd), 1, NoAttenuation)));
        //this.scene.add(Sphere.newSphere(new Vector3(0, 600, 0), 200, new LightMaterial(Color.hexColor(0xffeedd), 10, NoAttenuation)));

        this.camera = Camera.lookAt(new Vector3(0, 0, 0), new Vector3(0, 0, 0), new Vector3(0, 1, 0), 45);

        this.cameraSamples = -1;
        this.hitSamples = 1;
        this.bounces = 4;
        this.iterations = 1000000;
        this.blockIterations = 1;
    }

    setThreeJSScene(scene, onInit?: Function) {
        this.loadChildren(scene);
        this.render(onInit);
    }

    private loadChildren(parent) {
        var child;
        for (var i: number = 0; i < parent.children.length; i++) {
            child = parent.children[i];

            var obj: Shape = this.buildSceneObject(child);
            if (obj) {
                this.scene.add(obj);
            }
            if (obj) {
                if (!(obj.getMaterial(new Vector3()) instanceof LightMaterial) && child.children.length > 0) {
                    this.loadChildren(child);
                }
            } else {
                if (child.children.length > 0) {
                    this.loadChildren(child);
                }
            }
        }
    }

    identityMatrix = new THREE.Matrix4().identity();

    private buildSceneObject(src): Shape {

        switch (src.type) {
            case ThreeObjects.Mesh:
                var material = GIJSView.getMaterial(src.material);
                var shape: Shape = this.buildGeometry(src.geometry, material, src.smooth);

                var matrixWorld = src.matrixWorld;

                if (matrixWorld.equals(this.identityMatrix)) {
                    return shape;
                } else {
                    var mat: Matrix4 = Matrix4.fromTHREEJS(matrixWorld.elements);
                    return TransformedShape.newTransformedShape(shape, mat);
                }

            case ThreeObjects.PointLight:
                return this.getLight(src);

        }

        return null;
    }

    private buildGeometry(geometry: THREE.BufferGeometry | any, material: Material, smooth: boolean = false): Shape {

        if (geometry["_bufferGeometry"]) {
            geometry = geometry["_bufferGeometry"];
        }

        var triangles: Triangle[] = [];

        if (!geometry.attributes) {

            var vertices = geometry.vertices;
            var faces = geometry.faces;
            if (vertices && faces) {
                for (var i = 0; i < faces.length; i++) {
                    var face = faces[i];

                    var triangle = new Triangle();
                    triangle.material = material;
                    triangle.v1 = new Vector3(vertices[face.a].x, vertices[face.a].y, vertices[face.a].z);
                    triangle.v2 = new Vector3(vertices[face.b].x, vertices[face.b].y, vertices[face.b].z);
                    triangle.v3 = new Vector3(vertices[face.c].x, vertices[face.c].y, vertices[face.c].z);
                    triangle.n1 = new Vector3();
                    triangle.n2 = new Vector3();
                    triangle.n3 = new Vector3();
                    triangle.updateBox();
                    triangle.fixNormals();
                    triangles.push(triangle);
                }
            } else {
                return null;
            }

        } else {

            var positions: Float32Array = geometry.attributes["position"].array;
            if (geometry.attributes["uv"]) {
                var uv: Float32Array = geometry.attributes["uv"].array;
            }

            var normals: Float32Array;
            if (geometry.attributes["normal"]) {
                normals = geometry.attributes["normal"].array;
            } else {
                normals = this.computeNormals(positions);
            }
            var triCount: number = 0;
            var indexAttribute = geometry.getIndex();

            if (indexAttribute) {

                var indices = indexAttribute.array;
                var uvIndex: number = 0;
                for (var i = 0; i < indices.length; i = i + 3) {

                    triCount++;

                    var a;
                    var b;
                    var c;

                    a = indices[i];
                    b = indices[i + 1];
                    c = indices[i + 2];

                    if (triCount % 2 !== 0) {
                        a = indices[i];
                        b = indices[i + 1];
                        c = indices[i + 2];
                    } else {
                        c = indices[i];
                        b = indices[i + 1];
                        a = indices[i + 2];
                    }

                    //[....,ax,ay,az, bx,by,bz, cx,xy,xz,....]
                    var ax = a * 3;
                    var ay = (a * 3) + 1;
                    var az = (a * 3) + 2;

                    var bx = b * 3;
                    var by = (b * 3) + 1;
                    var bz = (b * 3) + 2;

                    var cx = c * 3;
                    var cy = (c * 3) + 1;
                    var cz = (c * 3) + 2;

                    var au = a * 2;
                    var av = (a * 2) + 1;

                    var bu = b * 2;
                    var bv = (b * 2) + 1;

                    var cu = c * 2;
                    var cv = (c * 2) + 1;

                    var triangle = new Triangle();
                    triangle.material = material;
                    triangle.v1 = new Vector3(positions[ax], positions[ay], positions[az]);
                    triangle.v2 = new Vector3(positions[bx], positions[by], positions[bz]);
                    triangle.v3 = new Vector3(positions[cx], positions[cy], positions[cz]);

                    triangle.n1 = new Vector3(normals[ax], normals[ay], normals[az]);
                    triangle.n2 = new Vector3(normals[bx], normals[by], normals[bz]);
                    triangle.n3 = new Vector3(normals[cx], normals[cy], normals[cz]);

                    if (uv) {
                        triangle.t1 = new Vector3(uv[au], uv[av], 0);
                        triangle.t2 = new Vector3(uv[bu], uv[bv], 0);
                        triangle.t3 = new Vector3(uv[cu], uv[cv], 0);
                    }

                    triangle.fixNormals();
                    triangle.updateBox();
                    triangles.push(triangle);
                    uvIndex += 2;
                }

            } else {
                uvIndex = 0;
                for (var i = 0; i < positions.length; i = i + 9) {
                    var triangle = new Triangle();
                    triangle.material = material;
                    triangle.v1 = new Vector3(positions[i], positions[i + 1], positions[i + 2]);
                    triangle.v2 = new Vector3(positions[i + 3], positions[i + 4], positions[i + 5]);
                    triangle.v3 = new Vector3(positions[i + 6], positions[i + 7], positions[i + 8]);
                    triangle.n1 = new Vector3(normals[i], normals[i + 1], normals[i + 2]);
                    triangle.n2 = new Vector3(normals[i + 3], normals[i + 4], normals[i + 5]);
                    triangle.n3 = new Vector3(normals[i + 6], normals[i + 7], normals[i + 8]);

                    if (uv) {
                        triangle.t1 = new Vector3(uv[uvIndex], uv[uvIndex + 1], 0);
                        triangle.t2 = new Vector3(uv[uvIndex + 2], uv[uvIndex + 3], 0);
                        triangle.t3 = new Vector3(uv[uvIndex + 4], uv[uvIndex + 5], 0);
                    }

                    triangle.fixNormals();
                    triangle.updateBox();
                    triangles.push(triangle);
                    uvIndex += 6;
                }
            }
        }

        var mesh: Mesh = Mesh.newMesh(triangles);
        if (smooth) {
            mesh.smoothNormals();
        }
        return mesh;
    }

    computeNormals(positions: Float32Array): Float32Array {
        return new Float32Array(positions.length);
    }

    updateCamera(camera: THREE.PerspectiveCamera) {
        //console.log(JSON.stringify(this.camera.toJSON()));
        this.camera.p.setFromJson(camera.position);
        this.camera.m = 1 / Math.tan(camera.fov * Math.PI / 360);
        let e = camera.matrix.elements;
        let x = [-e[0], -e[1], -e[2]];
        let y = [e[4], e[5], e[6]];
        let z = [-e[8], -e[9], -e[10]];

        this.camera.u.setFromArray(x);
        this.camera.v.setFromArray(y);
        this.camera.w.setFromArray(z);
        //console.log(JSON.stringify(this.camera.toJSON()));
        this.dirty = true;
        if (this.renderer) {
            this.renderer.traceManager.stop();
        }
    }

    private static getMaterial(srcMaterial: any): Material {
        //var material:Material = new DiffuseMaterial(Color.hexColor(srcMaterial.color.getHex()));

        if (srcMaterial instanceof THREE.MultiMaterial) {
            srcMaterial = srcMaterial.materials[0];
        }

        var material: Material = new Material(Color.hexColor(srcMaterial.color.getHex()));
        material.ior = srcMaterial.ior ? srcMaterial.ior : 1;
        material.tint = srcMaterial.tint ? srcMaterial.tint : 0;
        material.gloss = srcMaterial.gloss ? srcMaterial.gloss : 0;
        material.emittance = srcMaterial.emittance ? srcMaterial.emittance : 0;
        material.transparent = srcMaterial.transparent;
        material.attenuation = Attenuation.fromJson(srcMaterial.attenuation);

        if (srcMaterial.map) {
            if (srcMaterial.map.image && srcMaterial.map.image.length == 0) {
                var image = srcMaterial.map.mipmaps[0];
                material.texture = new Texture();
                material.texture.setImageData(image.width, image.height, image.data);
                material.texture.sourceFile = srcMaterial.map.uuid;
            } else if (srcMaterial.map.image) {
                material.texture = new Texture(srcMaterial.map.image);
            }
        }
        if (srcMaterial.normalMap) {
            if (srcMaterial.normalMap.image && srcMaterial.normalMap.image.length == 0) {
                var image = srcMaterial.normalMap.mipmaps[0];
                material.normalTexture = new Texture();
                material.normalTexture.setImageData(image.width, image.height, image.data);
                material.normalTexture.sourceFile = srcMaterial.normalMap.uuid;
            } else if (srcMaterial.normalMap.image) {
                material.normalTexture = new Texture(srcMaterial.normalMap.image);
            }
        }
        if (srcMaterial.bumpMap) {
            if (srcMaterial.bumpMap.image && srcMaterial.bumpMap.image.length == 0) {
                var image = srcMaterial.bumpMap.mipmaps[0];
                material.bumpTexture = new Texture();
                material.bumpTexture.setImageData(image.width, image.height, image.data);
                material.bumpTexture.sourceFile = srcMaterial.bumpMap.uuid;
            } else if (srcMaterial.bumpMap.image) {
                material.bumpTexture = new Texture(srcMaterial.bumpMap.image);
            }
        }
        return material;
    }

    private getLight(src: any): Shape {
        if (src.children.length > 0) {
            var lightGeometry = src.children[0].geometry;
            if (lightGeometry instanceof THREE.SphereGeometry) {
                var _radius = lightGeometry.parameters.radius;
            } else if (lightGeometry instanceof THREE.PlaneGeometry) {
                var width = lightGeometry.parameters.width;
                var height = lightGeometry.parameters.height;
            }
            // _radius = lightGeometry.boundingSphere.radius;
        }
        var material = new LightMaterial(Color.hexColor(src.color.getHex()), src.intensity, new LinearAttenuation(src.distance));
        if (_radius) {
            var shape = Sphere.newSphere(new Vector3(src.position.x, src.position.y, src.position.z), _radius, material);
        } else {
            shape = Cube.newCube(
                // new Vector3(src.position.x - width / 2, src.position.y, src.position.z - height / 2),
                // new Vector3(src.position.x + width / 2, src.position.y, src.position.z + height / 2),
                new Vector3(-width / 2, src.position.y, -height / 2),
                new Vector3(width / 2, src.position.y + 1, height / 2),
                material);
        }
        return shape;
        //var mat:Matrix4 = Matrix4.fromTHREEJS(src.matrix.elements);
        //return TransformedShape.newTransformedShape(sphere, mat);
    }
}
