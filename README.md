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

## Copyright

Copyright (C) 2019 Bo Cimino (ciminobo@protonmail.com)

This file is part of boluks.

boluks is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the license,
or any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>
