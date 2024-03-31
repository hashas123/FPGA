library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec_No is
port (
	--girişler
	Cnt: in unsigned(2 downto 0):="000";
	--çıkışlar
	No: out unsigned(3 downto 0));
end entity;

architecture rtl of Dec_No is
	signal s1 : unsigned(3 downto 0):="0010";
	signal s2 : unsigned(3 downto 0):="0000";
	signal s3 : unsigned(3 downto 0):="0010";
	signal s4 : unsigned(3 downto 0):="0100";
	signal s5 : unsigned(3 downto 0):="0111";
	signal s6 : unsigned(3 downto 0):="0000";
	signal s7 : unsigned(3 downto 0):="0001";
	signal s8 : unsigned(3 downto 0):="0011";
begin	
	process(Cnt) is
	begin
		case Cnt is 
			when "000" =>
				No <= s1;
			when "001" =>
				No <= s2;
			when "010" =>
				No <= s3;
			when "011" =>
				No <= s4;
			when "100" =>
				No <= s5;
			when "101" =>
				No <= s6;
			when "110" =>
				No <= s7;
			when "111" =>
				No <= s8;
			when others =>
				No <= (others => '0');
		end case;
	end process;
end architecture;

	