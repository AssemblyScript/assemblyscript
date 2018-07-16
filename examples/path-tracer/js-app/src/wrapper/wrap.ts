export function wrap<T>(obj: T): Proxy<T> {
    var handler = {
        construct: function(target: T, args: any[]) {
            const h = {
                get: function(obj: { internal: Object }, prop: string) {
                    return obj[prop] ? obj[prop] : obj.internal[prop];
                },
            };
            return new Proxy(new target(...args), h);
        },
    };
    var proxy = new Proxy(obj, handler);
    return proxy;
}
