----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:48:41 10/01/2020 
-- Design Name: 
-- Module Name:    a8b_rtl - Behavioral 
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

entity a8b_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           CIN : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (7 downto 0);
           COUT : out  STD_LOGIC);
end a8b_rtl;

architecture Behavioral of a8b_rtl is

component fa_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end component;

signal c1,c2,c3,c4,c5,c6,c7: STD_LOGIC:= '0';

begin
	fa0: fa_rtl port map (A=>A(0), B=>B(0), C=>CIN, SUM=>Sum(0), CARRY=>c1);
	fa1: fa_rtl port map (A=>A(1), B=>B(1), C=>c1, SUM=>Sum(1), CARRY=>c2);
	fa2: fa_rtl port map (A=>A(2), B=>B(2), C=>c2, SUM=>Sum(2), CARRY=>c3);
	fa3: fa_rtl port map (A=>A(3), B=>B(3), C=>c3, SUM=>Sum(3), CARRY=>c4);
	fa4: fa_rtl port map (A=>A(4), B=>B(4), C=>c4, SUM=>Sum(4), CARRY=>c5);
	fa5: fa_rtl port map (A=>A(5), B=>B(5), C=>c5, SUM=>Sum(5), CARRY=>c6);
	fa6: fa_rtl port map (A=>A(6), B=>B(6), C=>c6, SUM=>Sum(6), CARRY=>c7);
	fa7: fa_rtl port map (A=>A(7), B=>B(7), C=>c7, SUM=>Sum(7), CARRY=>COUT);

end Behavioral;

