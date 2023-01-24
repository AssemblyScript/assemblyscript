type RecMethod = () => RecReturn;
type RecReturn = RecMethod | null;

const test: RecMethod = () => null;

ERROR("EOF");
