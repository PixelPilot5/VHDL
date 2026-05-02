library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port ( A:in std_logic_vector(1 downto 0);
           y: out STD_LOGIC_vector(3 downto 0));
end Decoder;

architecture Behavioral of decoder is
begin
    process(a)
    begin
        case a is
            when "00" =>y<="0001";
            when "01" =>y<="0010";
            when "10" =>y<="0100";
            when "11" =>y<="1000";
    		when others =>y<="0000";
    end case;
        end process;
        
end Behavioral;