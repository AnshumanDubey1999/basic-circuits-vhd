--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:27 10/05/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myUpDownCounter4Bit/udc4b_test.vhd
-- Project Name:  myUpDownCounter4Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: udc4b_rtl
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
 
ENTITY udc4b_test IS
END udc4b_test;
 
ARCHITECTURE behavior OF udc4b_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT udc4b_rtl
    PORT(
         Clk : IN  std_logic;
         Clr : IN  std_logic;
         Mode : IN  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Clr : std_logic := '0';
   signal Mode : std_logic := '0';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: udc4b_rtl PORT MAP (
          Clk => Clk,
          Clr => Clr,
          Mode => Mode,
          Count => Count
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Clr<='1'; wait for Clk_period;
		Clr<='0';
		Mode<='0'; wait for Clk_period*10;
		Mode<='1'; wait for Clk_period*20;
   end process;

END;
