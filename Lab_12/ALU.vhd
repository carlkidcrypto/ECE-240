----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:29:46 04/16/2019 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is

Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           OP : in  STD_LOGIC_VECTOR (1 downto 0);
			  LED: OUT STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (2 downto 0)
			  );
end ALU;

architecture Behavioral of ALU is

-------- TEMP signals ---------------------------------
signal ABADD,ABSUB,ABAND,ABOR,ARI,LOG :  STD_LOGIC_VECTOR (2 downto 0);
-------- END TEMP signals -----------------------------

-------- Instantiation of Component ------------------
	COMPONENT MUX2
	PORT(
		A : IN std_logic_vector(2 downto 0);
		B : IN std_logic_vector(2 downto 0);
		SEL : IN std_logic;          
		Y : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;
-------- END Instantiation of Component --------------

begin


----- Operations -------------------------------------
ABADD <= (A + B);
ABSUB <= (A - B);
ABAND <= (A and B);
ABOR <= (A or B);
----- END Operations ---------------------------------

Inst_MUX3: MUX2 PORT MAP(
		A => ABAND,
		B => ABOR,
		SEL => OP(0),
		Y => LOG 
	);


Inst_MUX2: MUX2 PORT MAP(
		A => ABADD,
		B =>  ABSUB,
		SEL => OP(0),
		Y => ARI
	);


Inst_MUX1: MUX2 PORT MAP(
		A => ARI,
		B => LOG,
		SEL => OP(1),
		Y => Y
	);
	
pr:process(OP)
begin
if (OP(1) = '0') then
	LED <= '1'; -- ari op
else
	LED <= '0'; -- log op
end if;
end process;

end Behavioral;

