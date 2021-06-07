class Example {}

function notNullable(a: Example): void {}

notNullable(null);

ERROR("EOF");
