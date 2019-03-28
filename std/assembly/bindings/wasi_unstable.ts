// see: https://wasi.dev

/* tslint:disable:max-line-length */

type uintptr = usize;
type size = usize;

/** Read command-line argument data. */
export declare function args_get(argv: uintptr, argv_buf: uintptr): errno;
/** Return command-line argument data sizes. */
export declare function args_sizes_get(argc: uintptr, argv_buf_size_ptr: uintptr): errno;

/** Return the resolution of a clock. */
export declare function clock_res_get(clock: clockid, resolution: uintptr): errno;
/** Return the time value of a clock. */
export declare function clock_time_get(clock: clockid, precision: timestamp, time: uintptr): errno;

/** Read environment variable data. */
export declare function environ_get(environ: uintptr, environ_buf: uintptr): errno;
/** Return command-line argument data sizes. */
export declare function environ_sizes_get(environ_count: uintptr, environ_buf_size: uintptr): errno;

/** Provide file advisory information on a file descriptor. */
export declare function fd_advise(fd: fd, offset: filesize, len: filesize, advice: advice): errno;
/** Provide file advisory information on a file descriptor. */
export declare function fd_allocate(fd: fd, offset: filesize, len: filesize): errno;
/** Close a file descriptor. */
export declare function fd_close(fd: fd): errno;
/** Synchronize the data of a file to disk. */
export declare function fd_datasync(fd: fd): errno;
/** Get the attributes of a file descriptor. */
export declare function fd_fdstat_get(fd: fd, buf: uintptr): errno;
/** Adjust the flags associated with a file descriptor. */
export declare function fd_fdstat_set_flags(fd: fd, flags: fdflags): errno;
/** Adjust the rights associated with a file descriptor. */
export declare function fd_fdstat_set_rights(fd: fd, fs_rights_base: rights, fs_rights_inheriting: rights): errno;
/** Return the attributes of an open file. */
export declare function fd_filestat_get(fd: fd, buf: uintptr): errno;
/** Adjust the size of an open file. If this increases the file's size, the extra bytes are filled with zeros. */
export declare function fd_filestat_set_size(fd: fd, size: filesize): errno;
/** Adjust the timestamps of an open file or directory. */
export declare function fd_filestat_set_times(fd: fd, st_atim: timestamp, st_mtim: timestamp, fstflags: fstflags): errno;
/** Read from a file descriptor, without using and updating the file descriptor's offset. */
export declare function fd_pread(fd: fd, iovs: uintptr, iovs_len: size, offset: filesize, nread: uintptr): errno;
/** Return a description of the given preopened file descriptor. */
export declare function fd_prestat_get(fd: fd, buf: uintptr): errno;
/** Return a description of the given preopened file descriptor. */
export declare function fd_prestat_dir_name(fd: fd, path: uintptr, path_len: size): errno;
/** Write to a file descriptor, without using and updating the file descriptor's offset. */
export declare function fd_pwrite(fd: fd, iovs: uintptr, iovs_len: size, offset: filesize, nwritten: uintptr): errno;
/** Read from a file descriptor. */
export declare function fd_read(fd: fd, iovs: uintptr, iovs_len: size, nread: uintptr): errno;
/** Read directory entries from a directory. */
export declare function fd_readdir(fd: fd, buf: uintptr, buf_len: size, cookie: dircookie, buf_used: uintptr): errno;
/** Atomically replace a file descriptor by renumbering another file descriptor. */
export declare function fd_renumber(from: fd, to: fd): errno;
/** Move the offset of a file descriptor. */
export declare function fd_seek(fd: fd, offset: filedelta, whence: whence, newoffset: uintptr): errno;
/** Synchronize the data and metadata of a file to disk. */
export declare function fd_sync(fd: fd): errno;
/** Return the current offset of a file descriptor. */
export declare function fd_tell(fd: fd, newoffset: uintptr): errno;
/** Write to a file descriptor. */
export declare function fd_write(fd: fd, iovs: uintptr, iovs_len: size, nwritten: uintptr): errno;

