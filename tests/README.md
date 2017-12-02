Parser
------

Tests consist of a test case that is first parsed and then serialized again. The output is then compared to its respective fixture.

```
$> npm run test:parser [case name]
```

To recreate the fixtures:

```
$>npm run test:parser -- --create
```

Compiler
--------

Tests consist of a test case that is compiled to a module, converted to text format and then compared to its respective fixture.

```
$> npm run test:compiler [case name]
```

To recreate the fixtures:

```
$>npm run test:compiler -- --create
```
