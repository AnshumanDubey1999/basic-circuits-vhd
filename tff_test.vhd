--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:29:55 10/05/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myTFlipFlop/tff_test.vhd
-- Project Name:  myTFlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: tff_rtl
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
 
ENTITY tff_test IS
END tff_test;
 
ARCHITECTURE behavior OF tff_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tff_rtl
    PORT(
         Tin : IN  std_logic;
         C : IN  std_logic;
         R : IN  std_logic;
         Tout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Tin : std_logic := '0';
   signal C : std_logic := '0';
   signal R : std_logic := '0';

 	--Outputs
   signal Tout : std_logic;
   -- No clocks detected in port list. Replace C below with 
   -- appropriate port name 
 
   constant C_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tff_rtl PORT MAP (
          Tin => Tin,
          C => C,
          R => R,
          Tout => Tout
        );

   -- Clock process definitions
   C_process :process
   begin
		C <= '0';
		wait for C_period/2;
		C <= '1';
		wait for C_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      R <= '1'; wait for C_period;
		R <= '0'; 
		Tin <= '0'; wait for C_period*5;
		Tin <= '1'; wait for C_period*5;
		Tin <= '0'; wait for C_period*5;
		Tin <= '1'; wait for C_period*5;
   end process;

END;
