-- 1to4demultiplexer --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;--unsigned yapısı bu kütüphane içerisinde olduğu için bu kütüphaneyi kullanıyoruz--

entity onetofourdemultiplexer is
    port(
        i1 : in std_logic; --Giriş pininin tanımlanması--
        s1 : in unsigned (1 downto 0); --Seçim pininin tanımlanması--
        o1 : out std_logic; -- o1,o2,o3,o4 ise çıkış pinleri olarak tanımlanması--
        o2 : out std_logic;
        o3 : out std_logic;
        o4 : out std_logic
    );
    
    end entity;

architecture rtl of onetofourmultiplexer is
    begin
        process (i1,s1)is
            begin
                o1 <= '0';
                o2 <= '0' ;
                o3 <= '0' ;
                o4 <= '0' ;
                case s1 is
                    when "00" => o1 <= i1;
                    when "01" => o2 <= i1;
                    when "10" => o3 <= i1;
                    when "11" => o4 <= i1;
                    when others => null;
                end case;
            end process;
    end architecture;