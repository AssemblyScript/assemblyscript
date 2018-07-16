/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export function append(slice: Array<any>, ...elements): Array<any> {
    if (slice == undefined) {
        return elements;
    } else {
        slice.push.apply(slice, elements);
    }
    return slice;
}
export function sortAscending<T>(slice: Array<T>): void {
    slice.sort(function(a: T, b: T) {
        return a - b;
    });
}
export function sortDescending<T>(slice: Array<T>): void {
    slice.sort(function(a: T, b: T) {
        return b - a;
    });
}
