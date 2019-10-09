# AST Transformer

After parsing the files imported by the entry files, the Abstract Syntax Tree (AST) is made.  With the `--transform` argument, the compiler will load any js files provided and if the exports include a Transformer class.

## Transformer Class

By extending the Transformer class your subclass gains access to the `Parser`, `writeFile` function, `baseDir` is where the project's root is located, and `stdout` and `stderr`

```ts
export abstract class Transformer {
  constructor(
    protected parser: Parser,
    protected writeFile: FileWriter,
    protected baseDir: string,
    protected stdout: (data: string) => void,
    protected stderr: (data: string) => void
  ) {}

  get program(): Program {
    return this.parser.program;
  }

  abstract afterParse(): void;
}
```

### Example ASTPrinter

Below is an example of visiting each source that is a user entry file and creating a string from visiting the AST.

```ts
/**
 * Example of using a transformer to print the AST for each entry file
 */
export default class Printer extends Transformer {
  afterParse(): void {
    const files = this.parser.program.sources.filter(
      _source => _source.sourceKind == SourceKind.USER_ENTRY
    );
    files.forEach(source => {
      // Create a string of source rebuilt from the AST node `source`
      const sourceText: string = ASTBuilder.build(source);
      this.stdout(sourceText);
    });
  }
}
```

To try it out first you might need to build the transformer files:

```bash
npm run build
```

Then in the test directory build the sample assemblyscript file:

```bash
cd tests && npm run build
```

## Visitors

There is a base AST visitor class in `src/base.ts` which visits each node in the AST.  If extended, overwritten methods visit methods will  be called when traversing the tree.  

For example, `src/examples/functions.ts` collects the names of function and method declarations.

```ts
class FunctionVisitor extends BaseVisitor {
  funcsFound: string[] = [];
  currentClass: string;

  visitClassDeclaration(node: ClassDeclaration): void {
    // Remember current class
    this.currentClass = node.name.text;
    // Important to pass call parent visitor if you want to visit child nodes
    super.visitClassDeclaration(node);
    // Note can't call `super.visit(node) because it will call this function again.
  }

  visitFunctionDeclaration(node: FunctionDeclaration): void {
    this.funcsFound.push("Function: " + node.name.text);
  }

  visitMethodDeclaration(node: MethodDeclaration): void {
    this.funcsFound.push("Method: " + this.currentClass + "." + node.name.text);
  }

  static visit(node: Node): string {
    const visitor = new FunctionVisitor();
    visitor.visit(node);
    return visitor.funcsFound.join("\n");
  }
}
```
