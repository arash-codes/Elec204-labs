----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:31:20 10/14/2017 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

entity decoder is
port(
		inValue: in std_logic_vector(4 downto 0); 
		outValue: out std_logic_vector(7 downto 0));
end decoder;

architecture Behavioral of decoder is

begin
with inValue(4 downto 1) select outValue(7 downto 1) <= 
		"0000001" when x"0", 
		"1001111" when x"1", 
		"0010010" when x"2", 
		"0000110" when x"3", 
		"1001100" when x"4", 
		"0100100" when x"5", 
		"0100000" when x"6", 
		"0001111" when x"7", 
		"0000000" when x"8", 
		"0000100" when x"9", 
		"1111110" when x"a", 
		"1111111" when x"b", 
		"1110000" when x"d",
		"1111010" when x"e",
		"1000100" when x"f",
		"1111111" when others;
outValue(0) <=inValue(0);

end Behavioral;

