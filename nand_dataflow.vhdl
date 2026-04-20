library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_df is
    Port ( A :in STD_LOGIC;
          B :in STD_LOGIC;
          C :out STD_LOGIC);
end nand_df;

architecture dataflow of or_if_else is
begin
    c<= a nand b;
end Behavioral;