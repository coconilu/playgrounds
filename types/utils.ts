type Equal<X, Y> = (<T>() => T extends X ? 1 : 2) extends <T>() => T extends Y
  ? 1
  : 2
  ? true
  : false;

type result = Equal<string | number, string>;

type ValueOf<T> = T[keyof T];

type result1 = ValueOf<{
  a: string;
  b: number;
}>;
