library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_event is
    Port ( clk : in  STD_LOGIC;
           d   : in  STD_LOGIC;
          reset:in std_logic;
           q   : out STD_LOGIC);
end dff_event;

architecture Behavioral of dff_event is
begin
process(clk)
begin
    if(clk'event and clk = '1')then
    	if reset = '1' then
        	q <= '0';
        else
            q<=d;
    	end if;
    end if;
end process;
end Behavioral;