-- Laboratorio 7: Diseño de la ALU74381
-- Autor: María Espinosa Astilleros
-- Desarrollo: Realizar el diseño del circuito digital para la ALU74381

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab7 IS 
    PORT(
        DIP_SW: IN STD_LOGIC_VECTOR(1 TO 8);  -- dip switches externos
        SW: IN STD_LOGIC_VECTOR(2 DOWNTO 0);   -- dip siwtches DE0-nano
        KEY_EX: IN STD_LOGIC_VECTOR(0 TO 1);   -- pulsadores
        LED: OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- leds
        DISP: OUT STD_LOGIC_VECTOR(1 TO 7));   -- display 7 segmentos 
END lab7; 


ARCHITECTURE funcLab7 OF lab7 IS 
BEGIN 

END funcLab7;