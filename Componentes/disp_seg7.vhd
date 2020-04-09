-- Laboratorio 7: Diseño de la ALU74381
-- Autor: María Espinosa Astilleros
-- Desarrollo: Componente que representa la funcionalidad del display de 7 segmentos

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY disp_seg7 IS 
    PORT (
        result :  IN STD_LOGIC_VECTOR(3 DOWNTO 0);   -- resultado de la operacion
        display : OUT STD_LOGIC_VECTOR(1 TO 7)); -- display de 7 segmentos
END disp_seg7;

ARCHITECTURE dispFunc OF disp_seg7 IS 
BEGIN 
    PROCESS(result)
    BEGIN
        CASE result is
            WHEN "0000" => display <= "0000000"; -- 0
            WHEN "0001" => display <= "0110000"; -- 1
            WHEN "0010" => display <= "1101101"; -- 2
            WHEN "0011" => display <= "1111001"; -- 3
            WHEN "0100" => display <= "0110011"; -- 4
            WHEN "0101" => display <= "1011011"; -- 5
            WHEN "0110" => display <= "1011111"; -- 6
            WHEN "0111" => display <= "1110000"; -- 7
            WHEN "1000" => display <= "1111111"; -- 8
            WHEN "1001" => display <= "1111011"; -- 9
            WHEN "1010" => display <= "1110111"; -- A
            WHEN "1011" => display <= "0011111"; -- B
            WHEN "1100" => display <= "1001110"; -- C
            WHEN "1101" => display <= "0111101"; -- D
            WHEN "1110" => display <= "1001111"; -- E
            WHEN OTHERS => display <= "1000111"; -- F
        END CASE;
    END PROCESS;
END dispFunc;