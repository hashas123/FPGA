library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbt2bitsfulladder is
end entity;

architecture sim of tbt2bitsfulladder is
	signal x1 : unsigned(0 downto 0) := (others => '0');  -- Declare as 1-bit unsigned
    signal x0 : unsigned(0 downto 0) := (others => '0');
    signal y1 : unsigned(0 downto 0) := (others => '0');
    signal y0 : unsigned(0 downto 0) := (others => '0');
    signal el : unsigned(0 downto 0) := (others => '0');
	signal sum : std_logic;  -- Declare sum signal
    signal summ : std_logic;  -- Declare summ signal
    signal carr : std_logic;
	
	component t2bitsfulladder
		port(
			a0, a1, b0, b1, e : in std_logic;
			sum, summ, carr   : out std_logic
		);
	end component;
	
	begin
	fulladder : entity work.t2bitsfulladder(behavior) port map(
	a1 => std_logic(x1(0)),
	a0 => std_logic(x0(0)),
	b1 => std_logic(y1(0)),
	b0 => std_logic(y0(0)),
	e  => std_logic(el(0)),
	sum => sum,
	summ => summ,
	carr => carr
	);
	stimulus:
	process is 
	--Test Durumu--
		begin
		x1 <= (others => '1');
		x0 <= (others => '0');
		y1 <= (others => '1');
		y0 <= (others => '0');
		el <= (others => '1');
		wait for 10 ns;
	end process stimulus;	
end architecture;