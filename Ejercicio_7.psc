Algoritmo Ejercicio_7
	Definir hotel Como Entero
	Definir i, j Como Entero
	Definir ocupadas, contadorGlobal Como Entero
	Dimension hotel[6,5]
	contadorGlobal <- 0
	// Inicializar todas las habitaciones como libres (0)
	Para i <- 1 Hasta 6 Hacer
		Para j <- 1 Hasta 5 Hacer
			hotel[i,j] <- 0
		FinPara
	FinPara
	// Ocupar 12 habitaciones aleatoriamente sin repetir
	Mientras contadorGlobal < 12 Hacer
		i <- Aleatorio(1,6)
		j <- Aleatorio(1,5)
		Si hotel[i,j] = 0 Entonces
			hotel[i,j] <- 1
			contadorGlobal <- contadorGlobal + 1
		FinSi
	FinMientras
	// Mostrar habitaciones ocupadas por cada planta
	Para i <- 1 Hasta 6 Hacer
		ocupadas <- 0
		Para j <- 1 Hasta 5 Hacer
			Si hotel[i,j] = 1 Entonces
				ocupadas <- ocupadas + 1
			FinSi
		FinPara
		Escribir "Planta ", i, ": ", ocupadas, " habitaciones ocupadas"
	FinPara
	Escribir ""
	Escribir "Total de habitaciones ocupadas son : ", contadorGlobal
FinAlgoritmo