library ieee;
use ieee.std_logic_1164.all;

entity Decoder7Entrada is 
	generic (N: integer:= 3);
	port (a: in std_logic_vector (N-1 downto 0);
				 HEX: out std_logic_vector(0 to 6));
 end entity;Decoder7Entrada
 
 architecture arq of Decoder7Entrada is
 
	begin
	
	 HEX <= "0000001" when a = "000" else
			  "1001111" when a = "001" else
			  "0010010" when a = "010" else
			  "0000110" when a = "011" else
			  "1001100" when a = "100" else
			  "0100100" when a = "101" else
			  "0100000" when a = "110" else
			  "0001111";
	
	
end architecture; 