library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity POZ_COMPARE is
    Port ( A  : in STD_LOGIC_VECTOR(3 downto 0);
	        B  : in STD_LOGIC_VECTOR(3 downto 0);
           X : out  STD_LOGIC;
			  Y : out  STD_LOGIC;
			  Z : out  STD_LOGIC);
end POZ_COMPARE;

architecture Structure of POZ_COMPARE is

component COMP_1_bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           x : out STD_LOGIC;
			  y : out STD_LOGIC;
			  z : out STD_LOGIC);
end component;

component CON_COMP_1_bit is
    Port ( ac : in  STD_LOGIC;
           bc : in  STD_LOGIC;
			  x1 : in  STD_LOGIC;
			  y1 : in  STD_LOGIC;
			  z1 : in  STD_LOGIC;
           x0 : out  STD_LOGIC;
			  y0 : out  STD_LOGIC;
			  z0 : out  STD_LOGIC);
end component;

signal x3, y3, z3, x2, y2, z2, x1, y1, z1 : STD_LOGIC;
signal nx, ny, nz, nt, nw : STD_LOGIC; -- nots of inputs


begin
	COMP:   COMP_1_bit port map (A(3), B(3), x3, y3, z3);
	C_CON2: CON_COMP_1_bit port map(A(2),B(2),x3,y3,z3,x2,y2,z2);
	C_CON1: CON_COMP_1_bit port map(A(1),B(1),x2,y2,z2,x1,y1,z1);
	C_CON0: CON_COMP_1_bit port map(A(0),B(0),x1,y1,z1,X,Y,Z);
	


end Structure;

