----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:39:07 04/08/2019 
-- Design Name: 
-- Module Name:    LED_Moore - Behavioral 
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

entity FSM_Moore is
    Port (	CLK : in STD_LOGIC ;
				X : in  STD_LOGIC_VECTOR (2 downto 0);
				Y : out  STD_LOGIC_VECTOR (3 downto 0));

end FSM_Moore;

architecture Behavioral of FSM_Moore is

type state_type is (S0, S1, S2, S3, S4, S5); -- Declare states with different names
signal state, next_state : state_type; -- declares two internal signals

-- clocked process --
FF_PROC: process (CLK)
begin
	if rising_edge(CLK) then
		state <= next_state;
	end if;
end process;
-- end of clocked process --


-- state process -- 
NS_PROC: process (state,X(1),X(0))
begin
if (X(0)='1') then next_state <= S0; -- X(0) is the reset bit
else
	case (state) is
		when S0 =>
			if(X(1)='1' then -- X(1) is the input bit
				next_state <= S1;
			else next_state <= S4;
			
		when S1 =>
			if(X(1)='1' then -- X(1) is the input bit
				next_state <= S2;
			else next_state <= S4;
			
		when S2 =>
			if(X(1)='1' then -- X(1) is the input bit
				next_state <= S3;
			else next_state <= S4;
			
		when S3 =>
			if(X(1)='1' then -- X(1) is the input bit
				next_state <= S0;
			else next_state <= S4;
		when S4 =>
			next_state <= S5;
		when S5
			next_state <= S0;
end if; -- end reset if
end process;
-- end of state process --

-- output process --
OUT_PROC: process (state)
begin
	case (state) is
		when S0 =>
			Y(2) <= '0'; -- input is Y MSB is LED 3 LSB is LED 1
			Y(1) <= '0';
			Y(0) <= '0';
		when S1 =>
			Y(2) <= '0'; -- LED 3
			Y(1) <= '0'; -- LED 2
			Y(0) <= '1'; -- LED 1
		when S2 =>
			Y(2) <= '0';
			Y(1) <= '1';
			Y(0) <= '1';
		when S3 =>
			Y(2) <= '1';
			Y(1) <= '1';
			Y(0) <= '1';
		when S4 =>
			Y(2) <= '1';
			Y(1) <= '1';
			Y(0) <= '1';
		when S5 =>
			Y(2) <= '0';
			Y(1) <= '0';
			Y(0) <= '0';
	end case;
end process;
-- end of output process --

begin



end Behavioral;

