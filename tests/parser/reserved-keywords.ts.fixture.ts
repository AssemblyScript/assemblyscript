function alsoIdentifier(readonly: i32): void /* {readonly} */ {}
class AClass {
  constructor(readonly: i32) /* {readonly} */ {}
  constructor(readonly readonly: i32) /* {readonly} */ {}
}
type type = i32;
var type: i32;
type = 123;
namespace namespace {}
var namespace: i32;
namespace = 123;
abstract class AClass {}
var abstract: i32;
abstract = 123;
