import {
  ProgramVisitor,
  File,
  TypeDefinition,
  Namespace,
  Enum,
  EnumValue,
  Global,
  Local,
  FunctionPrototype,
  FunctionTarget,
  FieldPrototype,
  Field,
  PropertyPrototype,
  Property,
  ClassPrototype,
  Class,
  InterfacePrototype,
  Interface,
  Function
} from "../../../program";

export class Base implements ProgramVisitor {
  visitFile(node: File): void {
    node.startFunction.visit(this);
  }
  visitTypeDefinition(node: TypeDefinition): void {}
  visitNamespace(node: Namespace): void {}
  visitEnum(node: Enum): void {}
  visitEnumValue(node: EnumValue): void {}
  visitGlobal(node: Global): void {}
  visitLocal(node: Local): void {}
  visitFunctionPrototype(node: FunctionPrototype): void {}
  visitFunction(node: Function): void {}
  visitFunctionTarget(node: FunctionTarget): void {}
  visitFieldPrototype(node: FieldPrototype): void {}
  visitField(node: Field): void {}
  visitPropertyPrototype(node: PropertyPrototype): void {}
  visitProperty(node: Property): void {}
  visitClassPrototype(node: ClassPrototype): void {}
  visitClass(node: Class): void {}
  visitInterfacePrototype(node: InterfacePrototype): void {}
  visitInterface(node: Interface): void {}
}
