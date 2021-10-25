library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
entity lab71 is
Port ( clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR (7 downto 0));
end lab71;

architecture Behavioral of lab71 is

signal address : std_logic_vector(3 downto 0) := "0000";
signal re : std_logic := '1';
type MY_ROM is array (0 to 15) of std_logic_vector(7 downto 0);


constant SIG_MY_ROM : MY_ROM := (
0 => "00000000",
1 => "00110000",
2 => "01011001",
3 => "01110101",
4 => "01111111",
5 => "01110101",
6 => "01011001",
7 => "00110000",
8 => "00000000",
9 => "11001111",
10 => "10100110",
11 => "10001010",
12 => "10000001",
13 => "10001010",
14 => "10100110",
15 => "11001111");

begin

process(clk, srst)

begin

if (srst = '1') then
    dout <= "ZZZZZZZZ";
    address <= "0000";
elsif rising_edge(clk) then
    if re = '1' then
        dout <= SIG_MY_ROM(conv_integer(unsigned(address)));
        address <= unsigned(address) + 1;
    else
        dout <= "ZZZZZZZZ";
    end if;
end if;
end process;

end Behavioral;