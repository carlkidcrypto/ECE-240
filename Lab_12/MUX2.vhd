----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:09 04/16/2019 
-- Design Name: 
-- Module Name:    MUX2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX2 is
	Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           SEL : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end MUX2;

architecture Behavioral of MUX2 is

begin

--------------- process for MUX 2 --------------------
process (A,B,SEL) is 
begin

if (SEL = '0') then -- if 0 then select A else if 1 select B
	Y <= A;
else
	Y <= B;
end if; -- end of if statement
end process;
--------------- END process for MUX 2 -------------------
end Behavioral;

