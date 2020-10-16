--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:40:56 10/05/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myALU/alu4b_test.vhd
-- Project Name:  myALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu4b_rtl
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
 
ENTITY alu4b_test IS
END alu4b_test;
 
ARCHITECTURE behavior OF alu4b_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu4b_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Res : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Res : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu4b_rtl PORT MAP (
          A => A,
          B => B,
          S => S,
          Res => Res
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "0110"; B <= "1001";
		S<="00"; wait for 1 ps;
		S<="01"; wait for 1 ps;
		S<="10"; wait for 1 ps;
		S<="11"; wait for 1 ps;
   end process;

END;
