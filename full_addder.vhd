library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_addder is
    Port ( bit0 : in  STD_LOGIC;
           bit1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end full_addder;

architecture Behavioral of full_addder is

begin
	cout <= ((bit0 xor bit1) and cin) or (bit0 and bit1);
	sum <= (bit0 xor bit1) xor cin;
end Behavioral;

