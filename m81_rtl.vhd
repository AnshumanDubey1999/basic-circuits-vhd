----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:39:13 10/02/2020 
-- Design Name: 
-- Module Name:    m81_rtl - Behavioral 
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

entity m81_rtl is
    Port ( D0 : in  STD_LOGIC_VECTOR (2 downto 0);
           D1 : in  STD_LOGIC_VECTOR (2 downto 0);
           D2 : in  STD_LOGIC_VECTOR (2 downto 0);
           D3 : in  STD_LOGIC_VECTOR (2 downto 0);
           D4 : in  STD_LOGIC_VECTOR (2 downto 0);
           D5 : in  STD_LOGIC_VECTOR (2 downto 0);
           D6 : in  STD_LOGIC_VECTOR (2 downto 0);
           D7 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0));
end m81_rtl;

architecture Behavioral of m81_rtl is

begin

	O <=  D0 when (S = "000") else
			D1 when (S = "001") else
			D2 when (S = "010") else
			D3 when (S = "011") else
			D4 when (S = "100") else
			D5 when (S = "101") else
			D6 when (S = "110") else
			D7 when (S = "111");
			
end Behavioral;

