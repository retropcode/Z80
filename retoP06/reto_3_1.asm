
run start
org #8000

.start
          
ld hl, #C0A2    ; linea 1
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

.finish
jr finish