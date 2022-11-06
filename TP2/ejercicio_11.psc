//EJERCICIO 11:
//	Calcular y mostrar el salario semanal de N albañiles a los que se les paga $550 la hora si no superan
//	las 40 horas semanales. Si la cantidad de horas trabajadas superan las 40 hs semanales, se
//	consideran horas extras a las que están por encima de las 40 y se le adicionará $200 x cada hr
//	extra.
//	Nota: Pedir al usuario la cantidad de horas trabajadas por el albañil durante una semana.
//		a. Modifique el programa para que calcule el salario mensual, considerando que el mes tiene
//			4 semanas.

Algoritmo ejercicio_11
	Definir N, i, horas, horas_extras Como Entero
	Definir salario Como Real
	
	Escribir "Ingrese la CANTIDAD de ALBAÑILES: "
	Leer N
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		
		Escribir "------------ ALBAÑIL N° ", i, " ------------"
		Escribir "Ingrese las HORAS trabajadas en la SEMANA: "
		Leer horas
		
		Si horas <= 40 Entonces
			salario <- horas * 550
		SiNo
			horas_extras <- horas - 40
			salario <- (40*550) + (horas_extras*200)
		FinSi
		
		Escribir "SALARIO SEMANAL: $", salario
		
	FinPara
	
FinAlgoritmo



