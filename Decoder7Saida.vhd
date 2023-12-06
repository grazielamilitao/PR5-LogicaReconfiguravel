library ieee;
use ieee.std_logic_1164.all;

entity Decoder7Saida is 
		generic (N: integer := 3);
		port ( op: in std_logic;
				  a: in integer range -((2**(N+1))-2)/2 to (2**(N+1))-2;
				  SIG: out std_logic_vector(0 to 7);
				  HEX3: out std_logic_vector(0 to 6);
				  HEX4: out std_logic_vector(0 to 6));
end entity;

architecture arq of Decoder7Saida is
	signal controle: std_logic;
	begin
	
	SIG <= "11111110" when op = '0' else
			 "11111101";
	
	 HEX4 <= "1001111" when a = (0-1) else -- 1
				"0010010" when a = (0-2) else -- 2
				"0000110" when a = (0-3) else -- 3
				"1001100" when a = (0-4) else -- 4
				"0100100" when a = (0-5) else -- 5
				"0100000" when a = (0-6) else -- 6
				"0001111" when a = (0-7) else -- 7
				"0000001" when a = 0 else -- 0
				"1001111" when a = 1 else -- 1
				"0010010" when a = 2 else -- 2
				"0000110" when a = 3 else -- 3
				"1001100" when a = 4 else -- 4
				"0100100" when a = 5 else -- 5
				"0100000" when a = 6 else -- 6
				"0001111" when a = 7 else -- 7
				"0000000" when a = 8 else -- 8
				"0000100" when a = 9 else --9
				"0000001" when a = 10 else -- 10
				"1001111" when a = 11 else -- 11
				"0010010" when a = 12 else -- 12
				"0000110" when a = 13 else -- 13
				"1001100" when a = 14 else -- 14
				"0100100"; -- 15
								
	 HEX3 <= "1111110" when a = (0-1) else -- 1
				"1111110" when a = (0-2) else -- 2
				"1111110" when a = (0-3) else -- 3
				"1111110" when a = (0-4) else -- 4
				"1111110" when a = (0-5) else -- 5
				"1111110" when a = (0-6) else -- 6
				"1111110" when a = (0-7) else -- 7
				"0000001" when a = 0 else
				"0000001" when a = 1 else
				"0000001" when a = 2 else
				"0000001" when a = 3 else
				"0000001" when a = 4 else
				"0000001" when a = 5 else
				"0000001" when a = 6 else
				"0000001" when a = 7 else
				"0000001" when a = 8 else
				"0000001" when a = 9 else
				"1001111" when a = 10 else --10
				"1001111" when a = 11 else --11
				"1001111" when a = 12 else --12
				"1001111" when a = 13 else --13
				"1001111" when a = 14 else -- 14
				"1001111" when a = 15;     -- 15
				
	
end architecture;
	