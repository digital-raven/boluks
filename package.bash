#!/usr/bin/env bash
################################################################################
# This file is part of boluks.
#
# License
#
# Copyright (C) 2019 Bo Cimino (ciminobo@protonmail.com)
#
# boluks is free software; you can redistribute it and/or
# modify it under the terms of the GNU Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
################################################################################

version="$(grep Version DEBIAN/control | awk '{print $2}')"

pkgname="boluks_$version"

export PREFIX="$(pwd)/$pkgname"

mkdir $pkgname
make -e install
cp -r DEBIAN $pkgname
dpkg-deb --build $pkgname
