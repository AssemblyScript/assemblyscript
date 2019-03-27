// see: https://github.com/CraneStation/wasmtime/blob/master/docs/WASI-api.md

/* tslint:disable:max-line-length */

/** Read command-line argument data. */
export declare function args_get(argv: uintptr_t, argv_buf: uintptr_t): errno;
/** Return command-line argument data sizes. */
export declare function args_sizes_get(argc: uintptr_t, argv_buf_size_ptr: uintptr_t): errno;

/** Return the resolution of a clock. */
export declare function clock_res_get(clock: clockid, resolution: uintptr_t): errno;
/** Return the time value of a clock. */
export declare function clock_time_get(clock: clockid, precision: timestamp_t, time: uintptr_t): errno;

/** Read environment variable data. */
export declare function environ_get(environ: uintptr_t, environ_buf: uintptr_t): errno;
/** Return command-line argument data sizes. */
export declare function environ_sizes_get(environ_count: uintptr_t, environ_buf_size: uintptr_t): errno;

/** Provide file advisory information on a file descriptor. */
export declare function fd_advise(fd: fd_t, offset: filesize_t, len: filesize_t, advice: advice): errno;
/** Provide file advisory information on a file descriptor. */
export declare function fd_allocate(fd: fd_t, offset: filesize_t, len: filesize_t): errno;
/** Close a file descriptor. */
export declare function fd_close(fd: fd_t): errno;
/** Synchronize the data of a file to disk. */
export declare function fd_datasync(fd: fd_t): errno;
/** Get the attributes of a file descriptor. */
export declare function fd_fdstat_get(fd: fd_t, buf: uintptr_t): errno;
/** Adjust the flags associated with a file descriptor. */
export declare function fd_fdstat_set_flags(fd: fd_t, flags: fdflags): errno;
/** Adjust the rights associated with a file descriptor. */
export declare function fd_fdstat_set_rights(fd: fd_t, fs_rights_base: rights, fs_rights_inheriting: rights): errno;
/** Return the attributes of an open file. */
export declare function fd_filestat_get(fd: fd_t, buf: uintptr_t): errno;
/** Adjust the size of an open file. If this increases the file's size, the extra bytes are filled with zeros. */
export declare function fd_filestat_set_size(fd: fd_t, size: filesize_t): errno;
/** Adjust the timestamps of an open file or directory. */
export declare function fd_filestat_set_times(fd: fd_t, st_atim: timestamp_t, st_mtim: timestamp_t, fstflags: fstflags): errno;
/** Read from a file descriptor, without using and updating the file descriptor's offset. */
export declare function fd_pread(fd: fd_t, iovs: uintptr_t, iovs_len: size_t, offset: filesize_t, nread: uintptr_t): errno;
/** Return a description of the given preopened file descriptor. */
export declare function fd_prestat_get(fd: fd_t, buf: uintptr_t): errno;
/** Return a description of the given preopened file descriptor. */
export declare function fd_prestat_dir_name(fd: fd_t, path: uintptr_t, path_len: size_t): errno;
/** Write to a file descriptor, without using and updating the file descriptor's offset. */
export declare function fd_pwrite(fd: fd_t, iovs: uintptr_t, iovs_len: size_t, offset: filesize_t, nwritten: uintptr_t): errno;
/** Read from a file descriptor. */
export declare function fd_read(fd: fd_t, iovs: uintptr_t, iovs_len: size_t, nread: uintptr_t): errno;
/** Read directory entries from a directory. */
export declare function fd_readdir(fd: fd_t, buf: uintptr_t, buf_len: size_t, cookie: dircookie_t, buf_used: uintptr_t): errno;
/** Atomically replace a file descriptor by renumbering another file descriptor. */
export declare function fd_renumber(from: fd_t, to: fd_t): errno;
/** Move the offset of a file descriptor. */
export declare function fd_seek(fd: fd_t, offset: filedelta_t, whence: whence, newoffset: uintptr_t): errno;
/** Synchronize the data and metadata of a file to disk. */
export declare function fd_sync(fd: fd_t): errno;
/** Return the current offset of a file descriptor. */
export declare function fd_tell(fd: fd_t, newoffset: uintptr_t): errno;
/** Write to a file descriptor. */
export declare function fd_write(fd: fd_t, iovs: uintptr_t, iovs_len: size_t, nwritten: uintptr_t): errno;

