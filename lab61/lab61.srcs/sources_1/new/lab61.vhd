library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
entity lab61 is
    Port ( clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR (7 downto 0));
end lab61;

architecture Behavioral of lab61 is
    signal cntr : std_logic_vector(29 downto 0);
    signal one : std_logic_vector(29 downto 0) := "000000000000000000000000000001";
    signal zero : std_logic_vector(29 downto 0) := "000000000000000000000000000000";
begin

process (clk)

begin
    if rising_edge(clk) then
        if srst = '1' then
            cntr <= zero;
        else
        cntr <= unsigned(cntr) + unsigned(one);
        end if;
    end if;
end process;
    led <= cntr(29 downto 22); 
end Behavioral;
