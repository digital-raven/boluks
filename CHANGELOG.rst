===========
 Changelog
===========
All notable changes to boluks will be documented in this file.

The format is based on `Keep a Changelog <https://keepachangelog.com/en/1.0.0/>`_,
and this project adheres to `Semantic Versioning <https://semver.org/spec/v2.0.0.html>`_.

[unreleased]
============

Changed
-------
- boluks mountpoints are prefixed with "boluks" instead of "luksvol" or
  "veracrypt". Necssary because the removal of the -v flag means
  boluks can't keep track of which numbers are veracrypt or luks.
- Removed the "--veracrypt" option; boluks will automatically determine if
  a volume is veracrypt or luksvol while mounting.

[release-1.2.0] - 2022-12-04
============================
Added some backwards-compatible features. Also undid the automatic removal
of directories upon unmounting.

Added
-----
- Devices may be mounted to custom directories. The mountpoint name is still
  hardcoded, but the parent directory of the mountpoint may be selected.

Changed
-------
- boluks will no longer remove directories when unmounting.
- boluks is now distributed under the terms of the GNU GPLv2.

[release-1.1.0] - 2019-11-03
============================

Added
-----
- Automatic removal of directories when unmounting.

[release-1.0.0] - 2019-10-13
============================
First official release of boluks.

Added
-----
- boluks can package as a deb.
- manpages.
- Operation to init luks volumes.
- Volumes can be initialized as any filesystem as supported by mkfs.* .
- Support for opening veracrypt volumes.