/* Create a directory. */
export declare function path_create_directory(fd: fd_t, path: uintptr_t, path_len: size_t): errno;
/** Return the attributes of a file or directory. */
export declare function path_filestat_get(fd: fd_t, flags: lookupflags, path: uintptr_t, path_len: size_t, buf: uintptr_t): errno;
/** Adjust the timestamps of a file or directory. */
export declare function path_filestat_set_times(fd: fd_t, flags: lookupflags, path: uintptr_t, path_len: size_t, st_atim: timestamp_t, st_mtim: timestamp_t, fstflags: fstflags): errno;
/** Create a hard link. */
export declare function path_link(fd0: fd_t, flags0: lookupflags, path0: uintptr_t, path_len0: size_t, fd1: fd_t, path1: uintptr_t, path_len: size_t): errno;
/** Open a file or directory. */
export declare function path_open(dirfd: fd_t, dirflags: lookupflags, path: uintptr_t, path_len: size_t, oflags: oflags, fs_rights_base: rights, fs_rights_inheriting: rights, fs_flags: fdflags, fd: fd_t): errno;
/** Read the contents of a symbolic link. */
export declare function path_readlink(fd: fd_t, path: uintptr_t, path_len: size_t, buf: uintptr_t, buf_len: size_t, buf_used: uintptr_t): errno;
/** Remove a directory. */
export declare function path_remove_directory(fd: fd_t, path: uintptr_t, path_len: size_t): errno;
/** Rename a file or directory. */
export declare function path_rename(fd0: fd_t, path0: uintptr_t, path_len0: size_t, fd1: fd_t, path1: uintptr_t, path_len1: size_t): errno;
/** Create a symbolic link. */
export declare function path_symlink(path0: uintptr_t, path_len0: size_t, fd: fd_t, path1: uintptr_t, path_len1: size_t): errno;
/** Unlink a file. */
export declare function path_unlink_file(fd: fd_t, path: uintptr_t, path_len: size_t): errno;

/** Concurrently poll for the occurrence of a set of events. */
export declare function poll_oneoff(in_: uintptr_t, out: uintptr_t, nsubscriptions: size_t, nevents: uintptr_t): errno;

/** Terminate the process normally. An exit code of 0 indicates successful termination of the program. The meanings of other values is dependent on the environment. */
export declare function proc_exit(rval: u32): void;
/** Send a signal to the process of the calling thread. */
export declare function proc_raise(sig: signal): errno;

/** Write high-quality random data into a buffer. */
export declare function random_get(buf: uintptr_t, buf_len: size_t): errno;

/** Temporarily yield execution of the calling thread. */
export declare function sched_yield(): errno;

/** Receive a message from a socket. */
export declare function sock_recv(sock: fd_t, ri_data: uintptr_t, ri_data_len: size_t, ri_flags: riflags, ro_datalen: uintptr_t, ro_flags: roflags): errno;
/** Send a message on a socket. */
export declare function sock_send(sock: fd_t, si_data: uintptr_t, si_data_len: size_t, si_flags: siflags, so_datalen: uintptr_t): errno;
/** Shut down socket send and receive channels. */
export declare function sock_shutdown(sock: fd_t, how: sdflags): errno;

// === Types ======================================================================================

/** File or memory access pattern advisory information. */
export const enum advice {
  /** The application has no advice to give on its behavior with respect to the specified data. */
  NORMAL = 0,
  /** The application expects to access the specified data sequentially from lower offsets to higher offsets. */
  SEQUENTIAL = 1,
  /** The application expects to access the specified data in a random order. */
  RANDOM = 2,
  /** The application expects to access the specified data in the near future. */
  WILLNEED = 3,
  /** The application expects that it will not access the specified data in the near future. */
  DONTNEED = 4,
  /** The application expects to access the specified data once and then not reuse it thereafter. */
  NOREUSE = 5
}
export type advice_t = u8;

