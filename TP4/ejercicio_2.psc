Funcion pot <- FuncPotencia ( base, e )
	definir rdo Como Real
	rdo<-1;
	Para i<-1 Hasta e Con Paso 1 Hacer
		rdo <- rdo * base
	FinPara
	pot<-rdo;
FinFuncion

Algoritmo Calcula_Potencia
	Definir a,b Como Entero
	Escribir "Ingrese la Base: ";Leer a;
	Escribir "Ingrese el exponente: ";Leer b;
	
	Escribir "La potencia de ", a, " elevado a la ",b," es ",FuncPotencia(a,b);
FinAlgoritmo
