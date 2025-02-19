library IEEE;

use IEEE.STD_LOGIC_1164.all;

entity full_adder is
	port(
		a : in std_logic;
		b : in std_logic;
		e : in std_logic;
		c : out std_logic;
		d : out std_logic
	);
end entity;

architecture rtl of full_adder is
begin
	process(a,b,e) is
	begin
		d <= a xor b xor e;  -- Correct sum equation
        c <= (a and b) or ((a xor b) and e);  -- Correct carry equation
		
	end process;
end architecture rtl;