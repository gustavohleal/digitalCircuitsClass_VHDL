
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

use UNISIM.VComponents.all;

entity fa_4bits is
    Port ( bit0 : in  STD_LOGIC_vector(3 downto 0);
           bit1 : in  STD_LOGIC_vector(3 downto 0);
           sum : out STD_LOGIC_vector(3 downto 0);
			  cout : out std_logic
			  );
end fa_4bits;

architecture Behavioral of fa_4bits is
	signal c : std_logic_vector(2 downto 0);
begin
	sb0: entity work.full_addder port map (
		bit0 => bit0(0), 
		bit1 => bit1(0),
		cin => '0',
		sum => sum(0),
		cout => c(0)
	);
	sb1: entity work.full_addder port map (
		bit0 => bit0(1), 
		bit1 => bit1(1),
		cin => c(0),
		sum => sum(1),
		cout => c(1)
	);
	sb2: entity work.full_addder port map (
		bit0 => bit0(2), 
		bit1 => bit1(2),
		cin => c(1),
		sum => sum(2),
		cout => c(2)
	);
	sb3: entity work.full_addder port map (
		bit0 => bit0(3), 
		bit1 => bit1(3),
		cin => c(2),
		sum => sum(3),
		cout => cout
	);
end Behavioral;