/** Identifiers for clocks. */
export const enum clockid {
  /** The clock measuring real time. Time value zero corresponds with 1970-01-01T00:00:00Z. */
  REALTIME = 0,
  /** The store-wide monotonic clock. Absolute value has no meaning. */
  MONOTONIC = 1,
  /** The CPU-time clock associated with the current process. */
  PROCESS_CPUTIME_ID = 2,
  /** The CPU-time clock associated with the current thread. */
  THREAD_CPUTIME_ID = 3
}
export type clockid_t = u32;

/** Identifier for a device containing a file system. Can be used in combination with `inode` to uniquely identify a file or directory in the filesystem. */
export type device_t = u64;

/** A reference to the offset of a directory entry. */
export type dircookie_t = u64;

/** A directory entry. */
@unmanaged export class dirent {
  /** The offset of the next directory entry stored in this directory. */
  next: dircookie_t;
  /** The serial number of the file referred to by this directory entry. */
  ino: inode_t;
  /** The length of the name of the directory entry. */
  namlen: u32;
  /** The type of the file referred to by this directory entry. */
  type: filetype_t;
  private __padding0: u16;
}

/** Error codes returned by functions. */
export const enum errno {
  /** No error occurred. System call completed successfully. */
  SUCCESS = 0,
  /** Argument list too long. */
  TOOBIG = 1,
  /** Permission denied. */
  ACCES = 2,
  /** Address in use. */
  ADDRINUSE = 3,
  /** Address not available. */
  ADDRNOTAVAIL = 4,
  /** Address family not supported. */
  AFNOSUPPORT = 5,
  /** Resource unavailable, or operation would block. */
  AGAIN = 6,
  /** Connection already in progress. */
  ALREADY = 7,
  /** Bad file descriptor. */
  BADF = 8,
  /** Bad message. */
  BADMSG = 9,
  /** Device or resource busy. */
  BUSY = 10,
  /** Operation canceled. */
  CANCELED = 11,
  /** No child processes. */
  CHILD = 12,
  /** Connection aborted. */
  CONNABORTED = 13,
  /** Connection refused. */
  CONNREFUSED = 14,
  /** Connection reset. */
  CONNRESET = 15,
  /** Resource deadlock would occur. */
  DEADLK = 16,
  /** Destination address required. */
  DESTADDRREQ = 17,
  /** Mathematics argument out of domain of function. */
  DOM = 18,
  /** Reserved. */
  DQUOT = 19,
  /** File exists. */
  EXIST = 20,
  /** Bad address. */
  FAULT = 21,
  /** File too large. */
  FBIG = 22,
  /** Host is unreachable. */
  HOSTUNREACH = 23,
  /** Identifier removed. */
  IDRM = 24,
  /** Illegal byte sequence. */
  ILSEQ = 25,
  /** Operation in progress. */
  INPROGRESS = 26,
  /** Interrupted function. */
  INTR = 27,
  /** Invalid argument. */
  INVAL = 28,
  /** I/O error. */
  IO = 29,
  /** Socket is connected. */
  ISCONN = 30,
  /** Is a directory. */
  ISDIR = 31,
  /** Too many levels of symbolic links. */
  LOOP = 32,
  /** File descriptor value too large. */
  MFILE = 33,
  /** Too many links. */
  MLINK = 34,
  /** Message too large. */
  MSGSIZE = 35,
  /** Reserved. */
  MULTIHOP = 36,
  /** Filename too long. */
  NAMETOOLONG = 37,
  /** Network is down. */
  NETDOWN = 38,
  /** Connection aborted by network. */
  NETRESET = 39,
  /** Network unreachable. */
  NETUNREACH = 40,
  /** Too many files open in system. */
  NFILE = 41,
  /** No buffer space available. */
  NOBUFS = 42,
  /** No such device. */
  NODEV = 43,
  /** No such file or directory. */
  NOENT = 44,
  /** Executable file format error. */
  NOEXEC = 45,
  /** No locks available. */
  NOLCK = 46,
  /** Reserved. */
  NOLINK = 47,
  /** Not enough space. */
  NOMEM = 48,
  /** No message of the desired type. */
  NOMSG = 49,
  /** Protocol not available. */
  NOPROTOOPT = 50,
  /** No space left on device. */
  NOSPC = 51,
  /** Function not supported. */
  NOSYS = 52,
  /** The socket is not connected. */
  NOTCONN = 53,
  /** Not a directory or a symbolic link to a directory. */
  NOTDIR = 54,
  /** Directory not empty. */
  NOTEMPTY = 55,
  /** State not recoverable. */
  NOTRECOVERABLE = 56,
  /** Not a socket. */
  NOTSOCK = 57,
  /** Not supported, or operation not supported on socket. */
  NOTSUP = 58,
  /** Inappropriate I/O control operation. */
  NOTTY = 59,
  /** No such device or address. */
  NXIO = 60,
  /** Value too large to be stored in data type. */
  OVERFLOW = 61,
  /** Previous owner died. */
  OWNERDEAD = 62,
  /** Operation not permitted. */
  PERM = 63,
  /** Broken pipe. */
  PIPE = 64,
  /** Protocol error. */
  PROTO = 65,
  /** Protocol not supported. */
  PROTONOSUPPORT = 66,
  /** Protocol wrong type for socket. */
  PROTOTYPE = 67,
  /** Result too large. */
  RANGE = 68,
  /** Read-only file system. */
  ROFS = 69,
  /** Invalid seek. */
  SPIPE = 70,
  /** No such process. */
  SRCH = 71,
  /** Reserved. */
  STALE = 72,
  /** Connection timed out. */
  TIMEDOUT = 73,
  /** Text file busy. */
  TXTBSY = 74,
  /** Cross-device link. */
  XDEV = 75,
  /** Extension: Capabilities insufficient. */
  NOTCAPABLE = 76
}
export type errno_t = u16;

