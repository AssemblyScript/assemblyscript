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
@operator. // ERROR 1126: "Unexpected end of text."
