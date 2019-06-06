const assemblyscript = require('../dist/assemblyscript');
const {
    CommonFlags,
    Node,
    NodeKind,
    SourceKind,
    TypeKind,
    Type,
    parseFile,
    Program,
    NEARBindingsGenerator,
    Compiler,
} = assemblyscript;

const fs = require('fs');

// https://stackoverflow.com/questions/5202085/javascript-equivalent-of-pythons-rsplit
String.prototype.rsplit = function(sep, maxsplit) {
    var split = this.split(sep);
    return maxsplit ? [ split.slice(0, -maxsplit).join(sep) ].concat(split.slice(-maxsplit)) : split;
}

exports.applyTransform = function(parser) {
    let compiler = new Compiler(parser.program);
    compiler.compile();

    const nearBindingsGenerator = new NEARBindingsGenerator(compiler.program);
    let bindingStr = nearBindingsGenerator.build();
    let sourceIndex = compiler.program.sources.findIndex(s => s.isEntry);
    let source = compiler.program.sources[sourceIndex];
    let newTexts = [bindingStr];
    nearBindingsGenerator.classRanges.forEach((value, key) => {
        let injections = nearBindingsGenerator.classInjections.get(key);
        if (injections) {
            let splitParts = value.toString().rsplit('}', 1);
            let classText = splitParts[0] + `\n${injections}\n` + splitParts[1];
            newTexts.push(classText);
        }
    });
    let newText = newTexts.join('\n');
    let newParser = parseFile(newText, source.normalizedPath, true);
    // add near.ts, json/encoder.ts, json/decoder.ts manually to parser. Need to find a better way;
    if (!parser.program.sources.find(s => s.normalizedPath == "near.ts")) {
        let nearText = fs.readFileSync("near.ts", { encoding: "utf8" });
        newParser = parseFile(nearText, "near.ts", false, newParser);
    }
    if (!parser.program.sources.find(s => s.normalizedPath == "json/encoder.ts")) {
        let encoderText = fs.readFileSync("json/encoder.ts", { encoding: "utf8" });
        newParser = parseFile(encoderText, "json/encoder.ts", false, newParser);
    }
    if (!parser.program.sources.find(s => s.normalizedPath == "json/decoder.ts")) {
        let decoderText = fs.readFileSync("json/decoder.ts", { encoding: "utf8" });
        newParser = parseFile(decoderText, "json/decoder.ts", false, newParser);
    }

    parser.program.sources.splice(sourceIndex, 1);
    newParser.program.sources = newParser.program.sources.concat(parser.program.sources);
    parser.program = new Program(parser.program.diagnostics);
    parser.program.sources = newParser.program.sources;
}

// class NEARBindingsBuilder {
//     constructor() {
//         this.typeMapping = {
//             "i32": "Integer",
//             "u32": "Integer",
//             "i64": "String",
//             "u64": "String",
//             "String": "String",
//             "bool": "Boolean",
//             "Uint8Array": "String"
//         };
//         this.nonNullableTypes = ["i32", "u32", "i64", "u64", "bool"];
//         this.sb = [];
//         this.generatedEncodeFunctions = new Set();
//         this.generatedDecodeFunctions = new Set();
//         this.exportedClasses = [];
//         this.exportedFunctions = [];
//     }
//
//     typeName(type) {
//         if (!type.classReference) {
//             return type.toString();
//         }
//         let cls = type.classReference;
//         if (cls.typeArguments && cls.typeArguments.length > 0) {
//             return cls.prototype.name + "<" +
//                 cls.typeArguments.map(argType => this.typeName(argType)).join(", ") +
//                 ">"
//         }
//         return cls.prototype.name;
//     }
//
//     encodeType(type) {
//         return this.typeName(type)
//             .replace(/_/g, '__')
//             .replace(/>/g, '')
//             .replace(/</g, '_');
//     }
//
//     isArrayType(type) {
//         return !!(type.classReference && type.classReference.prototype.name == "Array" && type.classReference.typeArguments);
//     }
//
//     generateFieldEncoder(fieldType, fieldExpr, sourceExpr) {
//         let fieldTypeName = this.typeName(fieldType);
//         let setterType = this.typeMapping[fieldTypeName];
//         if (!setterType) {
//             // Object / array
//             let pushType = this.isArrayType(fieldType) ? "Array" : "Object";
//             this.sb.push(`if (${sourceExpr} != null) {
//               encoder.push${pushType}(${fieldExpr});
//               __near_encode_${this.encodeType(fieldType)}(${sourceExpr}, encoder);
//               encoder.pop${pushType}();
//             } else {
//               encoder.setNull(${fieldExpr});
//             }`);
//         } else {
//             // Basic types
//             if (this.nonNullableTypes.indexOf(fieldTypeName) != -1) {
//                 if (["i64", "u64"].indexOf(fieldTypeName) != -1) {
//                     this.sb.push(`encoder.set${setterType}(${fieldExpr}, ${sourceExpr}.toString());`);
//                 } else {
//                     this.sb.push(`encoder.set${setterType}(${fieldExpr}, ${sourceExpr});`);
//                 }
//             } else if (fieldTypeName == "Uint8Array") {
//                 this.sb.push(`if (${sourceExpr} != null) {
//                   encoder.setString(${fieldExpr}, base64.encode(${sourceExpr}));
//                 } else {
//                   encoder.setNull(${fieldExpr});
//                 };`);
//             } else {
//                 this.sb.push(`if (${sourceExpr} != null) {
//                   encoder.set${setterType}(${fieldExpr}, ${sourceExpr});
//                 } else {
//                   encoder.setNull(${fieldExpr});
//                 }`);
//             }
//         }
//     }
//
//     generateEncodingFunction(type) {
//         if (!type.classReference) {
//             return;
//         }
//         let typeName = this.encodeType(type);
//         if (this.generatedEncodeFunctions.has(typeName) || typeName in this.typeMapping) {
//             return;
//         }
//         this.generatedEncodeFunctions.add(typeName);
//         // let methodName = `__near_encode_${typeName}`;
//
//         if (this.isArrayType(type)) {
//             this.sb.push(`export function __near_encode_${typeName}(
//                 value: ${typeName},
//                 encoder: JSONEncoder): void {`);
//             this.sb.push(`for (let i = 0; i < value.length; i++) {`);
//             this.generateFieldEncoder(type.classReference.typeArguments[0], "null", "value[i]");
//             this.sb.push("}");
//         } else {
//             // Object
//             this.getFields(type.classReference).forEach(field => {
//                 this.generateEncodeFunction(field.type);
//             });
//
//             this.sb.push(`export function __near_encode_${typeName}(
//                 value: ${typeName},
//                 encoder: JSONEncoder): void {`);
//             this.getFields(type.classReference).forEach((field) => {
//                 let fieldType = field.type;
//                 let fieldName = field.name;
//                 let sourceExpr = `value.${fieldName}`;
//                 this.generateFieldEncoder(fieldType, `"${fieldName}"`, sourceExpr);
//             });
//         }
//
//         this.sb.push("}");
//     }
// }
