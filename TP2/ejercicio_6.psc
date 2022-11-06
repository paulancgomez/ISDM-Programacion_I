//EJERCICIO 6: Dado un numero entero X, calcular y mostrar su factorial.

Algoritmo ejercicio_6
	Definir X, i, factorial Como Entero;
	
	//INGRESO DE DATOS
	Escribir "Ingrese un numero entero POSITIVO: ";
	Leer X;
	
	//PROCESAMIENTO DE DATOS
	factorial <- 1;
	Para i <- X Hasta 1 Con Paso -1 Hacer
		factorial = factorial * i;
	FinPara
	
	//SALIDA DE RESULTADOS
	Escribir "El factorial de ",X," es: ", factorial;
FinAlgoritmo
