
import * as main from "./combined";

let encoded = main.__near_encode_FooBar(new main.FooBar());
let decoded = main.__near_decode_FooBar(encoded, 0);