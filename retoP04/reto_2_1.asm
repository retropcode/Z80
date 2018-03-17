run start
org #8000

.start

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Primer fotograma
ld hl, #0000     
ld (#c004), hl
ld hl, #00FF     
ld (#c000), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Segundo fotograma
ld hl, #FF00
ld (#c000), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tercer fotograma
ld hl, #FF00
ld (#c001), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cuarto fotograma
ld hl, #FF00
ld (#c002), hl

halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt
halt: halt: halt: halt: halt: halt: halt: halt: halt: halt

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Quinto fotograma
ld hl, #FF00
ld (#c003), hl

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