/* Create a directory. */
export declare function path_create_directory(fd: fd, path: uintptr, path_len: size): errno;
/** Return the attributes of a file or directory. */
export declare function path_filestat_get(fd: fd, flags: lookupflags, path: uintptr, path_len: size, buf: uintptr): errno;
/** Adjust the timestamps of a file or directory. */
export declare function path_filestat_set_times(fd: fd, flags: lookupflags, path: uintptr, path_len: size, st_atim: timestamp, st_mtim: timestamp, fstflags: fstflags): errno;
/** Create a hard link. */
export declare function path_link(fd0: fd, flags0: lookupflags, path0: uintptr, path_len0: size, fd1: fd, path1: uintptr, path_len: size): errno;
/** Open a file or directory. */
export declare function path_open(dirfd: fd, dirflags: lookupflags, path: uintptr, path_len: size, oflags: oflags, fs_rights_base: rights, fs_rights_inheriting: rights, fs_flags: fdflags, fd: fd): errno;
/** Read the contents of a symbolic link. */
export declare function path_readlink(fd: fd, path: uintptr, path_len: size, buf: uintptr, buf_len: size, buf_used: uintptr): errno;
/** Remove a directory. */
export declare function path_remove_directory(fd: fd, path: uintptr, path_len: size): errno;
/** Rename a file or directory. */
export declare function path_rename(fd0: fd, path0: uintptr, path_len0: size, fd1: fd, path1: uintptr, path_len1: size): errno;
/** Create a symbolic link. */
export declare function path_symlink(path0: uintptr, path_len0: size, fd: fd, path1: uintptr, path_len1: size): errno;
/** Unlink a file. */
export declare function path_unlink_file(fd: fd, path: uintptr, path_len: size): errno;

/** Concurrently poll for the occurrence of a set of events. */
export declare function poll_oneoff(in_: uintptr, out: uintptr, nsubscriptions: size, nevents: uintptr): errno;

/** Terminate the process normally. An exit code of 0 indicates successful termination of the program. The meanings of other values is dependent on the environment. */
export declare function proc_exit(rval: u32): void;
/** Send a signal to the process of the calling thread. */
export declare function proc_raise(sig: signal): errno;

/** Write high-quality random data into a buffer. */
export declare function random_get(buf: uintptr, buf_len: size): errno;

/** Temporarily yield execution of the calling thread. */
export declare function sched_yield(): errno;

/** Receive a message from a socket. */
export declare function sock_recv(sock: fd, ri_data: uintptr, ri_data_len: size, ri_flags: riflags, ro_datalen: uintptr, ro_flags: roflags): errno;
/** Send a message on a socket. */
export declare function sock_send(sock: fd, si_data: uintptr, si_data_len: size, si_flags: siflags, so_datalen: uintptr): errno;
/** Shut down socket send and receive channels. */
export declare function sock_shutdown(sock: fd, how: sdflags): errno;

// === Types ======================================================================================

/** File or memory access pattern advisory information. */
export namespace advice {
  /** The application has no advice to give on its behavior with respect to the specified data. */
  @inline export const NORMAL: advice = 0;
  /** The application expects to access the specified data sequentially from lower offsets to higher offsets. */
  @inline export const SEQUENTIAL : advice = 1;
  /** The application expects to access the specified data in a random order. */
  @inline export const RANDOM: advice = 2;
  /** The application expects to access the specified data in the near future. */
  @inline export const WILLNEED: advice = 3;
  /** The application expects that it will not access the specified data in the near future. */
  @inline export const DONTNEED: advice = 4;
  /** The application expects to access the specified data once and then not reuse it thereafter. */
  @inline export const NOREUSE: advice = 5;
}
export type advice = u8;

/** Identifiers for clocks. */
export namespace clockid {
  /** The clock measuring real time. Time value zero corresponds with 1970-01-01T00:00:00Z. */
  @inline export const REALTIME: clockid = 0;
  /** The store-wide monotonic clock. Absolute value has no meaning. */
  @inline export const MONOTONIC: clockid = 1;
  /** The CPU-time clock associated with the current process. */
  @inline export const PROCESS_CPUTIME_ID: clockid = 2;
  /** The CPU-time clock associated with the current thread. */
  @inline export const THREAD_CPUTIME_ID: clockid = 3;
}
export type clockid = u32;

/** Identifier for a device containing a file system. Can be used in combination with `inode` to uniquely identify a file or directory in the filesystem. */
export type device = u64;

/** A reference to the offset of a directory entry. */
export type dircookie = u64;

/** A directory entry. */
@unmanaged export class dirent {
  /** The offset of the next directory entry stored in this directory. */
  next: dircookie;
  /** The serial number of the file referred to by this directory entry. */
  ino: inode;
  /** The length of the name of the directory entry. */
  namlen: u32;
  /** The type of the file referred to by this directory entry. */
  type: filetype;
  private __padding0: u16;
}

