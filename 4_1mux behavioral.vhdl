library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

architecture Behavioral of test_mux41 is
    signal sel : std_logic_vector(1 downto 0);
begin
    -- Combine s1 and s0 into a single 2-bit vector for easier comparison
    sel <= s1 & s0;

    process(a, b, c, d, sel)
    begin
        case sel is
            when "00" => y <= a;
            when "01" => y <= b;
            when "10" => y <= c;
            when "11" => y <= d;
            when others => y <= 'Z';
        end case;
    end process;
end Behavioral;