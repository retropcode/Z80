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

## Reto 3.1 - Pintar un Tile
Pintar un Tile de 4x4 mínimo, utilizando la instrucción 36 - ld (hl),xx 

### Tile
```
C000  # # # #  # # # #  -  +88 +44 +22 +11   +88 +44 +22 +11  -  FF FF
C800  * * * *  * * * *  -  +80 +40 +20 +10   +80 +40 +20 +10  -  F0 F0
D000  x · · ·  · · · ·  -  +08 +00 +00 +00   +00 +00 +00 +00  -  08 00
D800  · x · ·  · · · x  -  +00 +04 +00 +00   +00 +00 +00 +01  -  04 01
E000  · · x ·  · · x ·  -  +00 +00 +02 +00   +00 +00 +02 +00  -  02 02
E800  · · · x  · x · ·  -  +00 +00 +00 +01   +00 +04 +00 +00  -  01 04
F000  * * * *  x * * *  -  +80 +40 +20 +10   +08 +40 +20 +10  -  F0 78
```
## Reto 3.2 - Pintar una línea de Tiles
Repetir un Tile para llenar una línea completa de pantalla. Hay que utilizar repeticiones y el código de dibujo tiene que ser único. Bonus si el código ocupa menos de 30 bytes y otro Bonus si el tile tiene más de 4 pixeles de alto.

## Reto 3.3 - Pintar segunda línea de Cielo
La anterior línea de tiles corresponde al nivel del suelo. Ahora hay que pintar una línea de tiles correspondiente al cielo. Debe de tener 16x4, usar el mismo código anterior. Los pixeles de fondo también hay que pintarlos. Bonus si tiene mas de 4 pixeles de ancho.
```
C000  * * * *  * * * *  -  +80 +40 +20 +10   +80 +40 +20 +10  -  F0 F0
C800  * x * x  * x * x  -  +80 +04 +20 +01   +80 +04 +20 +01  -  A5 A5
D000  x * x *  x * x *  -  +08 +40 +02 +10   +08 +40 +02 +10  -  5A 5A
D800  * x x *  * x x *  -  +80 +04 +02 +10   +80 +04 +02 +10  -  96 96
E000  x x x x  x x x x  -  +08 +04 +02 +01   +08 +04 +02 +01  -  0F 0F
E800  x · x ·  x · x ·  -  +80 +00 +20 +00   +80 +00 +20 +00  -  A0 A0
F000  · x · ·  · x · ·  -  +00 +40 +00 +00   +00 +40 +00 +00  -  40 40
F800  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
C050  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
C850  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
D050  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
D850  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
E050  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
E850  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
F050  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
F850  · · · ·  · · · ·  -  +00 +00 +00 +00   +00 +00 +00 +00  -  00 00
```
