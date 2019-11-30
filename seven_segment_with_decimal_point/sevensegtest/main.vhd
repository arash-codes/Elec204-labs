----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:57 11/29/2019 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
Port (
	 clk : IN  STD_LOGIC;
	 SevenSegControl : OUT STD_LOGIC_VECTOR (7 DOWNTO 0):=x"ff";
	 SevenSegBus : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	 );
end main;

architecture Behavioral of main is
COMPONENT sevenSegment
	PORT(
		A : IN std_logic_vector(4 downto 0);
		B : IN std_logic_vector(4 downto 0);
		C : IN std_logic_vector(4 downto 0);
		D : IN std_logic_vector(4 downto 0);
		E : IN std_logic_vector(4 downto 0);
		F : IN std_logic_vector(4 downto 0);
		G : IN std_logic_vector(4 downto 0);
		H : IN std_logic_vector(4 downto 0);
		J : IN std_logic_vector(4 downto 0);
		clk : IN std_logic;          
		SevenSegControl  : OUT std_logic_vector(7 downto 0);
		SevenSegBus : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;



begin
	Inst_sevenSegment: sevenSegment PORT MAP(
		A =>x"5"&'0'		,
		B => x"7"&'0',
		C => x"6" &'1',
		D => "01001",
		E =>"01001" ,
		F =>"01001" ,
		G =>"01001" ,
		H => x"5"&'0',
		J =>"01001",
		clk => clk,
		SevenSegControl => SevenSegControl,
		SevenSegBus =>SevenSegBus 
	);

end Behavioral;

