//Dados dos valores distintos ingresados por pantalla, estableciendo el intervalo comprendido entre ambos, calcular y mostrar:
//	a. Todos los n�meros pertenecientes al intervalo sin considerar los l�mites;
//	b. Todos los n�meros del intervalo m�ltiplos de un K ingresado por el operador;
//	c. Determine la cantidad de n�meros comprendidos en el intervalo.

Algoritmo Ejercicio_1_c
	Definir A, B, indice, cant Como Entero;
	
	Escribir "Ingrese un valor para A: ";
	Leer A;
	Escribir "Ingrese un valor para B: ";
	Leer B;
	
	//INTERCAMBIO DE LIMITES
	Si (A>B) Entonces
		aux <- A	
		A <- B
		B <- aux
	FinSi
	
	cant <- 0;
	
	Para indice<-A+1 Hasta B-1 Con Paso 1 Hacer
		cant = cant + 1;
	FinPara
	
	Escribir "La cantidad de numeros comprendidos en el intervalo (",A,",",B,") es: ", cant;
FinAlgoritmo