/** An event that occurred. */
@unmanaged export abstract class event {
  /** User-provided value that got attached to `subscription#userdata`. */
  userdata: userdata_t;
  /** If non-zero, an error that occurred while processing the subscription request. */
  error: errno_t;
  /* The type of the event that occurred. */
  type: eventtype_t;
  private __padding0: u16;
}

/** An event that occurred when type is `eventtype.FD_READ` or `eventtype.FD_WRITE`. */
@unmanaged export class rwevent extends event {
  /* The number of bytes available for reading or writing. */
  nbytes: filesize_t;
  /* The state of the file descriptor. */
  flags: eventrwflags_t;
  private __padding1: u32;
}

/** The state of the file descriptor subscribed to with `eventtype.FD_READ` or `eventtype.FD_WRITE`. */
export const enum eventrwflags {
  /** The peer of this socket has closed or disconnected. */
  HANGUP = 1
}
export type eventrwflags_t = u16;

/** Type of a subscription to an event or its occurrence. */
export const enum eventtype {
  /** The time value of clock has reached the timestamp. */
  CLOCK = 0,
  /** File descriptor has data available for reading. */
  FD_READ = 1,
  /** File descriptor has capacity available for writing */
  FD_WRITE = 2
}
export type eventtype_t = u8;

/** Exit code generated by a process when exiting. */
export type exitcode_t = u32;

/** A file descriptor number. */
export type fd_t = u32;

/** File descriptor flags. */
export const enum fdflags {
  /** Append mode: Data written to the file is always appended to the file's end. */
  APPEND = 1,
  /** Write according to synchronized I/O data integrity completion. Only the data stored in the file is synchronized. */
  DSYNC = 2,
  /** Non-blocking mode. */
  NONBLOCK = 4,
  /** Synchronized read I/O operations. */
  RSYNC = 8,
  /** Write according to synchronized I/O file integrity completion. */
  SYNC = 16
}
export type fdflags_t = u16;

