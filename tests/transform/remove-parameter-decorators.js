// Example transform proving that preserved parameter decorators can be stripped
// during afterInitialize before compilation rejects them.
console.log("Parameter decorator removal transform loaded");

const NodeKind = {
  NamedType: 1,
  FunctionType: 2,
  Assertion: 7,
  Binary: 8,
  Call: 9,
  Class: 10,
  Comma: 11,
  ElementAccess: 12,
  Function: 14,
  InstanceOf: 15,
  Literal: 16,
  New: 17,
  Parenthesized: 20,
  PropertyAccess: 21,
  Ternary: 22,
  UnaryPostfix: 27,
  UnaryPrefix: 28,
  Block: 30,
  Do: 33,
  ExportDefault: 36,
  Expression: 38,
  For: 39,
  ForOf: 40,
  If: 41,
  Return: 43,
  Switch: 44,
  Throw: 45,
  Try: 46,
  Variable: 47,
  Void: 48,
  While: 49,
  ClassDeclaration: 51,
  EnumDeclaration: 52,
  FieldDeclaration: 54,
  FunctionDeclaration: 55,
  InterfaceDeclaration: 57,
  MethodDeclaration: 58,
  NamespaceDeclaration: 59,
  TypeDeclaration: 60,
  VariableDeclaration: 61
};

const LiteralKind = {
  Template: 3,
  Array: 5,
  Object: 6
};

export function afterInitialize(program) {
  console.log("- afterInitialize strip parameter decorators");
  for (const source of program.sources) {
    clearStatements(source.statements);
  }
}

function clearStatements(statements) {
  if (!statements) return;
  for (const statement of statements) {
    clearStatement(statement);
  }
}

function clearStatement(statement) {
  if (!statement) return;
  switch (statement.kind) {
    case NodeKind.Block:
      clearStatements(statement.statements);
      break;
    case NodeKind.ClassDeclaration:
    case NodeKind.InterfaceDeclaration:
      clearClassDeclaration(statement);
      break;
    case NodeKind.Do:
      clearStatement(statement.body);
      clearExpression(statement.condition);
      break;
    case NodeKind.EnumDeclaration:
      for (const value of statement.values) {
        clearVariableLike(value);
      }
      break;
    case NodeKind.ExportDefault:
      clearDeclaration(statement.declaration);
      break;
    case NodeKind.Expression:
      clearExpression(statement.expression);
      break;
    case NodeKind.For:
      clearStatement(statement.initializer);
      clearExpression(statement.condition);
      clearExpression(statement.incrementor);
      clearStatement(statement.body);
      break;
    case NodeKind.ForOf:
      clearStatement(statement.variable);
      clearExpression(statement.iterable);
      clearStatement(statement.body);
      break;
    case NodeKind.FunctionDeclaration:
    case NodeKind.MethodDeclaration:
      clearFunctionDeclaration(statement);
      break;
    case NodeKind.If:
      clearExpression(statement.condition);
      clearStatement(statement.ifTrue);
      clearStatement(statement.ifFalse);
      break;
    case NodeKind.NamespaceDeclaration:
      clearStatements(statement.members);
      break;
    case NodeKind.Return:
      clearExpression(statement.value);
      break;
    case NodeKind.Switch:
      clearExpression(statement.condition);
      for (const switchCase of statement.cases) {
        clearExpression(switchCase.label);
        clearStatements(switchCase.statements);
      }
      break;
    case NodeKind.Throw:
      clearExpression(statement.value);
      break;
    case NodeKind.Try:
      clearStatements(statement.bodyStatements);
      clearStatements(statement.catchStatements);
      clearStatements(statement.finallyStatements);
      break;
    case NodeKind.TypeDeclaration:
      clearTypeDeclaration(statement);
      break;
    case NodeKind.Variable:
      for (const declaration of statement.declarations) {
        clearVariableLike(declaration);
      }
      break;
    case NodeKind.Void:
      clearExpression(statement.expression);
      break;
    case NodeKind.While:
      clearExpression(statement.condition);
      clearStatement(statement.body);
      break;
  }
}

