library ieee;
use ieee.std_logic_1164.all;

entity COMP_1_bit_tb is
end COMP_1_bit_tb;

architecture tb of COMP_1_bit_tb is
   component COMP_1_bit is	
     Port ( a : in  STD_LOGIC;
            b : in  STD_LOGIC;
            x   : out STD_LOGIC;
			   y   : out STD_LOGIC;
			   z   : out STD_LOGIC);
  end component;
	
   signal  a, b, x, y, z : std_logic;
begin 
   --map the testbench signals to the ports of the andGate
   mapping: COMP_1_bit port map(a, b, x, y, z);

   process
   begin
      --TEST 1
      a <= '0';
      b <= '0';
      wait for 15 ns;
      --TEST 2
      a <= '0';
      b <= '1';
      wait for 15 ns;
      --TEST 3
      a <= '1';
      b <= '0';
		wait for 15 ns;
      --TEST 4
      a <= '1';
      b <= '1';
      wait;
   end process;
end tb;
