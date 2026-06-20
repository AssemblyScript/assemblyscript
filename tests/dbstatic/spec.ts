// Regression fixture for the `@collection static` form of a `@database` class.
//
// The compiler turns each `@collection` field into a lazy STATIC getter
// (`DB.coll`). Writing the field itself as `static` lets `DB.coll` type-check in
// stock TypeScript with NO language-service plugin (and keeps `tsc` clean), but a
// naive transform would then hit a duplicate static member (TS2718) and a
// missing initializer (AS238). The parser demotes a static `@collection` field to
// a vestigial instance field before injecting the getter, so this must compile,
// and the demoted field must still reach the `toildb.catalog` section with the
// correct family. Both the new static form and the legacy instance form appear
// below so a single compile exercises both paths.

@data
class Key {
    id: string = "";
    constructor(id: string = "") {
        this.id = id;
    }
}

@data
class Item {
    name: string = "";
    constructor(name: string = "") {
        this.name = name;
    }
}

@database
class DB {
    @collection static items: Documents<Key, Item>; // new STATIC form (no `!`; plugin-free editor)
    @collection static hits: Counter<Key>; // new STATIC form (no `!`)
    @collection legacy!: Events<Key, Item>; // legacy INSTANCE form, still supported
}

// `@action` permits writes; this also confirms the function-kind checker still
// sees the static collections (it would not if the demoted field were dropped).
@action
export function run(): i32 {
    const k = new Key("a");
    DB.items.create(k, new Item("x"));
    DB.hits.add(k, 1);
    DB.legacy.append(k, new Item("y"));
    return <i32>DB.hits.get(k);
}
