import { forty_one } from "./data";
import "./globalTwo";

// @ts-ignore: decorator
@global function answerToLife(): i32 { return forty_one + ONE; }

assert(answerToLife());
