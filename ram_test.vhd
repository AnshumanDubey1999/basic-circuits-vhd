--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:54:44 10/05/2020
-- Design Name:   
-- Module Name:   /home/anshumandubey/Programs/Xilinx/myRAM/ram_test.vhd
-- Project Name:  myRAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram_rtl
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
 
ENTITY ram_test IS
END ram_test;
 
ARCHITECTURE behavior OF ram_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram_rtl
    PORT(
         address : IN  std_logic_vector(7 downto 0);
         dataIn : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
         Mode : IN  std_logic;
         dataOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(7 downto 0) := (others => '0');
   signal dataIn : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Mode : std_logic := '0';

 	--Outputs
   signal dataOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_rtl PORT MAP (
          address => address,
          dataIn => dataIn,
          Clk => Clk,
          Mode => Mode,
          dataOut => dataOut
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
      address <= "00000001"; mode<='0'; wait for Clk_period;
		address <= "00000001"; mode<='1'; dataIn <= "01011010"; wait for Clk_period;
		address <= "00000011"; mode<='0'; wait for Clk_period;
		address <= "00000011"; mode<='1'; dataIn <= "11001001"; wait for Clk_period;
   end process;

END;
