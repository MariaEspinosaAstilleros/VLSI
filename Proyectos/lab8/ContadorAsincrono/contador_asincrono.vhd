-- Laboratorio 8: Contador con reset asíncrono, enable, carga, valor máximo e indicador fin de cuenta
-- Autor: María Espinosa Astilleros
-- Desarrollo: Diseñar un contador creciente de 4 bits (Q) con reset asincrono activo a nivel bajo (resetn), señal de habilitación (en),
--             valor máximo del contador (max) que puede ser inferior a 15, señal de carga activa a nivel alto (ld) que carga el valor 
--             presente en un registro R. El contador incluirá un indicador de fin de cuenta (cout) que se activará cada vez que el 
--             contador alcance el valor de fin de cuenta. 

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY contador_asincrono IS    
    PORT(
        clk, resetn, en : IN STD_LOGIC;      -- reloj, reset y señal de habilitación
        ld: IN STD_LOGIC;                    -- señal de carga
        max: IN INTEGER RANGE 0 TO 15;       -- valor máximo del contador
        R: IN INTEGER RANGE 0 TO 15;         -- registro
        cout: OUT STD_LOGIC;                 -- indicador fin de cuenta
        Q: OUT INTEGER RANGE 0 TO 15);       -- contador de 4 bits
END contador_asincrono; 

ARCHITECTURE lab8 OF contador_asincrono IS 
    SIGNAL cnt: INTEGER RANGE 0 TO 15; 
    SIGNAL load: STD_LOGIC; 
BEGIN 
    PROCESS(clk, resetn, load)                              -- resetn activa el proceso de modo asincrono
    BEGIN 
        IF resetn = '0' THEN                          -- resetn activo a nivel bajo 
            cnt <= 0;                                 -- se reinicia el contador     
        ELSIF(clk'EVENT AND clk = '1') THEN           -- flanco de subida del reloj y enable activado
            IF load = '1' THEN 
                cnt <= 0;  
            ELSIF ld = '1' THEN                          -- carga activa a nivel alto
                cnt <= R;                              -- cargo en el contador el valor que tenga el registro R                     -- activo la señal de habilitacio                        -- aumento a 1 el contado 
            ELSIF en = '1' OR ld = '0' THEN
                cnt <= cnt + 1; 
            ELSE 
                cnt <= cnt;                          -- si el enable es 0 mantengo el valor del contador 
            END IF; 
        END IF; 
    END PROCESS; 

    PROCESS(cnt, max)
    BEGIN 
        load <= '0'; 
        IF (cnt = max) THEN                            -- llego al valor máximo 
            load <= '1';                               -- activo el indicador fin de cuenta  
        END IF; 
    END PROCESS; 

    cout <= load; 
    Q <= cnt;                                          -- asigno el signal cnt al contador
END lab8; 
    