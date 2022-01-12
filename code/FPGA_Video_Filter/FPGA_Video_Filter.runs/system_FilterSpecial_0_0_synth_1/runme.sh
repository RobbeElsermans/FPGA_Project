#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/robbe/Xilinx2016.4/SDK/2016.4/bin:/home/robbe/Xilinx2016.4/Vivado/2016.4/ids_lite/ISE/bin/lin64:/home/robbe/Xilinx2016.4/Vivado/2016.4/bin
else
  PATH=/home/robbe/Xilinx2016.4/SDK/2016.4/bin:/home/robbe/Xilinx2016.4/Vivado/2016.4/ids_lite/ISE/bin/lin64:/home/robbe/Xilinx2016.4/Vivado/2016.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/robbe/Xilinx2016.4/Vivado/2016.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/robbe/Xilinx2016.4/Vivado/2016.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/robbe/Desktop/Github/FPGA_Project/code/Zybo-Z7-20-pcam-5c-2016.4-1_original/Zybo-Z7-20-pcam-5c/proj/pcam-5c.runs/system_FilterSpecial_0_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log system_FilterSpecial_0_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source system_FilterSpecial_0_0.tcl
