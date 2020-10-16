----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:00 10/05/2020 
-- Design Name: 
-- Module Name:    udc4b_rtl - Behavioral 
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

entity udc4b_rtl is
    Port ( Clk : in  STD_LOGIC;
           Clr : in  STD_LOGIC;
           Mode : in  STD_LOGIC;
           Count : out  STD_LOGIC_VECTOR (3 downto 0));
end udc4b_rtl;

architecture Behavioral of udc4b_rtl is

component jkff_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           C : in  STD_LOGIC;
			  R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qp : out  STD_LOGIC);
end component;

signal q1,q2,q3,qp1,qp2,qp3, u1, u2,u3,d1,d2,d3, f1, f2,f3, temp : STD_LOGIC:= '0';

begin

	JFF0: jkff_rtl port map(J=>'1', K=>'1', C=>Clk, R=>Clr, Q=>q1, Qp=>qp1);
	Count(0) <= q1;
	u1 <= q1 and Mode;
	d1 <= qp1 and (not Mode);
	f1 <= u1 or d1;
	JFF1: jkff_rtl port map(J=>f1, K=>f1, C=>Clk, R=>Clr, Q=>q2, Qp=>qp2);
	Count(1) <= q2;
	u2 <= u1 and q2;
	d2 <= qp2 and d1;
	f2 <= u2 or d2;
	JFF2: jkff_rtl port map(J=>f2, K=>f2, C=>Clk, R=>Clr, Q=>q3, Qp=>qp3);
	Count(2) <= q3;
	u3 <= u2 and q3;
	d3 <= qp3 and d2;
	f3 <= u3 or d3;
	JFF3: jkff_rtl port map(J=>f3, K=>f3, C=>Clk, R=>Clr, Q=>Count(3), Qp=>temp);

end Behavioral;

