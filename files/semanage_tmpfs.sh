#!/bin/bash
# http://john.cuppi.net/move-mysql-mariadb-tmpdir-to-tmpfs-ramdisk/#comment-640
# Script by Dan Black

checkmodule -M -m MySQL_tmpfs.te -o MySQL_tmpfs.mod
semodule_package -m MySQL_tmpfs.mod -o MySQL_tmpfs.pp
semodule -i MySQL_tmpfs.pp
