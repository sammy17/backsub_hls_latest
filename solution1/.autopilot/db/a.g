#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zynq-fyp/Desktop/HoG_IP/backsub_hls_new/solution1/.autopilot/db/a.g.bc ${1+"$@"}
