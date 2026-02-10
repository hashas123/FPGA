libray IEEE;
use IEEE.STD_LOGIC_1164.all;

entity onetotwodecoder is
    port(
        clk : in std_logic;
        c1 : in std_logic;
        e1 : out std_logic;
        e2 : out std_logic; 
        en : in std_logic;
    );

    end entity;
architecture rtl fo onetotwodecoder is
    begin
        process(clk) is
            begin
                if rising_edge(clk) then
                    if en ='1' then 
                        case(c1) is
                            when "0" => e1 <= '1';
                            when "1" => e2 <= '1';
                            when others => null;
                        end case;
                    end if;
                end if;
        end process;
    end architecture;