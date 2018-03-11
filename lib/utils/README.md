![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) utils
=================

Utilities for working with [AssemblyScript](http://assemblyscript.org) modules.

Usage
-----

```js
import utils from "@assemblyscript/utils";

var myModule = ...;

var helpers = utils(myModule);

var str = helpers.string(myModule.exportReturningAString());
```
