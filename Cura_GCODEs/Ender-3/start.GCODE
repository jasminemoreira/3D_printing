;**** CULTURA MAKER - JASMINE MOREIRA ****

;**** SETUP INICIAL ****
M201 X500.00 Y500.00 Z100.00 E5000.00 	;ajuste de aceleração máxima 
M203 X500.00 Y500.00 Z10.00 E50.00 		;ajuste de feedrate máximo
M204 P500.00 R1000.00 T500.00 			;ajuste de aceleração de Impressão/Retração/Percurso 
M205 X8.00 Y8.00 Z0.40 E5.00 			;ajuste do jerk
M220 S100 								;reinicia Feedrate
M221 S100 								;reinicia Flowrate
;**** FIM ****

;**** AQUECIMENTO ****
M140 S{material_bed_temperature} 		;inicia o aquecimento da mesa com o valor do ajustado no Cura
M104 S{material_print_temperature} ?T0 	;inicia o aquecimento do hotend com o valor do ajustado no Cura
G28 									;executa o auto-home durante o aquecimento para ganhar tempo
M190 S{material_bed_temperature} 		;aguarda a mesa atingir a temperatura ajustada
M109 S{material_print_temperature} ?T0 	;aguarda o hotend atingir a temperatura ajustada
;**** FIM ****

;**** ALARME SONORO ****
M300 S262 P300 							;emite um Dó,Ré,Mi de um segundo para indicar o início
M300 S294 P300							;* não funciona em placas com buzzer de tom fixo
M300 S330 P400
;**** FIM ****

;**** LINHAS DE PURGA ****
G92 E0 									;reinicia o marcador de posição da extrusora
G1 Z2.0 F3000 							;sobe 2mm no eixo Z, com velocidade de 3000mm/min ou 50mm/s
G1 X10.1 Y20 Z0.20 F5000.0 				;move o hotend para a posição de início de impressão das linhas de purga
G1 X10.1 Y200.0 Z0.20 F1500.0 E15 		;extruda a primeira linha de purga
G1 X10.4 Y200.0 Z0.20 F5000.0 			;move o hotend um um pouco para a direita
G1 X10.4 Y20 Z0.28 F1500.0 E30 			;extruda a segunda linha de purga
;**** FIM ****

;**** PREPARAÇÃO PARA IMPRESSÃO ****
G92 E0 									;reinicia o marcador de posição da extrusora
G1 Z2.0 F3000 							;sobe 2mm no eixo Z, com velocidade de 3000mm/min ou 50mm/s
;**** FIM ****