/** Error codes returned by functions. */
export namespace errno {
  /** No error occurred. System call completed successfully. */
  @inline export const SUCCESS: errno = 0;
  /** Argument list too long. */
  @inline export const TOOBIG: errno = 1;
  /** Permission denied. */
  @inline export const ACCES: errno = 2;
  /** Address in use. */
  @inline export const ADDRINUSE: errno = 3;
  /** Address not available. */
  @inline export const ADDRNOTAVAIL: errno = 4;
  /** Address family not supported. */
  @inline export const AFNOSUPPORT: errno = 5;
  /** Resource unavailable, or operation would block. */
  @inline export const AGAIN: errno = 6;
  /** Connection already in progress. */
  @inline export const ALREADY: errno = 7;
  /** Bad file descriptor. */
  @inline export const BADF: errno = 8;
  /** Bad message. */
  @inline export const BADMSG: errno = 9;
  /** Device or resource busy. */
  @inline export const BUSY: errno = 10;
  /** Operation canceled. */
  @inline export const CANCELED: errno = 11;
  /** No child processes. */
  @inline export const CHILD: errno = 12;
  /** Connection aborted. */
  @inline export const CONNABORTED: errno = 13;
  /** Connection refused. */
  @inline export const CONNREFUSED: errno = 14;
  /** Connection reset. */
  @inline export const CONNRESET: errno = 15;
  /** Resource deadlock would occur. */
  @inline export const DEADLK: errno = 16;
  /** Destination address required. */
  @inline export const DESTADDRREQ: errno = 17;
  /** Mathematics argument out of domain of function. */
  @inline export const DOM: errno = 18;
  /** Reserved. */
  @inline export const DQUOT: errno = 19;
  /** File exists. */
  @inline export const EXIST: errno = 20;
  /** Bad address. */
  @inline export const FAULT: errno = 21;
  /** File too large. */
  @inline export const FBIG: errno = 22;
  /** Host is unreachable. */
  @inline export const HOSTUNREACH: errno = 23;
  /** Identifier removed. */
  @inline export const IDRM: errno = 24;
  /** Illegal byte sequence. */
  @inline export const ILSEQ: errno = 25;
  /** Operation in progress. */
  @inline export const INPROGRESS: errno = 26;
  /** Interrupted function. */
  @inline export const INTR: errno = 27;
  /** Invalid argument. */
  @inline export const INVAL: errno = 28;
  /** I/O error. */
  @inline export const IO: errno = 29;
  /** Socket is connected. */
  @inline export const ISCONN: errno = 30;
  /** Is a directory. */
  @inline export const ISDIR: errno = 31;
  /** Too many levels of symbolic links. */
  @inline export const LOOP: errno = 32;
  /** File descriptor value too large. */
  @inline export const MFILE: errno = 33;
  /** Too many links. */
  @inline export const MLINK: errno = 34;
  /** Message too large. */
  @inline export const MSGSIZE: errno = 35;
  /** Reserved. */
  @inline export const MULTIHOP: errno = 36;
  /** Filename too long. */
  @inline export const NAMETOOLONG: errno = 37;
  /** Network is down. */
  @inline export const NETDOWN: errno = 38;
  /** Connection aborted by network. */
  @inline export const NETRESET: errno = 39;
  /** Network unreachable. */
  @inline export const NETUNREACH: errno = 40;
  /** Too many files open in system. */
  @inline export const NFILE: errno = 41;
  /** No buffer space available. */
  @inline export const NOBUFS: errno = 42;
  /** No such device. */
  @inline export const NODEV: errno = 43;
  /** No such file or directory. */
  @inline export const NOENT: errno = 44;
  /** Executable file format error. */
  @inline export const NOEXEC: errno = 45;
  /** No locks available. */
  @inline export const NOLCK: errno = 46;
  /** Reserved. */
  @inline export const NOLINK: errno = 47;
  /** Not enough space. */
  @inline export const NOMEM: errno = 48;
  /** No message of the desired type. */
  @inline export const NOMSG: errno = 49;
  /** Protocol not available. */
  @inline export const NOPROTOOPT: errno = 50;
  /** No space left on device. */
  @inline export const NOSPC: errno = 51;
  /** Function not supported. */
  @inline export const NOSYS: errno = 52;
  /** The socket is not connected. */
  @inline export const NOTCONN: errno = 53;
  /** Not a directory or a symbolic link to a directory. */
  @inline export const NOTDIR: errno = 54;
  /** Directory not empty. */
  @inline export const NOTEMPTY: errno = 55;
  /** State not recoverable. */
  @inline export const NOTRECOVERABLE: errno = 56;
  /** Not a socket. */
  @inline export const NOTSOCK: errno = 57;
  /** Not supported, or operation not supported on socket. */
  @inline export const NOTSUP: errno = 58;
  /** Inappropriate I/O control operation. */
  @inline export const NOTTY: errno = 59;
  /** No such device or address. */
  @inline export const NXIO: errno = 60;
  /** Value too large to be stored in data type. */
  @inline export const OVERFLOW: errno = 61;
  /** Previous owner died. */
  @inline export const OWNERDEAD: errno = 62;
  /** Operation not permitted. */
  @inline export const PERM: errno = 63;
  /** Broken pipe. */
  @inline export const PIPE: errno = 64;
  /** Protocol error. */
  @inline export const PROTO: errno = 65;
  /** Protocol not supported. */
  @inline export const PROTONOSUPPORT: errno = 66;
  /** Protocol wrong type for socket. */
  @inline export const PROTOTYPE: errno = 67;
  /** Result too large. */
  @inline export const RANGE: errno = 68;
  /** Read-only file system. */
  @inline export const ROFS: errno = 69;
  /** Invalid seek. */
  @inline export const SPIPE: errno = 70;
  /** No such process. */
  @inline export const SRCH: errno = 71;
  /** Reserved. */
  @inline export const STALE: errno = 72;
  /** Connection timed out. */
  @inline export const TIMEDOUT: errno = 73;
  /** Text file busy. */
  @inline export const TXTBSY: errno = 74;
  /** Cross-device link. */
  @inline export const XDEV: errno = 75;
  /** Extension: Capabilities insufficient. */
  @inline export const NOTCAPABLE: errno = 76;
}
export type errno = u16;

