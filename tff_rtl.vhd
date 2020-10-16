----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:23:48 10/05/2020 
-- Design Name: 
-- Module Name:    tff_rtl - Behavioral 
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

entity tff_rtl is
    Port ( Tin : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Tout : out  STD_LOGIC);
end tff_rtl;

architecture Behavioral of tff_rtl is

signal temp: STD_LOGIC:='0';

begin
	process(Tin, C, R)
	begin
 
		if(  R = '1') then
			Tout <= temp;
		elsif (rising_edge(C)) then
			if (Tin = '0') then
				temp <= temp;
			elsif (Tin = '1') then
				temp <= not temp;
			end if;
			Tout <= temp;
		end if;
	end process;

end Behavioral;

