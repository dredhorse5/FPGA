library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;

entity lab62 is
    Port ( clk : in STD_LOGIC;
        dout : out STD_LOGIC);
end lab62;

architecture Behavioral of lab62 is
    signal cntr : std_logic_vector(26 downto 0) := (others => '0');
    signal one : std_logic_vector(26 downto 0) := "000000000000000000000000001";
    signal zero : std_logic_vector(26 downto 0) := (others => '0');
begin

process (clk)

begin
    if rising_edge(clk) then
        cntr <= unsigned(cntr) + unsigned(one);
    end if;
    end process;
    dout <= cntr(26);
end Behavioral;