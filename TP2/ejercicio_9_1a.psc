// EJERCICIO 9:
//	Resolver el (Ej. 1) utilizando ciclos mientras, repetir y desde-hasta para cada uno de los incisos a),
//	b) y c); procurando obtener los mismos resultados por pantalla.

Algoritmo ejercicio_9_1a
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
	
	Escribir "--------------- CICLO MIENTRAS ----------------";
	indice <- A + 1;
	Mientras (indice < B) Hacer
		Escribir indice;
		indice <- indice + 1;
	FinMientras
	
	Escribir "--------------- CICLO REPETIR ----------------";
	indice <- A + 1;
	Repetir
		Escribir indice;
		indice <- indice + 1;
	Hasta Que (indice = B)
	
	Escribir "--------------- CICLO PARA ----------------";
	Para indice<-A+1 Hasta B-1 Con Paso 1 Hacer
		Escribir indice;
	FinPara
	
FinAlgoritmo
