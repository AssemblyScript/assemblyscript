# ![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) parse

A WebAssembly binary parser in WebAssembly. Super small, super fast, with TypeScript support.

API
---

* **parse**(binary: `Uint8Array`, options?: `ParseOptions`): `void`<br />
  Parses the contents of a WebAssembly binary according to the specified options.

* **ParseOptions**<br />
  Options specified to the parser. The `onSection` callback determines the sections being evaluated in detail.

  * **onSection**?(id: `SectionId`, payloadOff: `number`, payloadLen: `number`, nameOff: `number`, nameLen: `number`): `boolean`<br />
    Called with each section in the binary. Returning `true` evaluates the section.

  * **onType**?(index: `number`, form: `number`): `void`<br />
    Called with each function type if the type section is evaluated.

  * **onTypeParam**?(index: `number`, paramIndex: `number`, paramType: `Type`): `void`<br />
    Called with each function parameter if the type section is evaluated.

  * **onTypeReturn**?(index: `number`, returnIndex: `number`, returnType: `Type`): `void`<br />
    Called with each function return type if the type section is evaluated.

  * **onImport**?(index: `number`, kind: `ExternalKind`, moduleOff: `number`, moduleLen: `number`, fieldOff: `number`, fieldLen: `number`): `void`<br />
    Called with each import if the import section is evaluated.

  * **onFunctionImport**?(index: `number`, type: `number`): `void`<br />
    Called with each function import if the import section is evaluated.

  * **onTableImport**?(index: `number`, type: `Type`, initial: `number`, maximum: `number`, flags: `number`): `void`<br />
    Called with each table import if the import section is evaluated.

  * **onMemoryImport**?(index: `number`, initial: `number`, maximum: `number`, flags: `number`): `void`<br />
    Called with each memory import if the import section is evaluated.

  * **onGlobalImport**?(index: `number`, type: `Type`, mutability: `number`): `void`<br />
    Called with each global import if the import section is evaluated.

  * **onMemory**?(index: `number`, initial: `number`, maximum: `number`, flags: `number`): `void`<br />
    Called with each memory if the memory section is evaluated.

  * **onFunction**?(index: `number`, typeIndex: `number`): `void`<br />
    Called with each function if the function section is evaluated.

  * **onGlobal**?(index: `number`, type: `Type`, mutability: `number`): `void`<br />
    Called with each global if the global section is evaluated.

  * **onStart**?(index: `number`): `void`<br />
    Called with the start function index if the start section is evaluated.

  * **onExport**?(index: `number`, kind: `ExternalKind`, kindIndex: `number`, nameOff: `number`, nameLen: `number`): `void`<br />
    Called with each export if the export section is evaluated.

  * **onSourceMappingURL**?(offset: `number`, length: `number`): `void`<br />
    Called with the source map URL if the 'sourceMappingURL' section is evaluated.

  * **onModuleName**?(offset: `number`, length: `number`): `void`<br />
    Called with the module name if present and the 'name' section is evaluated.

  * **onFunctionName**?(index: `number`, offset: `number`, length: `number`): `void`<br />
    Called with each function name if present and the 'name' section is evaluated.

  * **onLocalName**?(funcIndex: `number`, index: `number`, offset: `number`, length: `number`): `void`<br />
    Called with each local name if present and the 'name' section is evaluated.

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
