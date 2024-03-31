library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec_No is
port (
  --girişler
  Cnt: in unsigned(2 downto 0):="000";
  --çıkışlar
  No: out unsigned(3 downto 0));
end entity;

architecture rtl of Dec_No is
  -- Define all the internal signals with proper initial values
  signal s1 : unsigned(3 downto 0) := "0010";
  signal s2 : unsigned(3 downto 0) := "0000";
  signal s3 : unsigned(3 downto 0) := "0010";
  signal s4 : unsigned(3 downto 0) := "0100";
  signal s5 : unsigned(3 downto 0) := "0111";
  signal s6 : unsigned(3 downto 0) := "0000";
  signal s7 : unsigned(3 downto 0) := "0001";
  signal s8 : unsigned(3 downto 0) := "0011";

begin  
  process(Cnt) is
  begin
    case Cnt is 
      when "000" =>
        s1 <= s1;  -- No change needed for this case
      when "001" =>
        s2 <= s2;  -- No change needed for this case
      when "010" =>
        s3 <= s3;  -- No change needed for this case
      when "011" =>
        s4 <= s4;  -- No change needed for this case
      when "100" =>
        s5 <= s5;  -- No change needed for this case
      when "101" =>
        s6 <= s6;  -- No change needed for this case
      when "110" =>
        s7 <= s7;  -- No change needed for this case
      when "111" =>
        s8 <= s8;  -- No change needed for this case
    end case;

    -- Assign the selected signal to the output port after the case statement
    No <= s1 when Cnt = "000" else
           s2 when Cnt = "001" else
           s3 when Cnt = "010" else
           s4 when Cnt = "011" else
           s5 when Cnt = "100" else
           s6 when Cnt = "101" else
           s7 when Cnt = "110" else
           s8;
  end process;
end architecture;