library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CON_COMP_1_bit is
    Port ( ac : in  STD_LOGIC;
           bc : in  STD_LOGIC;
			  x1 : in  STD_LOGIC;
			  y1 : in  STD_LOGIC;
			  z1 : in  STD_LOGIC;
           x0 : out  STD_LOGIC;
			  y0 : out  STD_LOGIC;
			  z0 : out  STD_LOGIC);
end CON_COMP_1_bit;

architecture Structure of CON_COMP_1_bit is

component COMP_1_bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           x : out STD_LOGIC;
			  y : out STD_LOGIC;
			  z : out STD_LOGIC);
end component;

component CONNECT is
    Port ( xi : in STD_LOGIC;
           yi : in STD_LOGIC;
           zi : in STD_LOGIC;
			  xc : in STD_LOGIC;
			  yc : in STD_LOGIC;
			  zc : in STD_LOGIC;
			  xf : out STD_LOGIC;
			  yf : out STD_LOGIC;
			  zf : out STD_LOGIC);	
end component;




signal wire1, wire2, wire3 : STD_LOGIC; -- kablo kullanýmý ve geçici deðiþkenler



begin

	COMP1 : COMP_1_bit port map(ac,bc,wire1,wire2,wire3);
	CON :   CONNECT port map(x1,y1,z1,wire1,wire2,wire3,x0,y0,z0);


end Structure;

