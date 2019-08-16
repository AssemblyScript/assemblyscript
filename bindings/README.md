# Near Bindings

This AST transformer is added to the compiler fontend so that it is called automatically after all files have been parsed.

Any file that has `//@nearfile` as the first line, will be processed and a new source text will be generated.

Currently any class defined in the file will have an `encode` and `decode` method for serializing to and from json.  Furthermore, any functions that are exported by an entry function are wrapped so that their arguments are deserialized from storage and its return value is serailazed.

Furthermore `./src/preamble.ts` defines a string that can be added to the top of the source file.  After each file is processed the new source text is parsed.  This means any new imports added in the preamble will be parsed too.
