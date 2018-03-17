# DEZ80 Nivel 2 Práctica 

## Formato de píxeles en pantalla MODO 1
    2 BITS por pixel distribuidos en 1 bit por NIBBLE
### Pen 0 (AZUL)        ->·
    xxx0 xxx0 = 00
    xx0x xx0x = 00
    x0xx x0xx = 00
    0xxx 0xxx = 00  
### Pen 1 (AMARILLO)    ->X
    xxx0 xxx1 = +01
    xx0x xx1x = +02
    x0xx x1xx = +04
    0xxx 1xxx = +08
### Pen 2 (CYAN)        ->*
    xxx1 xxx0 = +10
    xx1x xx0x = +20
    x1xx x0xx = +40
    1xxx 0xxx = +80
### Pen 3 (ROJO)        ->#
    xxx1 xxx1 = + 11
    xx1x xx1x = + 22
    x1xx x1xx = + 44
    1xxx 1xxx = + 88


## Reto 1.3 - Animar un "sprite"

### Sprite 1
```
C000  · · * *  * * · ·  -  +00 +00 +20 +10   +80 +40 +00 +00  -  30 C0
C800  · * * *  * * * ·  -  +00 +40 +20 +10   +80 +40 +20 +00  -  70 E0
D000  * * X *  * X * *  -  +80 +40 +02 +10   +80 +04 +20 +10  -  D2 B4
D800  * * * *  * * * *  -  +80 +40 +20 +10   +80 +40 +20 +10  -  F0 F0
E000  * * * *  * * * *  -  +80 +40 +20 +10   +80 +40 +20 +10  -  F0 F0  
E800  · * * #  # * * ·  -  +00 +40 +20 +11   +88 +40 +20 +00  -  71 E8
F000  · * * *  * * * ·  -  +00 +40 +20 +10   +80 +40 +20 +00  -  70 E0
```
### Sprite 2
```
E000  * * * *  * * * *  -  +80 +40 +20 +10   +80 +40 +20 +10  -  F0 F0  
E800  · * # #  # # * ·  -  +00 +40 +22 +11   +88 +44 +20 +00  -  73 EC
```
### Sprite 3
```
E000  * * # *  * # * *  -  +80 +40 +22 +10   +80 +44 +20 +10  -  F2 F4  
E800  · * * #  # * * ·  -  +00 +40 +20 +11   +88 +40 +20 +00  -  71 E8
```
### Sprite 4
```
E000  * # * *  * * # *  -  +80 +44 +20 +10   +80 +40 +22 +10  -  F4 F2  
E800  · * # #  # # * ·  -  +00 +40 +20 +11   +88 +40 +20 +00  -  73 EC
```

## RETO 2.1
"Laser" de 4 pixeles, que se mueve de 4 en 4 con un retardo de 3ms  
Se puede usar las instrucciones de 16 bits  
* ld hl, ff00  
* ld (ff00),hl  

Se tienen que utilizar 90 HALT para un tiempo de espera de 0.3sg  
El laser ocupa los 4 pixeles de 1 byte por tanto se pinta en rojo con 88  
Para avanzar al menos 5 fotogramas, pintarlo sucesivamente en C000, C001, C002, C003, C005
