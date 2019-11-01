----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:18:11 09/10/2019 
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
port(
clk:in std_logic; 
SevenSegControl: out std_logic_vector (7 downto 0):=x"ff";
SevenSegBus: out std_logic_vector (7 downto 0)
);
end main;

architecture Behavioral of main is
COMPONENT sevenSegment
	PORT(
		A : IN std_logic_vector(3 downto 0);
		B : IN std_logic_vector(3 downto 0);
		C : IN std_logic_vector(3 downto 0);
		D : IN std_logic_vector(3 downto 0);
		E : IN std_logic_vector(3 downto 0);
		F : IN std_logic_vector(3 downto 0);
		G : IN std_logic_vector(3 downto 0);
		H : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;          
		SevenSegControl : OUT std_logic_vector(7 downto 0);
		SevenSegBus : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(          
		output : OUT std_logic_vector(3 downto 0);
		negativeSign : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	signal negsign, aluout: std_logic_vector(3 downto 0);

begin
	Inst_sevenSegment: sevenSegment PORT MAP(
		A => aluout,
		B => negsign,
		C => x"9",
		D => x"0",
		E => x"a",
		F => x"b",
		G => x"c",
		H => "1001",
		clk => clk,
		SevenSegControl =>SevenSegControl ,
		SevenSegBus => SevenSegBus
	);
	Inst_ALU: ALU PORT MAP(
		output => aluout,
		negativeSign =>negsign 
	);
end Behavioral;

