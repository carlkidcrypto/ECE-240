
-- VHDL Instantiation Created from source file ALU.vhd -- 16:01:42 04/16/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		A : IN std_logic_vector(2 downto 0);
		B : IN std_logic_vector(2 downto 0);
		SEL : IN std_logic_vector(1 downto 0);          
		Y : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		A => ,
		B => ,
		SEL => ,
		Y => 
	);


