--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:31:16 10/05/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/mySIPORegister/sipo_test.vhd
-- Project Name:  mySIPORegister
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo_rtl
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
 
ENTITY sipo_test IS
END sipo_test;
 
ARCHITECTURE behavior OF sipo_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo_rtl
    PORT(
         DataIn : IN  std_logic;
         Clk : IN  std_logic;
         Clr : IN  std_logic;
         DataOut : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DataIn : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Clr : std_logic := '0';

 	--Outputs
   signal DataOut : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo_rtl PORT MAP (
          DataIn => DataIn,
          Clk => Clk,
          Clr => Clr,
          DataOut => DataOut
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
      Clr <= '1'; wait for Clk_period;
		Clr<='0';
		DataIn <= '1'; wait for Clk_period;
		DataIn <= '0'; wait for Clk_period;
		DataIn <= '1'; wait for Clk_period;
		DataIn <= '1'; wait for Clk_period;
		DataIn <= '0'; wait for Clk_period;
		DataIn <= '0'; wait for Clk_period;
		DataIn <= '1'; wait for Clk_period;
      
   end process;

END;
