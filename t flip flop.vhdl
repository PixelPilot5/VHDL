library ieee;
use ieee.std_logic_1164.all;

entity tff is
    port(clk,reset,t:in std_logic;
        q:out std_logic);
    end tff;
    
architecture behavioral of tff is
    signal s:std_logic;
begin
    process(clk,reset)
    begin
        if(reset='1')then
            s<='0';
        elsif(clk'event and clk='1')then
            if(t='0')then
                s<=s;
            elsif(t='1')then
                s<= not s;
            end if;
		end if;
                end process;
        q<=s;
            
                end behavioral;
            
        
    