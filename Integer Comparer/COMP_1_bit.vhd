library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity COMP_1_bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           x   : out STD_LOGIC;
			  y   : out STD_LOGIC;
			  z   : out STD_LOGIC);
end COMP_1_bit;

architecture Behavioral of COMP_1_bit is
begin
	x <= a and (not b);
	y <= a xnor b;
	z <= (not a) and b;
end Behavioral;