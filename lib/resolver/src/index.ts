import * as path from "path";
import * as url from "url";
import * as os from "os";
const platform = os.platform();

const DEFAULT_ASC_FOLDER = "assembly";
const DEFAULT_PACKAGE_PATHS = ["node_modules"];

export interface Args {
  lib: string[];
  path: string[];
}

export const enum SourceType {
  Local = 0,
  URL = 1,
  Package = 2,
}

function isURL(str: string): boolean {
  return /^(?:https?:\/\/|ipfs:\/\/|file:\/\/|dweb:\/ipfs\/)/i.test(str);
}

export function resolve(fromSourcePath: string, toSourcePath: string, args: Args) {
  return isURL(toSourcePath)
    ? resolveFromUrl(fromSourcePath, toSourcePath, args)
    : resolveFromLocal(fromSourcePath, toSourcePath, args);
}

type FileReader = (name: string, baseDir?: string) => string | null;

/** Base class for addresses. */
export abstract class Address {
  constructor(public file: string){}
  abstract resolveSync(readFile: FileReader): string | null;

}
/** Address to a file in the module or in a local library */
export class Module extends Address {
  root: string;
  constructor(file: string){
    super(path.basename(file));
    this.root = path.dirname(file);
  }

  resolveSync(readFile:FileReader): string | null {
    return readFile(this.file, this.root);
  }

}

export class Package extends Address {
  constructor(file: string, protected packageFolder = ""){
    super(file);
  }

  resolveSync(readFile: FileReader): string | null {
     // resolve it as a package
     const fileRelativePath = this.file;
     const packageJsonPath = path.join(this.packageFolder, "package.json");
     const pkg = readFile(packageJsonPath);
     let ascFolder = DEFAULT_ASC_FOLDER;
     if (pkg) {
       try {
         const jsonContents = JSON.parse(pkg);
         if (typeof jsonContents.ascMain === "string") {
           ascFolder = path.dirname(jsonContents.ascMain);
         }
       } catch(ex) {

       }
     }
     const absoluteModulePath = path.join(this.packageFolder, ascFolder, fileRelativePath);
     return readFile(path.basename(absoluteModulePath), path.dirname(absoluteModulePath));
  }
}

export class URL extends Address {
  url: url.Url;

  constructor(file: string){
    super(file);
    this.url = url.parse(file);
  }

  resolveSync(readFile: FileReader): string | null {
    return readFile(url.fileURLToPath(this.url.toString()))
  }
}

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



function resolveFromLocal(fromSourcePath: string, toSourcePath: string, args: Args): Address[] {
  const isToSourceRelative = toSourcePath.startsWith(".");
  const isFromSourcePathAbsolute = path.isAbsolute(fromSourcePath);

  // If the source is relative, we can check two locations: folder/index.ts, and file.ts
  if (isToSourceRelative) {
    return resolveRelative(path.dirname(fromSourcePath), toSourcePath);
  }

  // We could be receiving a path from the compiler
  toSourcePath = toSourcePath.replace(/^~lib\//, "");

  // At this point, the source must be a package, url or lib entry. Check for urls first.
  if (isURL(toSourcePath)) {
    return [ new URL(toSourcePath) ];
  }

  // Create an Entry array to contain the results, starting with lib entries first
  let results = resloveLibFolders(toSourcePath, args);

  // Results is now an array of entries to try every lib folder,
  // favoring lib.ts over lib/index.ts

  // Now we can try package management locations
  const toSourceEntries = toSourcePath.split("/");
  const fromSourceEntries = path.dirname(fromSourcePath).split(path.sep);
  const moduleFolders = DEFAULT_PACKAGE_PATHS.concat(args.path || []);
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
            new Package(
              toSourceEnd + ".ts",
              packageFolder
            )
          );
        }
        results.push(
          new Package(
            toSourceEnd + path.sep + "index.ts",
            packageFolder
          )
        );

      }
    }
  }

  return results;
}

// url resolution is limited to lib and relative path resolutionrequire
function resolveFromUrl(fromSourcePath: string, toSourcePath: string, args: Args):  Address[] {
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
      new URL(fileResolved + ".ts"),
      new URL(url.resolve(folderResolved, "./index.ts"))
    ];
  }

  // We could be receiving a path from the compiler
  toSourcePath = toSourcePath.replace(/^~lib\//, "");

  // Create an Entry array to contain the results, starting with lib entries first
  return resloveLibFolders(toSourcePath, args);
  
}

export function resloveLibFolders(toSourcePath: string, args: Args): Address[] {
  const results: Address[] = [];
  const libFolders = args.lib || [];
  return libFolders.reduce((result, libFolder) => result.concat(resolveRelative(libFolder, toSourcePath)), results);
}


export function resolveRelative(from: string, to: string): Address[] {
  const filename = path.join(from, to)
  return [
    new Module(filename + ".ts"),
    new Module(path.join(filename, "index.ts"))
  ];  
}