/** An event that occurred. */
@unmanaged export abstract class event {
  /** User-provided value that got attached to `subscription#userdata`. */
  userdata: userdata;
  /** If non-zero, an error that occurred while processing the subscription request. */
  error: errno;
  /* The type of the event that occurred. */
  type: eventtype;
  private __padding0: u16;
}

/** An event that occurred when type is `eventtype.FD_READ` or `eventtype.FD_WRITE`. */
@unmanaged export class rwevent extends event {
  /* The number of bytes available for reading or writing. */
  nbytes: filesize;
  /* The state of the file descriptor. */
  flags: eventrwflags;
  private __padding1: u32;
}

/** The state of the file descriptor subscribed to with `eventtype.FD_READ` or `eventtype.FD_WRITE`. */
export namespace eventrwflags {
  /** The peer of this socket has closed or disconnected. */
  @inline export const HANGUP: eventrwflags = 1;
}
export type eventrwflags = u16;

/** Type of a subscription to an event or its occurrence. */
export namespace eventtype {
  /** The time value of clock has reached the timestamp. */
  @inline export const CLOCK: eventtype = 0;
  /** File descriptor has data available for reading. */
  @inline export const FD_READ: eventtype = 1;
  /** File descriptor has capacity available for writing */
  @inline export const FD_WRITE: eventtype = 2;
}
export type eventtype = u8;

/** Exit code generated by a process when exiting. */
export type exitcode = u32;

/** A file descriptor number. */
export type fd = u32;

/** File descriptor flags. */
export namespace fdflags {
  /** Append mode: Data written to the file is always appended to the file's end. */
  @inline export const APPEND: fdflags = 1;
  /** Write according to synchronized I/O data integrity completion. Only the data stored in the file is synchronized. */
  @inline export const DSYNC: fdflags = 2;
  /** Non-blocking mode. */
  @inline export const NONBLOCK: fdflags = 4;
  /** Synchronized read I/O operations. */
  @inline export const RSYNC: fdflags = 8;
  /** Write according to synchronized I/O file integrity completion. */
  @inline export const SYNC: fdflags = 16;
}
export type fdflags = u16;

