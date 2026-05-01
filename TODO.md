Working document of notes/tasks for trying to figure out how to correctly add decorators to AssemblyScript. Will be delete once the PR is complete.


- [ ] Ask claude to explain how the AssemblyScript parser works and try to add a garbage throwaway feature myself manually for learning purposes (eg. `mut` keyword for syntax like `mut myVariable = 10`).
- [ ] After implementing re-read all the stuff dcode and Max have been explaining and try to better understand it


NOTES:
- AST can be extended without breaking changes, this is perfectly fine and anything that is added will just be ignored by the compiler but at least transformer plugins can then make use of it. No need to validate and throw errors unless it is an AST parse error.
    - Need to add a transformer hook so transformers can add their own validation. This way AssemblyScript can delegate validation to transformers instead of having to handle it internally, which doesn't make sense because AS shouldn't be in charge of worring about that in the first place.

- "Transformer" refers the to transformers in /tests/transform

- Rather than have a method validate the decorators, they should just be part of the AST. Once the AST can directly handle the decorators then validating decorators syntax will happen automatically. This also means we need actual AST nodes in ast.ts for the different parts of decorators rather than just inlining the decorators.
- Correction to the above. The method validation was only 1 part of the problem, the compiler of assemblyscript is for outputting WASM binaries not validating valid AST syntax. The compiler.ts will not need to be touched AT ALL for this PR.