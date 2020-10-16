----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:46 10/03/2020 
-- Design Name: 
-- Module Name:    jkff_rtl - Behavioral 
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

entity jkff_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end jkff_rtl;

architecture Behavioral of jkff_rtl is

signal t: STD_LOGIC:= '1';

begin

	process(C)
	begin
		if(rising_edge(C)) then
			if(J = '1' and K = '1') then
				t <= not t;
			elsif (J = '1') then
				t <= '1';
			elsif (K = '1') then
				t <= '0';
			end if;
		end if;
	end process;

	Q<= t;
	Qp <= not t;

end Behavioral;

