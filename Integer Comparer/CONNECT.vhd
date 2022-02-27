library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CONNECT is
	Port(   xi : in STD_LOGIC;
           yi : in STD_LOGIC;
           zi : in STD_LOGIC;
			  xc : in STD_LOGIC;
			  yc : in STD_LOGIC;
			  zc : in STD_LOGIC;
			  xf : out STD_LOGIC;
			  yf : out STD_LOGIC;
			  zf : out STD_LOGIC);	
end CONNECT;

architecture Behavioral of CONNECT is
begin
	process(xi, yi, zi, xc, yc, zc)
	begin
		if (yi = '1') then
			xf <= xc;
			yf <= yc;
			zf <= zc;
		else
			xf <= xi;
			yf <= yi;
			zf <= zi;
		
		end if;
	end process;
end Behavioral;

