----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:20 10/03/2020 
-- Design Name: 
-- Module Name:    d81_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d81_rtl is
    Port ( D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC;
           Y4 : out  STD_LOGIC;
           Y5 : out  STD_LOGIC;
           Y6 : out  STD_LOGIC;
           Y7 : out  STD_LOGIC);
end d81_rtl;

architecture Behavioral of d81_rtl is

signal temp: STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin
	temp <=  "00000001" when (s = "000") else
				"00000010" when (s = "001") else
				"00000100" when (s = "010") else
				"00001000" when (s = "011") else
				"00010000" when (s = "100") else
				"00100000" when (s = "101") else
				"01000000" when (s = "110") else
				"10000000" when (s = "111");
				
	Y0 <= temp(0) and D;
	Y1 <= temp(1) and D;
	Y2 <= temp(2) and D;
	Y3 <= temp(3) and D;
	Y4 <= temp(4) and D;
	Y5 <= temp(5) and D;
	Y6 <= temp(6) and D;
	Y7 <= temp(7) and D;
				

end Behavioral;

