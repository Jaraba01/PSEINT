Proceso Ejercicio_10
	Definir parque Como Caracter
	Definir i, j, fila, columna, tipo Como Entero
	Definir contA, contR, contB Como Entero
	Dimension parque[10,10]
	// Inicializar la matriz
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			parque[i,j] <- "."
		FinPara
	FinPara
	// Inicializar contadores
	contA <- 0
	contR <- 0
	contB <- 0
	// Colocar 10 atracciones (A)
	Para i <- 1 Hasta 10 Hacer
		Repetir
			fila <- Aleatorio(1,10)
			columna <- Aleatorio(1,10)
		Hasta Que parque[fila,columna] = "."
		
		parque[fila,columna] <- "A"
		contA <- contA + 1
	FinPara
	// Colocar 5 restaurantes (R)
	Para i <- 1 Hasta 5 Hacer
		Repetir
			fila <- Aleatorio(1,10)
			columna <- Aleatorio(1,10)
		Hasta Que parque[fila,columna] = "."
		
		parque[fila,columna] <- "R"
		contR <- contR + 1
	FinPara
	// Colocar 3 baños (B)
	Para i <- 1 Hasta 3 Hacer
		Repetir
			fila <- Aleatorio(1,10)
			columna <- Aleatorio(1,10)
		Hasta Que parque[fila,columna] = "."
		
		parque[fila,columna] <- "B"
		contB <- contB + 1
	FinPara
	// Mostrar el parque
	Escribir "===== PARQUE DE ATRACCIONES ====="
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			Escribir Sin Saltar parque[i,j], " "
		FinPara
		Escribir ""
	FinPara
	// Mostrar cantidades
	Escribir ""
	Escribir "Atracciones (A): ", contA
	Escribir "Restaurantes (R): ", contR
	Escribir "Baños (B): ", contB
	// Analizar una fila
	Escribir ""
	Escribir "Introduce una fila para analizar (1-10): "
	Leer fila
	Mientras fila < 1 O fila > 10 Hacer
		Escribir "Fila no válida. Introduce una fila entre 1 y 10:"
		Leer fila
	FinMientras
	contA <- 0
	contR <- 0
	contB <- 0
	Para j <- 1 Hasta 10 Hacer
		Si parque[fila,j] = "A" Entonces
			contA <- contA + 1
		SiNo
			Si parque[fila,j] = "R" Entonces
				contR <- contR + 1
			SiNo
				Si parque[fila,j] = "B" Entonces
					contB <- contB + 1
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "En la fila ", fila, ":"
	Escribir "Atracciones: ", contA
	Escribir "Restaurantes: ", contR
	Escribir "Baños: ", contB
	// Consultar una coordenada
	Escribir ""
	Escribir "Introduce una fila (1-10): "
	Leer fila
	Escribir "Introduce una columna (1-10): "
	Leer columna
	Mientras fila < 1 O fila > 10 O columna < 1 O columna > 10 Hacer
		Escribir "Coordenada no válida."
		Escribir "Introduce fila (1-10): "
		Leer fila
		Escribir "Introduce columna (1-10): "
		Leer columna
	FinMientras
	Escribir "En la coordenada [", fila, ",", columna, "] hay: ", parque[fila,columna]
FinProceso