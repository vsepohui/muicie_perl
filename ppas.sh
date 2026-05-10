#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking USSD
OFS=$IFS
IFS="
"
/usr/bin/ld.bfd -b elf64-x86-64 -m elf_x86_64     -s  -L. -o USSD -T link12106.res -e _start
if [ $? != 0 ]; then DoExitLink USSD; fi
IFS=$OFS
