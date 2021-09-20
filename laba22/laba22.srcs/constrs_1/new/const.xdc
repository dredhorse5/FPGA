library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Lab22_1 is
    Port ( din : in STD_LOGIC_VECTOR (7 downto 0);
    dout : out STD_LOGIC_VECTOR (3 downto 0));
end Lab22_1;

architecture Behavioral of Lab22_1 is


begin

with din select dout <=
    "0000" when "00000001",
    "0001" when "00000010",
    "0010" when "00000100",
    "0011" when "00001000",
    "0100" when "00010000",
    "0101" when "00100000",
    "0110" when "01000000",
    "0111" when "10000000",
    "1000" when others;

end Behavioral;