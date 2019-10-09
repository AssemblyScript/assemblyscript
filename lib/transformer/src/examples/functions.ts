import { SourceKind, FunctionDeclaration, Node, MethodDeclaration, ClassDeclaration } from '../ast';
import { Transformer } from "../transformer";
import { BaseVisitor } from "../base";

/**
 * Example of using a transformer to print the AST for each entry file
 */
export default class FunctionLister extends Transformer {
  afterParse(): void {
    const files = this.parser.program.sources.filter(
      _source => _source.sourceKind == SourceKind.USER_ENTRY
    );
    files.forEach(source => {
      // Create a string of source rebuilt from the AST node `source`
      this.stdout(FunctionVisitor.visit(source) + "\n");
    });
  }
}

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
