import { AbstractFormatter } from "tslint/lib/language/formatter/abstractFormatter";
import { IFormatterMetadata } from "tslint/lib/language/formatter/formatter";
import { RuleFailure } from "tslint/lib/language/rule/rule";

const colorBlue: string = "\u001b[93m";
const colorYellow: string = "\u001b[93m";
const colorRed: string = "\u001b[91m";
const colorReset: string = "\u001b[0m";

export class Formatter extends AbstractFormatter {

  static metadata: IFormatterMetadata = {
    formatterName: "as",
    description: "AssemblyScript's TSLint formatter.",
    sample: "Similar to ASC's output.",
    consumer: "human",
  };

  lastSeverity: string;
  lastFailure: string;

  format(failures: RuleFailure[]): string {
    return `${this.mapToMessages(failures).join("\n")}\n`;
  }

  mapToMessages(failures: RuleFailure[]): string[] {
    return failures.map((failure: RuleFailure) => {
      const fileName = failure.getFileName();
      const failureString = failure.getFailure();
      const ruleName = failure.getRuleName();
      const lineAndCharacter = failure.getStartPosition().getLineAndCharacter();
      const positionTuple = `:${lineAndCharacter.line + 1}:${lineAndCharacter.character + 1}`;
      if (this.lastSeverity == failure.getRuleSeverity() && this.lastFailure == failureString) {
        return "  in " + fileName + positionTuple;
      } else {
        var message = this.lastSeverity ? "\n" : "";
        switch (this.lastSeverity = failure.getRuleSeverity()) {
          case "warning": {
            message += colorYellow + "WARNING:" + colorReset;
            break;
          }
          case "error": {
            message += colorRed + "ERROR:" + colorReset;
            break;
          }
          default: {
            message += failure.getRuleSeverity();
            break;
          }
        }
        this.lastFailure = failureString;
        return message + " " + failureString + " [" + ruleName + "]\n  in " + fileName + positionTuple;
      }
    });
  }
}