/** File descriptor attributes. */
@unmanaged export class fdstat {
  /** File type. */
  filetype: filetype_t;
  /** File descriptor flags. */
  flags: fdflags_t;
  /** Rights that apply to this file descriptor. */
  rights_base: rights_t;
  /** Maximum set of rights that may be installed on new file descriptors that are created through this file descriptor, e.g., through `path_open`. */
  rights_inheriting: rights_t;
}

/** Relative offset within a file. */
export type filedelta_t = i64;

/** Non-negative file size or length of a region within a file. */
export type filesize_t = u64;

/** File attributes. */
@unmanaged export class filestat {
  /** Device ID of device containing the file. */
  dev: device_t;
  /** File serial number. */
  ino: inode_t;
  /** File type. */
  filetype: filetype_t;
  /** Number of hard links to the file. */
  nlink: linkcount_t;
  /** For regular files, the file size in bytes. For symbolic links, the length in bytes of the pathname contained in the symbolic link. */
  size: filesize_t;
  /** Last data access timestamp. */
  atim: timestamp_t;
  /** Last data modification timestamp. */
  mtim: timestamp_t;
  /** Last file status change timestamp. */
  ctim: timestamp_t;
}

/** The type of a file descriptor or file. */
export const enum filetype {
  /** The type of the file descriptor or file is unknown or is different from any of the other types specified. */
  UNKNOWN = 0,
  /** The file descriptor or file refers to a block device inode. */
  BLOCK_DEVICE = 1,
  /** The file descriptor or file refers to a character device inode. */
  CHARACTER_DEVICE = 2,
  /** The file descriptor or file refers to a directory inode. */
  DIRECTORY = 3,
  /** The file descriptor or file refers to a regular file inode. */
  REGULAR_FILE = 4,
  /** The file descriptor or file refers to a datagram socket. */
  SOCKET_DGRAM = 5,
  /** The file descriptor or file refers to a byte-stream socket. */
  SOCKET_STREAM = 6,
  /** The file refers to a symbolic link inode. */
  SYMBOLIC_LINK = 7
}
export type filetype_t = u8;

/** Which file time attributes to adjust. */
export const enum fstflags {
  /** Adjust the last data access timestamp to the value stored in `filestat#st_atim`. */
  SET_ATIM = 1,
  /** Adjust the last data access timestamp to the time of clock `clockid.REALTIME`. */
  SET_ATIM_NOW = 2,
  /** Adjust the last data modification timestamp to the value stored in `filestat#st_mtim`. */
  SET_MTIM = 4,
  /** Adjust the last data modification timestamp to the time of clock `clockid.REALTIME`. */
  SET_MTIM_NOW = 8
}
export type fstflags_t = u16;

/** File serial number that is unique within its file system. */
export type inode_t = u64;

/** A region of memory for scatter/gather reads. */
@unmanaged export class iovec {
  /** The address of the buffer to be filled. */
  buf: uintptr_t;
  /** The length of the buffer to be filled. */
  buf_len: size_t;
}

/** Number of hard links to an inode. */
export type linkcount_t = u32;

/** Flags determining the method of how paths are resolved. */
export const enum lookupflags {
  /** As long as the resolved path corresponds to a symbolic link, it is expanded. */
  SYMLINK_FOLLOW = 1
}
export type lookupflags_t = u32;

/** Open flags. */
export const enum oflags {
  /** Create file if it does not exist. */
  CREAT = 1,
  /** Fail if not a directory. */
  DIRECTORY = 2,
  /** Fail if file already exists. */
  EXCL = 4,
  /** Truncate file to size 0. */
  TRUNC = 8
}
export type oflags_t = u16;

/** Flags provided to `sock_recv`. */
export const enum riflags {
  /** Returns the message without removing it from the socket's receive queue. */
  PEEK = 1,
  /** On byte-stream sockets, block until the full amount of data can be returned. */
  WAITALL = 2
}
export type riflags_t = u16;

