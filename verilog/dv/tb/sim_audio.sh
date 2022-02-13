#!/bin/bash
#
# Help simulate a verilog file
testbench=$1

if [ ! -e "$testbench.v" ]; then
	echo "File $testbench.v not found!"
	exit 1
fi

verilator --lint-only "$testbench".v

echo "----------------- Linting done -----------------------"

iverilog -g2005 "$testbench.v"
./a.out

echo "---------------- Simulation done ---------------------"

#gtkwave "$testbench".vcd

# Convert simulated audio data to .wav
./verilog2mat.sh verilog_bin_out.txt verilog_bin_out.mat
octave mat2wav.m
#rm -f verilog_bin_out.txt
#rm -f verilog_bin_out.mat
