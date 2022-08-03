// TODO: generate this automatically

export type errno = u16;

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
@inline const ERRNO_COUNT = errno.NOTCAPABLE + 1;
// @ts-ignore: decorator
@lazy export const ERRNO_TO_STRING = memory.data<usize>([
  changetype<usize>("SUCCESS"), /* errno.SUCCESS */
  changetype<usize>("TOOBIG"), /* errno.TOOBIG */
  changetype<usize>("ACCES"), /* errno.ACCES */
  changetype<usize>("ADDRINUSE"), /* errno.ADDRINUSE */
  changetype<usize>("ADDRNOTAVAIL"), /* errno.ADDRNOTAVAIL */
  changetype<usize>("AFNOSUPPORT"), /* errno.AFNOSUPPORT */
  changetype<usize>("AGAIN"), /* errno.AGAIN */
  changetype<usize>("ALREADY"), /* errno.ALREADY */
  changetype<usize>("BADF"), /* errno.BADF */
  changetype<usize>("BADMSG"), /* errno.BADMSG */
  changetype<usize>("BUSY"), /* errno.BUSY */
  changetype<usize>("CANCELED"), /* errno.CANCELED */
  changetype<usize>("CHILD"), /* errno.CHILD */
  changetype<usize>("CONNABORTED"), /* errno.CONNABORTED */
  changetype<usize>("CONNREFUSED"), /* errno.CONNREFUSED */
  changetype<usize>("CONNRESET"), /* errno.CONNRESET */
  changetype<usize>("DEADLK"), /* errno.DEADLK */
  changetype<usize>("DESTADDRREQ"), /* errno.DESTADDRREQ */
  changetype<usize>("DOM"), /* errno.DOM */
  changetype<usize>("DQUOT"), /* errno.DQUOT */
  changetype<usize>("EXIST"), /* errno.EXIST */
  changetype<usize>("FAULT"), /* errno.FAULT */
  changetype<usize>("FBIG"), /* errno.FBIG */
  changetype<usize>("HOSTUNREACH"), /* errno.HOSTUNREACH */
  changetype<usize>("IDRM"), /* errno.IDRM */
  changetype<usize>("ILSEQ"), /* errno.ILSEQ */
  changetype<usize>("INPROGRESS"), /* errno.INPROGRESS */
  changetype<usize>("INTR"), /* errno.INTR */
  changetype<usize>("INVAL"), /* errno.INVAL */
  changetype<usize>("IO"), /* errno.IO */
  changetype<usize>("ISCONN"), /* errno.ISCONN */
  changetype<usize>("ISDIR"), /* errno.ISDIR */
  changetype<usize>("LOOP"), /* errno.LOOP */
  changetype<usize>("MFILE"), /* errno.MFILE */
  changetype<usize>("MLINK"), /* errno.MLINK */
  changetype<usize>("MSGSIZE"), /* errno.MSGSIZE */
  changetype<usize>("MULTIHOP"), /* errno.MULTIHOP */
  changetype<usize>("NAMETOOLONG"), /* errno.NAMETOOLONG */
  changetype<usize>("NETDOWN"), /* errno.NETDOWN */
  changetype<usize>("NETRESET"), /* errno.NETRESET */
  changetype<usize>("NETUNREACH"), /* errno.NETUNREACH */
  changetype<usize>("NFILE"), /* errno.NFILE */
  changetype<usize>("NOBUFS"), /* errno.NOBUFS */
  changetype<usize>("NODEV"), /* errno.NODEV */
  changetype<usize>("NOENT"), /* errno.NOENT */
  changetype<usize>("NOEXEC"), /* errno.NOEXEC */
  changetype<usize>("NOLCK"), /* errno.NOLCK */
  changetype<usize>("NOLINK"), /* errno.NOLINK */
  changetype<usize>("NOMEM"), /* errno.NOMEM */
  changetype<usize>("NOMSG"), /* errno.NOMSG */
  changetype<usize>("NOPROTOOPT"), /* errno.NOPROTOOPT */
  changetype<usize>("NOSPC"), /* errno.NOSPC */
  changetype<usize>("NOSYS"), /* errno.NOSYS */
  changetype<usize>("NOTCONN"), /* errno.NOTCONN */
  changetype<usize>("NOTDIR"), /* errno.NOTDIR */
  changetype<usize>("NOTEMPTY"), /* errno.NOTEMPTY */
  changetype<usize>("NOTRECOVERABLE"), /* errno.NOTRECOVERABLE */
  changetype<usize>("NOTSOCK"), /* errno.NOTSOCK */
  changetype<usize>("NOTSUP"), /* errno.NOTSUP */
  changetype<usize>("NOTTY"), /* errno.NOTTY */
  changetype<usize>("NXIO"), /* errno.NXIO */
  changetype<usize>("OVERFLOW"), /* errno.OVERFLOW */
  changetype<usize>("OWNERDEAD"), /* errno.OWNERDEAD */
  changetype<usize>("PERM"), /* errno.PERM */
  changetype<usize>("PIPE"), /* errno.PIPE */
  changetype<usize>("PROTO"), /* errno.PROTO */
  changetype<usize>("PROTONOSUPPORT"), /* errno.PROTONOSUPPORT */
  changetype<usize>("PROTOTYPE"), /* errno.PROTOTYPE */
  changetype<usize>("RANGE"), /* errno.RANGE */
  changetype<usize>("ROFS"), /* errno.ROFS */
  changetype<usize>("SPIPE"), /* errno.SPIPE */
  changetype<usize>("SRCH"), /* errno.SRCH */
  changetype<usize>("STALE"), /* errno.STALE */
  changetype<usize>("TIMEDOUT"), /* errno.TIMEDOUT */
  changetype<usize>("TXTBSY"), /* errno.TXTBSY */
  changetype<usize>("XDEV"), /* errno.XDEV */
  changetype<usize>("NOTCAPABLE"), /* errno.NOTCAPABLE */
]);

/** Translates an error code to a string. */
export function errnoToString(err: errno): string {
  return err < ERRNO_COUNT
    ? load<string>(ERRNO_TO_STRING + (<usize>err << alignof<usize>()))
    : "UNKNOWN";
}
