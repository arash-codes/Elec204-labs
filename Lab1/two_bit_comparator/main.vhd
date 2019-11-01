----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:38 08/22/2019 
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
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           AG : out  STD_LOGIC;
           BG : out  STD_LOGIC;
           EQ : out  STD_LOGIC);
end main;

architecture Behavioral of main is

begin
BG <= (B(1) and (not A(1))) or 
((not A(0)) and B(1) and B(0))or 
((not A(0)) and (not A(1)) and B(0)); 

AG <= (A(1) and (not B(1))) or 
((not B(0)) and A(1) and A(0))or 
((not B(0)) and (not B(1)) and A(0)); 

EQ <= (A(0) and A(1) and B(0) and B(1)) or
((not A(0)) and A(1) and (not B(0)) and B(1)) or
(A(0) and (not A(1)) and B(0) and (not B(1))) or
((not A(0)) and (not A(1)) and (not B(0)) and (not B(1)));


end Behavioral;

