// © 2015-2019 SitePen, Inc. New BSD License.
// see: https://github.com/SitePen/dts-generator
(function() {
  const fs = require("fs");
  const glob = require("glob");
  const mkdirp = require("mkdirp");
  const os = require("os");
  const pathUtil = require("path");
  const ts = require("typescript");

  // declare some constants so we don't have magic integers without explanation
  const DTSLEN = '.d.ts'.length;
  const filenameToMid = (function () {
    if (pathUtil.sep === '/') {
      return function (filename) {
        return filename;
      };
    }
    else {
      const separatorExpression = new RegExp(pathUtil.sep.replace('\\', '\\\\'), 'g');
      return function (filename) {
        return filename.replace(separatorExpression, '/');
      };
    }
  })();

  /**
   * A helper function that takes TypeScript diagnostic errors and returns an error
   * object.
   * @param diagnostics The array of TypeScript Diagnostic objects
   */
  function getError(diagnostics) {
    let message = 'Declaration generation failed';
    diagnostics.forEach(function (diagnostic) {
      // not all errors have an associated file: in particular, problems with a
      // the tsconfig.json don't; the messageText is enough to diagnose in those
      // cases.
      if (diagnostic.file) {
        const position = diagnostic.file.getLineAndCharacterOfPosition(diagnostic.start);
        message +=
          `\n${diagnostic.file.fileName}(${position.line + 1},${position.character + 1}): ` +
          `error TS${diagnostic.code}: ${diagnostic.messageText}`;
      }
      else {
        message += `\nerror TS${diagnostic.code}: ${diagnostic.messageText}`;
      }
    });
    const error = new Error(message);
    error.name = 'EmitterError';
    return error;
  }
  function getFilenames(baseDir, files) {
    return files.map(function (filename) {
      const resolvedFilename = pathUtil.resolve(filename);
      if (resolvedFilename.indexOf(baseDir) === 0) {
        return resolvedFilename;
      }
      return pathUtil.resolve(baseDir, filename);
    });
  }
  function processTree(sourceFile, replacer) {
    let code = '';
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
      }
      else {
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
    const configText = fs.readFileSync(fileName, { encoding: 'utf8' });
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
  function isNodeKindImportDeclaration(value) {
    return value && value.kind === ts.SyntaxKind.ImportDeclaration;
  }
  function isNodeKindExternalModuleReference(value) {
    return value && value.kind === ts.SyntaxKind.ExternalModuleReference;
  }
  function isNodeKindStringLiteral(value) {
    return value && value.kind === ts.SyntaxKind.StringLiteral;
  }
  function isNodeKindExportDeclaration(value) {
    return value && value.kind === ts.SyntaxKind.ExportDeclaration;
  }
  function isNodeKindExportAssignment(value) {
    return value && value.kind === ts.SyntaxKind.ExportAssignment;
  }
  function isNodeKindModuleDeclaration(value) {
    return value && value.kind === ts.SyntaxKind.ModuleDeclaration;
  }
  function generate(options) {
    if (Boolean(options.main) !== Boolean(options.name)) {
      if (options.name) {
        // since options.name used to do double duty as the prefix, let's be
        // considerate and point out that name should be replaced with prefix.
        // TODO update this error message when we finalize which version this change
        // will be released in.
        throw new Error(`name and main must be used together.  Perhaps you want prefix instead of
        name? In dts-generator version 2.1, name did double duty as the option to
        use to prefix module names with, but in >=2.2 the name option was split
        into two; prefix is what is now used to prefix imports and module names
        in the output.`);
      }
      else {
        throw new Error('name and main must be used together.');
      }
    }
    const noop = function () { /* nop */ };
    const sendMessage = options.sendMessage || noop;
    const verboseMessage = options.verbose ? sendMessage : noop;
    let compilerOptions = {};
    let files = options.files;
    /* following tsc behaviour, if a project is specified, or if no files are specified then
      * attempt to load tsconfig.json */
    if (options.project || !options.files || options.files.length === 0) {
      verboseMessage(`project = "${options.project || options.baseDir}"`);
      // if project isn't specified, use baseDir.  If it is and it's a directory,
      // assume we want tsconfig.json in that directory.  If it is a file, though
      // use that as our tsconfig.json.  This allows for projects that have more
      // than one tsconfig.json file.
      let tsconfigFilename;
      if (options.project) {
        if (fs.lstatSync(options.project).isDirectory()) {
          tsconfigFilename = pathUtil.join(options.project, 'tsconfig.json');
        }
        else {
          // project isn't a diretory, it's a file
          tsconfigFilename = options.project;
        }
      }
      else {
        tsconfigFilename = pathUtil.join(options.baseDir, 'tsconfig.json');
      }
      if (fs.existsSync(tsconfigFilename)) {
        verboseMessage(`  parsing "${tsconfigFilename}"`);
        [files, compilerOptions] = getTSConfig(tsconfigFilename);
      }
      else {
        sendMessage(`No "tsconfig.json" found at "${tsconfigFilename}"!`);
        return new Promise(function (resolve, reject) {
          reject(new SyntaxError('Unable to resolve configuration.'));
        });
      }
    }
    const eol = options.eol || os.EOL;
    const nonEmptyLineStart = new RegExp(eol + '(?!' + eol + '|$)', 'g');
    const indent = options.indent === undefined ? '\t' : options.indent;
    // use input values if tsconfig leaves any of these undefined.
    // this is for backwards compatibility
    compilerOptions.declaration = true;
    compilerOptions.target = compilerOptions.target || ts.ScriptTarget.Latest; // is this necessary?
    compilerOptions.moduleResolution = compilerOptions.moduleResolution || options.moduleResolution;
    compilerOptions.outDir = compilerOptions.outDir || options.outDir;
    // TODO should compilerOptions.baseDir come into play?
    const baseDir = pathUtil.resolve(compilerOptions.rootDir || options.project || options.baseDir);
    const outDir = compilerOptions.outDir;
    verboseMessage(`baseDir = "${baseDir}"`);
    verboseMessage(`target = ${compilerOptions.target}`);
    verboseMessage(`outDir = ${compilerOptions.outDir}`);
    verboseMessage(`rootDir = ${compilerOptions.rootDir}`);
    verboseMessage(`moduleResolution = ${compilerOptions.moduleResolution}`);
    const filenames = getFilenames(baseDir, files);
    verboseMessage('filenames:');
    filenames.forEach(name => { verboseMessage('  ' + name); });
    const excludesMap = {};
    options.exclude = options.exclude || ['node_modules/**/*.d.ts'];
    options.exclude && options.exclude.forEach(function (filename) {
      glob.sync(filename, { cwd: baseDir }).forEach(function (globFileName) {
        excludesMap[filenameToMid(pathUtil.resolve(baseDir, globFileName))] = true;
      });
    });
    if (options.exclude) {
      verboseMessage('exclude:');
      options.exclude.forEach(name => { verboseMessage('  ' + name); });
    }
    if (!options.stdout) mkdirp.sync(pathUtil.dirname(options.out));
    /* node.js typings are missing the optional mode in createWriteStream options and therefore
      * in TS 1.6 the strict object literal checking is throwing, therefore a hammer to the nut */
    const output = options.stdout || fs.createWriteStream(options.out, { mode: parseInt('644', 8) });
    const host = ts.createCompilerHost(compilerOptions);
    const program = ts.createProgram(filenames, compilerOptions, host);
    function writeFile(filename, data) {
      // Compiler is emitting the non-declaration file, which we do not care about
      if (filename.slice(-DTSLEN) !== '.d.ts') {
        return;
      }
      writeDeclaration(ts.createSourceFile(filename, data, compilerOptions.target, true), true);
    }
    let declaredExternalModules = [];
    return new Promise(function (resolve, reject) {
      output.on('close', () => { resolve(undefined); });
      output.on('error', reject);
      if (options.externs) {
        options.externs.forEach(function (path) {
          sendMessage(`Writing external dependency ${path}`);
          output.write(`/// <reference path="${path}" />` + eol);
        });
      }
      if (options.types) {
        options.types.forEach(function (type) {
          sendMessage(`Writing external @types package dependency ${type}`);
          output.write(`/// <reference types="${type}" />` + eol);
        });
      }
      sendMessage('processing:');
      let mainExportDeclaration = false;
      let mainExportAssignment = false;
      let foundMain = false;
      program.getSourceFiles().forEach(function (sourceFile) {
        processTree(sourceFile, function (node) {
          if (isNodeKindModuleDeclaration(node)) {
            const name = node.name;
            if (isNodeKindStringLiteral(name)) {
              declaredExternalModules.push(name.text);
            }
          }
          return null;
        });
      });
      program.getSourceFiles().some(function (sourceFile) {
        // Source file is a default library, or other dependency from another project, that should not be included in
        // our bundled output
        if (pathUtil.normalize(sourceFile.fileName).indexOf(baseDir + pathUtil.sep) !== 0) {
          return;
        }
        if (excludesMap[filenameToMid(pathUtil.normalize(sourceFile.fileName))]) {
          return;
        }
        sendMessage(`  ${sourceFile.fileName}`);
        // Source file is already a declaration file so should does not need to be pre-processed by the emitter
        if (sourceFile.fileName.slice(-DTSLEN) === '.d.ts') {
          writeDeclaration(sourceFile, false);
          return;
        }
        // We can optionally output the main module if there's something to export.
        if (options.main && options.main === (options.prefix + filenameToMid(sourceFile.fileName.slice(baseDir.length, -3)))) {
          foundMain = true;
          ts.forEachChild(sourceFile, function (node) {
            mainExportDeclaration = mainExportDeclaration || isNodeKindExportDeclaration(node);
            mainExportAssignment = mainExportAssignment || isNodeKindExportAssignment(node);
          });
        }
        const emitOutput = program.emit(sourceFile, writeFile);
        if (emitOutput.emitSkipped || emitOutput.diagnostics.length > 0) {
          reject(getError(emitOutput.diagnostics
            .concat(program.getSemanticDiagnostics(sourceFile))
            .concat(program.getSyntacticDiagnostics(sourceFile))
            .concat(program.getDeclarationDiagnostics(sourceFile))));
          return true;
        }
      });
      if (options.main && !foundMain) {
        throw new Error(`main module ${options.main} was not found`);
      }
      if (options.main) {
        output.write(`declare module '${options.name}' {` + eol + indent);
        if (compilerOptions.target >= ts.ScriptTarget.ES2015) {
          if (mainExportAssignment) {
            output.write(`export {default} from '${options.main}';` + eol + indent);
          }
          if (mainExportDeclaration) {
            output.write(`export * from '${options.main}';` + eol);
          }
        }
        else {
          output.write(`import main = require('${options.main}');` + eol + indent);
          output.write('export = main;' + eol);
        }
        output.write('}' + eol);
        sendMessage(`Aliased main module ${options.name} to ${options.main}`);
      }
      if (!options.stdout) {
        sendMessage(`output to "${options.out}"`);
        output.end();
      }
    });
    function writeDeclaration(declarationFile, isOutput) {
      // resolving is important for dealting with relative outDirs
      const filename = pathUtil.resolve(declarationFile.fileName);
      // use the outDir here, not the baseDir, because the declarationFiles are
      // outputs of the build process; baseDir points instead to the inputs.
      // However we have to account for .d.ts files in our inputs that this code
      // is also used for.  Also if no outDir is used, the compiled code ends up
      // alongside the source, so use baseDir in that case too.
      const outputDir = (isOutput && Boolean(outDir)) ? pathUtil.resolve(outDir) : baseDir;
      const sourceModuleId = filenameToMid(filename.slice(outputDir.length + 1, -DTSLEN));
      const currentModuleId = filenameToMid(filename.slice(outputDir.length + 1, -DTSLEN));
      function resolveModuleImport(moduleId) {
        const isDeclaredExternalModule = declaredExternalModules.indexOf(moduleId) !== -1;
        let resolved;
        if (options.resolveModuleImport) {
          resolved = options.resolveModuleImport({
            importedModuleId: moduleId,
            currentModuleId: currentModuleId,
            isDeclaredExternalModule: isDeclaredExternalModule
          });
        }
        if (!resolved) {
          // resolve relative imports relative to the current module id.
          if (moduleId.charAt(0) === '.') {
            resolved = filenameToMid(pathUtil.join(pathUtil.dirname(sourceModuleId), moduleId));
          }
          else {
            resolved = moduleId;
          }
          // prefix the import with options.prefix, so that both non-relative imports
          // and relative imports end up prefixed with options.prefix.  We only
          // do this when no resolveModuleImport function is given so that that
          // function has complete control of the imports that get outputed.
          // NOTE: we may want to revisit the isDeclaredExternalModule behavior.
          // discussion is on https://github.com/SitePen/dts-generator/pull/94
          // but currently there's no strong argument against this behavior.
          if (Boolean(options.prefix) && !isDeclaredExternalModule) {
            resolved = `${options.prefix}/${resolved}`;
          }
        }
        return resolved;
      }
      /* For some reason, SourceFile.externalModuleIndicator is missing from 1.6+, so having
        * to use a sledgehammer on the nut */
      if (declarationFile.externalModuleIndicator) {
        let resolvedModuleId = sourceModuleId;
        if (options.resolveModuleId) {
          const resolveModuleIdResult = options.resolveModuleId({
            currentModuleId: currentModuleId
          });
          if (resolveModuleIdResult) {
            resolvedModuleId = resolveModuleIdResult;
          }
          else if (options.prefix) {
            resolvedModuleId = `${options.prefix}/${resolvedModuleId}`;
          }
        }
        else if (options.prefix) {
          resolvedModuleId = `${options.prefix}/${resolvedModuleId}`;
        }
        output.write('declare module \'' + resolvedModuleId + '\' {' + eol + indent);
        const content = processTree(declarationFile, function (node) {
          if (isNodeKindExternalModuleReference(node)) {
            // TODO figure out if this branch is possible, and if so, write a test
            // that covers it.
            const expression = node.expression;
            // convert both relative and non-relative module names in import = require(...)
            // statements.
            const resolved = resolveModuleImport(expression.text);
            return ` require('${resolved}')`;
          }
          else if (node.kind === ts.SyntaxKind.DeclareKeyword) {
            return '';
          }
          else if (isNodeKindStringLiteral(node) && node.parent &&
            (isNodeKindExportDeclaration(node.parent) || isNodeKindImportDeclaration(node.parent))) {
            // This block of code is modifying the names of imported modules
            const text = node.text;
            const resolved = resolveModuleImport(text);
            if (resolved) {
              return ` '${resolved}'`;
            }
          }
        });
        output.write(content.replace(nonEmptyLineStart, '$&' + indent));
        output.write(eol + '}' + eol);
      }
      else {
        output.write(declarationFile.text);
      }
    }
  }
  exports.default = generate;
})();

const path = require("path");
const fs = require("fs");
const stream = require("stream");
const util = require("util");

function OutputStream(options) {
  stream.Writable.call(this, options);
  this.chunks = [];
}
util.inherits(OutputStream, stream.Writable);
OutputStream.prototype._write = function (chunk, enc, cb) {
  this.chunks.push(chunk);
  cb();
};
OutputStream.prototype.toBuffer = function () {
  return Buffer.concat(this.chunks);
};
OutputStream.prototype.toString = function () {
  return this.toBuffer().toString("utf8");
};

const stdout = new OutputStream();
stdout.write(`declare module 'assemblyscript' {
    export * from 'assemblyscript/src/index';
}
`);

module.exports.default({
  project: path.resolve(__dirname, "..", "src"),
  prefix: "assemblyscript",
  exclude: [
    "glue/js/index.ts",
    "glue/js/node.d.ts",
    "glue/binaryen.d.ts"
  ],
  verbose: true,
  sendMessage: console.log,
  stdout: stdout
});

stdout.write("\n");

module.exports.default({
  project: path.resolve(__dirname, "..", "std/assembly/shared"),
  prefix: "assemblyscript/std/assembly/shared",
  exclude: [],
  verbose: true,
  sendMessage: console.log,
  stdout: stdout
});

var source = stdout.toString().replace(/\/\/\/ <reference[^>]*>\r?\n/g, "");

const ts = require("typescript");
const sourceFile = ts.createSourceFile("assemblyscript.d.ts", source, ts.ScriptTarget.ESNext, false, ts.ScriptKind.TS);

console.log("transforming:");
var numReplaced = 0;
const result = ts.transform(sourceFile, [
  function (context) {
    const visit = node => {
      node = ts.visitEachChild(node, visit, context);
      if (ts.isTypeNode(node)) {
        const name = node.getText(sourceFile);
        switch (name) {
          // this is wrong, but works
          case "bool": ++numReplaced; return ts.createIdentifier("boolean");
          default: if (!/^(?:Binaryen|Relooper)/.test(name)) break;
          case "i8": case "i16": case "i32": case "isize":
          case "u8": case "u16": case "u32": case "usize":
          case "f32": case "f64": ++numReplaced; return ts.createIdentifier("number");
        }
      }
      return node;
    };
    return node => ts.visitNode(node, visit);
  }
]);
console.log("  replaced " + numReplaced + " AS types with JS types");

if (!fs.existsSync(path.join(__dirname, "..", "dist"))) {
  fs.mkdirSync(path.join(__dirname, "..", "dist"));
}
fs.writeFileSync(
  path.resolve(__dirname, "..", "dist", "assemblyscript.d.ts"),
  ts.createPrinter().printFile(result.transformed[0]),
  "utf8"
);