/** File descriptor attributes. */
@unmanaged export class fdstat {
  /** File type. */
  filetype: filetype;
  /** File descriptor flags. */
  flags: fdflags;
  /** Rights that apply to this file descriptor. */
  rights_base: rights;
  /** Maximum set of rights that may be installed on new file descriptors that are created through this file descriptor, e.g., through `path_open`. */
  rights_inheriting: rights;
}

/** Relative offset within a file. */
export type filedelta = i64;

/** Non-negative file size or length of a region within a file. */
export type filesize = u64;

/** File attributes. */
@unmanaged export class filestat {
  /** Device ID of device containing the file. */
  dev: device;
  /** File serial number. */
  ino: inode;
  /** File type. */
  filetype: filetype;
  /** Number of hard links to the file. */
  nlink: linkcount;
  /** For regular files, the file size in bytes. For symbolic links, the length in bytes of the pathname contained in the symbolic link. */
  size: filesize;
  /** Last data access timestamp. */
  atim: timestamp;
  /** Last data modification timestamp. */
  mtim: timestamp;
  /** Last file status change timestamp. */
  ctim: timestamp;
}

/** The type of a file descriptor or file. */
export namespace filetype {
  /** The type of the file descriptor or file is unknown or is different from any of the other types specified. */
  @inline export const UNKNOWN: filetype = 0;
  /** The file descriptor or file refers to a block device inode. */
  @inline export const BLOCK_DEVICE: filetype = 1;
  /** The file descriptor or file refers to a character device inode. */
  @inline export const CHARACTER_DEVICE: filetype = 2;
  /** The file descriptor or file refers to a directory inode. */
  @inline export const DIRECTORY: filetype = 3;
  /** The file descriptor or file refers to a regular file inode. */
  @inline export const REGULAR_FILE: filetype = 4;
  /** The file descriptor or file refers to a datagram socket. */
  @inline export const SOCKET_DGRAM: filetype = 5;
  /** The file descriptor or file refers to a byte-stream socket. */
  @inline export const SOCKET_STREAM: filetype = 6;
  /** The file refers to a symbolic link inode. */
  @inline export const SYMBOLIC_LINK: filetype = 7;
}
export type filetype = u8;

/** Which file time attributes to adjust. */
export namespace fstflags {
  /** Adjust the last data access timestamp to the value stored in `filestat#st_atim`. */
  @inline export const SET_ATIM: fstflags = 1;
  /** Adjust the last data access timestamp to the time of clock `clockid.REALTIME`. */
  @inline export const SET_ATIM_NOW: fstflags = 2;
  /** Adjust the last data modification timestamp to the value stored in `filestat#st_mtim`. */
  @inline export const SET_MTIM: fstflags = 4;
  /** Adjust the last data modification timestamp to the time of clock `clockid.REALTIME`. */
  @inline export const SET_MTIM_NOW: fstflags = 8;
}
export type fstflags = u16;

/** File serial number that is unique within its file system. */
export type inode = u64;

/** A region of memory for scatter/gather reads. */
@unmanaged export class iovec {
  /** The address of the buffer to be filled. */
  buf: uintptr;
  /** The length of the buffer to be filled. */
  buf_len: size;
}

/** Number of hard links to an inode. */
export type linkcount = u32;

/** Flags determining the method of how paths are resolved. */
export namespace lookupflags {
  /** As long as the resolved path corresponds to a symbolic link, it is expanded. */
  @inline export const SYMLINK_FOLLOW: lookupflags = 1;
}
export type lookupflags = u32;

/** Open flags. */
export namespace oflags {
  /** Create file if it does not exist. */
  @inline export const CREAT: oflags = 1;
  /** Fail if not a directory. */
  @inline export const DIRECTORY: oflags = 2;
  /** Fail if file already exists. */
  @inline export const EXCL: oflags = 4;
  /** Truncate file to size 0. */
  @inline export const TRUNC: oflags = 8;
}
export type oflags = u16;

/** Flags provided to `sock_recv`. */
export namespace riflags {
  /** Returns the message without removing it from the socket's receive queue. */
  @inline export const PEEK: riflags = 1;
  /** On byte-stream sockets, block until the full amount of data can be returned. */
  @inline export const WAITALL: riflags = 2;
}
export type riflags = u16;

