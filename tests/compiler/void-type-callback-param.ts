class C1<T> {
  then(cb: (value: T) => void): void {}
}

new C1<void>().then(function (): void {});

ERROR("EOF");
