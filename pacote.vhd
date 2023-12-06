library ieee;
use ieee.std_logic_1164.all;

package pacote is
	component mux is 
		generic (N: integer :=3);
		port (op: in std_logic;
				 a: in integer range 0 to (2**(N+1))-2;
				 b: in integer range -((2**(N+1))-2)/2 to ((2**(N+1))-2)/2;
				 y: out integer range -((2**(N+1))-2)/2  to (2**(N+1))-2);
	end component;
	component Decoder7Entrada is
		generic (N: integer := 3);
		port ( a: in std_logic_vector (N-1 downto 0);
				 HEX: out std_logic_vector(0 to 6));
	end component;
	component Decoder7Saida is
		generic (N: integer := 3);
		port ( op: in std_logic;
				  a: in integer range -((2**(N+1))-2)/2 to (2**(N+1))-2;
				  SIG: out std_logic_vector(0 to 6);
				  HEX3: out std_logic_vector(0 to 6);
				  HEX4: out std_logic_vector(0 to 6));
	end component;
		
end package;