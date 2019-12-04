----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:31 03/25/2019 
-- Design Name: 
-- Module Name:    Crazy_Counter_up1_dwn2 - Behavioral 
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

entity Crazy_Counter_up1_dwn2 is
    port( CNT_DIR: in std_logic;
 	 Clock: in std_logic;
 	 Reset: in std_logic;
 	 CNT: out std_logic_vector(2 downto 0));
			  
end Crazy_Counter_up1_dwn2;

architecture Behavioral of Crazy_Counter_up1_dwn2 is

signal temp: std_logic_vector(2 downto 0);
begin   process(Clock,Reset)
   begin
      if Reset='1' then -- reset
         temp <= "000";
			
      elsif(rising_edge(Clock)) then
         if CNT_DIR='1' then
            if temp="101" then
               temp<="000";
            else
               temp <= temp + 1;
				end if;
				
			if CNT_DIR='0' then
            if temp="000" then
               temp<="000";
            else
               temp <= temp - 2;
			end if;
		end if;
      end if; -- end reset
		
   end process;
   CNT <= temp;
	
end Behavioral;

