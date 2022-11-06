//	EJERCICIO 16:
//	En una báscula de pesaje de camiones se controla el peso de la carga de camiones. En una planilla
//	se registra el peso de cada camión. Luego de registrar el último camión, se anota el valor cero. Las
//	cargas se clasifican en:
//		- Baja, cuando la carga es inferior a 1500 kg.
//		- Media, cuando la carga está entre 1500 kg y 4000 kg (ambos incluídos).
//		- Alta, cuando la carga es superior a 4000 kg.
//	Escribir un programa que permita registrar lo descripto; luego determinar y mostrar la cantidad de
//	cada tipo de carga, dando el promedio de cada rango.
//		a. ¿Comprende el funcionamiento del ciclo Mientras?. ¿Entendió cómo cambia de valor la
//			variable de control de este ciclo y cómo funciona la condición de la lista? ¿Se puede resolver
//			este ejercicio utilizando el ciclo incondicionado?

Algoritmo ejercicio_16
	Definir peso, promedio Como Real
	Definir cant_baja, cant_media, cant_alta, N Como Entero
	
	//CONTADORES
	cont_baja <- 0
	cont_media <- 0
	cont_alta <- 0
	
	//ACUMULADORES
	acu_baja <- 0
	acu_media <- 0
	acu_alta <- 0
	
	Escribir "----------- CAMION -----------"
	Escribir "Ingrese PESO (0 para terminar): "
	Leer peso
	
	Mientras peso <> 0 Hacer
		Si peso < 1500 Entonces
			Escribir "Tipo de carga: CARGA BAJA"
			cont_baja <- cont_baja + 1
			acu_baja <- acu_baja + peso
		SiNo
			Si (peso >= 1500) & (peso <= 4000) Entonces
				Escribir "Tipo de carga: CARGA MEDIA"
				cont_media <- cont_media + 1
				acu_media <- acu_media + peso 
			SiNo
				Escribir "Tipo de carga: CARGA ALTA"
				cont_alta <- cont_alta + 1
				acu_alta <- acu_alta + peso
			FinSi
		FinSi
		Escribir "----------- CAMION -----------"
		Escribir "Ingrese PESO (0 para terminar): "
		Leer peso
	FinMientras
	
	Escribir "Cantidad de CARGAS BAJAS: ", cont_baja
	Escribir "Cantidad de CARGAS MEDIAS: ", cont_media
	Escribir "Cantidad de CARGAS ALTAS: ", cont_alta
	
	Si cont_baja > 0 Entonces
		Escribir "El PROMEDIO de CARGAS BAJAS es: ", acu_baja/cont_baja , " kg"
	FinSi
		
	Si cont_media > 0 Entonces
		Escribir "El PROMEDIO de CARGAS MEDIAS es: ", acu_media/cont_media, " kg"
	FinSi
	
	Si cont_alta > 0 Entonces
		Escribir "El PROMEDIO de CARGAS ALTAS es: ", acu_alta/cont_alta, " kg"
	FinSi
	
FinAlgoritmo