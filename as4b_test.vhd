--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:07:20 10/02/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myAdderSubtractor4Bit/as4b_test.vhd
-- Project Name:  myAdderSubtractor4Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: as4b_rtl
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
 
ENTITY as4b_test IS
END as4b_test;
 
ARCHITECTURE behavior OF as4b_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT as4b_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         CIN : IN  std_logic;
         M : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal CIN : std_logic := '0';
   signal M : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: as4b_rtl PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          M => M,
          Sum => Sum,
          COUT => COUT
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "0111" ; B <= "0001"; M <= '0'; wait for 1 ps;
		A <= "0111" ; B <= "0001"; M <= '1'; wait for 1 ps;
		A <= "1110" ; B <= "0001"; M <= '0'; wait for 1 ps;
		A <= "1110" ; B <= "0001"; M <= '1'; wait for 1 ps;
   end process;

END;
