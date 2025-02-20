--Ikibitlikkarsilastirici--

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ikibitlikkarsilastirici is
    port(
    a : in std_logic;
    b : in std_logic;
    c : in std_logic;
    d : in std_logic;
    esit: out std_logic;
    boyuk : out std_logic;
    goccuk : out std_logic
    );
end entity;

architecture behavior of ikibitlikkarsilastirici is
    begin
        process (a,b,c,d) is
            begin
                esit <= (not a and not b and not c and not d) or (not a and b and not c and d) or (a and b and c and d) or (a and not b and c and not d);
                boyuk <= (a and b and not d) or (b and not c and not d ) or ( a and not c);
                goccuk <= (not a and not b and d) or (not b and c and d ) or (not a and c);
        end process;

end architecture;