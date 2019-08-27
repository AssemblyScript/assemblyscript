"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var path = require("path");
var url = require("url");
var os = require("os");
var platform = os.platform();
var SourceType;
(function (SourceType) {
    SourceType[SourceType["Local"] = 0] = "Local";
    SourceType[SourceType["URL"] = 1] = "URL";
    SourceType[SourceType["Package"] = 2] = "Package";
})(SourceType = exports.SourceType || (exports.SourceType = {}));
function resolve(fromSourcePath, toSourcePath, args, sourcePathType) {
    if (sourcePathType === void 0) { sourcePathType = 0 /* Local */; }
    return sourcePathType === 1 /* URL */
        ? resolveFromUrl(fromSourcePath, toSourcePath, args)
        : resolveFromLocal(fromSourcePath, toSourcePath, args);
}
exports.resolve = resolve;
var Entry = /** @class */ (function () {
    function Entry(file, type, packageFolder) {
        if (file === void 0) { file = null; }
        if (type === void 0) { type = 0 /* Local */; }
        if (packageFolder === void 0) { packageFolder = ""; }
        this.file = file;
        this.type = type;
        this.root = null;
        this.url = null;
        if (type === 0 /* Local */) {
            // file relative to packageStart
            this.file = path.basename(file);
            // package folder
            this.root = path.dirname(file);
        }
        else if (type === 1 /* URL */) {
            this.url = url.parse(file);
        }
        else {
            this.file = file;
            this.root = packageFolder;
        }
    }
    Entry.prototype.resolveSync = function (readFileSync, fetchSync) {
        if (this.type === 2 /* Package */) {
            // resolve it as a package
            var moduleFolder = this.root;
            var fileRelativePath = this.file;
            var packageJsonPath = path.join(moduleFolder, "package.json");
            var pkg = readFileSync(packageJsonPath);
            var ascFolder = "assembly";
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
            var absoluteModulePath = path.join(moduleFolder, ascFolder, fileRelativePath);
            return readFileSync(path.basename(absoluteModulePath), path.dirname(absoluteModulePath));
        }
        else if (this.type === 1 /* URL */) {
            return fetchSync(this.url.toString());
        }
        else {
            return readFileSync(this.file, this.root);
        }
    };
    Entry.prototype.resolveAsync = function (readFile, fetch, callback) {
        if (this.type === 2 /* Package */) {
            // resolve it as a package
            var moduleFolder_1 = this.root;
            var fileRelativePath_1 = this.file;
            var ascFolder_1 = "assembly";
            readFile("package.json", moduleFolder_1, function (err, pkg) {
                if (pkg && !err) {
                    try {
                        var jsonContents = JSON.parse(pkg);
                        if (typeof jsonContents.ascMain === "string") {
                            ascFolder_1 = path.dirname(jsonContents.ascMain);
                        }
                    }
                    catch (ex) {
                    }
                }
                var absoluteModulePath = path.join(moduleFolder_1, ascFolder_1, fileRelativePath_1);
                return readFile(path.basename(absoluteModulePath), path.dirname(absoluteModulePath), function (err, file) {
                    if (err)
                        callback(null);
                    else
                        callback(file.toString("utf8"));
                });
            });
        }
        else if (this.type === 1 /* URL */) {
            fetch(this.url.toString(), function (err, buffer) {
                if (err)
                    callback(null);
                else
                    callback(buffer.toString("utf8"));
            });
        }
        else {
            readFile(this.file, this.root, function (err, buffer) {
                if (err)
                    callback(null);
                else
                    callback(buffer.toString("utf8"));
            });
        }
    };
    return Entry;
}());
exports.Entry = Entry;
function resolveFromLocal(fromSourcePath, toSourcePath, args) {
    var isToSourceRelative = toSourcePath.startsWith(".");
    var isFromSourcePathAbsolute = path.isAbsolute(fromSourcePath);
    // If the source is relative, we can check two locations: folder/index.ts, and file.ts
    if (isToSourceRelative) {
        var resultPath = path.join(path.dirname(fromSourcePath), toSourcePath);
        return [
            new Entry(resultPath + ".ts"),
            new Entry(path.join(resultPath, "index.ts")),
        ];
    }
    // At this point, the source must be a package, url or lib entry. Check for urls first.
    var isSourceURL = /^(?:https?:\/\/|ipfs:\/\/|dweb:\/ipfs\/)/i.test(toSourcePath);
    if (isSourceURL) {
        return [new Entry(toSourcePath, 1 /* URL */)];
    }
    // We could be receiving a path from the compiler
    toSourcePath = toSourcePath.replace(/^~lib\//, "");
    // Create an Entry array to contain the results, starting with lib entries first
    var results = [];
    var libFolders = args.lib || [];
    for (var i = 0; i < libFolders.length; i++) {
        var libRoot = path.join(libFolders[i], toSourcePath);
        results.push(new Entry(libRoot + ".ts"), new Entry(path.join(libRoot, "index.ts")));
    }
    // Results is now an array of entries to try every lib folder,
    // favoring lib.ts over lib/index.ts
    // Now we can try package management locations
    var toSourceEntries = toSourcePath.split("/");
    var fromSourceEntries = path.dirname(fromSourcePath).split(path.sep);
    var moduleFolders = ["node_modules"].concat(args.path || []);
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
                    results.push(new Entry(toSourceEnd + ".ts", 2 /* Package */, packageFolder));
                }
                results.push(new Entry(toSourceEnd + path.sep + "index.ts", 2 /* Package */, packageFolder));
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
            new Entry(fileResolved + ".ts", 1 /* URL */),
            new Entry(url.resolve(folderResolved, "./index.ts"), 1 /* URL */)
        ];
    }
    // We could be receiving a path from the compiler
    toSourcePath = toSourcePath.replace(/^~lib\//, "");
    // Create an Entry array to contain the results, starting with lib entries first
    var results = [];
    var libFolders = args.lib || [];
    for (var i = 0; i < libFolders.length; i++) {
        var libRoot = path.join(libFolders[i], toSourcePath);
        results.push(new Entry(libRoot + ".ts"), new Entry(path.join(libRoot, "index.ts")));
    }
    return results;
}
