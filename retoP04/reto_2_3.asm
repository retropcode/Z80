run start
org #8000

.start

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Apuntamos a la primera linea

ld hl,#C002

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Primer Frame

ld (hl), #66
ld h, #C8
ld (hl), #F9
ld h, #D0
ld (hl), #F9
ld h, #D8
ld (hl), #66

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Segundo Frame

ld h, #C0
ld (hl), #00
ld h, #C8
ld (hl), #66
ld h, #D0
ld (hl), #F9
ld h, #D8
ld (hl), #F9
ld h, #E0
ld (hl), #66

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Tercer Frame

ld h, #C8
ld (hl), #00
ld h, #D0
ld (hl), #66
ld h, #D8
ld (hl), #F9
ld h, #E0
ld (hl), #F9
ld h, #E8
ld (hl), #66

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Cuarto Frame

ld h, #D0
ld (hl), #00
ld h, #D8
ld (hl), #66
ld h, #E0
ld (hl), #F9
ld h, #E8
ld (hl), #F9
ld h, #F0
ld (hl), #66

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Quinto Frame

ld h, #D8
ld (hl), #00
ld h, #E0
ld (hl), #66
ld h, #E8
ld (hl), #F9
ld h, #F0
ld (hl), #F9
ld h, #F8
ld (hl), #66

halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; REBOTE
;; Pintamos Cuarto Frame

ld h, #D8
ld (hl), #66
ld h, #E0
ld (hl), #F9
ld h, #E8
ld (hl), #F9
ld h, #F0
ld (hl), #66
ld h, #F8
ld (hl), #00

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Tercer Frame

ld h, #D0
ld (hl), #66
ld h, #D8
ld (hl), #F9
ld h, #E0
ld (hl), #F9
ld h, #E8
ld (hl), #66
ld h, #F0
ld (hl), #00

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Segundo Frame

ld h, #C8
ld (hl), #66
ld h, #D0
ld (hl), #F9
ld h, #D8
ld (hl), #F9
ld h, #E0
ld (hl), #66
ld h, #E8
ld (hl), #00

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Pintamos Primer Frame

ld h, #C0
ld (hl), #66
ld h, #C8
ld (hl), #F9
ld h, #D0
ld (hl), #F9
ld h, #D8
ld (hl), #66
ld h, #E0
ld (hl), #00

halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt

jp start