library IEEE;
use IEEE.std_logic_1164.all;

entity asyncdff is
    port(
        clk : in std_logic;
        d : in std_logic;
        res : in std_logic; 
        q : out std_logic
    );
    end entity;

architecture rtl of asyncdff is 
    begin
        process (clk , res) is
            begin
                
                if res = '0' then
                    q <= '0';
                else
                    if rising_edge(clk) then
                        q <=d;
                        end if;
                    end if;
        
                end process;

end architecture;