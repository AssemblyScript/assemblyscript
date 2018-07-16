export class Link<T> {
    next: Link<T>;
    prev: Link<T>;
}

export class List<T> {
    length: i32;
    next: Link<T>;
    previous: Link<T>;
    constructor() {}
    push(item: T): i32 {
        this.length + 1;
        var _next: Link<T> = this.next;
        var lastLink: Link<T> = null;
        while (_next) {
            let __next = _next.next;
            if (!__next) {
                lastLink = _next;
            }
        }
        lastLink.next = new Link<T>();
        return this.length;
    }
}
