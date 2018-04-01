
run start
org #8000

.start
          
ld b, #14       ;; FOR b=20 TO 1
.repet 		;; Parpadea 20 veces

ld hl, #c000	;; Apuntamos a la pantalla

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Empezamos pintando 4 pixeles en "Fondo"
ld (hl), #00

ld c, #1D       ;; FOR c=30 
.wait_1         ;;  Esperamos 30 interrupciones del CRT
halt            ;;  que equivale a  100 milisegundos
dec c
jr nz, wait_1   ;; NEXT c

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ahora 4 pixeles en "Rojo"
ld (hl), #FF

ld c, #1D       ;; FOR c=30 
.wait_2         ;;  Esperamos 30 interrupciones del CRT
halt            ;;  que equivale a  100 milisegundos
dec c
jr nz, wait_2   ;; NEXT c

dec b
jr nz, repet    ;; NEXT b

.finish
jr finish