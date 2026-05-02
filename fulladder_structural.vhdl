library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

---------------------------------------------------
-- 1. THE LOGIC (The Half Adder Entity & Architecture)
---------------------------------------------------
entity half_adder is
    Port ( A     : in  STD_LOGIC;
           B     : in  STD_LOGIC;
           Sum   : out STD_LOGIC;
           Carry : out STD_LOGIC);
end half_adder;

architecture Dataflow of half_adder is
begin
    Sum   <= A xor B;
    Carry <= A and B;
end Dataflow;
    
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity or_df is 
    port(a : in std_logic;
         b : in std_logic;
         c : out std_logic);
end or_df;

architecture dataflow of or_df is
begin
    c <= a or b;
end dataflow;
    
   library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
entity full_adder is
    Port(a:in std_logic;
         b:in std_logic;
         cin:in std_logic;
         sum:out std_logic;
         cout:out std_logic);
    
    end full_adder;
    
architecture structural of full_adder is
    component half_adder is
    port(a:in std_logic;
        b:in std_logic;
        sum:out std_logic;
        carry:out std_logic);
    end component;
    
    component or_df is 
    port(a:in std_logic;
        b:in std_logic;
        c:out std_logic);
    end component;
    
    signal s1,s2,s3:std_logic;
    
    begin
        lab1:half_adder port map(a=>a,b=>b,sum=>s1,carry=>s2);
		lab2:half_adder port map(a=>s1,b=>cin,sum=>sum,carry=>s3);
		lab3:or_df port map(a=>s3,b=>s2,c=>cout);

	end structural;
        