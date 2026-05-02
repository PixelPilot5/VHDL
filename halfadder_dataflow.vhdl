library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity defines the IO ports
entity half_adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
end half_adder;

-- Architecture defines the behavior
architecture Behavioral of half_adder is
begin
    -- Process block monitors changes in A or B
    process(A, B)
    begin
        Sum <= A xor B;    -- Logic for Sum
        Carry <= A and B;  -- Logic for Carry
    end process;
end Behavioral;