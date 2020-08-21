// variable can be shadowed by a type
const globalType: i32 = 2;
type globalType = bool;
globalType;
var globalType_test: globalType;

type typeGlobal = bool;
const typeGlobal: i32 = 3;
var typeGlobal_test: typeGlobal;
typeGlobal;

// namespace can be shadowed by a type
namespace namespaceType { export function test(): void {} }
type namespaceType = i32;
namespaceType.test();
var namespaceType_test: namespaceType;

type typeNamespace = i32;
namespace typeNamespace { export function test(): void {} }
var typeNamespace_test: typeNamespace;
typeNamespace.test();

// function can be shadowed by a type
function functionType(): void {}
type functionType = i32;
functionType();
var functionType_test: functionType;

type typeFunction = i32;
function typeFunction(): void {}
var typeFunction_test: typeFunction;
typeFunction();

// class can join with namespace
class classNamespace { static test1(): void {} }
namespace classNamespace { export function test2(): void {} }
classNamespace.test1();
classNamespace.test2();

namespace namespaceClass { export function test1(): void {} } // TS2434, but possible in AS
class namespaceClass { static test2(): void {} }
namespaceClass.test1();
namespaceClass.test2();

// function can join with namespace
function functionNamespace(): void {}
namespace functionNamespace { export function test(): void {} }
functionNamespace();
functionNamespace.test();

namespace namespaceFunction { export function test(): void {} } // TS2434, but possible in AS
function namespaceFunction(): void {}
namespaceFunction.test();
namespaceFunction();

// enum can join with namespace
enum enumNamespace { val = 1 }
namespace enumNamespace { export function test(): void {} }
enumNamespace.val;
enumNamespace.test();

namespace namespaceEnum { export function test(): void {} }
enum namespaceEnum { val = 2 }
namespaceEnum.test();
namespaceEnum.val;

// namespace can join with namespace
namespace namespaceNamespace { export function test1(): void {} }
namespace namespaceNamespace { export function test2(): void {} }
namespaceNamespace.test1();
namespaceNamespace.test2();
