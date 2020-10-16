----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:29 10/02/2020 
-- Design Name: 
-- Module Name:    as4b_rtl - Behavioral 
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

entity as4b_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           COUT : out  STD_LOGIC);
end as4b_rtl;

architecture Behavioral of as4b_rtl is

component fa_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           CARRY : out  STD_LOGIC);
end component;

component xor_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

signal c1,c2,c3, x0,x1,x2,x3: STD_LOGIC:= '0';

begin
	XO0: xor_rtl port map(a=>M, b=>B(0), c=>x0); FA0: fa_rtl port map (A=>A(0), B=>x0, C=>M, SUM=>Sum(0), CARRY=>c1);
	XO1: xor_rtl port map(a=>M, b=>B(1), c=>x1); FA1: fa_rtl port map (A=>A(1), B=>x1, C=>c1, SUM=>Sum(1), CARRY=>c2);
	XO2: xor_rtl port map(a=>M, b=>B(2), c=>x2); FA2: fa_rtl port map (A=>A(2), B=>x2, C=>c2, SUM=>Sum(2), CARRY=>c3);
	XO3: xor_rtl port map(a=>M, b=>B(3), c=>x3); FA3: fa_rtl port map (A=>A(3), B=>x3, C=>c3, SUM=>Sum(3), CARRY=>COUT);

end Behavioral;

