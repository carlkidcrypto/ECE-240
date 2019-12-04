----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:09 04/28/2019 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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

entity FSM is
Port (	FSM_CLK : in STD_LOGIC ;
			OP : in  STD_LOGIC_VECTOR (3 downto 0);
			FSM_REGA : in  STD_LOGIC_VECTOR (4 downto 0);
			FSM_ALU_OUT : out  STD_LOGIC_VECTOR (4 downto 0);
			FSM_CCR_OUT : out STD_LOGIC_VECTOR (3 downto 0));

end FSM;

architecture Behavioral of FSM is

type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8,S9); -- Declare states with different names
signal state,next_state : state_type; -- declares two internal signals
signal temp : STD_LOGIC_VECTOR (3 downto 0);

----- Instantiation for ALU -----
COMPONENT alu
	PORT(
		switch_in : IN std_logic_vector(4 downto 0);
		controls : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		alu_out : OUT std_logic_vector(4 downto 0);
		ccr_out : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
----- End of Instantiation for ALU -----
begin

-- clocked process --
FF_PROC: process (FSM_CLK)
begin
	if rising_edge(FSM_CLK) then
		state <= next_state;
	end if;
end process;
-- end of clocked process --

-- state process -- 
NS_PROC: process (state,OP)
begin
if OP = "1000" then next_state <= S0; -- START case
else
	case (state) is
		when S0 => -- START State
			if OP = "0000" then -- ADD
				next_state <= S1;
			elsif OP = "0001" then -- SUB
				next_state <= S2;
			elsif OP = "0010" then -- AND
				next_state <= S3;
			elsif OP = "0011" then -- OR
				next_state <= S4;
			elsif OP = "0100" then -- CMPL
				next_state <= S5;
			elsif OP = "0101" then -- IN A
				next_state <= S6;
			elsif OP = "0110" then -- OUT A
				next_state <= S7;
			elsif OP = "0111" then -- MOV
				next_state <= S8;
			elsif OP = "1111" then -- STOP
				next_state <= S9;
			end if;
			
		when S1 => -- ADD State
				next_state <= S0;
				
		when S2 => -- SUB State
			next_state <= S0;
			
		when S3 => -- OR State
			next_state <= S0;
			
		when S4 => -- OR State
			next_state <= S0;
			
		when S5 => -- CMPL State
			next_state <= S0;
			
		when S6 => -- IN A State
			next_state <= S0;
			
		when S7 => -- OUT A State
			next_state <= S0;
			
		when S8 => -- MOV State
			next_state <= S0;
			
		when S9 => -- STOP State
			if OP = "1000" then -- START
				next_state <= S0;
			else
				next_state <= S9;
			end if;	
end case;
end if; -- end reset if
end process;
-- end of state process --

-- output process --
OUT_PROC: process (state)
begin
	case (state) is
		when S0 =>
			temp(3) <= '1'; -- signal out for states... aka input for ALU
			temp(2) <= '0';
			temp(1) <= '0';
			temp(0) <= '0';
		when S1 =>
			temp(3) <= '0'; -- ADD 0000
			temp(2) <= '0';
			temp(1) <= '0';
			temp(0) <= '0';
		when S2 =>
			temp(3) <= '0'; -- SUB 0001
			temp(2) <= '0';
			temp(1) <= '0';
			temp(0) <= '1';
		when S3 =>
			temp(3) <= '0'; -- AND 0010
			temp(2) <= '0';
			temp(1) <= '1';
			temp(0) <= '0';
		when S4 =>
			temp(3) <= '0'; -- OR 0011
			temp(2) <= '0';
			temp(1) <= '1';
			temp(0) <= '1';
		when S5 =>
			temp(3) <= '0'; -- CMPL 0100
			temp(2) <= '1';
			temp(1) <= '0';
			temp(0) <= '0';
		when S6 =>
			temp(3) <= '0'; -- IN A 0101
			temp(2) <= '1';
			temp(1) <= '0';
			temp(0) <= '1';
		when S7 =>
			temp(3) <= '0'; -- OUT A 0110
			temp(2) <= '1';
			temp(1) <= '1';
			temp(0) <= '0';
		when S8 =>
			temp(3) <= '0'; -- MOV 0111
			temp(2) <= '1';
			temp(1) <= '1';
			temp(0) <= '1';
		when S9 =>
			temp(3) <= '1'; -- STOP 1111
			temp(2) <= '1';
			temp(1) <= '1';
			temp(0) <= '1';
	end case;
end process;
-- end of output process --

----- ALU Instnace -----
ALU1: alu PORT MAP(
		switch_in => FSM_REGA,
		controls => temp,
		alu_out => FSM_ALU_OUT,
		ccr_out => FSM_CCR_OUT,
		clk => FSM_CLK
	);
----- End of ALU Instance -----





end Behavioral;