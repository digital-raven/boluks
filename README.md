## Name

boluks - A program to help manage luks and veracrypt volumes.

## Author

Bo Cimino

## Description

boluks is a simple program designed to help streamline management
of luks and veracrypt volumes. boluks is a pretty simple wrapper around
the workflow one might be used to if they frequently use cryptsetup
to initialize, mount, and unmount various volumes. boluks can also open
and close veracrypt volumes, but cannot create new ones.

For more details on the use and operation of this program,
you may view the man page with 'man -l ./doc/boluks.1'

## Installation and removal

    make
    make install

This will create the man pages in ./doc, and then install the
software.

To uninstall, run 'make uninstall'. This will remove the utility
from your computer. There are no user-specific configuration files
to worry about.

You can also create a .deb package.

    make
    ./package.bash

And then use your package manager to install the resulting deb. Once installed,
run the following command to clean the repo.

    make clean

If you're using a non-deb based package manager, then you can use fpm to convert
the deb into an rpm.

    fpm -s deb -t rpm ./boluks*.deb

## Maintenance

The version as reported by the --version option is hardcoded into boluks.
If modifying or creating a new release, ensure it is updated there as well
as in the control / spec files.

## Copyright

Copyright (C) 2019 Bo Cimino (ciminobo@protonmail.com)

This file is part of boluks.

boluks is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the license,
or any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>
