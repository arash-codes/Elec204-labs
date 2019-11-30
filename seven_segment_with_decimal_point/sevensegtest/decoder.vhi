
-- VHDL Instantiation Created from source file decoder.vhd -- 11:59:41 11/29/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT decoder
	PORT(
		inValue : IN std_logic_vector(4 downto 0);          
		outValue : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_decoder: decoder PORT MAP(
		inValue => ,
		outValue => 
	);


