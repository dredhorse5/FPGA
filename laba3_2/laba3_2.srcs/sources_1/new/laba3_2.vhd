library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity laba3_2 is
    Port ( din : in STD_LOGIC;
            addr : in STD_LOGIC_VECTOR (1 downto 0);
            dout : out STD_LOGIC_VECTOR (3 downto 0));
end laba3_2;

architecture kl of laba3_2 is

begin
proc: process (din, addr)
begin

dout<= "0000";
if addr="00" then dout(0)<= din;
elsif addr="01" then dout(1)<= din;
elsif addr="10" then dout(2)<= din;
else dout(3)<= din;

end if;
end process;
end kl;
