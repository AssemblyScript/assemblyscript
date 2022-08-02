// TODO: generate this automatically

/** Error codes returned by functions. */
export namespace errno {
  /** No error occurred. System call completed successfully. */
  // @ts-ignore: decorator
  @inline
  export const SUCCESS: errno = 0;
  /** Argument list too long. */
  // @ts-ignore: decorator
  @inline
  export const TOOBIG: errno = 1;
  /** Permission denied. */
  // @ts-ignore: decorator
  @inline
  export const ACCES: errno = 2;
  /** Address in use. */
  // @ts-ignore: decorator
  @inline
  export const ADDRINUSE: errno = 3;
  /** Address not available. */
  // @ts-ignore: decorator
  @inline
  export const ADDRNOTAVAIL: errno = 4;
  /** Address family not supported. */
  // @ts-ignore: decorator
  @inline
  export const AFNOSUPPORT: errno = 5;
  /** Resource unavailable, or operation would block. */
  // @ts-ignore: decorator
  @inline
  export const AGAIN: errno = 6;
  /** Connection already in progress. */
  // @ts-ignore: decorator
  @inline
  export const ALREADY: errno = 7;
  /** Bad file descriptor. */
  // @ts-ignore: decorator
  @inline
  export const BADF: errno = 8;
  /** Bad message. */
  // @ts-ignore: decorator
  @inline
  export const BADMSG: errno = 9;
  /** Device or resource busy. */
  // @ts-ignore: decorator
  @inline
  export const BUSY: errno = 10;
  /** Operation canceled. */
  // @ts-ignore: decorator
  @inline
  export const CANCELED: errno = 11;
  /** No child processes. */
  // @ts-ignore: decorator
  @inline
  export const CHILD: errno = 12;
  /** Connection aborted. */
  // @ts-ignore: decorator
  @inline
  export const CONNABORTED: errno = 13;
  /** Connection refused. */
  // @ts-ignore: decorator
  @inline
  export const CONNREFUSED: errno = 14;
  /** Connection reset. */
  // @ts-ignore: decorator
  @inline
  export const CONNRESET: errno = 15;
  /** Resource deadlock would occur. */
  // @ts-ignore: decorator
  @inline
  export const DEADLK: errno = 16;
  /** Destination address required. */
  // @ts-ignore: decorator
  @inline
  export const DESTADDRREQ: errno = 17;
  /** Mathematics argument out of domain of function. */
  // @ts-ignore: decorator
  @inline
  export const DOM: errno = 18;
  /** Reserved. */
  // @ts-ignore: decorator
  @inline
  export const DQUOT: errno = 19;
  /** File exists. */
  // @ts-ignore: decorator
  @inline
  export const EXIST: errno = 20;
  /** Bad address. */
  // @ts-ignore: decorator
  @inline
  export const FAULT: errno = 21;
  /** File too large. */
  // @ts-ignore: decorator
  @inline
  export const FBIG: errno = 22;
  /** Host is unreachable. */
  // @ts-ignore: decorator
  @inline
  export const HOSTUNREACH: errno = 23;
  /** Identifier removed. */
  // @ts-ignore: decorator
  @inline
  export const IDRM: errno = 24;
  /** Illegal byte sequence. */
  // @ts-ignore: decorator
  @inline
  export const ILSEQ: errno = 25;
  /** Operation in progress. */
  // @ts-ignore: decorator
  @inline
  export const INPROGRESS: errno = 26;
  /** Interrupted function. */
  // @ts-ignore: decorator
  @inline
  export const INTR: errno = 27;
  /** Invalid argument. */
  // @ts-ignore: decorator
  @inline
  export const INVAL: errno = 28;
  /** I/O error. */
  // @ts-ignore: decorator
  @inline
  export const IO: errno = 29;
  /** Socket is connected. */
  // @ts-ignore: decorator
  @inline
  export const ISCONN: errno = 30;
  /** Is a directory. */
  // @ts-ignore: decorator
  @inline
  export const ISDIR: errno = 31;
  /** Too many levels of symbolic links. */
  // @ts-ignore: decorator
  @inline
  export const LOOP: errno = 32;
  /** File descriptor value too large. */
  // @ts-ignore: decorator
  @inline
  export const MFILE: errno = 33;
  /** Too many links. */
  // @ts-ignore: decorator
  @inline
  export const MLINK: errno = 34;
  /** Message too large. */
  // @ts-ignore: decorator
  @inline
  export const MSGSIZE: errno = 35;
  /** Reserved. */
  // @ts-ignore: decorator
  @inline
  export const MULTIHOP: errno = 36;
  /** Filename too long. */
  // @ts-ignore: decorator
  @inline
  export const NAMETOOLONG: errno = 37;
  /** Network is down. */
  // @ts-ignore: decorator
  @inline
  export const NETDOWN: errno = 38;
  /** Connection aborted by network. */
  // @ts-ignore: decorator
  @inline
  export const NETRESET: errno = 39;
  /** Network unreachable. */
  // @ts-ignore: decorator
  @inline
  export const NETUNREACH: errno = 40;
  /** Too many files open in system. */
  // @ts-ignore: decorator
  @inline
  export const NFILE: errno = 41;
  /** No buffer space available. */
  // @ts-ignore: decorator
  @inline
  export const NOBUFS: errno = 42;
  /** No such device. */
  // @ts-ignore: decorator
  @inline
  export const NODEV: errno = 43;
  /** No such file or directory. */
  // @ts-ignore: decorator
  @inline
  export const NOENT: errno = 44;
  /** Executable file format error. */
  // @ts-ignore: decorator
  @inline
  export const NOEXEC: errno = 45;
  /** No locks available. */
  // @ts-ignore: decorator
  @inline
  export const NOLCK: errno = 46;
  /** Reserved. */
  // @ts-ignore: decorator
  @inline
  export const NOLINK: errno = 47;
  /** Not enough space. */
  // @ts-ignore: decorator
  @inline
  export const NOMEM: errno = 48;
  /** No message of the desired type. */
  // @ts-ignore: decorator
  @inline
  export const NOMSG: errno = 49;
  /** Protocol not available. */
  // @ts-ignore: decorator
  @inline
  export const NOPROTOOPT: errno = 50;
  /** No space left on device. */
  // @ts-ignore: decorator
  @inline
  export const NOSPC: errno = 51;
  /** Function not supported. */
  // @ts-ignore: decorator
  @inline
  export const NOSYS: errno = 52;
  /** The socket is not connected. */
  // @ts-ignore: decorator
  @inline
  export const NOTCONN: errno = 53;
  /** Not a directory or a symbolic link to a directory. */
  // @ts-ignore: decorator
  @inline
  export const NOTDIR: errno = 54;
  /** Directory not empty. */
  // @ts-ignore: decorator
  @inline
  export const NOTEMPTY: errno = 55;
  /** State not recoverable. */
  // @ts-ignore: decorator
  @inline
  export const NOTRECOVERABLE: errno = 56;
  /** Not a socket. */
  // @ts-ignore: decorator
  @inline
  export const NOTSOCK: errno = 57;
  /** Not supported, or operation not supported on socket. */
  // @ts-ignore: decorator
  @inline
  export const NOTSUP: errno = 58;
  /** Inappropriate I/O control operation. */
  // @ts-ignore: decorator
  @inline
  export const NOTTY: errno = 59;
  /** No such device or address. */
  // @ts-ignore: decorator
  @inline
  export const NXIO: errno = 60;
  /** Value too large to be stored in data type. */
  // @ts-ignore: decorator
  @inline
  export const OVERFLOW: errno = 61;
  /** Previous owner died. */
  // @ts-ignore: decorator
  @inline
  export const OWNERDEAD: errno = 62;
  /** Operation not permitted. */
  // @ts-ignore: decorator
  @inline
  export const PERM: errno = 63;
  /** Broken pipe. */
  // @ts-ignore: decorator
  @inline
  export const PIPE: errno = 64;
  /** Protocol error. */
  // @ts-ignore: decorator
  @inline
  export const PROTO: errno = 65;
  /** Protocol not supported. */
  // @ts-ignore: decorator
  @inline
  export const PROTONOSUPPORT: errno = 66;
  /** Protocol wrong type for socket. */
  // @ts-ignore: decorator
  @inline
  export const PROTOTYPE: errno = 67;
  /** Result too large. */
  // @ts-ignore: decorator
  @inline
  export const RANGE: errno = 68;
  /** Read-only file system. */
  // @ts-ignore: decorator
  @inline
  export const ROFS: errno = 69;
  /** Invalid seek. */
  // @ts-ignore: decorator
  @inline
  export const SPIPE: errno = 70;
  /** No such process. */
  // @ts-ignore: decorator
  @inline
  export const SRCH: errno = 71;
  /** Reserved. */
  // @ts-ignore: decorator
  @inline
  export const STALE: errno = 72;
  /** Connection timed out. */
  // @ts-ignore: decorator
  @inline
  export const TIMEDOUT: errno = 73;
  /** Text file busy. */
  // @ts-ignore: decorator
  @inline
  export const TXTBSY: errno = 74;
  /** Cross-device link. */
  // @ts-ignore: decorator
  @inline
  export const XDEV: errno = 75;
  /** Extension: Capabilities insufficient. */
  // @ts-ignore: decorator
  @inline
  export const NOTCAPABLE: errno = 76;
}
// @ts-ignore: decorator
@inline const ERROR_COUNT = errno.NOTCAPABLE + 1;

