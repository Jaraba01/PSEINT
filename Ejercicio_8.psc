Algoritmo Ejercicio_8
	Definir circuito Como Caracter
	Definir i, j, fila, columna Como Entero
	Dimension circuito[10,10]
	// Inicializar el circuito
	Para i <- 1 Hasta 10 Hacer
		Para j <- 1 Hasta 10 Hacer
			circuito[i,j] <- "."
		FinPara
	FinPara
	// Colocar los 5 coches
	circuito[2,3] <- "C"
	circuito[4,7] <- "C"
	circuito[6,2] <- "C"
	circuito[8,9] <- "C"
	circuito[10,5] <- "C"
	// Pedir fila y columna
	Escribir "Introduce la fila (1-10):"
	Leer fila
	Escribir "Introduce la columna (1-10):"
	Leer columna
	// Validar los límites
	Si fila >= 1 Y fila <= 10 Y columna >= 1 Y columna <= 10 Entonces
		// Comprobar si hay coche
		Si circuito[fila,columna] = "C" Entonces
			Escribir "Hay un coche en esa posición."
		SiNo
			Escribir "La posición está libre."
		FinSi
	SiNo
		Escribir "Coordenadas no válidas."
	FinSi
FinAlgoritmo
