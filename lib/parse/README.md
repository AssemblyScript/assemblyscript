# ![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) parse

A WebAssembly binary parser in WebAssembly. Super small, super fast, with TypeScript support.

### To test
```
npm run asbuild:test
npm run test
```


* **Type**<br />
  A value or element type, depending on context.

  | Name    | Value
  |---------|-------
  | i32     | 0x7f
  | i64     | 0x7e
  | f32     | 0x7d
  | f64     | 0x7c
  | anyfunc | 0x70
  | func    | 0x60
  | none    | 0x40

* **SectionId**<br />
  Numerical id of the current section.

  | Name     | Value
  |----------|-------
  | Custom   | 0
  | Type     | 1
  | Import   | 2
  | Function | 3
  | Table    | 4
  | Memory   | 5
  | Global   | 6
  | Export   | 7
  | Start    | 8
  | Element  | 9
  | Code     | 10
  | Data     | 11

* **ExternalKind**<br />
  Kind of an export or import.

  | Name     | Value
  |----------|-------
  | Function | 0
  | Table    | 1
  | Memory   | 2
  | Global   | 3
