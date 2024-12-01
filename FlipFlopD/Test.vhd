LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Module
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         d : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal q : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Module PORT MAP (
          clk => clk,
          reset => reset,
          d => d,
          q => q
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

		d <= '0';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		clk <= '1';
		wait for 50 ns;
		clk <= '0';
		wait for 50 ns;
		
		d <= '1';
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
