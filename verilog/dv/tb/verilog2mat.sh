#!/bin/bash

echo "------------------------------------------------"
echo "VERILOG2MAT (c) 2021-2022 Harald Pretl, IIC, JKU"
echo "------------------------------------------------"
echo ""
echo "This tool converts a hex file from a Verilog"
echo "simulation into a .mat file for efficient read"
echo "into Matlab/Octave."
echo ""

if test -f "$1"; then
	echo "Start processing..."
	sed '/x/d' $1 > "_$2"

	no_lines=`cat "_$2" | wc -l`

	echo "#name: veri_data" > $2
	echo "#type: matrix" >> $2
	echo "#rows:$no_lines" >> $2
	echo "#columns: 1" >> $2

	cat "_$2" >> $2

	rm "_$2"

	echo "...done"
else
	echo "Usage: $0 <hexdata.txt> <fileout.mat>"
fi
