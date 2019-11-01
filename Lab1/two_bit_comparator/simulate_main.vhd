--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:24:42 08/22/2019
-- Design Name:   
-- Module Name:   C:/Elec 204 digital design/two_bit_comparator/simulate_main.vhd
-- Project Name:  two_bit_comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simulate_main IS
END simulate_main;
 
ARCHITECTURE behavior OF simulate_main IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         AG : OUT  std_logic;
         BG : OUT  std_logic;
         EQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal AG : std_logic;
   signal BG : std_logic;
   signal EQ : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          A => A,
          B => B,
          AG => AG,
          BG => BG,
          EQ => EQ
        );

   -- Clock process definitions
  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;
		
      -- insert stimulus here 
		wait for clock_period*10;
		A <= "00";
		B <= "00";
		wait for clock_period*10;
		A <= "00";
		B <= "01";     
		wait for clock_period*10;
		A <= "00";
		B <= "10";      
		wait for clock_period*10;
		A <= "00";
		B <= "11";
		
		wait for clock_period*10;
		A <= "01";
		B <= "00";
		wait for clock_period*10;
		A <= "01";
		B <= "01";     
		wait for clock_period*10;
		A <= "01";
		B <= "10";      
		wait for clock_period*10;
		A <= "01";
		B <= "11";
		
		 wait for clock_period*10;
		A <= "10";
		B <= "00";
		wait for clock_period*10;
		A <= "10";
		B <= "01";     
		wait for clock_period*10;
		A <= "10";
		B <= "10";      
		wait for clock_period*10;
		A <= "10";
		B <= "11";
		
		wait for clock_period*10;
		A <= "11";
		B <= "00";
		wait for clock_period*10;
		A <= "11";
		B <= "01";     
		wait for clock_period*10;
		A <= "11";
		B <= "10";      
		wait for clock_period*10;
		A <= "11";
		B <= "11";


      wait;
   end process;

END;
