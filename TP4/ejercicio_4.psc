// EJERCICIO 4:
// Dada una lista de N valores enteros calcular y mostrar el factorial de cada uno de ellos mediante un función para tal fin.


// =============================== FUNCIONES ===================================

Funcion fact <- Factorial (num)
	Definir fact Como Entero
	fact <- 1
	Para i <- num Hasta 1 Con Paso (-1) Hacer
		fact <- fact * i
	FinPara
FinFuncion

Funcion fact <- FactorialRecursivo (num)
	Definir fact Como Entero
	Si num = 1 | num = 0 Entonces
		fact <- 1
	SiNo
		fact <- num * FactorialRecursivo(num-1);
	FinSi
FinFuncion


// ============================ PROGRAMA PRINCIPAL ================================

Algoritmo Principal
	Definir N, i, X Como Entero
	Escribir "Ingrese la cantidad de numeros: "; Leer N;
	Para i <- 1 Hasta N Con Paso 1 Hacer
		Escribir "------------------------------------"
		Escribir "Ingrese numero: "; Leer X;
		Escribir "FACTORIAL: ", X, "! = ", Factorial(X);
		Escribir "FACTORIAL: ", X, "! = ", FactorialRecursivo(X), " (Recursivo)";
	FinPara
FinAlgoritmo
