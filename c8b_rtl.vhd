----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:06 10/02/2020 
-- Design Name: 
-- Module Name:    c8b_rtl - Behavioral 
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

entity c8b_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           eq : out  STD_LOGIC;
           grt : out  STD_LOGIC;
           le : out  STD_LOGIC);
end c8b_rtl;

architecture Behavioral of c8b_rtl is

signal e1,e2,e3: STD_LOGIC:= '0';

begin
	
	e1 <= A(1) xnor B(1);
	e2 <= A(2) xnor B(2);
	e3 <= A(3) xnor B(3);
	
	eq <= (A(0) xnor B(0)) and e1 and e2 and e3;
	grt <= (A(3) and (not B(3))) or (e3 and A(2) and (not B(2))) or (e3 and e2 and A(1) and (not B(1))) or (e3 and e2 and e1 and A(0) and (not B(0)));
	le <= (B(3) and (not A(3))) or (e3 and B(2) and (not A(2))) or (e3 and e2 and B(1) and (not A(1))) or (e3 and e2 and e1 and B(0) and (not A(0)));

end Behavioral;