/** File descriptor rights, determining which actions may be performed. */
export namespace rights {
  /** The right to invoke `fd_datasync`. */
  @inline export const FD_DATASYNC: rights = 1;
  /** The right to invoke `fd_read` and `sock_recv`. */
  @inline export const FD_READ: rights = 2;
  /** The right to invoke `fd_seek`. This flag implies `rights.FD_TELL`. */
  @inline export const FD_SEEK: rights = 4;
  /** The right to invoke `fd_fdstat_set_flags`. */
  @inline export const FD_FDSTAT_SET_FLAGS: rights = 8;
  /** The right to invoke `fd_sync`. */
  @inline export const FD_SYNC: rights = 16;
  /** The right to invoke `fd_seek` in such a way that the file offset remains unaltered (i.e., `whence.CUR` with offset zero), or to invoke `fd_tell`). */
  @inline export const FD_TELL: rights = 32;
  /** The right to invoke `fd_write` and `sock_send`. If `rights.FD_SEEK` is set, includes the right to invoke `fd_pwrite`. */
  @inline export const FD_WRITE: rights = 64;
  /** The right to invoke `fd_advise`. */
  @inline export const FD_ADVISE: rights = 128;
  /** The right to invoke `fd_allocate`. */
  @inline export const FD_ALLOCATE: rights = 256;
  /** The right to invoke `path_create_directory`. */
  @inline export const PATH_CREATE_DIRECTORY: rights = 512;
  /** If `rights.PATH_OPEN` is set, the right to invoke `path_open` with `oflags.CREAT`. */
  @inline export const PATH_CREATE_FILE: rights = 1024;
  /** The right to invoke `path_link` with the file descriptor as the source directory. */
  @inline export const PATH_LINK_SOURCE: rights = 2048;
  /** The right to invoke `path_link` with the file descriptor as the target directory. */
  @inline export const PATH_LINK_TARGET: rights = 4096;
  /** The right to invoke `path_open`. */
  @inline export const PATH_OPEN: rights = 8192;
  /** The right to invoke `fd_readdir`. */
  @inline export const FD_READDIR: rights = 16384;
  /** The right to invoke `path_readlink`. */
  @inline export const PATH_READLINK: rights = 32768;
  /** The right to invoke `path_rename` with the file descriptor as the source directory. */
  @inline export const PATH_RENAME_SOURCE: rights = 65536;
  /** The right to invoke `path_rename` with the file descriptor as the target directory. */
  @inline export const PATH_RENAME_TARGET: rights = 131072;
  /** The right to invoke `path_filestat_get`. */
  @inline export const PATH_FILESTAT_GET: rights = 262144;
  /** The right to change a file's size (there is no `path_filestat_set_size`). If `rights.PATH_OPEN` is set, includes the right to invoke `path_open` with `oflags.TRUNC`. */
  @inline export const PATH_FILESTAT_SET_SIZE: rights = 524288;
  /** The right to invoke `path_filestat_set_times`. */
  @inline export const PATH_FILESTAT_SET_TIMES: rights = 1048576;
  /** The right to invoke `fd_filestat_get`. */
  @inline export const FD_FILESTAT_GET: rights = 2097152;
  /** The right to invoke `fd_filestat_set_size`. */
  @inline export const FD_FILESTAT_SET_SIZE: rights = 4194304;
  /** The right to invoke `fd_filestat_set_times`. */
  @inline export const FD_FILESTAT_SET_TIMES: rights = 8388608;
  /** The right to invoke `path_symlink`. */
  @inline export const RIGHT_PATH_SYMLINK: rights = 16777216;
  /** The right to invoke `path_remove_directory`. */
  @inline export const PATH_REMOVE_DIRECTORY: rights = 33554432;
  /** The right to invoke `path_unlink_file`. */
  @inline export const PATH_UNLINK_FILE: rights = 67108864;
  /** If `rights.FD_READ` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype.FD_READ`. If `rights.FD_WRITE` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype.FD_WRITE`. */
  @inline export const POLL_FD_READWRITE: rights = 134217728;
  /** The right to invoke `sock_shutdown`. */
  @inline export const SOCK_SHUTDOWN: rights = 268435456;
}
export type rights = u64;

/** Flags returned by `sock_recv`. */
export namespace roflags {
  /** Message data has been truncated. */
  @inline export const DATA_TRUNCATED: roflags = 1;
}
export type roflags = u16;

/** Which channels on a socket to shut down. */
export namespace sdflags {
  /** Disables further receive operations. */
  @inline export const RD: sdflags = 1;
  /** Disables further send operations. */
  @inline export const WR: sdflags = 2;
}
export type sdflags = u8;

