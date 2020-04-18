-- Laboratorio 7: Diseño de la ALU74381
-- Autor: María Espinosa Astilleros
-- Desarrollo: Realizar el diseño del circuito digital para la ALU74381

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab7 IS 
    PORT(
        DIP_SW: IN STD_LOGIC_VECTOR(1 TO 8);   -- dip switches externos
        SW: IN STD_LOGIC_VECTOR(2 DOWNTO 0);   -- dip siwtches DE0-nano
        KEY_EX: IN STD_LOGIC_VECTOR(0 TO 1);   -- pulsadores
        LED: OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- leds
        DISP: OUT STD_LOGIC_VECTOR(1 TO 7);    -- display 7 segmentos 
        R: OUT STD_LOGIC); 
END lab7; 


ARCHITECTURE funcLab7 OF lab7 IS  
SIGNAL l : STD_LOGIC_VECTOR(3 DOWNTO 0); 
-- componente de la alu
COMPONENT alu 
    PORT(
        A:  IN STD_LOGIC_VECTOR(1 TO 4);        
        B:  IN STD_LOGIC_VECTOR(5 TO 8);         
        s:  IN STD_LOGIC_VECTOR(2 DOWNTO 0);     
        F:  OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT; 

--componente del display de 7 segmentos
COMPONENT disp_seg7  
    PORT(
        result :  IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        display : OUT STD_LOGIC_VECTOR(1 TO 7));
END COMPONENT;


BEGIN
    
    a : alu port map(
        A => DIP_SW(1 TO 4), B => DIP_SW(5 TO 8), s => SW(2 DOWNTO 0), F => l
    ); 

    d : disp_seg7 port map(
        result => l , display => DISP(1 TO 7)
    );

    PROCESS(s, A, B, F)
        BEGIN 
            CASE KEY_EX (0 TO 1) IS 
                WHEN "00" => R <= F;
                WHEN "01" => R <= B;
                WHEN "10" => R <= A;
                WHEN OTHERS => R <= s; 
            END CASE; 
    END PROCESS; 
END funcLab7;