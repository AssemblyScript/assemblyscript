// Globals for the `@rest` / `@route` HTTP layer (no import). Top-level std exports are
// globalized like the other natives.

/**
 * HTTP method for `@route({ method: Methods.GET, ... })`. Values mirror the server runtime
 * `Method` enum so `req.method == Methods.GET` compiles to a plain integer comparison.
 */
export enum Methods {
  GET = 0,
  POST = 1,
  PUT = 2,
  DELETE = 3,
  PATCH = 4,
  HEAD = 5,
  OPTIONS = 6
}

/**
 * Body/response codec for `@route({ stream: DataStream.JSON, ... })`: `JSON` uses the `@data`
 * class's `toJSON`/`fromJSON`, `Binary` uses its `encode`/`decode`.
 */
export enum DataStream {
  JSON = 0,
  Binary = 1
}
