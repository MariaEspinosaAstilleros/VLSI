-- Laboratorio 8.1: Contador con reset asíncrono, enable, carga, valor máximo e indicador fin de cuenta
-- Autor: María Espinosa Astilleros
-- Desarrollo: Añadir al contador una señal (down) que indique el sentido de cuenta para poder hacer una cuenta ascendente o descendiente 

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY contador_bidireccional IS 
    GENERIC(modulo: INTEGER:=16);                -- indica el numero de estados
    PORT(
        clk, resetn, en : IN STD_LOGIC;          -- reloj, reset y señal de habilitación
        ld: IN STD_LOGIC;                        -- señal de carga
        max: IN INTEGER RANGE 0 TO 15;           -- valor máximo del contador
        R: IN INTEGER RANGE 0 TO 15;             -- registro
        down: IN STD_LOGIC;                      -- parametro que indica si el contador es ascendiente o descendiente
        cout: OUT STD_LOGIC;                     -- indicador fin de cuenta 
        Q: OUT INTEGER RANGE 0 TO 15);           -- contador de 4 bits 
END contador_bidireccional; 

ARCHITECTURE lab8 OF contador_bidireccional IS 
    SIGNAL cnt: INTEGER RANGE 0 TO 15;  
    SIGNAL load: STD_LOGIC; 
BEGIN 
    PROCESS(clk, resetn, load, down)                              
    BEGIN 
        IF resetn = '0' THEN    
            cnt <= 0;  
        ELSIF(clk'EVENT AND clk = '1') THEN           -- flanco de subida del reloj 
            IF down = '0' THEN                        -- si down es 0 consideramos que el contador será ascendente
                IF load = '1' THEN 
                    cnt <= 0;                             -- si ha llegado al máximo valor reinicio el contador
                ELSIF en = '0' THEN 
                    cnt <= cnt;                           -- si enable no está activado mantengo el valor del contador                     
                ELSIF ld = '0' AND en = '1' THEN                         
                    cnt <= cnt + 1;                       -- si enable está activo y la señal de carga no está activada se aumenta el valor del contador a 1 
                ELSIF ld = '1' THEN  
                    cnt <= R;                             -- si la señal de carga está activa cargo el valor que contenga R
                END IF;  
            ELSIF down = '1' THEN                     -- si down es 1 consideramos que el contador será descendiente  
                IF load = '1' THEN 
                    cnt <= (modulo-1);                    -- si ha llegado al máximo valor reinicio el contador
                ELSIF en = '0' THEN 
                    cnt <= cnt;                           -- si enable no está activado mantengo el valor del contador                     
                ELSIF ld = '0' AND en = '1' THEN                         
                    cnt <= cnt - 1;                       -- si enable está activo y la señal de carga no está activada se disminuye el valor del contador a 1 
                ELSIF ld = '1' THEN  
                    cnt <= R;                             -- si la señal de carga está activa cargo el valor que contenga R
                END IF;   
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
    Q <= cnt;                                         -- asigno el signal cnt al contador ascendiente                                       
END lab8; 
    