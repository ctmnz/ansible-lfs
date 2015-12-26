#!/bin/sh

# VARs
#dest_dir="/mnt/lfs/sources/"
#src_dir="/mnt/lfs/sources"

# Get paths from the argument list

dest_dir=$1
src_dir=$2

## check if direcotries exist

if [ ! -d $1 ]; then
  echo "The directory $1 doesn't exist"
  exit 2
fi

if [ ! -d $2 ]; then
  echo "The directory $2 doesn't exist"
  exit 2
fi


# CMDs
cmd_tar="/usr/bin/tar"

# MAIN

# all tar.gz files

for tarfile in $src_dir/*.tar.*
 do
   ($cmd_tar -xvf $tarfile -C $dest_dir)
done


