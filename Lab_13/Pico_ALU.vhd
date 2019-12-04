--------------------------------------------------------------------------------
-- Company: 		ECE Dept - Univ of Idaho
-- Engineer: Jim Frenzel
--
-- Create Date:    15:07:31 11/08/05
-- Design Name:	Picoprocessor Lab    
-- Module Name:    alu - Behavioral
-- Project Name:	ECE 241 - Lab 9   
-- Target Device: Spartan 2 XC2s30-6tq144  
-- Tool versions:  
-- Description:	4-bit ALU for use with Picoprocessor
--
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity alu is
    Port ( rega : in std_logic_vector(4 downto 0);
           regb : in std_logic_vector(4 downto 0);
           controls : in std_logic_vector(3 downto 0);
           alu_out : out std_logic_vector(4 downto 0);
           ccr_out : out std_logic_vector(3 downto 0);
			  clk : in std_logic );
end alu;

architecture Behavioral of alu is

signal temp_out : std_logic_vector (4 downto 0); -- temp holder for alu_out

begin -- begin arch

----- Operands -----
pr1:process(clk,controls) 
begin -- begin process for operands
if controls = "00000" then -- 0000
		alu_out <= rega + regb; -- add op
		temp_out <= rega + regb;

elsif controls = "00001" then -- 0001
		alu_out <= rega - regb; -- sub op
		temp_out <= rega - regb;

elsif controls = "00010" then -- 0010
		alu_out <= rega and regb; -- and op
		temp_out <= rega and regb;

elsif controls = "00011" then -- 0011
		alu_out <= rega or regb; -- or op
		temp_out <= rega or  regb;

elsif controls = "00100" then -- 0100
		alu_out <= not(rega); -- not A op
		temp_out <= not(rega);

elsif controls = "00101" then -- 0101
		alu_out <= rega; -- A out op
		temp_out <= rega;
else
	alu_out <= "00000"; -- if not one the above make it all zero
	temp_out <= "00000";
end if;
end process; -- ending of the pr1 process
----- end operands -----

pr2:process(clk,rega,regb,temp_out,controls)
begin -- begin process for flag logic
----- N Flag -----
if rega(3) = '0' and regb(3) = '1' and temp_out(3) = '1' then -- pos + neg
	ccr_out(3) <= '1';
elsif rega(3) = '1' and regb(3) = '0' and temp_out(3) = '1' then -- neg + pos
	ccr_out(3) <= '1';
elsif rega(3) = '0' and regb(3) = '1' and temp_out(3) = '0' then -- pos - neg
	ccr_out(3) <= '0';
elsif rega(3) = '1' and regb(3) = '0' and temp_out(3) = '1' then -- neg - pos
	ccr_out(3) <= '1';
elsif rega(3) = '1' and regb(3) = '1' and temp_out(3) = '1' then -- neg - neg
	ccr_out(3) <= '1';
else
	ccr_out(3) <= '0';
end if;
-----  End of N Flag -----

----- Z  Flag -----
if rega = "00000" and regb = "00000" and temp_out = "00000" then
	ccr_out(2) <= '1';
else
	ccr_out(2) <= '0';
end if;
----- End of Z Flag -----

----- V Flag -----
if controls = "00000" and rega(3) = '0' and regb(3) = '0' and temp_out(3) = '1' then -- pos + pos
	ccr_out(1) <= '1';
elsif controls = "00000" and rega(3) = '1' and regb(3) = '1' and temp_out(3) = '0' then -- neg + neg
	ccr_out(1) <= '1';
elsif controls = "00001" and rega(3) = '0' and regb(3) = '0' and temp_out(3) = '1' then -- pos - pos
	ccr_out(1) <= '1';
elsif controls = "00001" and rega(3) = '1' and regb(3) = '1' and temp_out(3) = '0' then -- neg - neg
	ccr_out(1) <= '1';
else
	ccr_out(1) <= '0';
end if;
----- End of V Flag -----

----- C  Flag -----
if controls = "00000" and rega(3) = '1' and regb(3) = '1' and temp_out(4) = '1' then -- add
	ccr_out(0) <= '1';
elsif controls = "00000" and rega(3) = '1' and regb(3) = '0' and temp_out(4) = '1' then -- add
	ccr_out(0) <= '1';
elsif controls = "00000" and rega(3) = '0' and regb(3) = '1' and temp_out(4) = '1' then -- add
	ccr_out(0) <= '1';
elsif controls = "00001" and rega(3) = '0' and regb(3) = '0' and temp_out(4) = '1' then -- sub
	ccr_out(0) <= '1';
elsif controls = "00001" and rega(3) = '0' and regb(3) = '1' and temp_out(4) = '1' then -- sub
	ccr_out(0) <= '1';
else
	ccr_out(0) <= '0';
end if;
----- End of C Flag -----
end process; -- ending of process for flag logic
end Behavioral; -- end of arch