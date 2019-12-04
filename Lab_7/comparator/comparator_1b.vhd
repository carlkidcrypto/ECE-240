----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:33 03/05/2019 
-- Design Name: 
-- Module Name:    comparator_1b - Behavioral 
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

entity comparator_1b is
    Port ( A_0 : in  STD_LOGIC;
           B_0 : in  STD_LOGIC;
           G : out  STD_LOGIC;
           L : out  STD_LOGIC;
           E : out  STD_LOGIC);
end comparator_1b;

architecture Behavioral of comparator_1b is

begin

G  <= (A_0 and not B_0);
L <= (not A_0 and B_0);
E <=  (A_0 xnor B_0);

end Behavioral;

