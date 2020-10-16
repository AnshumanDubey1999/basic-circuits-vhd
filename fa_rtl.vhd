----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:06 10/01/2020 
-- Design Name: 
-- Module Name:    fa_rtl - Behavioral 
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

entity fa_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end fa_rtl;

architecture Behavioral of fa_rtl is

component ha_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           carry : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end component;

signal temp: STD_LOGIC:='0';
signal c1: STD_LOGIC:='0';
signal c2: STD_LOGIC:='0';

begin
	HA0: ha_rtl port map(a=>A, b=>B, sum=> temp, carry=> c1);
	HA1: ha_rtl port map(a=>temp, b=>C, sum=> SUM, carry=> c2);
	CARRY <= c1 or c2;

end Behavioral;

