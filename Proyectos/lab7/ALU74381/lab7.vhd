-- Laboratorio 7: Diseño de la ALU74381
-- Autor: María Espinosa Astilleros
-- Desarrollo: Realizar el diseño del circuito digital para la ALU74381

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab7 IS 
    PORT(
        DIP_SW: IN STD_LOGIC_VECTOR(1 TO 8);     -- dip switches externos
        SW: IN STD_LOGIC_VECTOR(0 TO 2);         -- dip siwtches DE0-nano
        KEY_EX: IN STD_LOGIC_VECTOR(0 TO 1);     -- pulsadores externos
        LED: OUT STD_LOGIC_VECTOR(0 TO 3);       -- leds
        DISP: OUT STD_LOGIC_VECTOR(1 TO 7));     -- display 7 segmentos  
END lab7; 


ARCHITECTURE funcLab7 OF lab7 IS  
SIGNAL l, rs : STD_LOGIC_VECTOR(0 TO 3);         -- resultados de laoperación que irán asociados a F, result y LEDS 

-- Componente de la alu
COMPONENT alu 
    PORT(
        A:  IN STD_LOGIC_VECTOR(1 TO 4);         -- primer operando   
        B:  IN STD_LOGIC_VECTOR(5 TO 8);         -- segundo operando
        s:  IN STD_LOGIC_VECTOR(0 TO 2);         -- entrada de selección de la operación
        F:  OUT STD_LOGIC_VECTOR(0 TO 3));       -- resultado de la operación
END COMPONENT; 

-- Componente del display de 7 segmentos
COMPONENT disp_seg7  
    PORT(
        result :  IN STD_LOGIC_VECTOR(0 TO 3);   -- resultado de la operación
        display : OUT STD_LOGIC_VECTOR(1 TO 7)); -- display de 7 segmentos
END COMPONENT;


BEGIN
    -- Asignamos las entradas y salidas a los componentes de la alu y del display
    a : alu port map(
        A => DIP_SW(1 TO 4), B => DIP_SW(5 TO 8), s => SW(0 TO 2), F => l
    ); 

    d : disp_seg7 port map(
        result => rs , display => DISP(1 TO 7) 
    );

    -- Los pulsadores externos seleccionan qué resultado se mostrará
    PROCESS(rs, DIP_SW(5 TO 8), DIP_SW(1 TO 4), SW(0 TO 2))
        BEGIN 
            CASE KEY_EX IS 
                WHEN "00" => rs <= l;                   -- muestra el resultado de la operación
                WHEN "01" => rs <= DIP_SW(5 TO 8);      -- muestra el operando B
                WHEN "10" => rs <=  DIP_SW(1 TO 4);     -- muestra el operando A
                WHEN OTHERS => rs <= '0'&SW(0 TO 2);    -- muestra el código de operación
            END CASE; 
    END PROCESS; 

    LED(0 TO 3) <= rs; -- Se muestra el resultado de la operación en los leds
END funcLab7;