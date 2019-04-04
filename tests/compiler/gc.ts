import { link_count, unlink_count, collect_count } from "./gc/_dummy";

class Ref {}

@start export function main(): void {
  var ref = new Ref();

  var previous_link_count = link_count;
  var previous_unlink_count = unlink_count;
  var previous_collect_count = collect_count;

  runtime.retain(changetype<usize>(ref));

  assert(link_count == previous_link_count + 1);
  assert(unlink_count == previous_unlink_count);
  assert(collect_count == previous_collect_count);
  previous_link_count = link_count;
  previous_unlink_count = unlink_count;
  previous_collect_count = collect_count;

  runtime.release(changetype<usize>(ref));

  assert(link_count == previous_link_count);
  assert(unlink_count == previous_unlink_count + 1);
  assert(collect_count == previous_collect_count);
  previous_link_count = link_count;
  previous_unlink_count = unlink_count;
  previous_collect_count = collect_count;

  runtime.collect();

  assert(link_count == previous_link_count);
  assert(unlink_count == previous_unlink_count);
  assert(collect_count == previous_collect_count + 1);
}