/** Flags provided to `sock_send`. */
export namespace siflags {
  // As there are currently no flags defined, it must be set to zero.
}
export type siflags = u16;

/** Signal condition. */
export namespace signal {
  /** Hangup. */
  @inline export const HUP: signal = 1;
  /** Terminate interrupt signal. */
  @inline export const INT: signal = 2;
  /** Terminal quit signal. */
  @inline export const QUIT: signal = 3;
  /** Illegal instruction. */
  @inline export const ILL: signal = 4;
  /** Trace/breakpoint trap. */
  @inline export const TRAP: signal = 5;
  /** Process abort signal. */
  @inline export const ABRT: signal = 6;
  /** Access to an undefined portion of a memory object. */
  @inline export const BUS: signal = 7;
  /** Erroneous arithmetic operation. */
  @inline export const FPE: signal = 8;
  /** Kill. */
  @inline export const KILL: signal = 9;
  /** User-defined signal 1. */
  @inline export const USR1: signal = 10;
  /** Invalid memory reference. */
  @inline export const SEGV: signal = 11;
  /** User-defined signal 2. */
  @inline export const USR2: signal = 12;
  /** Write on a pipe with no one to read it. */
  @inline export const PIPE: signal = 13;
  /** Alarm clock. */
  @inline export const ALRM: signal = 14;
  /** Termination signal. */
  @inline export const TERM: signal = 15;
  /** Child process terminated, stopped, or continued. */
  @inline export const CHLD: signal = 16;
  /** Continue executing, if stopped. */
  @inline export const CONT: signal = 17;
  /** Stop executing. */
  @inline export const STOP: signal = 18;
  /** Terminal stop signal. */
  @inline export const TSTP: signal = 19;
  /** Background process attempting read. */
  @inline export const TTIN: signal = 20;
  /** Background process attempting write. */
  @inline export const TTOU: signal = 21;
  /** High bandwidth data is available at a socket. */
  @inline export const URG: signal = 22;
  /** CPU time limit exceeded. */
  @inline export const XCPU: signal = 23;
  /** File size limit exceeded. */
  @inline export const XFSZ: signal = 24;
  /** Virtual timer expired. */
  @inline export const VTALRM: signal = 25;
  @inline export const PROF: signal = 26;
  @inline export const WINCH: signal = 27;
  @inline export const POLL: signal = 28;
  @inline export const PWR: signal = 29;
  /** Bad system call. */
  @inline export const SYS: signal = 30;
}
export type signal = u8;

/** Flags determining how to interpret the timestamp provided in `subscription_t::u.clock.timeout. */
export namespace subclockflags {
  /** If set, treat the timestamp provided in `clocksubscription` as an absolute timestamp. */
  @inline export const ABSTIME: subclockflags = 1;
}
export type subclockflags = u16;

/** Subscription to an event. */
@unmanaged export abstract class subscription {
  /** User-provided value that is attached to the subscription. */
  userdata: userdata;
  /** The type of the event to which to subscribe. */
  type: eventtype;
  private __padding0: u32;
}

/* Subscription to an event of type `eventtype.CLOCK`.**/
@unmanaged export class clocksubscription extends subscription {
  /** The user-defined unique identifier of the clock. */
  identifier: userdata;
  /** The clock against which to compare the timestamp. */
  clock_id: clockid;
  /** The absolute or relative timestamp. */
  timeout: timestamp;
  /** The amount of time that the implementation may wait additionally to coalesce with other events. */
  precision: timestamp;
  /** Flags specifying whether the timeout is absolute or relative. */
  flags: subclockflags;
  private __padding1: u32;
}

/* Subscription to an event of type `eventtype.FD_READ` or `eventtype.FD_WRITE`.**/
@unmanaged export class fdsubscription extends subscription {
  /** The file descriptor on which to wait for it to become ready for reading or writing. */
  fd: fd;
}

/** Timestamp in nanoseconds. */
export type timestamp = u64;

/** User-provided value that may be attached to objects that is retained when extracted from the implementation. */
export type userdata = u64;

/** The position relative to which to set the offset of the file descriptor. */
export namespace whence {
  /** Seek relative to current position. */
  @inline export const CUR: whence = 0;
  /** Seek relative to end-of-file. */
  @inline export const END: whence = 1;
  /** Seek relative to start-of-file. */
  @inline export const SET: whence = 2;
}
export type whence = u8;
