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
        if(a='0' and b='0') then
            sum<='0';
        	carry<='0';
        elsif(a='0' and b='1') then
            sum<='1';
        	carry<='0';
        elsif(a='1' and b='0') then
            sum<='1';
        	carry<='0';
        elsif(a='1' and b='1') then
            sum<='0';
        	carry<='1';
		end if;
    end process;
end Behavioral;