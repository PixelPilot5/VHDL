library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jk_ff_reset is
    Port ( clk   : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           j     : in  STD_LOGIC;
           k     : in  STD_LOGIC;
           q     : out STD_LOGIC;
           q_bar : out STD_LOGIC);
end jk_ff_reset;

architecture Behavioral of jk_ff_reset is
    -- Internal signal to store the state
    signal q_state : std_logic := '0'; 
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q_state <= '0';
        elsif (clk'event and clk = '1') then
            -- JK Logic implementation
            if (j = '0' and k = '0') then
                q_state <= q_state;       -- Hold
            elsif (j = '0' and k = '1') then
                q_state <= '0';           -- Reset to 0
            elsif (j = '1' and k = '0') then
                q_state <= '1';           -- Set to 1
            elsif (j = '1' and k = '1') then
                q_state <= not q_state;   -- Toggle
            end if;
        end if;
    end process;

    -- Output assignments
    q     <= q_state;
    q_bar <= not q_state;
end Behavioral;