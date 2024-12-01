LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Module
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         enable : IN  std_logic;
         D0 : IN  std_logic;
         D1 : IN  std_logic;
         D2 : IN  std_logic;
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal D0 : std_logic := '0';
   signal D1 : std_logic := '0';
   signal D2 : std_logic := '0';

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Module PORT MAP (
          reset => reset,
          clk => clk,
          enable => enable,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		clk <= '0';
		reset <= '1';
		wait for 50 ns;
		reset <= '0';
		
		-- Enable = 1 (deslocameto para direita)
		enable <= '0';
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		D2 <= '1';
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		D2 <= '0';
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		-- Enable = 1 (deslocameto para esquerda)
		enable <= '1';
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		D0 <= '1';
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		D0 <= '0';
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
      wait;
   end process;

END;
