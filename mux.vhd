library ieee;
use ieee.std_logic_1164.all;

entity mux is
	generic (N: integer :=3);
	port(op: in std_logic;
		   a: in integer range 0 to (2**(N+1))-2;
			b: in integer range -((2**(N+1))-2)/2 to ((2**(N+1))-2)/2;
			y: out  integer range -((2**(N+1))-2)/2  to (2**(N+1))-2);
			
end entity;
architecture arq of mux is 
	begin
		y <= a when op = '0' else
			  b;
end arq;