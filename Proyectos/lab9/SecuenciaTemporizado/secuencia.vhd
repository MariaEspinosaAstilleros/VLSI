-- Laboratorio 9: Generador de secuencia temporizado
-- Autor: María Espinosa Astilleros
-- Desarrollo: Circuito que genera una secuencia de 8 valores (4 bits cada uno) que se repetirá indefinidamente. 
--             Las cifras serán generadas en orden desde la posición izquierda hacia la derecha. El sistema se completará con una señal de reset activa a nivel bajo
--             y una señal de habilitación activa a nivel alto
	
	LIBRARY ieee;
	USE ieee.std_logic_1164.all;
	
	ENTITY secuencia IS
	    PORT (clk, resetn : IN STD_LOGIC;               -- reloj y reset asincrono a nivel bajo 
	        en: IN STD_LOGIC;                           -- señal de habilitación 
	        z : OUT STD_LOGIC_VECTOR(0 TO 3));          -- salida de la secuencia
	END ENTITY;
	
	ARCHITECTURE lab9 OF secuencia IS
	    -- Se contruye un tipo enumerado para identificar los estados del FSM
	    TYPE estado_Type IS (st1, st2, st3, st4, st5, st6, st7, st8);
	    SIGNAL estado : estado_Type; -- Registro para almacenar el estado
	
	BEGIN
	    PROCESS (clk, resetn)
	    BEGIN
	        IF resetn = '0' THEN 
	            estado <= st1; -- Iniciamos otra vez el contador a su estado inicial
	        ELSIF (clk'EVENT AND clk = '1') THEN
	            -- El siguiente estado se determina dependiendo del estado actual y la señal de habilitacion
	            CASE estado IS
	                WHEN st1=>
	                    IF en = '1' THEN
	                        estado <= st2;
	                    ELSE
	                        estado <= st1;
                        END IF;
                    WHEN st2=>
	                    IF en = '1' THEN
	                        estado <= st3;
	                    ELSE
	                        estado <= st2;
                        END IF;
                    WHEN st3=>
	                    IF en = '1' THEN
	                        estado <= st4;
	                    ELSE
	                        estado <= st3;
                        END IF;
                    WHEN st4=>
	                    IF en = '1' THEN
	                        estado <= st5;
	                    ELSE
	                        estado <= st4;
                        END IF;
                    WHEN st5=>
	                    IF en = '1' THEN
	                        estado <= st6;
	                    ELSE
	                        estado <= st5;
                        END IF;
                    WHEN st6=>
	                    IF en = '1' THEN
	                        estado <= st7;
	                    ELSE
	                        estado <= st6;
                        END IF;
                    WHEN st7=>
	                    IF en = '1' THEN
	                        estado <= st8;
	                    ELSE
	                        estado <= st7;
                        END IF;
                    WHEN st8=>
	                    IF en = '1' THEN
	                        estado <= st1;
	                    ELSE
	                        estado <= st8;
	                    END IF;
	            END CASE;
	        END IF;
	    END PROCESS;
		
	    -- Dependiendo del estado se mostrará la salida 
	    PROCESS (estado)
	    BEGIN
	        CASE estado IS
	            WHEN st1 =>
                    z <= "0001";
                WHEN st2 =>
                    z <= "0101";
                WHEN st3 =>
                    z <= "0100";
                WHEN st4 =>
                    z <= "0011";
                WHEN st5 =>
                    z <= "0011";
                WHEN st6 =>
                    z <= "0010";
                WHEN st7 =>
                    z <= "0001";
                WHEN st8 =>
	                z <= "0110";
	        END CASE;
	    END PROCESS;
END lab9;