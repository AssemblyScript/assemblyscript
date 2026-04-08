function regularEmpty(@first): void {}
function firstEmpty(@first, value: i32): void {}
function regularWrongPos(value @first: i32): void {}
function regularWrongPos2(value: i32 @first): void {}
function restWrongPos(...values @rest: i32[]): void {}
function selfWrongPos(this: i32 @self): void {}
function noLits(@123 value: i32): void {}
function noExprs(@(a + b) value: i32): void {}
