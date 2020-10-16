--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:13:44 10/03/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myJKFlipFlop/jkff_test.vhd
-- Project Name:  myJKFlipFlop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jkff_rtl
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
 
ENTITY jkff_test IS
END jkff_test;
 
ARCHITECTURE behavior OF jkff_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myjkff_rtl
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         C : IN  std_logic;
			R : IN  std_logic;
         Q : INOUT  std_logic;
         Qp : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal C : std_logic := '0';
	signal R : std_logic := '0';

	--BiDirs
   signal Q : std_logic;
   signal Qp : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant C_period : time := 1ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myjkff_rtl PORT MAP (
          J => J,
          K => K,
          C => C,
			 R => R,
          Q => Q,
          Qp => Qp
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
		J <= '0'; K <= '1'; wait for C_period*10;
		J <= '0'; K <= '0'; wait for C_period*10;
		J <= '1'; K <= '0'; wait for C_period*10;
		J <= '0'; K <= '0'; wait for C_period*10;
		J <= '1'; K <= '1'; wait for C_period*10;
		J <= '0'; K <= '0'; wait for C_period*10;
   end process;

END;
