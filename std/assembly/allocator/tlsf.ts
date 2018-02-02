////////////// TLSF (Two-Level Segregate Fit) Memory Allocator ////////////////

// Re-export for now, so there's just one source file being worked on

export {
  allocate_memory,
  free_memory
} from "../../../examples/tlsf/assembly/tlsf";

export function reset_memory(): void {
  throw new Error("not supported");
}
