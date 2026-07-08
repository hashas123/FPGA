--4-bit synchronous counter(up-down)--
-- Written by Hasan Gökberk ÖZKAN --

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fourbitsynccount is
    port(
        clk : in std_logic;
        res : in std_logic;
        up_down : in std_logic;
        y : out unsigned(3 downto 0)
    );
    end entity;

architecture rtl of fourbitsynccount is
signal y_req : unsigned(3 downto 0);    
    begin
        process (clk) is
            begin
                if rising_edge(clk) then
                    if res = '0' then
                        y_req <= "0000";
                    elsif up_down = '1' then
                            y_req <= y_req + 1;
                    elsif up_down = '0' then
                            y_req <= y_req - 1;    
                        end if;
                    end if;
        end process;
    y <= y_req;
end architecture;