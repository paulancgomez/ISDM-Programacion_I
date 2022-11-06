// EJERCICIO 10:
//	Ingrese las notas de: 3 TPs (TP1, TP2, TP3) y 2 Exámenes Parciales (P1 y P2) de N estudiantes,
//	indicar el estado del alumno según su Nota_Final (de 0 a 39.99 ? Libre; de 40 a 69.99 ?
//	2°Etapa_recupa; de 70 a 100 ? Promociona).
//	Nota Final = (0,60*Promedio_Parciales)+(0,40*Promedio_TPs)

Algoritmo ejercicio_10
	Definir N, i Como Entero;
	Definir TP1, TP2, TP3, P1, P2, promedio_P, promedio_TP, nota_final Como Real
	
	Escribir "Ingrese la CANTIDAD de ALUMNOS: "
	Leer N
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		
		//INGRESO DE DATOS
		Escribir "---------- ALUMNO N° ",i," -----------";
		Escribir "Nota TP1: "; Leer TP1
		Escribir "Nota TP2: "; Leer TP2
		Escribir "Nota TP3: "; Leer TP3
		Escribir "Nota P1: "; Leer P1
		Escribir "Nota P2: "; Leer P2
		
		//PROCESAMIENTO DE DATOS
		promedio_TP <- (TP1 + TP2 + TP3)/3
		promedio_P <- (P1 + P2)/2
		nota_final <- (0.60 * promedio_P) + (0.40 * promedio_TP)
		
		//SALIDA DE RESULTADOS
		Escribir "Promedio de TPs: ", promedio_TP
		Escribir "Promedio de Parciales: ", promedio_P
		Escribir "Nota Final: ", nota_final
		
		Escribir "Condicion: " Sin Saltar
		Si nota_final >= 0 & nota_final <= 39.99 Entonces
			Escribir "LIBRE"
		SiNo
			Si nota_final >= 40 & nota_final <= 69.99 Entonces
				Escribir "2° ETAPA RECUPERA"
			SiNo
				Escribir "PROMOCIONA"
			FinSi
		FinSi
	FinPara
	
FinAlgoritmo
