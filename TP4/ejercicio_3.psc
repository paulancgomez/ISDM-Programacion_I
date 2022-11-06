Funcion cantDig <- DescompDigitos (N)
	Definir cpN Como Real
	cpN <- N;
	c <- 0
	Mientras (cpN>0) Hacer
		dig <- N % 10
		c <- c+1
		cpN <- cpN - dig
		cpN <- cpN/10
	FinMientras
	cantDig <- c
FinFuncion

Algoritmo Descomp_Digitos
	Definir X Como Entero
	Escribir "Nro: ";Leer X;
	Mientras (X>0) Hacer
		Escribir "El nro. ",X," contiene ",DescompDigitos(X)," dígitos"
		Escribir "Siguiente Nro: ";Leer X;
	FinMientras
FinAlgoritmo