/** File descriptor rights, determining which actions may be performed. */
export const enum rights {
  /** The right to invoke `fd_datasync`. */
  FD_DATASYNC = 1,
  /** The right to invoke `fd_read` and `sock_recv`. */
  FD_READ = 2,
  /** The right to invoke `fd_seek`. This flag implies `rights.FD_TELL`. */
  FD_SEEK = 4,
  /** The right to invoke `fd_fdstat_set_flags`. */
  FD_FDSTAT_SET_FLAGS = 8,
  /** The right to invoke `fd_sync`. */
  FD_SYNC = 16,
  /** The right to invoke `fd_seek` in such a way that the file offset remains unaltered (i.e., `whence.CUR` with offset zero), or to invoke `fd_tell`). */
  FD_TELL = 32,
  /** The right to invoke `fd_write` and `sock_send`. If `rights.FD_SEEK` is set, includes the right to invoke `fd_pwrite`. */
  FD_WRITE = 64,
  /** The right to invoke `fd_advise`. */
  FD_ADVISE = 128,
  /** The right to invoke `fd_allocate`. */
  FD_ALLOCATE = 256,
  /** The right to invoke `path_create_directory`. */
  PATH_CREATE_DIRECTORY = 512,
  /** If `rights.PATH_OPEN` is set, the right to invoke `path_open` with `oflags.CREAT`. */
  PATH_CREATE_FILE = 1024,
  /** The right to invoke `path_link` with the file descriptor as the source directory. */
  PATH_LINK_SOURCE = 2048,
  /** The right to invoke `path_link` with the file descriptor as the target directory. */
  PATH_LINK_TARGET = 4096,
  /** The right to invoke `path_open`. */
  PATH_OPEN = 8192,
  /** The right to invoke `fd_readdir`. */
  FD_READDIR = 16384,
  /** The right to invoke `path_readlink`. */
  PATH_READLINK = 32768,
  /** The right to invoke `path_rename` with the file descriptor as the source directory. */
  PATH_RENAME_SOURCE = 65536,
  /** The right to invoke `path_rename` with the file descriptor as the target directory. */
  PATH_RENAME_TARGET = 131072,
  /** The right to invoke `path_filestat_get`. */
  PATH_FILESTAT_GET = 262144,
  /** The right to change a file's size (there is no `path_filestat_set_size`). If `rights.PATH_OPEN` is set, includes the right to invoke `path_open` with `oflags.TRUNC`. */
  PATH_FILESTAT_SET_SIZE = 524288,
  /** The right to invoke `path_filestat_set_times`. */
  PATH_FILESTAT_SET_TIMES = 1048576,
  /** The right to invoke `fd_filestat_get`. */
  FD_FILESTAT_GET = 2097152,
  /** The right to invoke `fd_filestat_set_size`. */
  FD_FILESTAT_SET_SIZE = 4194304,
  /** The right to invoke `fd_filestat_set_times`. */
  FD_FILESTAT_SET_TIMES = 8388608,
  /** The right to invoke `path_symlink`. */
  RIGHT_PATH_SYMLINK = 16777216,
  /** The right to invoke `path_remove_directory`. */
  PATH_REMOVE_DIRECTORY = 33554432,
  /** The right to invoke `path_unlink_file`. */
  PATH_UNLINK_FILE = 67108864,
  /** If `rights.FD_READ` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype.FD_READ`. If `rights.FD_WRITE` is set, includes the right to invoke `poll_oneoff` to subscribe to `eventtype.FD_WRITE`. */
  POLL_FD_READWRITE = 134217728,
  /** The right to invoke `sock_shutdown`. */
  SOCK_SHUTDOWN = 268435456
}
export type rights_t = u64;

/** Flags returned by `sock_recv`. */
export const enum roflags {
  /** Message data has been truncated. */
  DATA_TRUNCATED = 1
}
export type roflags_t = u16;

