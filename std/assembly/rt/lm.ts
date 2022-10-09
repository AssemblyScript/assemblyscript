import { E_ALLOCATION_TOO_LARGE } from "../util/error";

// This allocator is follow the algorithm from https://github.com/embeddedartistry/libmemory
// FreeList is a linked list that manage all free blocks.

// @ts-ignore: decorator
@unmanaged class LinkedList {
    prev: LinkedList;
    next: LinkedList;
}
// @ts-ignore: decorator
@inline export const BLOCK_MAXSIZE: usize = (1 << 30) - sizeof<LinkedList>();
// @ts-ignore: decorator
@inline const AL_BITS: u32 = 4; // 16 bytes to fit up to v128
// @ts-ignore: decorator
@inline const AL_SIZE: usize = 1 << <usize>AL_BITS;
// @ts-ignore: decorator
@inline const AL_MASK: usize = AL_SIZE - 1;
// @ts-ignore: decorator
@unmanaged class Block extends LinkedList {
    size: usize;
}
// @ts-ignore: decorator
@inline const BLOCK_SIZE: usize = offsetof<Block>();
// @ts-ignore: decorator
@inline const MIN_BLOCK_SIZE: usize = offsetof<usize>() + BLOCK_SIZE;
const freeListPtr: usize = memory.data(sizeof<LinkedList>());
// @ts-ignore: decorator
@lazy var freelist: LinkedList;
// @ts-ignore: decorator
@inline function alignUp(num: usize): usize {
    return ((num) + ((1 << alignof<usize>()) - 1)) & ~((1 << alignof<usize>()) - 1);
}
// @ts-ignore: decorator
@inline function insertItem(newItem: LinkedList, preItem: LinkedList, nextItem: LinkedList): void {
    nextItem.prev = newItem;
    newItem.next = nextItem;
    newItem.prev = preItem;
    preItem.next = newItem;
}

// @ts-ignore: decorator
@inline function dropItem(item: LinkedList): void {
    let prev = item.prev;
    let next = item.next;
    if (prev && next) {
        prev.next = next;
        next.prev = prev;
        item.prev = changetype<LinkedList>(0);
        item.next = changetype<LinkedList>(0);
    } else {
        unreachable();
    }
}

function growMemory(size: usize): void {
    if (ASC_LOW_MEMORY_LIMIT) {
        unreachable();
    }
    const pagesBefore = memory.size();
    const pageBeforePtr = pagesBefore << 16;
    const startPoint = (pageBeforePtr + <i32>BLOCK_SIZE);
    const v128Alignment = <i32>(AL_SIZE - ((startPoint) & <i32>AL_MASK));
    size += startPoint + v128Alignment;
    const pagesNeeded = <i32>(((size + 0xffff) & ~0xffff) >>> 16);
    const pagesWanted = pagesNeeded - pagesBefore; // double memory
    if (memory.grow(pagesWanted) < 0) {
        unreachable();
    }
    let block = changetype<Block>(pageBeforePtr + v128Alignment);
    const pagesAfter = memory.size();
    block.size = ((pagesAfter - pagesBefore) << 16) - <i32>BLOCK_SIZE - v128Alignment;
    insertItem(changetype<LinkedList>(pageBeforePtr + v128Alignment), freelist.prev, freelist);
}

function initialize(): void {
    freelist = changetype<LinkedList>(freeListPtr);
    freelist.next = freelist;
    freelist.prev = freelist;
    const startPoint: usize = ((__heap_base + BLOCK_SIZE + AL_SIZE) & ~AL_MASK) - BLOCK_SIZE;
    const pagesBefore = memory.size();
    const pagesNeeded = <i32>((((startPoint + 1) + 0xffff) & ~0xffff) >>> 16);
    if (pagesNeeded > pagesBefore && memory.grow(pagesNeeded - pagesBefore) < 0) unreachable();
    let item: LinkedList = changetype<LinkedList>(startPoint);
    insertItem(item, freelist, freelist);
    let block: Block = changetype<Block>(startPoint);
    block.size = (<usize>(memory.size() << 16)) - BLOCK_SIZE - startPoint;

}

