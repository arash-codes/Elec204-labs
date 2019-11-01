
-- VHDL Instantiation Created from source file ALU.vhd -- 01:12:31 09/10/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(          
		output : OUT std_logic_vector(3 downto 0);
		negativeSign : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		output => ,
		negativeSign => 
	);


