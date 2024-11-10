#!/bin/bash
a=`rdmsr 0x1FC`
b="0x$a"
c=$(($b&0xFFFFFFFE)) # bitwise AND
wrmsr 0x1FC $c
