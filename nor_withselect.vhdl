library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_with_select is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out STD_LOGIC);
end nor_with_select;

architecture Behavioral of nor_with_select is	
    signal sel:std_logic_vector(1 downto 0);
    begin
        sel<= a & b;
		with sel select
            c<='1' when "00",
            '0' when "01",
            '0' when "10",
            '0' when "11",
            'Z' when others;

end Behavioral;