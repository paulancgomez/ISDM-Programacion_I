// EJERCICIO 8:
// Una fábrica de cerámicas cuenta con 20 camiones como máximo y cargan N (N <= 20) de ellos con piezas de cerámicas
// para ser transportadas a diferentes corralones. Escribir un programa, utilizando funciones, para determinar:
// 	a) El número de camión que contiene la mayor cantidad piezas cargadas.
// 	b) La menor cantidad piezas cargadas sin importar el número de camión.
// 	c) El promedio de piezas cargadas en todos los camiones.


// ======================================================= FUNCIONES ====================================================

Funcion ValidarTamanio (N Por Referencia)
	Repetir
		Escribir "INGRESE LA CANTIDAD DE CAMIONES: " Sin Saltar; Leer N
		Si N < 1 | N > 20 Entonces
			Escribir "CANTIDAD NO VALIDA! Ingrese una cantidad entre 1 y 20."
		FinSi
	Hasta Que N >= 1 & N <= 20
FinFuncion

Funcion IngresarArray (array, N)
	Definir i Como Entero
	Escribir ""
	Escribir "INGRESAR, PARA CADA CAMION, LA CANTIDAD DE PIEZAS DE CERAMICAS CARGADAS."
	Para i <- 1 Hasta N Con Paso 1 Hacer
		Escribir "CAMION N° ",i,": " Sin Saltar; Leer array[i]
	FinPara
FinFuncion

Funcion MuestraArray (array, N)
	Definir i Como Entero
	Escribir ""
	Escribir "----------- CAMIONES -----------"
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "CAMION N° ",i,": " ,array[i]," piezas cargadas."
	FinPara
FinFuncion

Funcion posicionMayor <- PosicionMayorCantidadPiezas (array, N)
	Definir i, mayor, posicionMayor Como Entero
	mayor <- array[1]
	posicionMayor <- 1
	Para i<-2 Hasta N Con Paso 1 Hacer
		Si array[i] > mayor Entonces
			mayor <- array[i]
			posicionMayor <- i
		FinSi
	FinPara
FinFuncion

Funcion menor <- MenorCantidadPiezas (array, N)
	Definir i, menor Como Entero
	menor <- array[1]
	Para i<-2 Hasta N Con Paso 1 Hacer
		Si array[i] < menor Entonces
			menor <- array[i]
		FinSi
	FinPara
FinFuncion

Funcion prom <- Promedio (array, N)
	Definir i, acu Como Entero
	Definir prom Como Real
	acu <- 0
	Para i<-1 Hasta N Con Paso 1 Hacer
		acu <- acu + array[i]
	FinPara
	prom <- acu / N
FinFuncion


// ================================================= PROGRAMA PRINCIPAL ======================================================

Algoritmo Principal
	Definir N, i Como Entero
	Definir array Como Entero
	Dimension array[20]
	
	ValidarTamanio(N)
	IngresarArray(array, N)
	MuestraArray(array, N)
	
	Escribir ""
	Escribir " - El número de camión que contiene la mayor cantidad piezas cargadas es: ", PosicionMayorCantidadPiezas(array, N)
	Escribir " - La menor cantidad de piezas cargadas (sin importar el número de camión) es: ", MenorCantidadPiezas(array, N)
	Escribir " - El promedio de piezas cargadas en todos los camiones es: ", Promedio(array, N)
FinAlgoritmo
