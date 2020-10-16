library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator8bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           eq : out  STD_LOGIC;
           grt : out  STD_LOGIC;
           lt : out  STD_LOGIC);
end comparator8bit_rtl;

architecture Behavioral of comparator8bit_rtl is

signal e1,e2,e3,e4,e5,e6,e7: STD_LOGIC:='0';

begin
	e1 <= A(1) xnor B(1);
	e2 <= A(2) xnor B(2);
	e3 <= A(3) xnor B(3);
	e4 <= A(4) xnor B(4);
	e5 <= A(5) xnor B(5);
	e6 <= A(6) xnor B(6);
	e7 <= A(7) xnor B(7);
	
	eq <= (A(0) xnor B(0)) and e1 and e2 and e3 and e4 and e5 and e6 and e7;
	
	grt <= 	(A(7) and (not B(7)))
				or (e7 and (A(6) and (not B(6))))
				or (e7 and e6 and (A(5) and (not B(5))))
				or (e7 and e6 and e5 and (A(4) and (not B(4))))
				or (e7 and e6 and e5 and e4 and (A(3) and (not B(3))))
				or (e7 and e6 and e5 and e4 and e3 and (A(2) and (not B(2))))
				or (e7 and e6 and e5 and e4 and e3 and e2 and (A(1) and (not B(1))))
				or (e7 and e6 and e5 and e4 and e3 and e2 and e1 and (A(0) and (not B(0))));
				
	lt <= 	(B(7) and (not A(7)))
				or (e7 and (B(6) and (not A(6))))
				or (e7 and e6 and (B(5) and (not A(5))))
				or (e7 and e6 and e5 and (B(4) and (not A(4))))
				or (e7 and e6 and e5 and e4 and (B(3) and (not A(3))))
				or (e7 and e6 and e5 and e4 and e3 and (B(2) and (not A(2))))
				or (e7 and e6 and e5 and e4 and e3 and e2 and (B(1) and (not A(1))))
				or (e7 and e6 and e5 and e4 and e3 and e2 and e1 and (B(0) and (not A(0))));
	

end Behavioral;