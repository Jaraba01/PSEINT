Algoritmo  Ejercicio_2	
	Dimensionar Matriz[10,10]
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Matriz[contFilas,contColumnas] = '.';
		FinPara
	Fin Para
	Definir filaAleatoria Como Entero
	Definir columAleatoria Como Entero
	Para ContM=1 Hasta 10 Con Paso 1 Hacer
		filaAleatoria= Azar(10) +1;
		columAleatoria= Azar(10) +1;
		Si (Matriz[filaAleatoria,columAleatoria]=='.') Entonces
			Matriz[filaAleatoria,columAleatoria]='M'
		SiNo
			Repetir
				filaAleatoria= Azar(10) +1;
				columAleatoria= Azar(10) +1;
			Hasta Que Matriz[filaAleatoria,columAleatoria]='.';
			Matriz[filaAleatoria,columAleatoria]='M'
		FinSi
	FinPara
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Escribir Sin Saltar Matriz[contFilas,contColumnas], " "
		Fin Para
		Escribir ""
	Fin Para
FinAlgoritmo