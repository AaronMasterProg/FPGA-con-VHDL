library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Holamundo123 is
    Port( 
    A: in STD_LOGIC;
    B: in STD_LOGIC;
    SOR: out STD_LOGIC;
    SXOR: out STD_LOGIC;
    SAND: out STD_LOGIC);
end Holamundo123;

architecture Behavioral of          Holamundo123 is begin
     SOR <= A OR B;
     SXOR <= A XOR B;
     SAND <= A AND B; 
end Behavioral;