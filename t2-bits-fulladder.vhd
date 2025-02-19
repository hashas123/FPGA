library IEEE;

use IEEE.STD_LOGIC_1164.all;

entity t2bitsfulladder is
	port(
		a0 : in std_logic;
		a1 : in std_logic;
		b0 : in std_logic;
		b1 : in std_logic;
		e : in std_logic;
		sum : out std_logic;
		carr : out std_logic;
		summ : out std_logic
	);
end entity;

architecture behavior of t2bitsfulladder is
	signal carry : std_logic;
	
begin
	process (a0, a1, b0, b1, e)is
	begin
		carry <= ((a0 xor b0) and e) or (a0 and b0);
		sum <= e xor (a0 xor b0);
		
		
		carr <= ((a1 xor b1) and carry) or (a1 and b1);
		summ <= carry xor (a1 xor b1);
	end process;
end architecture;