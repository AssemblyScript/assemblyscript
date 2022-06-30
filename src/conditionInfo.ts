import { TypedElement } from "./program";
import { Type } from "./types";

export class ConditionInfoContainer {
  trueInfo: ConditionInfo[] = [];
  falseInfo: ConditionInfo[] = [];

  switchTrueAndFalse(): void {
    let tmp = this.trueInfo;
    this.trueInfo = this.falseInfo;
    this.falseInfo = tmp;
  }
}

export abstract class ConditionInfo {
  abstract apply(): void;
  abstract recover(): void;
}

export class TypeNarrowInfo extends ConditionInfo {
  constructor(public typedElement: TypedElement, public narrowedType: Type) {
    super();
  }

  apply(): void {
    this.typedElement.narrowType(this.narrowedType);
  }
  recover(): void {
    this.typedElement.recoverType();
  }
}
