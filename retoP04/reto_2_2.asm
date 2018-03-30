run start
org #8000

.start

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Parte Fija
ld a, #E2     
ld (#c000), a 
ld (#d000), a
ld a, #F1     
ld (#c800), a

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Parte Movil

;; Frame 1
ld hl, #F074     
ld (#c001), hl 
ld (#d001), hl
ld hl, #F0F8     
ld (#c801), hl
ld hl, #F0F0
ld (#c003), hl
ld (#c803), hl
ld (#d003), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;; Frame 2
ld hl, #7400     
ld (#c001), hl 
ld (#d001), hl
ld hl, #F800     
ld (#c801), hl
ld hl, #F0F0
ld (#c003), hl
ld (#c803), hl
ld (#d003), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;; Frame 3
ld hl, #0000     
ld (#c001), hl 
ld (#d001), hl
ld (#c801), hl
ld hl, #F074
ld (#c003), hl
ld (#d003), hl
ld hl, #F0F8
ld (#c803), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt


jp start
