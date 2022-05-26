@global
@operator("+")
@operator.binary("-")
@operator.prefix("~")
@operator.postfix("++")
@unmanaged
@final
@inline
@external("a", "b")
@custom
function a(): void {}
// ERROR 1003: "Identifier expected." in decorators.ts(12,10+1)
// ERROR 1126: "Unexpected end of text." in decorators.ts(12,12+0)
