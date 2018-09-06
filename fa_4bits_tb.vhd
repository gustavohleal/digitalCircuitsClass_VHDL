-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.std_logic_UNSIGNED.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

          SIGNAL cout :  std_logic;
          SIGNAL bit0, bit1, sum :  std_logic_vector(3 downto 0) := (others => '0');
  BEGIN
		somador : entity work.fa_4bits port map (
			bit0 => bit0,
         bit1 => bit1,
         sum  => sum,
			cout => cout
		);
		process
		begin
			bit0 <= bit0+1;
			wait for 10ns
		end process;
		wait for 160ns;
  END;
