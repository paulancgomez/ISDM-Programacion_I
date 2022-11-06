Algoritmo ejercicio_9_1b
	Definir A, B, indice Como Entero;
	
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
	
	Escribir "Ingrese un valor para K: ";
	Leer K;
	
	Escribir "--------------- CICLO MIENTRAS ----------------";
	indice <- A + 1;
	Mientras (indice < B) Hacer
		Si indice % K = 0 Entonces
			Escribir indice;
		FinSi
		indice <- indice + 1;
	FinMientras
	
	Escribir "--------------- CICLO REPETIR ----------------";
	indice <- A + 1;
	Repetir
		Si indice % K = 0 Entonces
			Escribir indice;
		FinSi
		indice <- indice + 1;
	Hasta Que (indice = B)
	
	Escribir "--------------- CICLO PARA ----------------";
	Para indice<-A+1 Hasta B-1 Con Paso 1 Hacer
		Si indice % K = 0 Entonces
			Escribir indice;
		FinSi
	FinPara
FinAlgoritmo
