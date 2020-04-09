-- Laboratorio 7: Diseño de la ALU74381
-- Autor: María Espinosa Astilleros
-- Desarrollo: Componente que representa la funcionalidad de la alu74381

LIBRARY ieee;
USE ieee.std_logic_1164.all; 
USE ieee.std_logic_unsigned.all; 

ENTITY alu IS 
    PORT(
        A:  IN STD_LOGIC_VECTOR(1 TO 4);         -- primer operando
        B:  IN STD_LOGIC_VECTOR(5 TO 8);         -- segundo operando
        Op: IN STD_LOGIC_VECTOR(2 DOWNTO 0);     -- entrada de selección 
        F:  OUT STD_LOGIC_VECTOR(3 DOWNTO 0));   -- salida 
END alu; 

ARCHITECTURE aluFunc OF alu IS 
BEGIN 
    PROCESS(Op, A, B)
    BEGIN 
        CASE Op IS 
            WHEN "000" => F <= "0000";
            WHEN "001" => F <= B - A;
            WHEN "010" => F <= A - B;
            WHEN "011" => F <= A + B;
            WHEN "100" => F <= A XOR B;
            WHEN "101" => F <= A OR B ;
            WHEN "110" => F <= A AND B ;
            WHEN OTHERS => F <= "1111"; 
        END CASE;
    END PROCESS; 
END aluFunc;              