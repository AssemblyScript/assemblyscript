function foo<TArr extends ArrayLike<number>>(arr: TArr): valueof<TArr> {
  {
    type T = valueof<TArr>;
  }
  let element: T = arr[0];
  return element;
}

foo([123]);