// EJERCICIO 6: Función para retornar la equivalencia en grados Celsius de una temperatura en grados Fahrenheit.


// ================================== FUNCION =======================================

Funcion celsius <- GradosCelsius (fahrenheit)
	Definir celsius Como Real
	celsius <- (fahrenheit - 32) * (5/9)
FinFuncion


// ================================ PROGRAMA PRINCIPAL ===============================

Algoritmo Principal
	Definir fahrenheit Como Real
	Escribir "--------- CALCULADORA de FAHRENHEIT a CELSIUS ---------"
	Escribir "Ingrese temperatura en Grados Fahrenheit: "
	Leer fahrenheit

	Escribir fahrenheit,"° Fahrenheit es igual a ", GradosCelsius(fahrenheit),"° Celsius"
FinAlgoritmo
