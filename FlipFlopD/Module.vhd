
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Module is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           d : in  STD_LOGIC;
           q : out  STD_LOGIC);
end Module;

architecture Behavioral of Module is

signal sinal_q: STD_LOGIC;

begin

	process(clk,reset)
	begin
		if (reset = '1') then
			sinal_q <= '0';
		elsif rising_edge(clk) then
			if (d = '0') then
				sinal_q <= '0';
			elsif (d = '1') then
				sinal_q <= '1';
			end if;
	
		elsif falling_edge(clk) then
			sinal_q <= sinal_q;
			
		end if;
	end process;
	
	q <= sinal_q;

end Behavioral;

