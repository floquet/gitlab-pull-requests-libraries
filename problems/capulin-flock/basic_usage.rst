https://github.com/spack/spack/blob/d20b5ce2ec68030a35b4e32a82d790cb31ec2b5f/lib/spack/docs/basic_usage.rst

Filesystem requirements
By default, Spack needs to be run from a filesystem that supports flock locking semantics. Nearly all local filesystems and recent versions of NFS support this, but parallel filesystems or NFS volumes may be configured without flock support enabled. You can determine how your filesystems are mounted with mount. The output for a Lustre filesystem might look like this:

$ mount | grep lscratch
mds1-lnet0@o2ib100:/lsd on /p/lscratchd type lustre (rw,nosuid,lazystatfs,flock)
mds2-lnet0@o2ib100:/lse on /p/lscratche type lustre (rw,nosuid,lazystatfs,flock)
Note the flock option on both Lustre mounts.

If you do not see this or a similar option for your filesystem, you have a few options. First, you can move your Spack installation to a filesystem that supports locking. Second, you could ask your system administrator to enable flock for your filesystem.

If none of those work, you can disable locking in one of two ways:

Run Spack with the -L or --disable-locks option to disable locks on a call-by-call basis.
Edit :ref:`config.yaml <config-yaml>` and set the locks option to false to always disable locking.
Warning

If you disable locking, concurrent instances of Spack will have no way to avoid stepping on each other. You must ensure that there is only one instance of Spack running at a time. Otherwise, Spack may end up with a corrupted database file, or you may not be able to see all installed packages in commands like spack find.

If you are unfortunate enough to run into this situation, you may be able to fix it by running spack reindex.

This issue typically manifests with the error below:

$ ./spack find
Traceback (most recent call last):
File "./spack", line 176, in <module>
  main()
File "./spack", line 154,' in main
  return_val = command(parser, args)
File "./spack/lib/spack/spack/cmd/find.py", line 170, in find
  specs = set(spack.installed_db.query(\**q_args))
File "./spack/lib/spack/spack/database.py", line 551, in query
  with self.read_transaction():
File "./spack/lib/spack/spack/database.py", line 598, in __enter__
  if self._enter() and self._acquire_fn:
File "./spack/lib/spack/spack/database.py", line 608, in _enter
  return self._db.lock.acquire_read(self._timeout)
File "./spack/lib/spack/llnl/util/lock.py", line 103, in acquire_read
  self._lock(fcntl.LOCK_SH, timeout)   # can raise LockError.
File "./spack/lib/spack/llnl/util/lock.py", line 64, in _lock
  fcntl.lockf(self._fd, op | fcntl.LOCK_NB)
IOError: [Errno 38] Function not implemented
A nicer error message is TBD in future versions of Spack.
