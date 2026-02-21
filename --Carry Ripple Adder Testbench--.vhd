--Carry Ripple Adder Testbench--
-- Engineer: Hasan Gökberk ÖZKAN
-- Design Name: Testbench
-- Module Name: carryrippleadder_tb - Behavioral
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity carryrippleadder_tb is
end carryrippleadder_tb;

architecture sim of carryrippleadder_tb is
constant N : integer := 8;
signal a : unsigned(N-1 downto 0);
signal b : unsigned(N-1 downto 0);
signal cin : std_logic;
signal sum : unsigned(N-1 downto 0);
signal cout : std_logic;

component ripple_adder is
    port(
        a,b : in unsigned(N-1 downto 0);
        cin : in std_logic;
        cout : out std_logic;
        sum : out unsigned(N-1 downto 0) 
    );
end component;
begin
rippleadder: entity work.ripple_adder(behavioral)
generic map(
    N => N
) 
port map(
    a=>a,
    b=>b,
    cin =>cin,
    cout =>cout,
    sum =>sum
);
stimulus :
    process is
    begin
    cin <= '0';
    a <= TO_UNSIGNED(20,N);
    b <= TO_UNSIGNED(5,N);
    wait for 10ns;
    cin <= '1';
    a <= TO_UNSIGNED(16,N);
    b <= TO_UNSIGNED(9,N);    
    end process stimulus;
end sim;
