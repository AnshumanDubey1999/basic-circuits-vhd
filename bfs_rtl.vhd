----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:23:31 10/02/2020 
-- Design Name: 
-- Module Name:    bfs_rtl - Behavioral 
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

entity bfs_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           BIN : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           BOUT : out  STD_LOGIC);
end bfs_rtl;

architecture Behavioral of bfs_rtl is

begin
	DIFF <= (BIN and not ((A and not B) or (not A and B))) or  ( not BIN and ((A and not B) or (not A and B)));
	BOUT <= (BIN and ((A and B) or (not A and not B))) or (not A and B);



end Behavioral;

