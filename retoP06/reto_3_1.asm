
run start
org #8000

.start
          
ld hl, #C0A2    ; linea 1
ld (hl), #FF
ld hl, #C0A3
ld (hl), #FF

ld hl, #C8A2    ; linea 2
ld (hl), #F0
ld hl, #C8A3
ld (hl), #F0

ld hl, #D0A2    ; linea 3
ld (hl), #08
ld hl, #D0A4
ld (hl), #00

ld hl, #D8A2    ; linea 4
ld (hl), #04
ld hl, #D8A3
ld (hl), #01

ld hl, #E0A2    ; linea 5
ld (hl), #02
ld hl, #E0A3
ld (hl), #02

ld hl, #E8A2    ; linea 6
ld (hl), #01
ld hl, #E8A3
ld (hl), #04

ld hl, #F0A2    ; linea 7
ld (hl), #F0
ld hl, #F0A3
ld (hl), #78

.finish
jr finish