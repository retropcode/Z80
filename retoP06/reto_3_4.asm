
run start
org #8000

.sprPersonaje
defb #60,#00; line 0
defb #D0,#00; line 1
defb #68,#00; line 2
defb #66,#00; line 3
defb #77,#00; line 4
defb #33,#08; line 5
defb #06,#00; line 6
defb #05,#00; line 7


.sprPersonajeGun
defb #60,#00; line 0
defb #D0,#00; line 1
defb #68,#00; line 2
defb #66,#0C; line 3
defb #77,#00; line 4
defb #22,#00; line 5
defb #06,#00; line 6
defb #05,#00; line 7


.sprPersonajeFire
defb #60,#00; line 0
defb #D0,#00; line 1
defb #68,#08; line 2
defb #CD,#31; line 3
defb #EE,#00; line 4
defb #44,#00; line 5
defb #06,#00; line 6
defb #05,#00; line 7

.start
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vamos a pintar el Cielo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ld a,#28        ; Repetir 40 veces el código
ld hl, #C000    ; linea 1

.RepCielo1

ld h, #C0
ld (hl), #F0    ;C000   
inc l
ld (hl), #F0    ;C001  

ld h, #C8
ld (hl), #A5    ;C801  
dec l
ld (hl), #A5    ;C800   

ld h, #D0
ld (hl), #5A    ;D000   
inc l
ld (hl), #5A    ;D001  

ld h, #D8
ld (hl), #96    ;D801  
dec l
ld (hl), #96    ;D800   

ld h, #E0
ld (hl), #0F    ;E000   
inc l
ld (hl), #0F    ;E001  

ld h, #E8
ld (hl), #A0    ;E801  
dec l
ld (hl), #A0    ;E800   

ld h, #F0
ld (hl), #40    ;F000   
inc l
ld (hl), #40    ;F001  

ld h, #F8
ld (hl), #00    ;F801  
dec l
ld (hl), #00    ;F800   

inc l
inc l

dec a
jr nz, RepCielo1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vamos a pintar el Cielo linea 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ld a,#28        ; Repetir 40 veces el código
ld hl, #C050    ; linea 2

.RepCielo2

ld h, #C0
ld (hl), #00    ;C050   
inc l
ld (hl), #00    ;C051  

ld h, #C8
ld (hl), #00    ;C851  
dec l
ld (hl), #00    ;C850   

ld h, #D0
ld (hl), #00    ;D050   
inc l
ld (hl), #00    ;D051  

ld h, #D8
ld (hl), #00    ;D851  
dec l
ld (hl), #00    ;D850   

ld h, #E0
ld (hl), #00    ;E050   
inc l
ld (hl), #00    ;E051  

ld h, #E8
ld (hl), #00    ;E851  
dec l
ld (hl), #00    ;E850   

ld h, #F0
ld (hl), #00    ;F050   
inc l
ld (hl), #00    ;F051  

ld h, #F8
ld (hl), #00    ;F851  
dec l
ld (hl), #00    ;F850   
inc l
inc l 

dec a
jr nz, RepCielo2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vamos a pintar el Suelo 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ld a,#28        ; Repetir 40 veces el código
ld hl, #C0A0    ; linea 3

.RepSuelo
ld (hl), #FF    ;   1º byte
inc l
ld (hl), #FF    ;   2º byte

ld h, #C8       ; linea 2
ld (hl), #F0    ;   2º byte
dec l
ld (hl), #F0    ;   1º byte

ld h, #D0       ; linea 3
ld (hl), #08    ;   1º byte
inc l
ld (hl), #00    ;   2º byte

ld h, #D8       ; linea 4
ld (hl), #01    ;   2º byte
dec l
ld (hl), #04    ;   1º byte

ld h, #E0       ; linea 5
ld (hl), #02    ;   1º byte
inc l
ld (hl), #02    ;   2º byte

ld h, #E8       ; linea 6
ld (hl), #04    ;   2º byte
dec l
ld (hl), #01    ;   1º byte

ld h, #F0       ; linea 7
ld (hl), #F0    ;   1º byte
inc l
ld (hl), #78    ;   2º byte

ld h, #c0
inc l

dec a
jr nz, RepSuelo

.sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vamos a pintar el Personaje
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ld b,#28        ; LO GUARDAOS PARA REPETIR DISPARO

ld de, sprPersonaje ; Apuntamos al primer byte del sprite

ld hl, #C050    ; Apuntamos a la 1ª posicion de pantalla
ld c, #8        ; Repetir 8 lineas

.Personaje
ld a, (de)      ; Carga byte del sprite en A
ld (hl), a      ; lo escribe en pantalla   
inc l           ; Apuntamos a los siguientes 4 pixeles
inc de          ; Siguiente byte del sprite
ld a, (de)      ; Carga 2º byte del sprite en A
ld (hl), a      ; lo escribe en pantalla
inc de		    ; Siguiente byte del sprite
dec l           ; Volvemos a la primera fila de 4 pixeles
ld a, #8        ; -
add a, h        ;  | Apuntamos a la siguiente linea
ld h, a         ; -
dec c           
jr nz, Personaje

ld a, #20
.pausa1
halt
dec a
jr nz, pausa1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vamos a pintar el Personaje con pistola
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ld de, sprPersonajeGun ; Apuntamos al primer byte del siguiente sprite

ld hl, #C050    ; Apuntamos a la 1ª posicion de pantalla
ld c, #8        ; Repetir 8 lineas

.PersonajeGun
ld a, (de)      ; Carga byte del sprite en A
ld (hl), a      ; lo escribe en pantalla   
inc l           ; Apuntamos a los siguientes 4 pixeles
inc de          ; Siguiente byte del sprite
ld a, (de)      ; Carga 2º byte del sprite en A
ld (hl), a      ; lo escribe en pantalla
inc de		    ; Siguiente byte del sprite
dec l           ; Volvemos a la primera fila de 4 pixeles
ld a, #8        ; -
add a, h        ;  | Apuntamos a la siguiente linea
ld h, a         ; -
dec c           
jr nz, PersonajeGun

ld a, #20
.pausa2
halt
dec a
jr nz, pausa2

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Vamos a pintar el Personaje disparando
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ld de, sprPersonajeFire ; Apuntamos al primer byte del siguiente sprite

ld hl, #C050    ; Apuntamos a la 1ª posicion de pantalla
ld c, #8        ; Repetir 8 lineas

.PersonajeFire
ld a, (de)      ; Carga byte del sprite en A
ld (hl), a      ; lo escribe en pantalla   
inc l           ; Apuntamos a los siguientes 4 pixeles
inc de          ; Siguiente byte del sprite
ld a, (de)      ; Carga 2º byte del sprite en A
ld (hl), a      ; lo escribe en pantalla
inc de		    ; Siguiente byte del sprite
dec l           ; Volvemos a la primera fila de 4 pixeles
ld a, #8        ; -
add a, h        ;  | Apuntamos a la siguiente linea
ld h, a         ; -
dec c           
jr nz, PersonajeFire

ld a, #20
.pausa3
halt
dec a
jr nz, pausa3


.finish
jr sequence