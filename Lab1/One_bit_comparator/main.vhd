----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:02:14 08/21/2019 
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
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           AG : out  STD_LOGIC;
           BG : out  STD_LOGIC;
           EQ : out  STD_LOGIC);
end main;

architecture Behavioral of main is

begin
BG <= (not A) and B;
EQ <= ( (not A) and B) nor (A and (not B));
AG <= A and (not B);


end Behavioral;

