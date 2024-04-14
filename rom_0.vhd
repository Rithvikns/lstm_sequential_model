library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom_0 is
    Port ( addr : in STD_LOGIC_vector(9 downto 0);
           data : out STD_LOGIC_vector(7 downto 0)
);
end rom_0;

architecture Behavioral of rom_0 is

    type rom_type is array (0 to 783) of std_logic_vector(7 downto 0);
    constant rom : rom_type := ( 
"00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000010","00000010","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000010","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000010","00000011","00000011","00000011","00000011","00000010","00000010","00000010","00000010","00000010","00000010","00000010","00000010","00000010","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000001","00000001","00000000","00000001","00000001","00000000","00000001","00000010","00000001","00000001","00000000","00000000","00000001","00000001","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000001","00000010","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000000","00000001","00000001","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000001","00000010","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000001","00000000","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","00000000","00000000","00000001","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","10000001","10000001","10000001","10000001","00000000","00000000","10000001","00000000","00000000","00000001","00000001","00000001","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000001","10000001","10000010","10000001","00000000","10000001","00000000","10000001","00000000","00000001","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000001","00000001","00000001","00000000","00000001","00000000","10000001","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","10000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000001","00000001","00000001","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000001","00000000","10000010","10000001","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","00000000","00000000","10000001","10000001","00000000","00000001","00000000","00000000","00000000","10000001","00000000","10000001","10000001","10000001","10000001","10000001","10000001","10000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","00000000","00000000","00000000","10000001","10000001","00000000","10000001","00000000","00000000","00000000","00000000","00000000","00000000","10000001","10000001","10000001","10000001","00000000","00000000","10000001","00000000","00000000","00000000","00000000","10000001","10000001","10000001","10000001","10000001","10000001","10000001","10000010","10000001","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000001","00000001","00000000","00000001","00000000","00000001","00000001","00000001","00000001","00000011","00000001","00000010","00000011","00000010","00000001","00000001","00000000","10000001","00000000","00000001","00000000","00000000","00000000","00000000");
begin
data <= rom(conv_integer(addr));
end Behavioral;
