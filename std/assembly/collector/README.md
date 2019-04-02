Garbage collector interface
===========================

A garbage collector for AssemblyScript must implement the following common and either the tracing or reference counting interfaces:

Common
------

* **__ref_collect**(): `void`<br />
  Triggers a full garbage collection cycle. Also indicates the presence of a GC.

Tracing
-------

* **__ref_register**(ref: `usize`): `void`<br />
  Sets up a new reference.

* **__ref_link**(ref: `usize`, parentRef: `usize`): `void`<br />
  Links a reference to a parent that is now referencing it.

* **__ref_unlink**(ref: `usize`, parentRef: `usize`): `void`<br />
  Unlinks a reference from a parent that was referencing it. Implementation is optional.

* **__ref_mark**(ref: `usize`): `void`<br />
  Marks a reference as being reachable so it doesn't become sweeped.

Reference counting
------------------

* **__ref_register**(ref: `usize`): `void`<br />
  Sets up a new reference. Implementation is optional.

* **__ref_retain**(ref: `usize`): `void`<br />
  Retains a reference, usually incrementing RC.

* **__ref_release**(ref: `usize`): `void`<br />
  Releases a reference, usually decrementing RC.

Typical patterns
----------------

Standard library components make use of the interface where managed references are stored or deleted. Common patterns are:

### General

```ts
/// <reference path="./collector/index.d.ts" />

if (isManaged<T>()) {
  // compiled only if T is a managed reference
  ... pattern ...
}
```

### Insertion

```ts
if (isNullable<T>()) {
  if (ref) {
    if (isDefined(__ref_link)) __ref_link(ref, parentRef);
    else if (isDefined(__ref_retain)) __ref_retain(ref);
    else assert(false);
  }
} else {
  if (isDefined(__ref_link)) __ref_link(ref, parentRef);
  else if (isDefined(__ref_retain)) __ref_retain(ref);
  else assert(false);
}
```

### Replacement

```ts
if (ref !== oldRef) {
  if (isNullable<T>()) {
    if (isDefined(__ref_link)) {
      if (isDefined(__ref_unlink)) if (oldRef) __ref_unlink(oldRef, parentRef);
      if (ref) __ref_link(ref, parentRef);
    } else if (isDefined(__ref_retain)) {
      if (oldRef) __ref_release(oldRef);
      if (ref) __ref_retain(ref);
    } else assert(false);
  } else {
    if (isDefined(__ref_link)) {
      if (isDefined(__ref_unlink)) if (oldRef) __ref_unlink(oldRef, parentRef); // *
      __ref_link(ref, parentRef);
    } else if (isDefined(__ref_retain)) {
      if (oldRef) __ref_release(oldRef); // *
      __ref_retain(ref);
    } else assert(false);
  }
}
```

### Deletion

```ts
if (isNullable<T>()) {
  if (ref) {
    if (isDefined(__ref_link)) {
      if (isDefined(__ref_unlink)) __ref_unlink(ref, parentRef);
    } else if (isDefined(__ref_retain)) __ref_release(ref);
    else assert(false);
  }
} else {
  if (isDefined(__ref_link)) {
    if (isDefined(__ref_unlink)) __ref_unlink(ref, parentRef);
  } else if (isDefined(__ref_retain)) __ref_release(ref);
  else assert(false);
}
```

(*) Note that some data structures may contain `null` values even though the value type isn't nullable. May be the case when appending a new element to an array for example.
