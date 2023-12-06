Library ieee;
use ieee.std_logic_1164.all;

entity maquinaEstados is
	generic (N: integer := 8);
		port (clck, rst:  in std_logic;
			  key0, key1: in std_logic_vector (N-1 downto 0);
			  Hex0: out std_logic_vector(0 to N-2);
			  Hex1: out std_logic_vector(0 to N-2);
			  Hex2: out std_logic_vector(0 to N-2); 
			  Hex3: out std_logic_vector(0 to N-2);
			  Hex4: out std_logic_vector(0 to N-2);
			  Hex5: out std_logic_vector(0 to N-2);
			  Hex6: out std_logic_vector(0 to N-2); 
			  Hex7: out std_logic_vector(0 to N-2);
			  Hex8: out std_logic_vector(0 to N-2); 
			  Hex9: out std_logic_vector(0 to N-2);
			  output:  in std_logic_vector (N-1 downto 0));

end entity;

architecture arq of maquinaEstados is
	
	type estado is (q0, q1, q2, q3);
	signal pr_st, nx_st: estado;
	signal s_rst: std_logic;
	
	begin		
		--------------------------------------------
		---input
		process(clck,s_rst)
		variable count: integer range 0 to Max;
		begin
			if (s_rst = '1') 
			elsif (clck'event and clck = '1') then
				count := count + 1;
				if() then
				end if;
			end if;
		end process;
		-------------------------------------------
		---output 
		process(pr_st,s_x)
		begin
			case pr_st is
				when q0 => ---------------- no estado stand by
				
				when q1 =>  ---------------- no estado enxague
				
			end case;
		end process;
		
end architecture;