--Saniyesayici--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity saniyesayici is
    port (
    CLK: in std_logic;
    saniye: out std_logic
    );
end entity;

architecture rtl of saniyesayici is
    signal sayici : integer := 0;
    signal saniyeara : std_logic:= '0';
    constant darbefrekansi : integer :=12000000; 
begin
        process (CLK) is
            begin
            if rising_edge(CLK) then
                if sayici = (darbefrekansi/2 -1) then
                   saniyeara <= not saniyeara;
                   sayici <= 0;
                else
                    sayici <= sayici + 1;
                end if;
            end if;
            saniye <= saniyeara;
        end process;
end architecture;