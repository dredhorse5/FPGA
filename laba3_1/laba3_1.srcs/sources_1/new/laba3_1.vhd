library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity laba3_1 is
    Port ( din : in STD_LOGIC_VECTOR (3 downto 0);
    addr : in STD_LOGIC_VECTOR (1 downto 0);
    dout : out STD_LOGIC);
end laba3_1;

architecture kl of laba3_1 is

begin
proc: process (addr, din)
begin
case addr is
    when "00" => dout <= din(0);
    when "01" => dout <= din(1);
    when "10" => dout <= din(2);
    when "11" => dout <= din(3);
end case;
end process;
end kl;