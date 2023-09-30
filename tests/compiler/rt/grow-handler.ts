@external("grow", "handler")
declare function handler(): void;

let leak: i32[] = [];
export function stress(): void {
  for (let i = 0; i < 65536; i++) leak.push(i);
}