export type errno = u16;

// @ts-ignore: decorator
@lazy export const ERRNO_TO_STRING: StaticArray<string> = [
  "SUCCESS", /* errno.SUCCESS */
  "TOOBIG", /* errno.TOOBIG */
  "ACCES", /* errno.ACCES */
  "ADDRINUSE", /* errno.ADDRINUSE */
  "ADDRNOTAVAIL", /* errno.ADDRNOTAVAIL */
  "AFNOSUPPORT", /* errno.AFNOSUPPORT */
  "AGAIN", /* errno.AGAIN */
  "ALREADY", /* errno.ALREADY */
  "BADF", /* errno.BADF */
  "BADMSG", /* errno.BADMSG */
  "BUSY", /* errno.BUSY */
  "CANCELED", /* errno.CANCELED */
  "CHILD", /* errno.CHILD */
  "CONNABORTED", /* errno.CONNABORTED */
  "CONNREFUSED", /* errno.CONNREFUSED */
  "CONNRESET", /* errno.CONNRESET */
  "DEADLK", /* errno.DEADLK */
  "DESTADDRREQ", /* errno.DESTADDRREQ */
  "DOM", /* errno.DOM */
  "DQUOT", /* errno.DQUOT */
  "EXIST", /* errno.EXIST */
  "FAULT", /* errno.FAULT */
  "FBIG", /* errno.FBIG */
  "HOSTUNREACH", /* errno.HOSTUNREACH */
  "IDRM", /* errno.IDRM */
  "ILSEQ", /* errno.ILSEQ */
  "INPROGRESS", /* errno.INPROGRESS */
  "INTR", /* errno.INTR */
  "INVAL", /* errno.INVAL */
  "IO", /* errno.IO */
  "ISCONN", /* errno.ISCONN */
  "ISDIR", /* errno.ISDIR */
  "LOOP", /* errno.LOOP */
  "MFILE", /* errno.MFILE */
  "MLINK", /* errno.MLINK */
  "MSGSIZE", /* errno.MSGSIZE */
  "MULTIHOP", /* errno.MULTIHOP */
  "NAMETOOLONG", /* errno.NAMETOOLONG */
  "NETDOWN", /* errno.NETDOWN */
  "NETRESET", /* errno.NETRESET */
  "NETUNREACH", /* errno.NETUNREACH */
  "NFILE", /* errno.NFILE */
  "NOBUFS", /* errno.NOBUFS */
  "NODEV", /* errno.NODEV */
  "NOENT", /* errno.NOENT */
  "NOEXEC", /* errno.NOEXEC */
  "NOLCK", /* errno.NOLCK */
  "NOLINK", /* errno.NOLINK */
  "NOMEM", /* errno.NOMEM */
  "NOMSG", /* errno.NOMSG */
  "NOPROTOOPT", /* errno.NOPROTOOPT */
  "NOSPC", /* errno.NOSPC */
  "NOSYS", /* errno.NOSYS */
  "NOTCONN", /* errno.NOTCONN */
  "NOTDIR", /* errno.NOTDIR */
  "NOTEMPTY", /* errno.NOTEMPTY */
  "NOTRECOVERABLE", /* errno.NOTRECOVERABLE */
  "NOTSOCK", /* errno.NOTSOCK */
  "NOTSUP", /* errno.NOTSUP */
  "NOTTY", /* errno.NOTTY */
  "NXIO", /* errno.NXIO */
  "OVERFLOW", /* errno.OVERFLOW */
  "OWNERDEAD", /* errno.OWNERDEAD */
  "PERM", /* errno.PERM */
  "PIPE", /* errno.PIPE */
  "PROTO", /* errno.PROTO */
  "PROTONOSUPPORT", /* errno.PROTONOSUPPORT */
  "PROTOTYPE", /* errno.PROTOTYPE */
  "RANGE", /* errno.RANGE */
  "ROFS", /* errno.ROFS */
  "SPIPE", /* errno.SPIPE */
  "SRCH", /* errno.SRCH */
  "STALE", /* errno.STALE */
  "TIMEDOUT", /* errno.TIMEDOUT */
  "TXTBSY", /* errno.TXTBSY */
  "XDEV", /* errno.XDEV */
  "NOTCAPABLE", /* errno.NOTCAPABLE */
];

/** Translates an error code to a string. */
export function errnoToString(err: errno): string {
  if (err < ERROR_COUNT) return unchecked(ERRNO_TO_STRING[err]);
  return "UNKNOWN";
}
