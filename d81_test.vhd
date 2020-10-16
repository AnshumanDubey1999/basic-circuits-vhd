--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:11:43 10/03/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myDeMultiplexer81/d81_test.vhd
-- Project Name:  myDeMultiplexer81
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d81_rtl
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
 
ENTITY d81_test IS
END d81_test;
 
ARCHITECTURE behavior OF d81_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d81_rtl
    PORT(
         D : IN  std_logic;
         S : IN  std_logic_vector(2 downto 0);
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic;
         Y4 : OUT  std_logic;
         Y5 : OUT  std_logic;
         Y6 : OUT  std_logic;
         Y7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   signal Y4 : std_logic;
   signal Y5 : std_logic;
   signal Y6 : std_logic;
   signal Y7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d81_rtl PORT MAP (
          D => D,
          S => S,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4,
          Y5 => Y5,
          Y6 => Y6,
          Y7 => Y7
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      S <= "000" ; D<='1'; wait for 1 ps;
		S <= "001" ; D<='1'; wait for 1 ps;
		S <= "010" ; D<='1'; wait for 1 ps;
		S <= "011" ; D<='1'; wait for 1 ps;
		S <= "100" ; D<='1'; wait for 1 ps;
		S <= "101" ; D<='1'; wait for 1 ps;
		S <= "110" ; D<='1'; wait for 1 ps;
		S <= "111" ; D<='1'; wait for 1 ps;
   end process;

END;
