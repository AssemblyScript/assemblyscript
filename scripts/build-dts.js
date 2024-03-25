import fs from "fs";
import { globSync } from "glob";
import pathUtil from "path";
import ts from "typescript";
import { fileURLToPath } from 'url';
import { debuglog } from "util";

const __dirname = pathUtil.dirname(fileURLToPath(import.meta.url));
const debug = debuglog("dts");

// © 2015-2019 SitePen, Inc. New BSD License.
// see: https://github.com/SitePen/dts-generator
const generate = (() => {
  // declare some constants so we don't have magic integers without explanation
  const DTS = ".d.ts";
  const DTSLEN = DTS.length;

  /**
   * A helper function that takes TypeScript diagnostic errors and returns an error
   * object.
   * @param diagnostics The array of TypeScript Diagnostic objects
   */
  function getError(diagnostics) {
    let message = "Declaration generation failed";
    for (const diagnostic of diagnostics) {
      // not all errors have an associated file: in particular, problems with a
      // the tsconfig.json don't; the messageText is enough to diagnose in those
      // cases.
      if (diagnostic.file) {
        const position = diagnostic.file.getLineAndCharacterOfPosition(diagnostic.start);
        message +=
          `\n${diagnostic.file.fileName}(${position.line + 1},${position.character + 1}): ` +
          `error TS${diagnostic.code}: ${diagnostic.messageText}`;
      } else {
        message += `\nerror TS${diagnostic.code}: ${diagnostic.messageText}`;
      }
    }

    const error = new Error(message);
    error.name = "EmitterError";
    return error;
  }

  function getFilenames(baseDir, files) {
    return files.map(function (filename) {
      const resolvedFilename = pathUtil.resolve(filename);
      return resolvedFilename.indexOf(baseDir) === 0
        ? resolvedFilename
        : pathUtil.resolve(baseDir, filename);
    });
  }

  function processTree(sourceFile, replacer) {
    let code = "";
    let cursorPosition = 0;
    function skip(node) {
      cursorPosition = node.end;
    }
    function readThrough(node) {
      code += sourceFile.text.slice(cursorPosition, node.pos);
      cursorPosition = node.pos;
    }
    function visit(node) {
      readThrough(node);
      const replacement = replacer(node);
      if (replacement != null) {
        code += replacement;
        skip(node);
      } else {
        ts.forEachChild(node, visit);
      }
    }
    visit(sourceFile);
    code += sourceFile.text.slice(cursorPosition);
    return code;
  }

  /**
   * Load and parse a TSConfig File
   * @param options The dts-generator options to load config into
   * @param fileName The path to the file
   */
  function getTSConfig(fileName) {
    // TODO this needs a better design than merging stuff into options.
    // the trouble is what to do when no tsconfig is specified...
    const configText = fs.readFileSync(fileName, { encoding: "utf8" });
    const result = ts.parseConfigFileTextToJson(fileName, configText);
    if (result.error) {
      throw getError([result.error]);
    }
    const configObject = result.config;
    const configParseResult = ts.parseJsonConfigFileContent(configObject, ts.sys, pathUtil.dirname(fileName));
    if (configParseResult.errors && configParseResult.errors.length) {
      throw getError(configParseResult.errors);
    }
    return [
      configParseResult.fileNames,
      configParseResult.options
    ];
  }

  const isNodeKind = kind => value => value?.kind === kind;
  const isNodeKindImportDeclaration = isNodeKind(ts.SyntaxKind.ImportDeclaration);
  const isNodeKindStringLiteral = isNodeKind(ts.SyntaxKind.StringLiteral);
  const isNodeKindExportDeclaration = isNodeKind(ts.SyntaxKind.ExportDeclaration);
  const isNodeKindModuleDeclaration = isNodeKind(ts.SyntaxKind.ModuleDeclaration);

  function generate(options) {
    let compilerOptions = {};
    let files = options.files;
    /* following tsc behaviour, if a project is specified, or if no files are specified then
      * attempt to load tsconfig.json */
    if (options.project || !options.files || options.files.length === 0) {
      debug(`project = "${options.project || options.baseDir}"`);
      // if project isn't specified, use baseDir.  If it is and it's a directory,
      // assume we want tsconfig.json in that directory.  If it is a file, though
      // use that as our tsconfig.json.  This allows for projects that have more
      // than one tsconfig.json file.
      let tsconfigFilename;
      if (!options.project) {
        tsconfigFilename = pathUtil.join(options.baseDir, "tsconfig.json");
      } else if (fs.lstatSync(options.project).isDirectory()) {
        tsconfigFilename = pathUtil.join(options.project, "tsconfig.json");
      } else {
        // project isn't a directory, it's a file
        tsconfigFilename = options.project;
      }
      if (fs.existsSync(tsconfigFilename)) {
        debug(`  parsing "${tsconfigFilename}"`);
        [files, compilerOptions] = getTSConfig(tsconfigFilename);
      } else {
        debug(`No "tsconfig.json" found at "${tsconfigFilename}"!`);
        throw new Error("Unable to resolve configuration.");
      }
    }

    const nonEmptyLineStart = /\n(?!\n|$)/g;
    // use input values if tsconfig leaves any of these undefined.
    // this is for backwards compatibility
    compilerOptions.declaration = true;
    compilerOptions.target ||= ts.ScriptTarget.Latest; // is this necessary?
    // TODO should compilerOptions.baseDir come into play?
    const baseDir = pathUtil.resolve(compilerOptions.rootDir || options.project || options.baseDir);
    const outDir = compilerOptions.outDir;

    debug(`baseDir = "${baseDir}"`);
    debug(`target = ${compilerOptions.target}`);
    debug(`outDir = ${compilerOptions.outDir}`);
    debug(`rootDir = ${compilerOptions.rootDir}`);
    debug(`moduleResolution = ${compilerOptions.moduleResolution}`);

    const filenames = getFilenames(baseDir, files);

    debug("filenames:");
    for (const name of filenames) debug("  " + name);

    const exclusions = new Set();

    options.exclude ||= [];
    options.exclude.push("node_modules/**/*.d.ts");

    for (const filename of globSync(options.exclude, { cwd: baseDir })) {
      exclusions.add(pathUtil.resolve(baseDir, filename));
    }

    debug("exclude:");
    for (const name of exclusions) debug("  " + name);

    const output = options.stdout;
    const host = ts.createCompilerHost(compilerOptions);
    const program = ts.createProgram(filenames, compilerOptions, host);
    function writeFile(filename, data) {
      // Compiler is emitting the non-declaration file, which we do not care about
      if (filename.slice(-DTSLEN) !== DTS) return;
      writeDeclaration(ts.createSourceFile(filename, data, compilerOptions.target, true), true);
    }
    let declaredExternalModules = [];

    {
      if (options.externs) {
        for (const path of options.externs) {
          debug(`Writing external dependency ${path}`);
          output.push(`/// <reference path="${path}" />\n`);
        }
      }

      debug("processing:");
      for (const sourceFile of program.getSourceFiles()) {
        processTree(sourceFile, node => {
          if (isNodeKindModuleDeclaration(node)) {
            const name = node.name;
            if (isNodeKindStringLiteral(name)) {
              declaredExternalModules.push(name.text);
            }
          }
          return null;
        });

        // Source file is a default library, or other dependency from another project, that should not be included in
        // our bundled output
        const normalizedFileName = pathUtil.normalize(sourceFile.fileName);
        if (normalizedFileName.indexOf(baseDir + pathUtil.sep) !== 0) continue;
        if (exclusions.has(normalizedFileName)) continue;

        debug(`  ${sourceFile.fileName}`);
        // Source file is already a declaration file so should does not need to be pre-processed by the emitter
        if (sourceFile.fileName.slice(-DTSLEN) === DTS) {
          writeDeclaration(sourceFile, false);
          continue;
        }
        const emitOutput = program.emit(sourceFile, writeFile);
        if (emitOutput.emitSkipped || emitOutput.diagnostics.length > 0) {
          const diagnostics = emitOutput.diagnostics.concat(
            program.getSemanticDiagnostics(sourceFile),
            program.getSyntacticDiagnostics(sourceFile),
            program.getDeclarationDiagnostics(sourceFile)
          );
          throw getError(diagnostics);
        }
      }
    }

    function writeDeclaration(declarationFile, isOutput) {
      // resolving is important for dealting with relative outDirs
      const filename = pathUtil.resolve(declarationFile.fileName);
      // use the outDir here, not the baseDir, because the declarationFiles are
      // outputs of the build process; baseDir points instead to the inputs.
      // However we have to account for .d.ts files in our inputs that this code
      // is also used for.  Also if no outDir is used, the compiled code ends up
      // alongside the source, so use baseDir in that case too.
      const outputDir = (isOutput && Boolean(outDir)) ? pathUtil.resolve(outDir) : baseDir;
      // I give up; this needs Windows-to-POSIX conversion:
      const sourceModuleId = pathUtil
        .relative(outputDir, filename)
        .slice(0, -DTSLEN)
        .replaceAll(pathUtil.sep, "/");
      function resolveModuleImport(moduleId) {
        const isDeclaredExternalModule = declaredExternalModules.indexOf(moduleId) !== -1;
        let resolved;
        if (options.resolveModuleImport) {
          resolved = options.resolveModuleImport({
            importedModuleId: moduleId,
            currentModuleId: sourceModuleId,
            isDeclaredExternalModule
          });
        }
        if (!resolved) {
          // resolve relative imports relative to the current module id.
          resolved = moduleId.charAt(0) === "."
            ? pathUtil.posix.join(pathUtil.posix.dirname(sourceModuleId), moduleId)
            : moduleId;

          // prefix the import with options.prefix, so that both non-relative imports
          // and relative imports end up prefixed with options.prefix.  We only
          // do this when no resolveModuleImport function is given so that that
          // function has complete control of the imports that get outputed.
          // NOTE: we may want to revisit the isDeclaredExternalModule behavior.
          // discussion is on https://github.com/SitePen/dts-generator/pull/94
          // but currently there's no strong argument against this behavior.
          if (!isDeclaredExternalModule) resolved = `${options.prefix}/${resolved}`;
        }
        return resolved;
      }
      /* For some reason, SourceFile.externalModuleIndicator is missing from 1.6+, so having
        * to use a sledgehammer on the nut */
      if (declarationFile.externalModuleIndicator) {
        let resolvedModuleId = `${options.prefix}/${sourceModuleId}`;
        output.push(`declare module '${resolvedModuleId}' {\n\t`);
        const content = processTree(declarationFile, node => {
          if (node.kind === ts.SyntaxKind.DeclareKeyword) return "";
          if (
            isNodeKindStringLiteral(node) &&
            (isNodeKindExportDeclaration(node.parent) || isNodeKindImportDeclaration(node.parent))
          ) {
            // This block of code is modifying the names of imported modules
            const text = node.text;
            const resolved = resolveModuleImport(text);
            if (resolved) return ` '${resolved}'`;
          }
        });
        output.push(content.replace(nonEmptyLineStart, "$&\t"));
        output.push("\n}\n");
      } else {
        output.push(declarationFile.text);
      }
    }
  }
  return generate;
})();

