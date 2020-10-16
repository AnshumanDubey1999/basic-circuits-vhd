----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:07 10/02/2020 
-- Design Name: 
-- Module Name:    s8b_rtl - Behavioral 
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

entity s8b_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC_VECTOR (7 downto 0);
           Bout : out  STD_LOGIC);
end s8b_rtl;

architecture Behavioral of s8b_rtl is

component fs_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           BIN : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           BOUT : out  STD_LOGIC);
end component;

signal t1, t2, t3, t4, t5, t6, t7: STD_LOGIC:= '0';

begin

	FS0: fs_rtl port map(A=>A(0), B=>B(0), BIN=>Bin, DIFF=>Diff(0), BOUT=> t1);
	FS1: fs_rtl port map(A=>A(1), B=>B(1), BIN=>t1, DIFF=>Diff(1), BOUT=> t2);
	FS2: fs_rtl port map(A=>A(2), B=>B(2), BIN=>t2, DIFF=>Diff(2), BOUT=> t3);
	FS3: fs_rtl port map(A=>A(3), B=>B(3), BIN=>t3, DIFF=>Diff(3), BOUT=> t4);
	FS4: fs_rtl port map(A=>A(4), B=>B(4), BIN=>t4, DIFF=>Diff(4), BOUT=> t5);
	FS5: fs_rtl port map(A=>A(5), B=>B(5), BIN=>t5, DIFF=>Diff(5), BOUT=> t6);
	FS6: fs_rtl port map(A=>A(6), B=>B(6), BIN=>t6, DIFF=>Diff(6), BOUT=> t7);
	FS7: fs_rtl port map(A=>A(7), B=>B(7), BIN=>t7, DIFF=>Diff(7), BOUT=> Bout);

end Behavioral;

