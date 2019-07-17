import { ASTVisitor as IVisitor, Node} from 'assemblyscript';
import { Visitor } from '../visitor';

export interface ASTVisitor extends IVisitor, Visitor<Node>{}

export * from "./base";
export * from "./empty";