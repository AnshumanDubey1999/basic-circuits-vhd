----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:58:57 10/03/2020 
-- Design Name: 
-- Module Name:    dff_rtl - Behavioral 
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

entity dff_rtl is
    Port ( Din : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end dff_rtl;

architecture Behavioral of dff_rtl is

begin

	process(Din, C, R)
	begin
 
		if(  R = '1') then
			Dout <= '0';
		elsif (rising_edge(C)) then
			Dout <= Din;
		end if;
	end process;

end Behavioral;