function clearDeclaration(declaration) {
  if (!declaration) return;
  switch (declaration.kind) {
    case NodeKind.ClassDeclaration:
    case NodeKind.InterfaceDeclaration:
      clearClassDeclaration(declaration);
      break;
    case NodeKind.EnumDeclaration:
      for (const value of declaration.values) {
        clearVariableLike(value);
      }
      break;
    case NodeKind.FieldDeclaration:
    case NodeKind.VariableDeclaration:
      clearVariableLike(declaration);
      break;
    case NodeKind.FunctionDeclaration:
    case NodeKind.MethodDeclaration:
      clearFunctionDeclaration(declaration);
      break;
    case NodeKind.NamespaceDeclaration:
      clearStatements(declaration.members);
      break;
    case NodeKind.TypeDeclaration:
      clearTypeDeclaration(declaration);
      break;
  }
}

function clearClassDeclaration(declaration) {
  clearTypeParameters(declaration.typeParameters);
  clearType(declaration.extendsType);
  clearTypes(declaration.implementsTypes);
  clearIndexSignature(declaration.indexSignature);
  for (const member of declaration.members) {
    clearDeclaration(member);
  }
}

function clearFunctionDeclaration(declaration) {
  clearTypeParameters(declaration.typeParameters);
  clearFunctionType(declaration.signature);
  clearStatement(declaration.body);
}

function clearTypeDeclaration(declaration) {
  clearTypeParameters(declaration.typeParameters);
  clearType(declaration.type);
}

function clearVariableLike(declaration) {
  clearType(declaration.type);
  clearExpression(declaration.initializer);
}

function clearExpression(expression) {
  if (!expression) return;
  switch (expression.kind) {
    case NodeKind.Assertion:
      clearExpression(expression.expression);
      clearType(expression.toType);
      break;
    case NodeKind.Binary:
      clearExpression(expression.left);
      clearExpression(expression.right);
      break;
    case NodeKind.Call:
      clearExpression(expression.expression);
      clearTypes(expression.typeArguments);
      clearExpressions(expression.args);
      break;
    case NodeKind.Class:
      clearClassDeclaration(expression.declaration);
      break;
    case NodeKind.Comma:
      clearExpressions(expression.expressions);
      break;
    case NodeKind.ElementAccess:
      clearExpression(expression.expression);
      clearExpression(expression.elementExpression);
      break;
    case NodeKind.Function:
      clearFunctionDeclaration(expression.declaration);
      break;
    case NodeKind.InstanceOf:
      clearExpression(expression.expression);
      clearType(expression.isType);
      break;
    case NodeKind.Literal:
      clearLiteral(expression);
      break;
    case NodeKind.New:
      clearTypes(expression.typeArguments);
      clearExpressions(expression.args);
      break;
    case NodeKind.Parenthesized:
      clearExpression(expression.expression);
      break;
    case NodeKind.PropertyAccess:
      clearExpression(expression.expression);
      break;
    case NodeKind.Ternary:
      clearExpression(expression.condition);
      clearExpression(expression.ifThen);
      clearExpression(expression.ifElse);
      break;
    case NodeKind.UnaryPostfix:
    case NodeKind.UnaryPrefix:
      clearExpression(expression.operand);
      break;
  }
}

function clearExpressions(expressions) {
  if (!expressions) return;
  for (const expression of expressions) {
    clearExpression(expression);
  }
}

function clearLiteral(literal) {
  switch (literal.literalKind) {
    case LiteralKind.Array:
      clearExpressions(literal.elementExpressions);
      break;
    case LiteralKind.Object:
      clearExpressions(literal.values);
      break;
    case LiteralKind.Template:
      clearExpressions(literal.expressions);
      break;
  }
}

function clearType(type) {
  if (!type) return;
  switch (type.kind) {
    case NodeKind.NamedType:
      clearTypes(type.typeArguments);
      break;
    case NodeKind.FunctionType:
      clearFunctionType(type);
      break;
  }
}

function clearTypes(types) {
  if (!types) return;
  for (const type of types) {
    clearType(type);
  }
}

function clearTypeParameters(typeParameters) {
  if (!typeParameters) return;
  for (const typeParameter of typeParameters) {
    clearType(typeParameter.extendsType);
    clearType(typeParameter.defaultType);
  }
}

function clearIndexSignature(indexSignature) {
  if (!indexSignature) return;
  clearType(indexSignature.keyType);
  clearType(indexSignature.valueType);
}

function clearFunctionType(signature) {
  if (!signature) return;
  signature.explicitThisDecorators = null;
  clearType(signature.explicitThisType);
  for (const parameter of signature.parameters) {
    parameter.decorators = null;
    clearType(parameter.type);
    clearExpression(parameter.initializer);
  }
  clearType(signature.returnType);
}
