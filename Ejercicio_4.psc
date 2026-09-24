Algoritmo Ejercicio_4
	Dimensionar Matriz[10,10]
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Matriz[contFilas,contColumnas] = '.';
		FinPara
	Fin Para
	Definir filaAleatoria Como Entero
	Definir columAleatoria Como Entero
	Para ContA=1 Hasta 15 Con Paso 1 Hacer
		filaAleatoria= Azar(10) +1;
		columAleatoria= Azar(10) +1;
		Si (Matriz[filaAleatoria,columAleatoria]=='.') Entonces
			Matriz[filaAleatoria,columAleatoria]='A'
		FinSi
	FinPara
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Escribir Sin Saltar Matriz[contFilas,contColumnas], " "
		Fin Para
		Escribir ""
	Fin Para
	contador=0
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer 
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Si Matriz[contFilas,contColumnas] = 'A' Entonces
				contador= contador + 1
			FinSi
		FinPara
	FinPara
	
	 Escribir "Hay " contador "letras A."
FinAlgoritmo
