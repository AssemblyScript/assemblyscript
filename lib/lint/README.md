![AS](https://avatars1.githubusercontent.com/u/28916798?s=48) lint
======================

Recommended [TSLint](https://github.com/palantir/tslint) rules for use with AssemblyScript. Meant to spot the most common issues as you type.

Not a sophisticated checker in its current state.

Usage
-----

Add the following `tslint.json` to your project:

```json
{
  "extends": "@assemblyscript/lint"
}
```

Add additional rules if necessary.

Add a script to your `package.json`:

```json
"scripts": {
  "lint": "tslint -c tslint.json --project ./path/to[/tsconfig.json] --format as"
}
```

Now, to check your sources, run:

```
$> npm run check
```

If you are using [Visual Studio Code](https://code.visualstudio.com/), there's also a [TSLint extension](https://marketplace.visualstudio.com/items?itemName=eg2.tslint) that highlights issues as you type.

Custom rules
------------

* **as-types** checks that all types are annotated or have an initializer.
* **as-variables** checks the use of `var` and `let` to match their semantic meaning. For reference, `var` becomes a distinct local or mutable global, while `let` becomes a shared local.
