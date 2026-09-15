library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Generic (n: integer :=8);
    Port ( A, B : in  STD_LOGIC_VECTOR (n-1 downto 0);
           X1, X2, X3 : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is
  begin

    X1 <= '1' WHEN A > B ELSE '0';
    X2 <= '1' WHEN A = B ELSE '0';
    X3 <= '1' WHEN A < B ELSE '0';

end Behavioral;
