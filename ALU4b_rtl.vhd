----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:21 10/05/2020 
-- Design Name: 
-- Module Name:    alu4b_rtl - Behavioral 
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

entity alu4b_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Res : out  STD_LOGIC_VECTOR (3 downto 0));
end alu4b_rtl;

architecture Behavioral of alu4b_rtl is

begin
	process(S)
	begin
		if (S = "00") then
			Res <= A and B;
		elsif (S = "01") then
			Res <= A or B;
		elsif (S = "10") then
			Res <= A xor B;
		elsif (S = "11") then
			Res <= A xnor B;
		end if;
	end process;


end Behavioral;

