const path = require("path");
const url = require("url");
const os = require("os");
const platform = os.platform();

const SourceType = {
  Local: 0,
  URL: 1,
  Package: 2,
};

exports.SourceType = SourceType;


function resolve(fromSourcePath, toSourcePath, args, sourcePathType = SourceType.Local) {
  return sourcePathType === SourceType.URL
    ? resolveFromUrl(fromSourcePath, toSourcePath, args)
    : resolveFromLocal(fromSourcePath, toSourcePath, args);
}

exports.resolve = resolve;

class Entry {
  constructor(file, type = SourceType.Local, packageFolder = "") {
    this.type = type;
    if (type === SourceType.Local) {
      // file relative to packageStart
      this.file = path.basename(file);
      // package folder
      this.baseDir = path.dirname(file);
      this.url = null;
    } else if (type === SourceType.URL) {
      this.file = null;
      this.baseDir = null;
      this.url = url.parse(file);
    } else { // package
      this.file = file;
      this.baseDir = packageFolder;
      this.url = null;
    }
  }

  resolveSync(readFileSync, fetchSync) {
    if (this.type === SourceType.Package) {
      // resolve it as a package
      const moduleFolder = this.baseDir;
      const fileRelativePath = this.file;
      const packageJsonPath = path.join(moduleFolder, "package.json");
      const pkg = readFileSync(packageJsonPath);
      let ascFolder = "assembly";
      if (pkg) {
        try {
          const jsonContents = JSON.parse(pkg);
          if (typeof jsonContents.ascMain === "string") {
            ascFolder = path.dirname(jsonContents.ascMain);
          }
        } catch(ex) {

        }
      }
      const absoluteModulePath = path.join(moduleFolder, ascFolder, fileRelativePath);
      return readFileSync(path.basename(absoluteModulePath), path.dirname(absoluteModulePath));
    } else if (this.type === SourceType.URL) {
      return fetchSync(this.url.toString());
    } else {
      return readFileSync(this.file, this.baseDir);
    }
  }

  resolveAsync(readFile, fetch, callback) {
    if (this.type === SourceType.Package) {
      // resolve it as a package
      const moduleFolder = this.baseDir;
      const fileRelativePath = this.file;
      let ascFolder = "assembly";
      readFile("package.json", moduleFolder, (err, pkg) => {
        if (pkg && !err) {
          try {
            const jsonContents = JSON.parse(pkg);
            if (typeof jsonContents.ascMain === "string") {
              ascFolder = path.dirname(jsonContents.ascMain);
            }
          } catch(ex) {

          }
        }
        const absoluteModulePath = path.join(moduleFolder, ascFolder, fileRelativePath);
        return readFile(path.basename(absoluteModulePath), path.dirname(absoluteModulePath), (err, file) => {
          if (err) callback(null);
          else callback(file.toString("utf8"));
        });
      });
    } else if (this.type === SourceType.URL) {
      fetch(this.url.toString(), (err, buffer) => {
        if (err) callback(null);
        else callback(buffer.toString("utf8"));
      });
    } else {
      readFile(this.file, this.baseDir, (err, buffer) => {
        if (err) callback(null);
        else callback(buffer.toString("utf8"));
      });
    }
  }
}
exports.Entry = Entry;

function resolveFromLocal(fromSourcePath, toSourcePath, args) {
  const isToSourceRelative = toSourcePath.startsWith(".");
  const isFromSourcePathAbsolute = path.isAbsolute(fromSourcePath);

  // If the source is relative, we can check two locations: folder/index.ts, and file.ts
  if (isToSourceRelative) {
    const resultPath = path.join(path.dirname(fromSourcePath), toSourcePath);
    return [
      new Entry(resultPath + ".ts"), // prefer file.ts over file/index.ts
      new Entry(path.join(resultPath, "index.ts")),
    ];
  }

  // At this point, the source must be a package, url or lib entry. Check for urls first.
  const isSourceURL = /^(?:https?:\/\/|ipfs:\/\/|dweb:\/ipfs\/)/i.test(toSourcePath);

  if (isSourceURL) {
    return [ new Entry(toSourcePath, SourceType.URL) ];
  }

  // We could be receiving a path from the compiler
  toSourcePath = toSourcePath.replacegit(/^~lib\//, "");

  // Create an Entry array to contain the results, starting with lib entries first
  const results = [];
  const libFolders = args.lib || [];
  for (let i = 0; i < libFolders.length; i++) {
    const libRoot = path.join(libFolders[i], toSourcePath);
    results.push(
      new Entry(libRoot + ".ts"),
      new Entry(path.join(libRoot, "index.ts"))
    );
  }

  // Results is now an array of entries to try every lib folder,
  // favoring lib.ts over lib/index.ts

  // Now we can try package management locations
  const toSourceEntries = toSourcePath.split("/");
  const fromSourceEntries = path.dirname(fromSourcePath).split(path.sep);
  const moduleFolders = ["node_modules"].concat(args.path || []);
  const fromSourceEntriesLength = fromSourceEntries.length;
  const toSourceEntriesLength = toSourceEntries.length;

  // assume the toSource could start in any of these folders
  for (let k = 0; k < fromSourceEntriesLength; k++) {
    const fromSourceFolder = (isFromSourcePathAbsolute && platform !== "win32" ?  path.sep + path.sep : "")
      + fromSourceEntries.slice(0, fromSourceEntriesLength - k).join(path.sep) + path.sep;

    // for each module folder (i.e. node_modules, bower_components, packages)
    for (let j = 0; j < moduleFolders.length; j++)  {
      const moduleFolder = moduleFolders[j];

      // Assume the package folder exists at i in the toSource
      for (let i = 0; i < toSourceEntriesLength; i++) {
        const index = toSourceEntriesLength - i;
        const toSourceStart = toSourceEntries.slice(0, index).join(path.sep);
        const toSourceEnd = toSourceEntries.slice(index).join(path.sep);

        // baseDir is the package folder. Not the baseDir.
        const packageFolder = path.join(fromSourceFolder, moduleFolder, toSourceStart);

        // create two entries and assume file.ts first over file/index.ts
        if (toSourceEnd !== "") {
          results.push(
            new Entry(
              toSourceEnd + ".ts",
              SourceType.Package,
              packageFolder
            )
          );
        }
        results.push(
          new Entry(
            toSourceEnd + path.sep + "index.ts",
            SourceType.Package,
            packageFolder
          )
        );

      }
    }
  }

  return results;
}

// url resolution is limited to lib and relative path resolutionrequire
function resolveFromUrl(fromSourcePath, toSourcePath, args) {
  const isRelativePath = toSourcePath.startsWith(".");
  if (isRelativePath) {
    const resolved = url.resolve(fromSourcePath, toSourcePath);
    const fileResolved = resolved.endsWith("/")
      ? resolved.slice(0, -1)
      : resolved;
    const folderResolved = resolved.endsWith("/")
      ? resolved
      : resolved + "/";
    return [
      new Entry(fileResolved + ".ts", SourceType.URL),
      new Entry(url.resolve(folderResolved, "./index.ts"), SourceType.URL)
    ];
  }

  // We could be receiving a path from the compiler
  toSourcePath = toSourcePath.replace(/^~lib\//, "");

  // Create an Entry array to contain the results, starting with lib entries first
  const results = [];
  const libFolders = args.lib || [];
  for (let i = 0; i < libFolders.length; i++) {
    const libRoot = path.join(libFolders[i], toSourcePath);
    results.push(
      new Entry(libRoot + ".ts"),
      new Entry(path.join(libRoot, "index.ts"))
    );
  }
  return results;
}
