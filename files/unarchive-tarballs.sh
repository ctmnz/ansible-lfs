#!/bin/sh

# VARs
dest_dir="/mnt/lfs/sources/"
src_dir="/mnt/lfs/sources"

# CMDs
cmd_tar="/usr/bin/tar"

# MAIN

# all tar.gz files

for tarfile in $src_dir/*.tar.*
 do
   ($cmd_tar -xvf $tarfile -C $dest_dir)
done


