--tbikibitlikkarsilastirici--

library  IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tbikibitlikkarsilastirici is
end entity;

architecture sim of tbikibitlikkarsilastirici is
signal a : unsigned(0 downto 0) := (others =>'0');
signal b : unsigned(0 downto 0) := (others =>'0');
signal c : unsigned(0 downto 0) := (others =>'0');
signal d : unsigned(0 downto 0) := (others =>'0');
signal esit : std_logic;
signal boyuk : std_logic;
signal goccuk : std_logic;

component ikibitlikkarsilastirici is
    port(
        a,b,c,d : in std_logic;
        esit, boyuk, goccuk: out std_logic
    );
end component;
begin
ikibitlikarsilastirici : entity work.ikibitlikkarsilastirici(behavior) port map(
    a => std_logic(a(0)),
    b => std_logic(b(0)),
    c => std_logic(c(0)),
    d => std_logic(d(0)),
    esit => esit,
    boyuk => boyuk,
    goccuk => goccuk
);

stimulus:
process is
    begin
        a <= (others => '1'); b <=(others => '0'); c <= (others => '0'); d <= (others => '1');
        wait for 10 ns;
        a <= (others => '1'); b <=(others => '0'); c <= (others => '1'); d <= (others => '0'); 
        wait for 10 ns;
        a <= (others => '0'); b <=(others => '0'); c <= (others => '0'); d <= (others => '1');
        wait for 10 ns;
    end process stimulus;
end architecture;