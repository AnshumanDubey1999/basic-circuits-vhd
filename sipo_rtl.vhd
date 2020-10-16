----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:08 10/05/2020 
-- Design Name: 
-- Module Name:    sipo_rtl - Behavioral 
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

entity sipo_rtl is
    Port ( DataIn : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Clr : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (3 downto 0));
end sipo_rtl;

architecture Behavioral of sipo_rtl is

component dff_rtl is
    Port ( Din : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end component;

signal t1, t2, t3: STD_LOGIC:='0';

begin

	DFF0: dff_rtl port map(Din=>DataIn, C=>Clk, R=>Clr, Dout=>t1); DataOut(0)<=t1;
	DFF1: dff_rtl port map(Din=>t1, C=>Clk, R=>Clr, Dout=>t2); DataOut(1)<=t2;
	DFF2: dff_rtl port map(Din=>t2, C=>Clk, R=>Clr, Dout=>t3); DataOut(2)<=t3;
	DFF3: dff_rtl port map(Din=>t3, C=>Clk, R=>Clr, Dout=>DataOut(3));


end Behavioral;

