library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;

entity lab4_1 is
port(
x: in std_logic_vector(1 downto 0);
y: in std_logic_vector(1 downto 0);
z: out std_logic_vector (2 downto 0));
end lab4_1;

architecture Behavioral of lab4_1 is
signal x1: std_logic_vector (2 downto 0):= "0" &x;
signal y1: std_logic_vector (2 downto 0):= "0" &y;
begin
z <= unsigned(x1) + unsigned(y1);
end Behavioral;
