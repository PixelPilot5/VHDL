library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_mux21 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : in  STD_LOGIC;
           y : out STD_LOGIC);
end test_mux21;

architecture Behavioral of test_mux21 is
begin
    -- Behavioral models use a process block for sequential logic
    process(a, b, s)
    begin
        if (s = '0') then
            y <= a;
        else
            y <= b;
        end if;
    end process;
end Behavioral;