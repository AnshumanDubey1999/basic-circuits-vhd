--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:43 10/04/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myDFlipFlop/dff_test.vhd
-- Project Name:  myDFlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dff_rtl
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
 
ENTITY dff_test IS
END dff_test;
 
ARCHITECTURE behavior OF dff_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dff_rtl
    PORT(
         Din : IN  std_logic;
         C : IN  std_logic;
         R : IN  std_logic;
         Dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic := '0';
   signal C : std_logic := '0';
   signal R : std_logic := '0';

 	--Outputs
   signal Dout : std_logic;
   -- No clocks detected in port list. Replace C below with 
   -- appropriate port name 
 
   constant C_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dff_rtl PORT MAP (
          Din => Din,
          C => C,
          R => R,
          Dout => Dout
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
		R <= '0'; Din <= '0'; wait for C_period*5;
		Din <= '1'; wait for C_period*5;
   end process;

END;
