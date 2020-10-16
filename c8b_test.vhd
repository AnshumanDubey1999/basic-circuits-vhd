--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:28:40 10/02/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myComparator4Bit/c8b_test.vhd
-- Project Name:  myComparator4Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: c8b_rtl
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
 
ENTITY c8b_test IS
END c8b_test;
 
ARCHITECTURE behavior OF c8b_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT c8b_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         eq : OUT  std_logic;
         grt : OUT  std_logic;
         le : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal eq : std_logic;
   signal grt : std_logic;
   signal le : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: c8b_rtl PORT MAP (
          A => A,
          B => B,
          eq => eq,
          grt => grt,
          le => le
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      A <= "1111" ; B <= "1110"; wait for 1 ps;
		A <= "0011" ; B <= "1000"; wait for 1 ps;
		A <= "0100" ; B <= "0001"; wait for 1 ps;
		A <= "0011" ; B <= "0011"; wait for 1 ps;
   end process;

END;
