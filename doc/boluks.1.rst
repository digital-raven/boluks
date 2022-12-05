========
 boluks
========

-------------------------------------------------------------
A simple program for luks and veracrypt container management.
-------------------------------------------------------------

.. include:: _manual-section.rst

SYNOPSIS
========

**boluks** [opts]... *operation* [args]...

DESCRIPTION
===========
boluks is a command line program to ease the flow one might be used to if they
frequently use cryptsetup to mount or unmount volumes. Because the underlying
workflow is centered around cryptsetup, this utility can handle entire drives
as well as regular files.

This tool will automatically detect the appropriate name and mount point for
any new volumes you open. All devices are mapped in /dev/mapper, and volumes
will be mounted in /mnt/boluks* by default.

Map numbers are chosen naively. boluks will count from 1 to 255 until a
filename is available in /dev/mapper. eg. /dev/mapper/boluks1 will be given
to the first volume that is mounted. Numberings will become available
again after the respective volume(s) are unmounted.

OPERATIONS
==========
You may specify one operation.

**init** *device*
        Format an existing file as a luks volume. *device* can be a regular file,
        or point to a drive's partition.

**open** *device* [*dir*]
        Map and mount an encrypted container. Default mount locations are
        */mnt/luksvol* for luks volumes, and */media/veracrypt* for veracrypt
        volumes, but a specific directory may also be provided.

**close** [*num*]...
        Close the numbered volumes. If num is not provided, then boluks will attempt
        to close all volumes.

OPTIONS
=======
**-v, --veracrypt**
        Use when targeting a veracrypt volume. Only applicable for **open** and **close**.

**-f** *fstype*
        Choose the type of filesystem to use when initializing a new volume. This
        option is used to select the correct mkfs.<type> program, so make sure the
        respective program is valid on your system.

**-V, --version**
        Print the version of boluks.

**-h, --help**
        Print the help message.

FAQ
===
**boluks sounds kind of like...?**

bluks sounded better at first, but I get the feeling some alien race
out there already has that word, and perhaps it is much more embarassing.
