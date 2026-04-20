library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_if_else is
    Port ( A :in STD_LOGIC;
          B :in STD_LOGIC;
          C :out STD_LOGIC);
end or_if_else;

architecture Behavioral of or_if_else is
begin
    process(a,b)
    begin
        
        c<='0' when a='0' and b='0' else
            '1' when a='0' and b='1' else
              '1' when a='1' and b='0' else
                 '1' when a='1' and b='1' else
                     'z';
    end process;
end Behavioral;