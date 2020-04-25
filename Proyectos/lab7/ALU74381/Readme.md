## Laboratorio 7: Diseño de la ALU74381
### Objetivo: 
Realizar el circuito digital para la ALU 74381.
Los operandos A y B (ambos de 4 bits) se introducirán mediante los dip switches externos (A=DIP_SW[1-4] y B=DIP_SW[5-8]).
El código de la operación de la ALU se indicará con los dip switches propios de la DE0-nano (Op=SW[2-0]) y el resultado de la operación se mostrará tanto en los leds de la DE0-nano (F=LED[3-0]) como decodificado en el display de siete segmentos (DISP[1-7]).
Adicionalmente los pulsadores externos (KEY_EX[0-1]) permitirán seleccionar cuál es el resultado mostrado tanto en los leds como en el display.
Así, los resultados mostrados para cada código introducido con dichos pulsadores será:
* 00 -> mostrará el resultado de la operación (F)
* 01 -> mostrará el operando B
* 10 -> mostrará el operando A
* 11 -> mostrará el código de la operación (s)

La simulación de la ALU 74381 sería la siguiente: 
![Texto alternativo](/simulation/simulacion.png)
