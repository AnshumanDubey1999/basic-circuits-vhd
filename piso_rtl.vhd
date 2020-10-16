----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:25 10/05/2020 
-- Design Name: 
-- Module Name:    piso_rtl - Behavioral 
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

entity piso_rtl is
    Port ( DataIn : in  STD_LOGIC_VECTOR (3 downto 0);
           Shift : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Clr : in  STD_LOGIC;
           DataOut : out  STD_LOGIC);
end piso_rtl;

architecture Behavioral of piso_rtl is

component mux21_rtl is
    Port ( D0 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component dff_rtl is
    Port ( Din : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Dout : out  STD_LOGIC);
end component;

signal t1,t2,t3,f1,f2,f3: STD_LOGIC:='0';

begin

	DFF0: dff_rtl port map(Din=>DataIn(0), C=>Clk, R=>Clr, Dout=>t1);
	MUX0: mux21_rtl port map(D0=>DataIn(1), D1=>t1, S=>Shift, O=>f1);
	DFF1: dff_rtl port map(Din=>f1, C=>Clk, R=>Clr, Dout=>t2);
	MUX1: mux21_rtl port map(D0=>DataIn(2), D1=>t2, S=>Shift, O=>f2);
	DFF2: dff_rtl port map(Din=>f2, C=>Clk, R=>Clr, Dout=>t3);
	MUX2: mux21_rtl port map(D0=>DataIn(3), D1=>t3, S=>Shift, O=>f3);
	DFF3: dff_rtl port map(Din=>f3, C=>Clk, R=>Clr, Dout=>DataOut);

end Behavioral;

