library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;

entity lab4_4 is
port(
sw1: in std_logic_vector(1 downto 0);
sw2: in std_logic_vector(1 downto 0);
led: out std_logic_vector(3 downto 0));
end lab4_4;

architecture Behavioral of lab4_4 is
signal y: std_logic_vector (3 downto 0);
begin
y<= unsigned(SW1) * unsigned(SW2);
LED(0)<=y(0); LED(1)<=y(1); LED(2)<=y(2); LED(3)<=y(3);
end Behavioral;
