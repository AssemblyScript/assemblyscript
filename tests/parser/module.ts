module "abc";
declare module "abc";


declare module `a \
bc`;

//ERROR 1038: "A 'declare' modifier cannot be used in an already ambient context."
declare namespace A {declare module "abc"};

