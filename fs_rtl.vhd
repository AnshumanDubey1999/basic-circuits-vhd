----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:11:39 10/02/2020 
-- Design Name: 
-- Module Name:    fs_rtl - Behavioral 
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

entity fs_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           BIN : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           BOUT : out  STD_LOGIC);
end fs_rtl;

architecture Behavioral of fs_rtl is

component hs_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           dif : out  STD_LOGIC;
           bor : out  STD_LOGIC);
end component;

signal t1, t2, t3: STD_LOGIC := '0';

begin

	HS0: hs_rtl port map(a=>A, b=>B,dif=>t1, bor=>t2); 
	HS1: hs_rtl port map(a=>t1, b=>BIN,dif=>DIFF, bor=>t3); 
	BOUT <= t2 or t3;

end Behavioral;

