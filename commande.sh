#!/bin/bash
function c_innxi()
{
lshw
}
function c_lsusb()
{
lsusb
}
function c_help()
{
help
}
if [[ $1 = "-lx" ]]
then 
c_innxi
read s
if [[ $s = "-s" || $s = "--save" ]]
then 
./s_innxi.sh
fi
fi

if [[ $1 = "-lusb" ]]
then 
c_lsusb
read s
if [[ $s = "-s" || $s = "--save" ]]
then 
./s_lsusb.sh
fi
fi

if [[ $1 = "-help" || $1 = "-h" ]]
then 
c_help
read s
if [[ $s = "-s" || $s = "--save" ]]
then 
./s_help.sh
fi
fi
