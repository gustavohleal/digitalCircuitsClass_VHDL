LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fa_tb1 IS
END fa_tb1;
 
ARCHITECTURE behavior OF fa_tb1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_addder
    PORT(
         bit0 : IN  std_logic;
         bit1 : IN  std_logic;
         cin : IN  std_logic;
         cout : OUT  std_logic;
         sum : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal bit0 : std_logic := '0';
   signal bit1 : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal sum : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_addder PORT MAP (
          bit0 => bit0,
          bit1 => bit1,
          cin => cin,
          cout => cout,
          sum => sum
        );

	process
	begin
		bit0 <=		'0', '1' after 40ns;
		bit1 <=		'0', '1' after 20ns, '0' after 40ns, '1' after 60ns;
		cin  <=		'0', '1' after 10ns, '1' after 20ns, '0' after 30ns, '1' after 40ns, '0' after 50ns, '1' after 60ns, '0' after 70ns, '1' after 80ns;
		wait for 80ns;	
	end process;
END;
