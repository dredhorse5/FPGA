library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;

entity lab4_3 is
port(
sw: in std_logic_vector(3 downto 0);
led: out std_logic_vector(7 downto 0));
end lab4_3;

architecture Behavioral of lab4_3 is
begin
led(7 downto 4) <= sw(3 downto 0);
led(1 downto 0) <= sw(3 downto 2);
led(3 downto 2) <= sw(1 downto 0);
end Behavioral;
