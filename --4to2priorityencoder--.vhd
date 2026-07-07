--4to2priorityencoder--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fourtotwopriorityencoder is
    port(
        i0 : in std_logic;
        i1 : in std_logic;
        i2 : in std_logic;
        i3 : in std_logic;
        o0 : out unsigned(1 downto 0)
    );
    
    end entity;
architecture rtl of fourtotwopriorityencoder is
    begin
        process(i0,i1,i2,i3) is
            begin
            o0 <= "00";
                if i3 = '1' then
                    o0 <= "11";
                elsif i2 = '1' then
                    o0 <= "10";
                elsif i1 = '1' then
                    o0 <= "01";
                elsif i0 = '1' then
                    o0 <= "00";
                else
                    o0 <=(others => '0');
                end if;
        end process;
    end architecture;