Algoritmo Ejercicio_9
	Definir tablero Como Caracter
	Definir fila, columna Como Entero
	Definir i, disparos, impactos Como Entero
	Definir filaBarco, columnaBarco Como Entero
	Dimension tablero[8,8]
	// Inicializar tablero con agua
	Para fila <- 1 Hasta 8 Hacer
		Para columna <- 1 Hasta 8 Hacer
			tablero[fila,columna] <- "~"
		FinPara
	FinPara
	// Colocar 5 barcos sin repetir posición
	i <- 1
	Mientras i <= 5 Hacer
		filaBarco <- Azar(8) + 1
		columnaBarco <- Azar(8) + 1
		Si tablero[filaBarco,columnaBarco] = "~" Entonces
			tablero[filaBarco,columnaBarco] <- "B"
			i <- i + 1
		FinSi
	FinMientras
	impactos <- 0
	// Realizar 5 disparos
	Para disparos <- 1 Hasta 5 Hacer
		Escribir "Disparo ", disparos, " de 5"
		Escribir "Introduce la fila (1-8): "
		Leer fila
		Escribir "Introduce la columna (1-8): "
		Leer columna
		// Validar coordenadas
		Mientras fila < 1 O fila > 8 O columna < 1 O columna > 8 Hacer
			Escribir "Coordenadas no válidas."
			Escribir "Introduce la fila (1-8): "
			Leer fila
			Escribir "Introduce la columna (1-8): "
			Leer columna
		FinMientras
		// Comprobar disparo
		Si tablero[fila,columna] = "B" Entonces
			Escribir "¡Impacto!"
			tablero[fila,columna] <- "X"
			impactos <- impactos + 1
		SiNo
			Escribir "Agua."
		FinSi
	FinPara
	// Mostrar resultado
	Escribir ""
	Escribir "===== RESULTADO ====="
	Escribir "Impactos conseguidos: ", impactos
	Escribir ""
	// Mostrar tablero
	Para fila <- 1 Hasta 8 Hacer
		Para columna <- 1 Hasta 8 Hacer
			Escribir Sin Saltar tablero[fila,columna], " "
		FinPara
		Escribir ""
	FinPara
	
FinAlgoritmo