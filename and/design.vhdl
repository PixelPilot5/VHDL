library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_beh is
    Port ( A :in STD_LOGIC;
          B :in STD_LOGIC;
          C :out STD_LOGIC);
end and_beh;

architecture Behavioral of and_beh is
begin
    process(a,b)
    begin
    	C <= A and B;
    end process;
end Behavioral;