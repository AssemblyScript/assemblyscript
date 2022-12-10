// This just implements a super-simple lock for tlsf-mt.ts

enum TlsfMutexState {
    unlocked,
    locked
}

// Basic spinlock. Spinning is not a performance issue since this only takes as long as an allocation
// @ts-ignore: decorator
@inline
export function TlsfMutex_lock(mutex_ptr: usize): void {
    for (; ;) {
        // If we succesfully atomically compare and exchange unlocked for locked, we have the mutex
        if (atomic.cmpxchg<i32>(mutex_ptr, TlsfMutexState.unlocked, TlsfMutexState.locked) === TlsfMutexState.unlocked)
            return;
        // Wait for unlocked state to try for locked
        for (; ;) {
            if (atomic.load<i32>(mutex_ptr) === TlsfMutexState.unlocked) break;
        }
    }
}

// @ts-ignore: decorator
@inline
export function TlsfMutex_unlock(mutex_ptr: usize): void {
    if (atomic.cmpxchg<i32>(mutex_ptr, TlsfMutexState.locked, TlsfMutexState.unlocked) !== TlsfMutexState.locked) {
        // This only happens if someone else unlocked our mutex, or we did it more than once...
        throw new Error('Is this the right thing to do here? Mutex in inconsistent state');
    }
}
