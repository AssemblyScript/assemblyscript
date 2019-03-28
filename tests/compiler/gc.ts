import "allocator/arena";
import { link_count, unlink_count, collect_count } from "./gc/_dummy";
export { gc };

class Ref {}

@start export function main(): void {
  var ref = new Ref();

  assert(gc.implemented);

  var previous_link_count = link_count;
  var previous_unlink_count = unlink_count;
  var previous_collect_count = collect_count;

  gc.retain(changetype<usize>(ref));

  assert(link_count == previous_link_count + 1);
  assert(unlink_count == previous_unlink_count);
  assert(collect_count == previous_collect_count);
  previous_link_count = link_count;
  previous_unlink_count = unlink_count;
  previous_collect_count = collect_count;

  gc.release(changetype<usize>(ref));

  assert(link_count == previous_link_count);
  assert(unlink_count == previous_unlink_count + 1);
  assert(collect_count == previous_collect_count);
  previous_link_count = link_count;
  previous_unlink_count = unlink_count;
  previous_collect_count = collect_count;

  gc.collect();

  assert(link_count == previous_link_count);
  assert(unlink_count == previous_unlink_count);
  assert(collect_count == previous_collect_count + 1);
}
