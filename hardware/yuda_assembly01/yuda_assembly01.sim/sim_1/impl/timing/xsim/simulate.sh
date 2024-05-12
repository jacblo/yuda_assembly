#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.2.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun May 12 20:16:54 IDT 2024
# SW Build 4126759 on Thu Feb  8 23:52:05 MST 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim adderTestBench_time_impl -key {Post-Implementation:sim_1:Timing:adderTestBench} -tclbatch adderTestBench.tcl -log simulate.log"
xsim adderTestBench_time_impl -key {Post-Implementation:sim_1:Timing:adderTestBench} -tclbatch adderTestBench.tcl -log simulate.log

