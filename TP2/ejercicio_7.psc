//EJERCICIO 7: Dada la base X y el exponente Y, calcular y mostrar la potenciacion de X elevado a la Y.

Algoritmo ejercicio_7
	Definir X, Y, i, potencia Como Entero
	
	//INGRESO DE DATOS
	Escribir "Ingrese la BASE: "
	Leer X
	Escribir "Ingrese el EXPONENTE: "
	Leer Y
	
	//PROCESAMIENTO Y SALIDA DE RESULTADOS
	Si Y>0 Entonces
		potencia = 1
		Para i<-1 Hasta Y Con Paso 1 Hacer
			potencia <- potencia * X
		FinPara
		Escribir "POTENCIA: ",X,"^",Y," = ", potencia
	SiNo
		Si Y<0 Entonces
			Escribir "Ingrese un EXPONENTE positivo o cero."
		SiNo
			Si X<>0 Entonces
				//EXPONENTE CERO Y BASE NO NULA ES INMEDIATAMENTE 1
				potencia <- 1
				Escribir "POTENCIA: ",X,"^",Y," = ", potencia
			SiNo
				//EXPONETE CERO Y BASE CERO ES INDEFINIDO
				Escribir "Indeterminación. No se puede calcular."
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo

