################################################################################
# boluks - A simple helper centered around cryptfs.
# 
# Copyright (C) 2019  Bo Cimino
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
################################################################################

all:
	gzip -c ./doc/boluks.1 > ./doc/boluks.1.gz

install:
	@ cat NOTICE
	@ install -v -m 755 -o root ./boluks /usr/bin/
	@ install -v -d -o root /usr/local/share/man/man1
	@ install -v -m 644 -o root ./doc/boluks.1.gz /usr/local/share/man/man1/

uninstall:
	rm /usr/bin/boluks
	rm /usr/local/share/man/man1/boluks.1.gz

clean:
	rm -f ./doc/boluks.1.gz
