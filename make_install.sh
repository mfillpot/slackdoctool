#!/bin/bash

# This script is intended to build an installation structure for the
# slackdoctool sctipt. This script requires the destination directory 
# as tthe argument.

CWD=$(pwd)

if [ -z "${1}" ]; then
  echo "No desination Directory specific, Exiting.."
  exit 1
fi

# make the installation directories
mkdir -p ${1}/usr/bin

# Copy the execuatble
cp ${CWD}/slackdoctool ${1}/usr/bin/

# Copy the manual file(s)
cp -r ${CWD}/man ${1}/usr/
