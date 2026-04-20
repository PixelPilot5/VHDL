library ieee;
use ieee.std_logic_1164.all;

entity tb_and_beh is
end tb_and_beh;

architecture tb of tb_and_beh is

    component and_beh
        port (A : in std_logic;
              B : in std_logic;
              C : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal C : std_logic;

begin

    dut : and_beh
    port map (A => A,
              B => B,
              C => C);

stimuli : process
    begin
        -- Case 1: 0 AND 0 = 0
        A <= '0';
        B <= '0';
        wait for 10 ns;

        -- Case 2: 0 AND 1 = 0
        A <= '0';
        B <= '1';
        wait for 10 ns;

        -- Case 3: 1 AND 0 = 0
        A <= '1';
        B <= '0';
        wait for 10 ns;

        -- Case 4: 1 AND 1 = 1 (This is where the wave jumps up!)
        A <= '1';
        B <= '1';
        wait for 10 ns;

        -- End simulation
        wait; 
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_and_beh of tb_and_beh is
    for tb
    end for;
end cfg_tb_and_beh;