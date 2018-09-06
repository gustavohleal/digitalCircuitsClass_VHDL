LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ha_tb IS
END ha_tb;

ARCHITECTURE behavior OF ha_tb IS 
    COMPONENT half_adder
    PORT(
         bit0 : IN  std_logic;
         bit1 : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal bit0 : std_logic := '0';
   signal bit1 : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder PORT MAP (
          bit0 => bit0,
          bit1 => bit1,
          sum => sum,
          carry => carry
        );

	process
	begin
		bit0 <= '0', 					  '1' after 20ns;
		bit1 <= '0', '1' after 10ns, '0' after 20ns, '1' after 30ns; 
		wait for 40ns;
	end process;
END;
