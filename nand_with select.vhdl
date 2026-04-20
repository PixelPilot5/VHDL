library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_nand_with_select is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out STD_LOGIC);
end test_nand_with_select;

architecture Behavioral of test_nand_with_select is
    -- Signal to concatenate inputs a and b into a 2-bit vector
    signal sel : std_logic_vector(1 downto 0);
begin

    -- Concatenation: combining a and b (e.g., if a='1', b='0', sel becomes "10")
    sel <= a & b;

    -- Selected Signal Assignment (Dataflow style)
    with sel select
        c <= '1' when "00",
             '1' when "01",
             '1' when "10",
             '0' when "11",
             'Z' when others;

end Behavioral;