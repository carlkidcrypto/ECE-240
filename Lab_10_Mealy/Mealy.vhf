--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : Mealy.vhf
-- /___/   /\     Timestamp : 04/08/2019 20:44:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\xilinx\92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Users/carlo/Desktop/xilinx/Lab_10_Mealy/Mealy.sch Mealy.vhf
--Design Name: Mealy
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mealy is
   port ( CLK : in    std_logic; 
          RST : in    std_logic; 
          X   : in    std_logic; 
          Y   : out   std_logic);
end Mealy;

architecture BEHAVIORAL of Mealy is
   attribute INIT       : string ;
   attribute BOX_TYPE   : string ;
   attribute IOSTANDARD : string ;
   attribute SLEW       : string ;
   attribute DRIVE      : string ;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_5  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_35 : std_logic;
   signal XLXN_36 : std_logic;
   signal XLXN_42 : std_logic;
   component FDR
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C : in    std_logic; 
             D : in    std_logic; 
             R : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of FDR : component is "0";
   attribute BOX_TYPE of FDR : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
begin
   S0 : FDR
      port map (C=>CLK,
                D=>XLXN_5,
                R=>RST,
                Q=>XLXN_12);
   
   S1 : FDR
      port map (C=>CLK,
                D=>XLXN_4,
                R=>RST,
                Q=>XLXN_35);
   
   XLXI_3 : AND3
      port map (I0=>X,
                I1=>XLXN_12,
                I2=>XLXN_24,
                O=>XLXN_4);
   
   XLXI_5 : AND3
      port map (I0=>XLXN_36,
                I1=>XLXN_12,
                I2=>XLXN_24,
                O=>XLXN_2);
   
   XLXI_6 : OR2
      port map (I0=>XLXN_2,
                I1=>XLXN_3,
                O=>XLXN_5);
   
   XLXI_11 : INV
      port map (I=>XLXN_35,
                O=>XLXN_24);
   
   XLXI_12 : INV
      port map (I=>XLXN_12,
                O=>XLXN_14);
   
   XLXI_13 : INV
      port map (I=>X,
                O=>XLXN_36);
   
   XLXI_15 : AND3
      port map (I0=>XLXN_36,
                I1=>XLXN_14,
                I2=>XLXN_24,
                O=>XLXN_3);
   
   XLXI_16 : AND3
      port map (I0=>XLXN_36,
                I1=>XLXN_33,
                I2=>XLXN_35,
                O=>XLXN_42);
   
   XLXI_17 : INV
      port map (I=>XLXN_12,
                O=>XLXN_33);
   
   XLXI_19 : OBUF
      port map (I=>XLXN_42,
                O=>Y);
   
end BEHAVIORAL;


