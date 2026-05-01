Working document of notes/tasks for trying to figure out how to correctly add decorators to AssemblyScript. Will be delete once the PR is complete.


- [ ] Ask claude to explain how the AssemblyScript parser works and try to add a garbae feature myself manually (eg. `mut` keyword for syntax like `mut myVariable = 10`).
- [ ] After implementing re-read all the stuff dcode and Max have been explaining and try to better understand it


NOTES:
- "Transformer" refers the to transformers in /tests/transform

- Rather than have a method validate the decorators, they should just be part of the AST. Once the AST can directly handle the decorators then validating decorators syntax will happen automatically. This also means we need actual AST nodes in ast.ts for the different parts of decorators rather than just inlining the decorators.
- Correction to the above. The method validation was only 1 part of the problem, the compiler of assemblyscript is for outputting WASM binaries not validating valid AST syntax. The compiler.ts will not need to be touched AT ALL for this PR.