----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:15:50 03/05/2019 
-- Design Name: 
-- Module Name:    comparator_2b - Behavioral 
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

entity comparator_2b is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           G : out  STD_LOGIC;
           L : out  STD_LOGIC;
           E : out  STD_LOGIC);
end comparator_2b;

architecture Behavioral of comparator_2b is

signal tmp : STD_LOGIC_VECTOR (5 downto 0);

begin

tmp(0) <= (A(0) and (not B(0))); --- Greater A(0)
tmp(1) <= ((not A(0)) and B(0)); --- Lesser A(0)
tmp(2) <= (A(0) xnor B(0)); ---  Equal A(0)

tmp(3) <= (A(1) and (not B(1))); --- Greater A(1)
tmp(4) <= ((not A(1)) and B(1)); --- Lesser A(1)
tmp(5) <= (A(1) xnor B(1)); ---  Equal A(1)

G <= (tmp(0) or tmp(3));
L <= (tmp(1) or tmp(4));
E <= (tmp(2) and tmp(5));





end Behavioral;

