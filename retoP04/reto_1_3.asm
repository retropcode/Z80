
run start
org #8000

.start

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PRIMER FOTOGRAMA
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Primera linea
ld a, #30     
ld hl, #c000
ld (hl), a
ld a, #c0     
ld hl, #c001
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Segunda linea ;;;;;;;;;
ld a, #70     
ld hl, #c800
ld (hl), a
ld a, #e0     
ld hl, #c801
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tercera linea ;;;;;;;;;
ld a, #d2     
ld hl, #d000
ld (hl), a
ld a, #b4     
ld hl, #d001
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cuarta linea
ld a, #f0     
ld hl, #d800
ld (hl), a     
ld hl, #d801
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quinta linea
ld a, #f0
ld hl, #e000
ld (hl), a
ld hl, #e001
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sexta linea
ld a, #71     
ld hl, #e800
ld (hl), a
ld a, #e8     
ld hl, #e801
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Septima linea
ld a, #70     
ld hl, #f000
ld (hl), a
ld a, #e0     
ld hl, #f001
ld (hl), a

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SEGUNDO FOTOGRAMA
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quinta linea
ld a, #f0
ld hl, #e000
ld (hl), a
ld hl, #e001
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sexta linea
ld a, #73     
ld hl, #e800
ld (hl), a
ld a, #ec     
ld hl, #e801
ld (hl), a

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TERCER FOTOGRAMA
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quinta linea
ld a, #f2
ld hl, #e000
ld (hl), a
ld a, #f4
ld hl, #e001
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sexta linea
ld a, #71     
ld hl, #e800
ld (hl), a
ld a, #e8     
ld hl, #e801
ld (hl), a

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CUARTO FOTOGRAMA
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quinta linea
ld a, #f4
ld hl, #e000
ld (hl), a
ld a, #f2
ld hl, #e001
ld (hl), a
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Sexta linea
ld a, #73     
ld hl, #e800
ld (hl), a
ld a, #ec     
ld hl, #e801
ld (hl), a

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

jp start