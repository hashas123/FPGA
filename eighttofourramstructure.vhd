library IEEE;
use IEEE.std_logic_1164.all;

entity eighttofourramstructure is
    port(
        clk: in std_logic;
        rdwrt: in std_logic;
        a0 : in std_logic;
        a1 : in std_logic;
        en : in std_logic;
        c1 : in std_logic;
        d0: inout std_logic;
        d1: inout std_logic;
        d2: inout std_logic;
        d3: inout std_logic
    );    
end entity;

architecture rtl of eighttofourramstructure is
    component twofourdecoder is 
        port(
            a0 : in std_logic;
            a1 : in std_logic;
            en : in std_logic;
            b0 : out std_logic;
            b1 : out std_logic;
            b2 : out std_logic;
            b3 : out std_logic
        );
    end component;
    component onetotwodecoder is
        port(
            clk : in std_logic;
            c1 : in std_logic;
            e1 : out std_logic;
            e2 : out std_logic; 
            en : in std_logic
        );
        end component;
    signal b0 : std_logic;
    signal b1 : std_logic;
    signal b2 : std_logic;
    signal b3 : std_logic;
    signal e1 : std_logic;
    signal e2 : std_logic;
    signal dff1: std_logic;
    signal dff2: std_logic;
    signal dff3: std_logic;
    signal dff4: std_logic;
    signal dff5: std_logic;
    signal dff6: std_logic;
    signal dff7: std_logic;
    signal dff8: std_logic;
    signal dff9: std_logic;
    signal dff10: std_logic;
    signal dff11: std_logic;
    signal dff12: std_logic;
    signal dff13: std_logic;
    signal dff14: std_logic;
    signal dff15: std_logic;
    signal dff16: std_logic;
    signal dff17: std_logic;
    signal dff18: std_logic;
    signal dff19: std_logic;
    signal dff20: std_logic;
    signal dff21: std_logic;
    signal dff22: std_logic;
    signal dff23: std_logic;
    signal dff24: std_logic;
    signal dff25: std_logic;
    signal dff26: std_logic;
    signal dff27: std_logic;
    signal dff28: std_logic;
    signal dff29: std_logic;
    signal dff30: std_logic;
    signal dff31: std_logic;
    signal dff32: std_logic;
    begin
        DEC1 : twofourdecoder port map(a0,a1,en,b0,b1,b2,b3);
        DEC2 : onetotwodecoder port map(clk,c1,e1,e2,en);
        process (clk) is
            begin
                if rising_edge(clk) then  
                    if rdwrt = '0' then
                        if b0 = '1' then
                            if e1 = '1' then
                                dff1 <= d0;
                                dff2 <= d1;
                                dff3 <= d2;
                                dff4 <= d3;
                            elsif e2 = '1' then
                                dff5 <=d0;
                                dff6 <=d1;
                                dff7 <=d2;
                                dff8 <=d3;
                            end if;
                        elsif b1 = '1' then
                            if e1 ='1' then
                                dff9 <=d0;
                                dff10 <=d1;
                                dff11 <=d2;
                                dff12 <=d3;
                            elsif e2 ='1' then
                                dff13 <=d0;
                                dff14 <=d1;
                                dff15 <=d2;
                                dff16 <=d3;
                            end if;
                        elsif b2 = '1' then
                            if e1 = '1' then
                                dff17 <=d0;
                                dff18 <=d1;
                                dff19 <=d2;
                                dff20 <=d3;
                            elsif e2 = '1' then
                                dff21 <=d0;
                                dff22 <=d1;
                                dff23 <=d2;
                                dff24 <=d3;
                            end if;
                        elsif b3 = '1' then
                            if e1 = '1' then
                                dff25 <=d0;
                                dff26 <=d1;
                                dff27 <=d2;
                                dff28 <=d3;
                            elsif e2 = '1' then
                                dff29 <=d0;
                                dff30 <=d1;
                                dff31 <=d2;
                                dff32 <=d3;
                            end if;
                        end if;  
                    end if;
                end if;            
        end process;
d0 <= dff1 when(rdwrt = '1' and e1 = '1' and b0 = '1') else
    dff5 when(rdwrt = '1' and e2 = '1' and b0 = '1') else
    dff9 when(rdwrt = '1' and e1 = '1' and b1 = '1') else
    dff13 when(rdwrt = '1' and e2 = '1' and b1 = '1') else
    dff17 when(rdwrt = '1' and e1 = '1' and b2 = '1') else
    dff21 when(rdwrt = '1' and e2 = '1' and b2 = '1') else
    dff25 when(rdwrt = '1' and e1 = '1' and b3 = '1') else
    dff29 when(rdwrt = '1' and e2 = '1' and b3 = '1') else 'Z';

d1 <= dff2 when(rdwrt = '1' and e1 = '1' and b0 = '1') else
    dff6 when(rdwrt = '1' and e2 = '1' and b0 = '1') else
    dff10 when(rdwrt = '1' and e1 = '1' and b1 = '1') else
    dff14 when(rdwrt = '1' and e2 = '1' and b1 = '1') else
    dff18 when(rdwrt = '1' and e1 = '1' and b2 = '1') else
    dff22 when(rdwrt = '1' and e2 = '1' and b2 = '1') else
    dff26 when(rdwrt = '1' and e1 = '1' and b3 = '1') else
    dff30 when(rdwrt = '1' and e2 = '1' and b3 = '1') else 'Z';

d2 <= dff3 when(rdwrt = '1' and e1 = '1' and b0 = '1') else
    dff7 when(rdwrt = '1' and e2 = '1' and b0 = '1') else
    dff11 when(rdwrt = '1' and e1 = '1' and b1 = '1') else
    dff15 when(rdwrt = '1' and e2 = '1' and b1 = '1') else
    dff19 when(rdwrt = '1' and e1 = '1' and b2 = '1') else
    dff23 when(rdwrt = '1' and e2 = '1' and b2 = '1') else
    dff27 when(rdwrt = '1' and e1 = '1' and b3 = '1') else
    dff31 when(rdwrt = '1' and e2 = '1' and b3 = '1') else 'Z';

d3 <= dff4 when(rdwrt = '1' and e1 = '1' and b0 = '1') else
    dff8 when(rdwrt = '1' and e2 = '1' and b0 = '1') else
    dff12 when(rdwrt = '1' and e1 = '1' and b1 = '1') else
    dff16 when(rdwrt = '1' and e2 = '1' and b1 = '1') else
    dff20 when(rdwrt = '1' and e1 = '1' and b2 = '1') else
    dff24 when(rdwrt = '1' and e2 = '1' and b2 = '1') else
    dff28 when(rdwrt = '1' and e1 = '1' and b3 = '1') else                           
    dff32 when(rdwrt = '1' and e2 = '1' and b3 = '1') else 'Z';
end architecture;