/** Which channels on a socket to shut down. */
export const enum sdflags {
  /** Disables further receive operations. */
  RD = 1,
  /** Disables further send operations. */
  WR = 2
}
export type sdflags_t = u8;

/** Flags provided to `sock_send`. */
export const enum siflags {
  // As there are currently no flags defined, it must be set to zero.
}
export type siflags_t = u16;

/** Signal condition. */
export const enum signal {
  /** Hangup. */
  HUP = 1,
  /** Terminate interrupt signal. */
  INT = 2,
  /** Terminal quit signal. */
  QUIT = 3,
  /** Illegal instruction. */
  ILL = 4,
  /** Trace/breakpoint trap. */
  TRAP = 5,
  /** Process abort signal. */
  ABRT = 6,
  /** Access to an undefined portion of a memory object. */
  BUS = 7,
  /** Erroneous arithmetic operation. */
  FPE = 8,
  /** Kill. */
  KILL = 9,
  /** User-defined signal 1. */
  USR1 = 10,
  /** Invalid memory reference. */
  SEGV = 11,
  /** User-defined signal 2. */
  USR2 = 12,
  /** Write on a pipe with no one to read it. */
  PIPE = 13,
  /** Alarm clock. */
  ALRM = 14,
  /** Termination signal. */
  TERM = 15,
  /** Child process terminated, stopped, or continued. */
  CHLD = 16,
  /** Continue executing, if stopped. */
  CONT = 17,
  /** Stop executing. */
  STOP = 18,
  /** Terminal stop signal. */
  TSTP = 19,
  /** Background process attempting read. */
  TTIN = 20,
  /** Background process attempting write. */
  TTOU = 21,
  /** High bandwidth data is available at a socket. */
  URG = 22,
  /** CPU time limit exceeded. */
  XCPU = 23,
  /** File size limit exceeded. */
  XFSZ = 24,
  /** Virtual timer expired. */
  VTALRM = 25,
  PROF = 26,
  WINCH = 27,
  POLL = 28,
  PWR = 29,
  /** Bad system call. */
  SYS = 30
}
export type signal_t = u8;

/** Flags determining how to interpret the timestamp provided in `subscription_t::u.clock.timeout. */
export const enum subclockflags {
  /** If set, treat the timestamp provided in `clocksubscription` as an absolute timestamp. */
  ABSTIME = 1
}
export type subclockflags_t = u16;

/** Subscription to an event. */
@unmanaged export abstract class subscription {
  /** User-provided value that is attached to the subscription. */
  userdata: userdata_t;
  /** The type of the event to which to subscribe. */
  type: eventtype_t;
  private __padding0: u32;
}

/* Subscription to an event of type `eventtype.CLOCK`.**/
@unmanaged export class clocksubscription extends subscription {
  /** The user-defined unique identifier of the clock. */
  identifier: userdata_t;
  /** The clock against which to compare the timestamp. */
  clock_id: clockid_t;
  /** The absolute or relative timestamp. */
  timeout: timestamp_t;
  /** The amount of time that the implementation may wait additionally to coalesce with other events. */
  precision: timestamp_t;
  /** Flags specifying whether the timeout is absolute or relative. */
  flags: subclockflags_t;
  private __padding1: u32;
}

/* Subscription to an event of type `eventtype.FD_READ` or `eventtype.FD_WRITE`.**/
@unmanaged export class fdsubscription extends subscription {
  /** The file descriptor on which to wait for it to become ready for reading or writing. */
  fd: fd_t;
}

/** Timestamp in nanoseconds. */
export type timestamp_t = u64;

/** User-provided value that may be attached to objects that is retained when extracted from the implementation. */
export type userdata_t = u64;

/** The position relative to which to set the offset of the file descriptor. */
export const enum whence {
  /** Seek relative to current position. */
  CUR = 0,
  /** Seek relative to end-of-file. */
  END = 1,
  /** Seek relative to start-of-file. */
  SET = 2
}
export type whence_t = u8;

// glue
export type uintptr_t = usize;
export type size_t = usize;