// @ts-ignore: decorator
@inline function searchBlockPtr(size: usize): usize {
    let foundBlockPtr: usize = 0;
    for (let item = changetype<LinkedList>(changetype<usize>(freelist.next));
        changetype<usize>(item) != freeListPtr && item.next != null;
        item = item.next) {
        if (changetype<Block>(item).size > size) {
            foundBlockPtr = changetype<usize>(item);
        }
    }
    return foundBlockPtr;
}

function mergeBlock(prevPtr: usize, blockPtr: usize): bool {
    let block = changetype<Block>(blockPtr);
    if (prevPtr != freeListPtr && blockPtr != freeListPtr && prevPtr && blockPtr) {
        let prevBlock = changetype<Block>(prevPtr);
        const prevTailPtr = prevPtr + prevBlock.size + BLOCK_SIZE;
        if (((blockPtr - prevTailPtr) < BLOCK_SIZE)) {
            const tailPtr = changetype<usize>(block) + block.size + BLOCK_SIZE;
            prevBlock.size += (tailPtr - prevTailPtr);
            dropItem(changetype<LinkedList>(blockPtr));
            return true;
        }
    }
    return false;
}

// @ts-ignore: decorator
@global @unsafe export function __alloc(size: usize): usize {
    size = alignUp(size);
    if (size > BLOCK_MAXSIZE) throw new Error(E_ALLOCATION_TOO_LARGE);
    if (!freelist) initialize();
    let foundBlockPtr: usize = searchBlockPtr(size);
    if (!foundBlockPtr) { // found ptr
        growMemory(size);
        foundBlockPtr = searchBlockPtr(size)
        if (!foundBlockPtr) {
            unreachable(); // unreachable if cannot get block ptr after grow memory
        }
    }
    let block = changetype<Block>(foundBlockPtr);
    if (block.size - size > MIN_BLOCK_SIZE) { // divide linked list
        let newBlockPtr = foundBlockPtr + size + BLOCK_SIZE;
        const v128Alignment = AL_SIZE - ((newBlockPtr + BLOCK_SIZE) & AL_MASK); // align to 128 for new block
        size += v128Alignment;
        newBlockPtr += v128Alignment;
        if (!((newBlockPtr + MIN_BLOCK_SIZE) > (foundBlockPtr + block.size))) { // aligned ptr out of the bound of block
            let newBlock = changetype<Block>(newBlockPtr);
            newBlock.size = block.size - size - BLOCK_SIZE;
            block.size = size;
            insertItem(changetype<LinkedList>(newBlock),
                changetype<LinkedList>(block),
                changetype<LinkedList>(changetype<usize>(block.next)));
        }
    }
    dropItem(block);
    return foundBlockPtr + BLOCK_SIZE;
}

// @ts-ignore: decorator
@global @unsafe
    export function __free(ptr: usize): void {
    if (!ptr) unreachable(); // cannot be nullptr
    const freeBlockPtr = ptr - BLOCK_SIZE;
    let foundPos: bool = false;
    for (let item = changetype<LinkedList>(changetype<usize>(freelist.next));
        changetype<usize>(item) != freeListPtr && item.next != null;
        item = item.next) {
        if (changetype<usize>(item) > freeBlockPtr) {
            insertItem(changetype<LinkedList>(freeBlockPtr), item.prev, item);
            foundPos = true;
            break;
        }
    }
    if (!foundPos) { // add to tail
        insertItem(changetype<LinkedList>(freeBlockPtr), freelist.prev, freelist);
    }
    let endPtr = freeListPtr;
    for (let item = changetype<LinkedList>(changetype<usize>(freelist.next));
        changetype<usize>(item) != freeListPtr && item.next != null;
        item = item.next) {
        const blockPtr = changetype<usize>(item);
        const prevPtr = changetype<usize>(item.prev);
        if (mergeBlock(prevPtr, blockPtr)) continue;
        endPtr = blockPtr;
    }
    let endBlock = changetype<Block>(endPtr);
    mergeBlock(endPtr, changetype<usize>(endBlock.next));
}

function moveBlock(block: Block, newSize: usize): usize {
    const ptr = __alloc(newSize);
    const prePtr = changetype<usize>(block) + BLOCK_SIZE;
    memory.copy(ptr, prePtr, block.size);
    if (prePtr > __heap_base) __free(prePtr);
    return ptr;
}

// @ts-ignore: decorator
@global @unsafe
export function __realloc(ptr: usize, size: usize): usize {
    return moveBlock(changetype<Block>(ptr - BLOCK_SIZE), size);
}
