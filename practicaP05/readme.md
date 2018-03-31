# DEZ80 Nivel 2 Práctica 

## Formato de píxeles en pantalla MODO 1
    2 BITS por pixel distribuidos en 1 bit por NIBBLE
### Pen 0 (AZUL)        ->·
    xxx0 xxx0 = 00
    xx0x xx0x = 00
    x0xx x0xx = 00
    0xxx 0xxx = 00  
### Pen 1 (CYAN)        ->X
    xxx0 xxx1 = +01
    xx0x xx1x = +02
    x0xx x1xx = +04
    0xxx 1xxx = +08
### Pen 2 (AMARILLO)    ->*
    xxx1 xxx0 = +10
    xx1x xx0x = +20
    x1xx x0xx = +40
    1xxx 0xxx = +80
### Pen 3 (ROJO)        ->#
    xxx1 xxx1 = + 11
    xx1x xx1x = + 22
    x1xx x1xx = + 44
    1xxx 1xxx = + 88

## Practica P05 - Repeticiones
Pintar un indicador de 4 pixeles en rojo, parpadeando y utilizando bucles con las instrucciones DEC y JRNZ