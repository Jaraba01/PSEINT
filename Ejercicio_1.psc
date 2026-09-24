Algoritmo  Ejercicio_1	
	Dimensionar Matriz[8,8]
	Para contFilas=1 Hasta 8 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
			Matriz[contFilas,contColumnas] = '.';
		FinPara
	Fin Para
	Definir filaAleatoria Como Entero
	Definir columAleatoria Como Entero
	Para ContT=1 Hasta 1 Con Paso 1 Hacer
		filaAleatoria= Azar(8) +1;
		columAleatoria= Azar(8) +1;
		Si (Matriz[filaAleatoria,columAleatoria]=='.') Entonces
			Matriz[filaAleatoria,columAleatoria]='T'
		FinSi
	FinPara
	Para contFilas=1 Hasta 8 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
			Escribir Sin Saltar Matriz[contFilas,contColumnas], " "
		Fin Para
		Escribir ""
	Fin Para
FinAlgoritmo