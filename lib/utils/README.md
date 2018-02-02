![](https://s.gravatar.com/avatar/f105de3decfafc734b8eabe9a960b25d?size=48) utils
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
