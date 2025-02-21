--Dortyoltrafiksinyalizasyon--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity dortyoltrafiksinyalizasyon is
    port (
        CLK : in std_logic;
        Kuzeykirmizi : out std_logic;
        Kuzeysari : out std_logic;
        Kuzeyyesil : out std_logic;
        Guneykirmizi : out std_logic;
        Guneysari : out std_logic;
        Guneyyesil : out std_logic;
        Dogukirmizi : out std_logic;
        Dogusari : out std_logic;
        Doguyesil : out std_logic;
        Batikirmizi : out std_logic;
        Batisari : out std_logic;
        Batiyesil : out std_logic
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

architecture rtl of dortyoltrafiksinyalizasyon is
    component saniyesayici is
        port (
        CLK : in std_logic;
        saniye : out std_logic
        );
        end component;
    
    type sinyalizasyon is (Kuzeyhazirlan,Kuzeygec,Kuzeydur,Guneyhazirlan,Guneygec,
    Guneydur,Doguhazirlan,Dogugec,Dogudur,Batihazirlan,Batigec,Batidur);
    signal saniye : std_logic;
    signal Durum : sinyalizasyon; 
    signal sayici1 : integer := 0;
    begin
    saniyelik : saniyesayici
        port map(
            CLK=>CLK,
            saniye=>saniye
        );
    
        process(saniye) is
            begin
            if rising_edge(saniye) then
                Durum <= Kuzeyhazirlan;
                if sayici1 = 1 then
                    Durum <= Kuzeygec;
                elsif sayici1 = 14 then
                    Durum <= Kuzeydur;
                elsif sayici1 = 15 then 
                    Durum <= Guneyhazirlan;
                elsif sayici1 = 16 then 
                    Durum <= Guneygec;
                elsif sayici1 = 29 then
                    Durum <= Guneydur;
                elsif sayici1 = 30 then
                    Durum <= Doguhazirlan;
                elsif sayici1 = 31 then
                    Durum <= Dogugec;
                elsif sayici1 = 44 then
                    Durum <= Dogudur;
                elsif sayici1 = 45 then
                    Durum <= Batihazirlan;
                elsif sayici1 = 46 then 
                    Durum <= Batigec;
                elsif sayici1 = 59 then
                    Durum <= Batidur;
                elsif sayici1 = 60 then
                    sayici1 <= 0;
                    Durum <= Kuzeyhazirlan;
                else
                sayici1 <= sayici1 +1;
                end if;
            end if;
        end process;
        process (durum )is
            begin
                case durum is
                    when Kuzeyhazirlan =>
                    Kuzeykirmizi <= '0';
                    Kuzeysari <='1';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Kuzeygec =>
                    Kuzeykirmizi <= '0';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '1';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Kuzeydur =>
                    Kuzeykirmizi <= '0';
                    Kuzeysari <='1';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Guneyhazirlan =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '0';
                    Guneysari <= '1';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Guneygec =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '0';
                    Guneysari <= '0';
                    Guneyyesil <= '1';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Guneydur =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '0';
                    Guneysari <= '1';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Doguhazirlan => 
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '0';
                    Dogusari <= '1' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Dogugec =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '0';
                    Dogusari <= '0' ; 
                    Doguyesil <= '1';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Dogudur =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '0';
                    Dogusari <= '1' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '1';
                    Batisari <= '0';
                    Batiyesil <= '0';
                    when Batihazirlan =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '0';
                    Batisari <= '1';
                    Batiyesil <= '0';
                    when Batigec =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '0';
                    Batisari <= '0';
                    Batiyesil <= '1';
                    when Batidur =>
                    Kuzeykirmizi <= '1';
                    Kuzeysari <='0';
                    Kuzeyyesil <= '0';
                    Guneykirmizi <= '1';
                    Guneysari <= '0';
                    Guneyyesil <= '0';
                    Dogukirmizi <= '1';
                    Dogusari <= '0' ; 
                    Doguyesil <= '0';
                    Batikirmizi <= '0';
                    Batisari <= '1';
                    Batiyesil <= '0';
                end case;
        end process;
end architecture;