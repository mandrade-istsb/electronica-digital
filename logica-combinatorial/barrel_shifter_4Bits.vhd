library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifther_4 is
  Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
        S : in  STD_LOGIC_VECTOR (2 downto 0);
        Y : out  STD_LOGIC_VECTOR (3 downto 0));
  end shifther_4;

architecture Behavioral of shifther_4 is
  begin
    PROCESS(D,S) 
      BEGIN

        CASE S IS
          WHEN "000"=> Y <= D;
          WHEN "001"=> Y <= '0' & D(3 DOWNTO 1); 
          WHEN "010"=> Y <= D(2 DOWNTO 0) & '0'; 
          WHEN "011"=> Y <= D(0) & D(3 DOWNTO 1); 
          WHEN "100"=> Y <= D(2 DOWNTO 0) & D(3); 
          WHEN "101"=> Y <= D(3) & D(3 DOWNTO 1);
          WHEN "110"=> Y <= D(1 DOWNTO 0) & D(3 DOWNTO 2); 
          WHEN "111"=> Y<= D;
          WHEN OTHERS => Y <= D; END CASE;
      END PROCESS;
end Behavioral;
