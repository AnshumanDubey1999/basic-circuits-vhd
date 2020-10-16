--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:57:44 10/02/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/mySubtractor8Bit/s8b_test.vhd
-- Project Name:  mySubtractor8Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: s8b_rtl
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
 
ENTITY s8b_test IS
END s8b_test;
 
ARCHITECTURE behavior OF s8b_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT s8b_rtl
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Bin : IN  std_logic;
         Diff : OUT  std_logic_vector(7 downto 0);
         Bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic_vector(7 downto 0);
   signal Bout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: s8b_rtl PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Diff => Diff,
          Bout => Bout
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "01111111";
		B <= "00000001";
		BIN <= '0';
		wait for 1 ps;
		A <= "01111111";
		B <= "00000001";
		BIN <= '1';
		wait for 1 ps;
		A <= "11111110";
		B <= "00000001";
		BIN <= '0';
		wait for 1 ps;
		A <= "11111110";
		B <= "00000001";
		BIN <= '1';
		wait for 1 ps;
   end process;

END;
