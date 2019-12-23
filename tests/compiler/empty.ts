const initializedArray: i32[] = [];

export function willFail(): void {
    initializedArray.push( 1 );
}
willFail();
