-- 1to4multiplexer --
library IEEE;
use IEEE.std_logic_1164;

entity onetofourmultiplexer is
    portmap(
        i1 : in std_logic;
        s1 : in unsigned (1 downto 0);
        o1 : out std_logic;
        o2 : out std_logic;
        o3 : out std_logic;
        o4 : out std_logic
    );
    
    end entity;

architecture rtl of onetofourmultiplexer is
    begin
        process (s1)is
            begin
                case s1 is
                    when '00' => o1 <= i1;
                    when '01' => o2 <= i1;
                    when '10' => o3 <= i1;
                    when '11' => o4 <= i1;
                    when others => null;
                end case;
            end process;
    end architecture;