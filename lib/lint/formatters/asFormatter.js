"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const abstractFormatter_1 = require("tslint/lib/language/formatter/abstractFormatter");
const colorBlue = "\u001b[93m";
const colorYellow = "\u001b[93m";
const colorRed = "\u001b[91m";
const colorReset = "\u001b[0m";
class Formatter extends abstractFormatter_1.AbstractFormatter {
    format(failures) {
        return `${this.mapToMessages(failures).join("\n")}\n`;
    }
    mapToMessages(failures) {
        return failures.map((failure) => {
            var fileName = failure.getFileName();
            var failureString = failure.getFailure();
            var ruleName = failure.getRuleName();
            var lineAndCharacter = failure.getStartPosition().getLineAndCharacter();
            var positionTuple = `:${lineAndCharacter.line + 1}:${lineAndCharacter.character + 1}`;
            if (this.lastSeverity == failure.getRuleSeverity() && this.lastFailure == failureString) {
                return "  in " + fileName + positionTuple;
            }
            else {
                let message = this.lastSeverity ? "\n" : "";
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
Formatter.metadata = {
    formatterName: "as",
    description: "AssemblyScript's TSLint formatter.",
    sample: "Similar to ASC's output.",
    consumer: "human",
};
exports.Formatter = Formatter;
