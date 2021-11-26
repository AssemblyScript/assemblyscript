export default function fetch(url: string): Promise<{
  arrayBuffer(): Promise<ArrayBuffer>;
  text(): Promise<string>;
  json(): Promise<any>; // eslint-disable-line @typescript-eslint/no-explicit-any
}>;
