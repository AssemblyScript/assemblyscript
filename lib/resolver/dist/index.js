"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (Object.hasOwnProperty.call(mod, k)) result[k] = mod[k];
    result["default"] = mod;
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
var path = __importStar(require("path"));
var url = __importStar(require("url"));
var os = __importStar(require("os"));
var platform = os.platform();
var DEFAULT_ASC_FOLDER = "assembly";
var DEFAULT_PACKAGE_PATHS = ["node_modules"];
function isURL(str) {
    return /^(?:https?:\/\/|ipfs:\/\/|file:\/\/|dweb:\/ipfs\/)/i.test(str);
}
function resolve(fromSourcePath, toSourcePath, args) {
    return isURL(toSourcePath)
        ? resolveFromUrl(fromSourcePath, toSourcePath, args)
        : resolveFromLocal(fromSourcePath, toSourcePath, args);
}
exports.resolve = resolve;
/** Base class for addresses. */
var Address = /** @class */ (function () {
    function Address(file) {
        this.file = file;
    }
    return Address;
}());
exports.Address = Address;
/** Address to a file in the module or in a local library */
var Module = /** @class */ (function (_super) {
    __extends(Module, _super);
    function Module(file) {
        var _this = _super.call(this, path.basename(file)) || this;
        _this.root = path.dirname(file);
        return _this;
    }
    Module.prototype.resolveSync = function (readFile) {
        return readFile(this.file, this.root);
    };
    return Module;
}(Address));
exports.Module = Module;
var Package = /** @class */ (function (_super) {
    __extends(Package, _super);
    function Package(file, packageFolder) {
        if (packageFolder === void 0) { packageFolder = ""; }
        var _this = _super.call(this, file) || this;
        _this.packageFolder = packageFolder;
        return _this;
    }
    Package.prototype.resolveSync = function (readFile) {
        // resolve it as a package
        var fileRelativePath = this.file;
        var packageJsonPath = path.join(this.packageFolder, "package.json");
        var pkg = readFile(packageJsonPath);
        var ascFolder = DEFAULT_ASC_FOLDER;
        if (pkg) {
            try {
                var jsonContents = JSON.parse(pkg);
                if (typeof jsonContents.ascMain === "string") {
                    ascFolder = path.dirname(jsonContents.ascMain);
                }
            }
            catch (ex) {
            }
        }
        var absoluteModulePath = path.join(this.packageFolder, ascFolder, fileRelativePath);
        return readFile(path.basename(absoluteModulePath), path.dirname(absoluteModulePath));
    };
    return Package;
}(Address));
exports.Package = Package;
var URL = /** @class */ (function (_super) {
    __extends(URL, _super);
    function URL(file) {
        var _this = _super.call(this, file) || this;
        _this.url = url.parse(file);
        return _this;
    }
    URL.prototype.resolveSync = function (readFile) {
        return readFile(url.fileURLToPath(this.url.toString()));
    };
    return URL;
}(Address));
exports.URL = URL;
//   resolveAsync(readFile, fetch, callback): void {
//     if (this.type === SourceType.Package) {
//       // resolve it as a package
//       const moduleFolder = this.root;
//       const fileRelativePath = this.file;
//       let ascFolder = "assembly";
//       readFile("package.json", moduleFolder, (err, pkg) => {
//         if (pkg && !err) {
//           try {
//             const jsonContents = JSON.parse(pkg);
//             if (typeof jsonContents.ascMain === "string") {
//               ascFolder = path.dirname(jsonContents.ascMain);
//             }
//           } catch(ex) {
//           }
//         }
//         const absoluteModulePath = path.join(moduleFolder, ascFolder, fileRelativePath);
//         return readFile(path.basename(absoluteModulePath), path.dirname(absoluteModulePath), (err, file) => {
//           if (err) callback(null);
//           else callback(file.toString("utf8"));
//         });
//       });
//     } else if (this.type === SourceType.URL) {
//       fetch(this.url.toString(), (err, buffer) => {
//         if (err) callback(null);
//         else callback(buffer.toString("utf8"));
//       });
//     } else {
//       readFile(this.file, this.root, (err, buffer) => {
//         if (err) callback(null);
//         else callback(buffer.toString("utf8"));
//       });
//     }
//   }
// }
function resolveFromLocal(fromSourcePath, toSourcePath, args) {
    var isToSourceRelative = toSourcePath.startsWith(".");
    var isFromSourcePathAbsolute = path.isAbsolute(fromSourcePath);
    // If the source is relative, we can check two locations: folder/index.ts, and file.ts
    if (isToSourceRelative) {
        return resolveRelative(path.dirname(fromSourcePath), toSourcePath);
    }
    // We could be receiving a path from the compiler
    toSourcePath = toSourcePath.replace(/^~lib\//, "");
    // At this point, the source must be a package, url or lib entry. Check for urls first.
    if (isURL(toSourcePath)) {
        return [new URL(toSourcePath)];
    }
    // Create an Entry array to contain the results, starting with lib entries first
    var results = resloveLibFolders(toSourcePath, args);
    // Results is now an array of entries to try every lib folder,
    // favoring lib.ts over lib/index.ts
    // Now we can try package management locations
    var toSourceEntries = toSourcePath.split("/");
    var fromSourceEntries = path.dirname(fromSourcePath).split(path.sep);
    var moduleFolders = DEFAULT_PACKAGE_PATHS.concat(args.path || []);
    var fromSourceEntriesLength = fromSourceEntries.length;
    var toSourceEntriesLength = toSourceEntries.length;
    // assume the toSource could start in any of these folders
    for (var k = 0; k < fromSourceEntriesLength; k++) {
        var fromSourceFolder = (isFromSourcePathAbsolute && platform !== "win32" ? path.sep + path.sep : "")
            + fromSourceEntries.slice(0, fromSourceEntriesLength - k).join(path.sep) + path.sep;
        // for each module folder (i.e. node_modules, bower_components, packages)
        for (var j = 0; j < moduleFolders.length; j++) {
            var moduleFolder = moduleFolders[j];
            // Assume the package folder exists at i in the toSource
            for (var i = 0; i < toSourceEntriesLength; i++) {
                var index = toSourceEntriesLength - i;
                var toSourceStart = toSourceEntries.slice(0, index).join(path.sep);
                var toSourceEnd = toSourceEntries.slice(index).join(path.sep);
                // baseDir is the package folder. Not the baseDir.
                var packageFolder = path.join(fromSourceFolder, moduleFolder, toSourceStart);
                // create two entries and assume file.ts first over file/index.ts
                if (toSourceEnd !== "") {
                    results.push(new Package(toSourceEnd + ".ts", packageFolder));
                }
                results.push(new Package(toSourceEnd + path.sep + "index.ts", packageFolder));
            }
        }
    }
    return results;
}
// url resolution is limited to lib and relative path resolutionrequire
function resolveFromUrl(fromSourcePath, toSourcePath, args) {
    var isRelativePath = toSourcePath.startsWith(".");
    if (isRelativePath) {
        var resolved = url.resolve(fromSourcePath, toSourcePath);
        var fileResolved = resolved.endsWith("/")
            ? resolved.slice(0, -1)
            : resolved;
        var folderResolved = resolved.endsWith("/")
            ? resolved
            : resolved + "/";
        return [
            new URL(fileResolved + ".ts"),
            new URL(url.resolve(folderResolved, "./index.ts"))
        ];
    }
    // We could be receiving a path from the compiler
    toSourcePath = toSourcePath.replace(/^~lib\//, "");
    // Create an Entry array to contain the results, starting with lib entries first
    return resloveLibFolders(toSourcePath, args);
}
function resloveLibFolders(toSourcePath, args) {
    var results = [];
    var libFolders = args.lib || [];
    return libFolders.reduce(function (result, libFolder) { return result.concat(resolveRelative(libFolder, toSourcePath)); }, results);
}
exports.resloveLibFolders = resloveLibFolders;
function resolveRelative(from, to) {
    var filename = path.join(from, to);
    return [
        new Module(filename + ".ts"),
        new Module(path.join(filename, "index.ts"))
    ];
}
exports.resolveRelative = resolveRelative;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi9zcmMvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLHlDQUE2QjtBQUM3Qix1Q0FBMkI7QUFDM0IscUNBQXlCO0FBQ3pCLElBQU0sUUFBUSxHQUFHLEVBQUUsQ0FBQyxRQUFRLEVBQUUsQ0FBQztBQUUvQixJQUFNLGtCQUFrQixHQUFHLFVBQVUsQ0FBQztBQUN0QyxJQUFNLHFCQUFxQixHQUFHLENBQUMsY0FBYyxDQUFDLENBQUM7QUFhL0MsU0FBUyxLQUFLLENBQUMsR0FBVztJQUN4QixPQUFPLHFEQUFxRCxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztBQUN6RSxDQUFDO0FBRUQsU0FBZ0IsT0FBTyxDQUFDLGNBQXNCLEVBQUUsWUFBb0IsRUFBRSxJQUFVO0lBQzlFLE9BQU8sS0FBSyxDQUFDLFlBQVksQ0FBQztRQUN4QixDQUFDLENBQUMsY0FBYyxDQUFDLGNBQWMsRUFBRSxZQUFZLEVBQUUsSUFBSSxDQUFDO1FBQ3BELENBQUMsQ0FBQyxnQkFBZ0IsQ0FBQyxjQUFjLEVBQUUsWUFBWSxFQUFFLElBQUksQ0FBQyxDQUFDO0FBQzNELENBQUM7QUFKRCwwQkFJQztBQUlELGdDQUFnQztBQUNoQztJQUNFLGlCQUFtQixJQUFZO1FBQVosU0FBSSxHQUFKLElBQUksQ0FBUTtJQUFFLENBQUM7SUFHcEMsY0FBQztBQUFELENBQUMsQUFKRCxJQUlDO0FBSnFCLDBCQUFPO0FBSzdCLDREQUE0RDtBQUM1RDtJQUE0QiwwQkFBTztJQUVqQyxnQkFBWSxJQUFZO1FBQXhCLFlBQ0Usa0JBQU0sSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQyxTQUUzQjtRQURDLEtBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQzs7SUFDakMsQ0FBQztJQUVELDRCQUFXLEdBQVgsVUFBWSxR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