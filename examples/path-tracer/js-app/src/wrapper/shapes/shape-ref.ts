import { ShapeType, TransformedShape } from "~assembly/shapes";
export interface ShapeRef {
    type: number;
}

// export function ShapesfromJson(shapes: ShapeRef[]): ShapeRef[] {
//     var _shapes: ShapeRef[] = [];
//     shapes.forEach(function(shape: ShapeRef) {
//         switch (shape.type) {
//             case ShapeType.CUBE: {
//                 _shapes.push(Cube.fromJson(<Cube>shape));
//                 break;
//             }
//             case ShapeType.SPHERE: {
//                 _shapes.push(Sphere.fromJson(<Sphere>shape));
//                 break;
//             }
//             case ShapeType.MESH: {
//                 _shapes.push(Mesh.fromJson(<Mesh>shape));
//                 break;
//             }
//             case ShapeType.TRANSFORMED_SHAPE: {
//                 _shapes.push(TransformedShape.fromJson(<TransformedShape>shape));
//                 break;
//             }
//             case ShapeType.TRIANGLE: {
//                 _shapes.push(<Triangle>Triangle.fromJson(<Triangle>shape));
//                 break;
//             }
//         }
//     });
//     return _shapes;
// }
// export function ShapefromJson(shape: ShapeRef): ShapeRef {
//     switch (shape.type) {
//         case ShapeType.CUBE: {
//             return Cube.fromJson(<Cube>shape);
//         }
//         case ShapeType.SPHERE: {
//             return Sphere.fromJson(<Sphere>shape);
//         }
//         case ShapeType.MESH: {
//             return Mesh.fromJson(<Mesh>shape);
//         }
//         case ShapeType.TRANSFORMED_SHAPE: {
//             return TransformedShape.fromJson(<TransformedShape>shape);
//         }
//         case ShapeType.TRIANGLE: {
//             return <Triangle>Triangle.fromJson(<Triangle>shape);
//         }
//     }
// }
// export function directRestoreShape(memory: Float32Array, offset: number, container: ShapeRef[]): number {
//     var type: ShapeType = memory[offset++];
//     switch (type) {
//         case ShapeType.CUBE: {
//             let cube = new Cube();
//             container.push(cube);
//             return cube.directRead(memory, offset);
//         }
//         case ShapeType.SPHERE: {
//             let sphere = new Sphere();
//             container.push(sphere);
//             return sphere.directRead(memory, offset);
//         }
//         case ShapeType.MESH: {
//             let mesh = new Mesh();
//             container.push(mesh);
//             return mesh.directRead(memory, offset);
//         }
//         case ShapeType.TRANSFORMED_SHAPE: {
//             let shape = new TransformedShape();
//             container.push(shape);
//             return shape.directRead(memory, offset);
//         }
//         /* case ShapeType.TRIANGLE:
//             var triangle = new Triangle();
//             container.push(triangle);
//             return triangle.directRead(memory, offset);*/
//     }
// }
// export function restoreShape(memory: ByteArrayBase | DirectMemory, container: ShapeRef[]): number {
//     var type: ShapeType = memory.readByte();
//     switch (type) {
//         case ShapeType.CUBE: {
//             let cube = new Cube();
//             container.push(cube);
//             return cube.read(memory);
//         }
//         case ShapeType.SPHERE: {
//             let sphere = new Sphere();
//             container.push(sphere);
//             return sphere.read(memory);
//         }
//         case ShapeType.MESH: {
//             let mesh = new Mesh();
//             container.push(mesh);
//             return mesh.read(memory);
//         }
//         case ShapeType.TRANSFORMED_SHAPE: {
//             let shape = new TransformedShape();
//             container.push(shape);
//             return shape.read(memory);
//         }

//         /*case ShapeType.TRIANGLE:
//             let triangle = new Triangle();
//             container.push(triangle);
//             return triangle.read(memory);*/
//     }
// }
