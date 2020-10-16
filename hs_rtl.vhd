----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:31:43 10/02/2020 
-- Design Name: 
-- Module Name:    hs_rtl - Behavioral 
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

entity hs_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           dif : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end hs_rtl;

architecture Behavioral of hs_rtl is

begin
	dif<= a xor b;
	bor<= not a and b;

end Behavioral;

