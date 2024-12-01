library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Module is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           D0 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           Q0 : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC);
end Module;

architecture Behavioral of Module is

signal sinal_q0: STD_LOGIC;
signal sinal_q1: STD_LOGIC;
signal sinal_q2: STD_LOGIC;
	
begin

	process(clk,reset)
	begin
	
		if (reset = '1') then
			sinal_q0 <= '0';
			sinal_q1 <= '0';
			sinal_q2 <= '0';
		
		elsif rising_edge(clk) then
		
			if (enable = '1') then
				sinal_q2 <= sinal_q1;
				sinal_q1 <= sinal_q0;
				sinal_q0 <= D0;
				
			elsif (enable = '0') then
				sinal_q2 <= D2;
				sinal_q1 <= sinal_q2;
				sinal_q0 <= sinal_q1;
				
			end if;
			
		elsif falling_edge(clk) then
			sinal_q0 <= sinal_q0;
			sinal_q1 <= sinal_q1;
			sinal_q2 <= sinal_q2;

		end if;
		
	end process;
	
	Q0 <= sinal_q0;
	Q1 <= sinal_q1;
	Q2 <= sinal_q2;
	
end Behavioral;

