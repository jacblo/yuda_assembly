-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.2 (lin64) Build 4126759 Thu Feb  8 23:52:05 MST 2024
-- Date        : Wed Jun 19 22:03:40 2024
-- Host        : BSERVER05 running 64-bit Linux Mint 21.3
-- Command     : write_vhdl -force -mode synth_stub -rename_top clk_wiz_0 -prefix
--               clk_wiz_0_ clk_wiz_0_stub.vhdl
-- Design      : clk_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_0 is
  Port ( 
    clk_70Mhz : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_wiz_0;

architecture stub of clk_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_70Mhz,clk_in1";
begin
end;
