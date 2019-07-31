import { BaseVisitor } from './base';
import { Node, ClassDeclaration, Parser, FieldDeclaration, MethodDeclaration } from 'assemblyscript';
import { Writer } from '..';

class Transform extends BaseVisitor {
  currentNode: Node[] = [];

  transfrom<T extends Node>(node: T): T {
    this.currentNode.push(node);
    this.visit(node);
    return <T> this.currentNode.pop();
  }
}

type classTransformer = (_class: ClassDeclaration) => ClassDeclaration;

class ClassWriter extends Transform {

  constructor(parser: Parser, writer: Writer, transformer: classTransformer) {
    super(parser, writer);
  }

  visitClassDeclaration(_class: ClassDeclaration): void {
    // tslint:disable-next-line: as-types
    _class.members = _class.members.map((member) => this.transfrom(member));
  }

  visitMethodDeclaration(_method: MethodDeclaration): void {

  }

  visitFieldDeclaration(field: FieldDeclaration): void {
    // field.type!.
  }



}


