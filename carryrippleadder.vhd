----------------------------------------------------------------------------------
-- Engineer: Hasan Gökberk ÖZKAN
-- 
-- Create Date: 21.02.2026 20:52:44
-- Design Name: RTL Design of Carry Ripple Adder 
-- Module Name: ripple_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_adder is
    generic(
        N : integer := 8
    );
    Port ( a : in unsigned(N-1 downto 0);
           b : in unsigned(N-1 downto 0);
           cin : in STD_LOGIC;
           sum : out unsigned(N-1 downto 0);
           cout : out std_logic
        );
end ripple_adder;

architecture Behavioral of ripple_adder is
signal carry : std_logic_vector(N downto 0);
begin
carry(0) <= cin;
    gen_N:for i in 0 to N-1 generate
        sum(i)<=a(i) xor b(i) xor carry(i);
        carry(i+1) <= (a(i)and b(i))or((a(i)xor b(i)) and carry (i));
    end generate gen_N;
cout <= carry(N);
end Behavioral;