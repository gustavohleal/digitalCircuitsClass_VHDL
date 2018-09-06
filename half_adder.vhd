library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( bit0 : in  STD_LOGIC;
           bit1 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is

begin
	sum <= bit0 xor bit1;
	carry <= bit0 and bit1;
end Behavioral;

