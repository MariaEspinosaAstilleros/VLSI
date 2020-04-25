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
    PROCESS(clk, resetn, load)                              
    BEGIN 
        IF resetn = '0' THEN                           
            cnt <= 0;                                 -- se reinicia el contador     
        ELSIF(clk'EVENT AND clk = '1') THEN           -- flanco de subida del reloj 
            IF load = '1' THEN 
                cnt <= 0;                             -- si ha llegado al máximo valor reinicio el contador
            ELSIF en = '0' THEN 
                cnt <= cnt;                           -- si enable no está activado mantengo el valor del contador                     
            ELSIF ld = '0' AND en = '1' THEN                         
                cnt <= cnt + 1;                       -- si enable está activo y la señal de carga no está activada se aumenta el valor del contador a 1 
            ELSIF ld = '1' THEN  
                cnt <= R;                             -- si la señal de carga está activa cargo el valor que contenga R
            END IF;     
        END IF; 
    END PROCESS; 


    PROCESS(cnt, max)
    BEGIN 
        load <= '0'; 
        IF (cnt = max) THEN                           -- llego al valor máximo 
            load <= '1';                              -- activo el indicador fin de cuenta  
        END IF; 
    END PROCESS; 

    cout <= load;                                     -- asigno el signal load al indicafor fin de cuenta
    Q <= cnt;                                         -- asigno el signal cnt al contador
END lab8; 
    