function transformTypes(sourceFile) {
  let numReplaced = 0;
  debug("transforming:");
  let result = ts.transform(sourceFile, [
    context => {
      const visit = node => {
        node = ts.visitEachChild(node, visit, context);
        if (ts.isTypeNode(node)) {
          const name = node.getText(sourceFile);
          switch (name) {
            // this is wrong, but works
            case "bool": ++numReplaced; return context.factory.createIdentifier("boolean");
            default: if (!/^(?:Binaryen|Relooper)/.test(name)) break;
            case "i8": case "i16": case "i32": case "isize":
            case "u8": case "u16": case "u32": case "usize":
            case "f32": case "f64": ++numReplaced; return context.factory.createIdentifier("number");
          }
        }
        return node;
      };
      return node => ts.visitNode(node, visit);
    }
  ]);
  debug("  replaced " + numReplaced + " AS types with TS types");
  return result;
}

const prefix = "types:assemblyscript";

export function generateSrc() {
  const stdout = [];

  generate({
    project: pathUtil.resolve(__dirname, "..", "src"),
    prefix,
    exclude: [
      "glue/**",
    ],
    stdout
  });

  stdout.push("\n");

  generate({
    project: pathUtil.resolve(__dirname, "..", "std", "assembly", "shared"),
    prefix: prefix + "/std/assembly/shared",
    exclude: [],
    stdout
  });

  stdout.push("\n");

  generate({
    project: pathUtil.resolve(__dirname, "..", "src", "glue"),
    prefix: prefix + "/src/glue",
    exclude: [
      "js/index.ts",
      "js/node.d.ts"
    ],
    stdout
  });

  const source = stdout.join("").replace(/\/\/\/ <reference[^>]*>\r?\n/g, "");
  const sourceFile = ts.createSourceFile("assemblyscript.d.ts", source, ts.ScriptTarget.ESNext, false, ts.ScriptKind.TS);
  const result = transformTypes(sourceFile);
  fs.writeFileSync(
    pathUtil.resolve(__dirname, "..", "dist", "assemblyscript.generated.d.ts"),
    ts.createPrinter().printFile(result.transformed[0])
  );
}

export function generateCli() {
  const stdout = [];

  generate({
    baseDir: pathUtil.resolve(__dirname, ".."),
    files: [
      pathUtil.resolve(__dirname, "..", "cli", "index.d.ts")
    ],
    externs: [
      "./assemblyscript.generated.d.ts"
    ],
    prefix,
    stdout,
    resolveModuleImport: ({ importedModuleId, currentModuleId }) => {
      if (currentModuleId == "cli/index" && importedModuleId == "../src")
        return prefix + "/src/index";

      if (importedModuleId == "binaryen")
        return "binaryen";

      return null;
    },
  });

  const source = stdout.join("");
  const sourceFile = ts.createSourceFile("asc.d.ts", source, ts.ScriptTarget.ESNext, false, ts.ScriptKind.TS);
  const result = transformTypes(sourceFile);
  fs.writeFileSync(
    pathUtil.resolve(__dirname, "..", "dist", "asc.generated.d.ts"),
    ts.createPrinter().printFile(result.transformed[0])
  );
}
