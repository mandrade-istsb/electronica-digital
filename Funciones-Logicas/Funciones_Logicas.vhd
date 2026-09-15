library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Funciones_Logicas is
    Port (
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        Y_and : out STD_LOGIC;
        Y_or : out STD_LOGIC;
        Y_not : out STD_LOGIC;
        Y_nand : out STD_LOGIC;
        Y_nor : out STD_LOGIC;
        Y_xor : out STD_LOGIC;
        Y_xnor : out STD_LOGIC;
        Y_buf : out STD_LOGIC
    );
end Funciones_Logicas;

architecture Behavioral of Funciones_Logicas is
begin
    Y_and <= A AND B;
    Y_or <= A OR B;
    Y_not <= NOT A;
    Y_nand <= NOT (A AND B);
    Y_nor <= NOT (A OR B);
    Y_xor <= A XOR B;
    Y_xnor <= A XNOR B;
    Y_buf <= A;
end Behavioral;
