--Testbench Karsilastirici--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tbtekbitlikkarsilastirici is
end entity;

architecture sim of tbtekbitlikkarsilastirici is
    signal ayvan1 : unsigned(0 downto 0) := (others => '0');
    signal ayvan2 : unsigned(0 downto 0) := (others => '0');
    signal sonuc1 : std_logic;
    signal sonuc2 : std_logic;
    signal sonuc3 : std_logic;

    component tekbitlikkarsilastirici
        port (
        ayvan1 , ayvan2 : in std_logic;
        sonuc1 : out std_logic;
        sonuc2 : out std_logic;
        sonuc3 : out std_logic 
        );
    end component;
    begin
    karsilastirici : entity work.tekbitlikkarsilastirici(behavior) port map(
    ayvan1 => std_logic(ayvan1(0)),
    ayvan2 => std_logic(ayvan2(0)),
    sonuc1 => sonuc1,
    sonuc2 => sonuc2,
    sonuc3 => sonuc3
    );
    stimulus:
        process is
            begin
            ayvan1 <= (others => '1');
            ayvan2 <= (others => '0');
            wait for 10 ns;
            ayvan1 <= (others => '0');
            ayvan2 <= (others => '0');
            wait for 10 ns;
            ayvan1 <= (others => '0');
            ayvan2 <= (others => '1');
            wait for 10 ns;
            ayvan1 <= (others => '1');
            ayvan2 <= (others => '1');
            wait for 10 ns;
        end process stimulus;
end architecture;