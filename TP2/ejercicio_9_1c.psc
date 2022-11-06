Algoritmo ejercicio_9_1c
	Definir A, B, indice, cont Como Entero;
	
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
	
	Escribir "------------------------- CICLO MIENTRAS -------------------------";
	cont <- 0
	indice <- A + 1;
	Mientras (indice < B) Hacer
		cont = cont + 1;
		indice <- indice + 1;
	FinMientras
	Escribir "La cantidad de numeros comprendidos en el intervalo (",A,",",B,") es: ", cont;
	
	Escribir "------------------------- CICLO REPETIR --------------------------";
	cont <- 0
	indice <- A + 1;
	Repetir
		cont = cont + 1;
		indice <- indice + 1;
	Hasta Que (indice = B)
	Escribir "La cantidad de numeros comprendidos en el intervalo (",A,",",B,") es: ", cont;
	
	Escribir "--------------------------- CICLO PARA ---------------------------";
	cont <- 0
	Para indice<-A+1 Hasta B-1 Con Paso 1 Hacer
		cont = cont + 1;
	FinPara
	Escribir "La cantidad de numeros comprendidos en el intervalo (",A,",",B,") es: ", cont;
FinAlgoritmo
