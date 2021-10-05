library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_arith.all;

entity lab4_2 is
port(
SW: in std_logic_vector(3 downto 0);
LED: out std_logic_vector (4 downto 0));
end lab4_2;

architecture Behavioral of lab4_2 is
signal y: std_logic_vector (4 downto 0);
constant c: std_logic_vector(3 downto 0):="0011";
begin

with SW(3) select
y <= ('0' &SW) when '0',
('1' &SW) when others;
LED<= signed(y) + unsigned(c);

end Behavioral;
