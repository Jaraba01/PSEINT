Algoritmo Ejercicio_5
	Definir matriz Como Caracter
	Definir i, j, fila, columna, contador Como Entero
	Dimension matriz[10,10]
	// Inicializar toda la matriz con "*"
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			matriz[i,j] <- "*"
		FinPara
	FinPara
	// Insertar 10 H sin repetir posiciones
	contador <- 0
	Mientras contador < 10 Hacer
		fila <- Aleatorio(1,10)
		columna <- Aleatorio(1,10)
		
		Si matriz[fila,columna] = "*" Entonces
			matriz[fila,columna] <- "H"
			contador <- contador + 1
		FinSi
	FinMientras
	// Mostrar la matriz
	Escribir "MATRIZ:"
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
	// Buscar y mostrar las coordenadas de cada H
	Escribir ""
	Escribir "COORDENADAS DE LOS HOMER:"
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			Si matriz[i,j] = "H" Entonces
				Escribir "Homer: fila ", i, ", columna ", j
			FinSi
		FinPara
	FinPara
FinAlgoritmo