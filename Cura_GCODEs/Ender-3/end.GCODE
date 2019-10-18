;**** CULTURA MAKER - JASMINE MOREIRA ****

;**** LIMPEZA FINAL DO BICO ****
G91 						;ativa o posicionamento relativo
G1 E-2 F2700 				;retrai 2mm
G1 E-2 Z0.2 F2400 			;retrai mais 2mm e sobre 0.2mm
G1 X5 Y5 F3000 				;tenta limpar o bico na peça
G1 Z10 						;sobe o eixo Z em 10mm
G90 						;ativa o posicionamento absoluto
;**** FIM ****

;**** DESLIGAMENTO GERAL ****
G1 X0 Y{machine_depth} 		;desloca a mesa para frente para liberar a peça impressa
M106 S0 					;desliga a ventoinha de refrigeração
M104 S0 					;desliga o aquecimento do hotend
M140 S0 					;desliga o aquecimento da mesa
M84 X Y E 					;desliga todos os motores, menos o Z para evitar que a mesa desça (Ender-4)
;**** FIM ****

;**** ALERTAS FINAIS ****
M300 S330 P300 				;emite um Mi,Ré,Dó de um segundo para indicar o início
M300 S294 P300				;* não funciona em placas com buzzer de tom fixo
M300 S262 P400
M117 Impressao Finalizada	;mostra uma mensagem final na tela
;**** FIM ****