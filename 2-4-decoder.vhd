library ieee;
use ieee.std_logic_1164.all;

entity twofourdecoder is
    port(
        a0 : in std_logic;
        a1 : in std_logic;
        en : in std_logic;
        b0 : out std_logic;
        b1 : out std_logic;
        b2 : out std_logic;
        b3 : out std_logic
    );
end entity;

architecture rtl of twofourdecoder is
    begin 
        process (en,a0,a1) is
            begin
                b0 <= '0';
                b1 <= '0';
                b2 <= '0';
                b3 <= '0';
                if(en = '1') then
                    case (a1 & a0) is
                        when "00" => b0 <= '1';
                        when "01" => b1 <= '1';
                        when "10" => b2 <= '1';
                        when "11" => b3 <= '1';
                        when others => null;
                    end case;   
                end if;
            end process;
    end architecture;
