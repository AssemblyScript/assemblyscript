import { TypedElement } from "./program";
import { Type } from "./types";

export class ConditionInfoContainer {
  trueInfo: ConditionInfo[] = [];
  falseInfo: ConditionInfo[] = [];

  switchTrueAndFalse(): void {
    let tmp = this.trueInfo;
    this.trueInfo = this.falseInfo
    this.falseInfo = tmp
  }
}

export class ConditionInfo {
  apply(): void {}
  recover(): void {}
}

export class TypeNarrowInfo extends ConditionInfo {
  constructor(public typedElement: TypedElement, public narrowedType: Type) {
    super();
  }

  override apply(): void {
    this.typedElement.narrowType(this.narrowedType);
  }
  override recover(): void {
    this.typedElement.recoverType();
  }
}
