----------------------------------------------------------------------------------
-- 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Segmentos is
    Port ( entrada : in  STD_LOGIC_VECTOR (4 downto 0);
           segmen : out  STD_LOGIC_VECTOR (7 downto 0);
           selector : out  STD_LOGIC_VECTOR (3 downto 0));
end Segmentos;

architecture Behavioral of Segmentos is

--****************************************************************************************

  function Deco(entra: STD_LOGIC_VECTOR(4 downto 0))
  return STD_LOGIC_VECTOR is
   variable salida: std_logic_vector(7 downto 0);
  
    begin
    
        case entra is
            
            when "00000" => salida := x"C0";  --0
            when "00001" => salida := x"F9";  --1
            when "00010" => salida := x"A4";  --2
            when "00011" => salida := x"B0";  --3
            when "00100" => salida := x"99";  --4
            when "00101" => salida := x"92";  --5
            when "00110" => salida := x"82";  --6
            when "00111" => salida := x"F8";  --7
            when "01000" => salida := x"80";  --8
            when "01001" => salida := x"98";  --9
            when "01010" => salida := x"88";  --A
            when "01011" => salida := x"83";  --B
            when "01100" => salida := x"C6";  --C
            when "01101" => salida := x"A1";  --D
            when "01110" => salida := x"86";  --E
            when "01111" => salida := x"8E";  --F
        
               when others => salida := x"FF";
        
        end case;
  
  return salida;
          
  end Deco;  
--************************************************************************************************
begin

  segmen  <= Deco(entrada);
  selector <= x"B";

end Behavioral;