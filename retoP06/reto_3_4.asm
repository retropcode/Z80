
run start
org #8000

.start
 

;; Vamos a pintar el Cielo
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


;; Vamos a pintar el Cielo
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

;; Vamos a pintar el Suelo
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

.finish
jr finish