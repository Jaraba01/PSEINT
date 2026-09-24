Algoritmo Ejercicio_6
	Definir parking Como Caracter
	Definir i, j, ocupadas, libres Como Entero
	Definir fila, columna Como Entero
	Dimension parking[5,8]
	// Inicializar todas las plazas como libres
	Para i <- 1 Hasta 5 Hacer
		Para j <- 1 Hasta 8 Hacer
			parking[i,j] <- "L"
		FinPara
	FinPara
	// Ocupar 15 plazas aleatoriamente sin repetir
	ocupadas <- 0
	Repetir
		fila <- Aleatorio(1,5)
		columna <- Aleatorio(1,8)
		
		Si parking[fila,columna] = "L" Entonces
			parking[fila,columna] <- "O"
			ocupadas <- ocupadas + 1
		FinSi
	Hasta Que ocupadas = 15
	// Contar plazas libres y ocupadas
	libres <- 0
	ocupadas <- 0
	Para i <- 1 Hasta 5 Hacer
		Para j <- 1 Hasta 8 Hacer
			
			Si parking[i,j] = "L" Entonces
				libres <- libres + 1
			SiNo
				ocupadas <- ocupadas + 1
			FinSi
			
		FinPara
	FinPara
	// Mostrar el parking
	Escribir "PARKING:"
	Para i <- 1 Hasta 5 Hacer
		Para j <- 1 Hasta 8 Hacer
			Escribir Sin Saltar parking[i,j], " "
		FinPara
		Escribir ""
	FinPara
	// Mostrar totales
	Escribir ""
	Escribir "Plazas libres: ", libres
	Escribir "Plazas ocupadas: ", ocupadas
FinAlgoritmo