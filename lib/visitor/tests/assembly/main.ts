//@nearfile out
// These imports need to be copied properly
import { storage, context, ContractPromise, logging, util } from "near-runtime-ts";
import { FooBar, ContainerClass, AnotherContainerClass } from "./model";
import { PromiseArgs, MyCallbackResult, MyContractPromiseResult } from "./model";

export function doNothing(): void {

}

export function add(x: i32, y: i32): i32 {
    return x + y;
}

export function rewrapFoobar(container: ContainerClass): AnotherContainerClass {
    let result = new AnotherContainerClass();
    result.foobars = [[<FooBar>container.foobar]];
    return result;
}

export function unwrapFoobar(container: AnotherContainerClass): FooBar {
    return <FooBar>container.foobars[0][0];
}

export function getStringArrayLength(arr: string[]): i32 {
    let length: i32 = arr.length;
    //@ts-ignore
    logging.log("getStringArrayLength: " + length.toString());
    return arr.length;
}

export function convertFoobars(foobars: Array<FooBar>): Array<ContainerClass> {
    return foobars.map<ContainerClass>(foobar => ({ foobar }));
}

export function callbackWithName(args: PromiseArgs): MyCallbackResult {
    let contractResults = ContractPromise.getResults();
    let allRes = new Array<MyContractPromiseResult>(contractResults.length);
    for (let i = 0; i < contractResults.length; ++i) {
        allRes[i] = new MyContractPromiseResult();
        allRes[i].ok = contractResults[i].success;
        if (allRes[i].ok && contractResults[i].buffer != null && contractResults[i].buffer!.length > 0) {
            allRes[i].r = MyCallbackResult.decode(contractResults[i].buffer!);
        }
    }
    let result: MyCallbackResult = {
        rs: allRes,
        n: context.contractName,
    }
    let bytes = result.encode();
    storage.setBytes("lastResult", bytes);
    return result;
}

export function stringOrNull(): string | null {
    return null;
}
