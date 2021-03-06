--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:19:24 10/02/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myFullSubtractor/fs_test.vhd
-- Project Name:  myFullSubtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fs_rtl
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
 
ENTITY fs_test IS
END fs_test;
 
ARCHITECTURE behavior OF fs_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fs_rtl
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         BIN : IN  std_logic;
         DIFF : OUT  std_logic;
         BOUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal BIN : std_logic := '0';

 	--Outputs
   signal DIFF : std_logic;
   signal BOUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fs_rtl PORT MAP (
          A => A,
          B => B,
          BIN => BIN,
          DIFF => DIFF,
          BOUT => BOUT
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= '0'; B <= '0'; BIN <= '0'; wait for 1 ps;
	   A <= '0'; B <= '0'; BIN <= '1'; wait for 1 ps;
		A <= '0'; B <= '1'; BIN <= '0'; wait for 1 ps;
		A <= '0'; B <= '1'; BIN <= '1'; wait for 1 ps;
		A <= '1'; B <= '0'; BIN <= '0'; wait for 1 ps;
		A <= '1'; B <= '0'; BIN <= '1'; wait for 1 ps;
		A <= '1'; B <= '1'; BIN <= '0'; wait for 1 ps;
		A <= '1'; B <= '1'; BIN <= '1'; wait for 1 ps;
   end process;

END;
