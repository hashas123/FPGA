--Karsilastirici Devre--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tekbitlikkarsilastirici is
    port(
        ayvan1 : in std_logic;
        ayvan2 : in std_logic;
        sonuc1 : out std_logic;
        sonuc2 : out std_logic;
        sonuc3 : out std_logic 
    );
end entity;

architecture behavior of tekbitlikkarsilastirici is
    
    begin
        process (ayvan1,ayvan2) is
            begin
                sonuc1 <= ayvan1 xnor ayvan2;
                sonuc2 <= not ayvan2 and ayvan1;
                sonuc3 <= not ayvan1 and ayvan2; 
        end process;
end architecture;