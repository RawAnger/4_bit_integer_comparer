library ieee;
use ieee.std_logic_1164.all;

entity POZ_COMPARE_tb is
end POZ_COMPARE_tb;

architecture tb of POZ_COMPARE_tb is
   component POZ_COMPARE is	
     Port (A  : in STD_LOGIC_VECTOR(3 downto 0);
	        B  : in STD_LOGIC_VECTOR(3 downto 0);
           X : out  STD_LOGIC;
			  Y : out  STD_LOGIC;
			  Z : out  STD_LOGIC);
  end component;
	
   signal  X,Y,Z : std_logic;
	signal  A,B : std_logic_vector(3 downto 0);
begin 
   mapping: POZ_COMPARE port map(A,B,X,Y,Z);

   process
   begin
      --TEST 1
      A <= "0000";
		B <= "0000";
      wait for 10 ns;
		--TEST 2
      A <= "1000";
		B <= "0100";
		wait for 10 ns;
		--TEST 3
      A <= "0100";
		B <= "1000";
      wait for 10 ns;
		--TEST 4
      A <= "0110";
		B <= "0100";
		wait for 10 ns;
		--TEST 5
      A <= "0100";
		B <= "0110";
      wait for 10 ns;
		--TEST 6
      A <= "0011";
		B <= "0100";
		wait for 10 ns;
		--TEST 7
      A <= "0001";
		B <= "0001";
      wait for 10 ns;
		--TEST 8
      A <= "0101";
		B <= "0100";
		wait for 10 ns;
		--TEST 9
      A <= "0010";
		B <= "0010";
      wait for 10 ns;
		--TEST 10
      A <= "0100";
		B <= "0101";
		wait for 10 ns;
		--TEST 11
      A <= "0010";
		B <= "0011";
		wait for 10 ns;
		--TEST 12
      A <= "1111";
		B <= "1111";
      wait for 10 ns;
      wait;
   end process;
end tb;
