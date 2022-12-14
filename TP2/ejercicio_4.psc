// EJERCICIO 4:
//	Se solicitan 3 presupuestos, en distintos proveedores, de una cantidad de barras de hierro
// torsionado de 12 mm de di?metro ingresadas por el usuario. Ingresar el precio unitario que cotiz?
// cada comercio, calcular y mostrar el costo total de cada corral?n y un precio unitario promedio.
// Determinar el Comercio a elegir con el menor costo calculado.

Algoritmo ejercicio_4
	Definir cant Como Entero
	Definir precio_uni_1, precio_uni_2, precio_uni_3 Como Real
	Definir presu_1, presu_2, presu_3 Como Real
	Definir precio_promedio Como Real
	
	//INGRESO DE DATOS
	Escribir "Ingrese la CANTIDAD DE BARRAS que desea presupuestar: "
	Leer cant
	Escribir "Ingrese PRECIO UNITARIO del CORRALON 1: "
	Leer precio_uni_1
	Escribir "Ingrese PRECIO UNITARIO del CORRALON 2: "
	Leer precio_uni_2
	Escribir "Ingrese PRECIO UNITARIO del CORRALON 3: "
	Leer precio_uni_3
	
	//PROCESAMIENTO DE DATOS
	presu_1 <- precio_uni_1 * cant
	presu_2 <- precio_uni_2 * cant
	presu_3 <- precio_uni_3 * cant
	precio_promedio <- (precio_uni_1 + precio_uni_2 + precio_uni_3) / 3
	
	//SALIDA DE RESULTADOS
	Escribir "COSTO TOTAL en el CORRALON 1: $", presu_1
	Escribir "COSTO TOTAL en el CORRALON 2: $", presu_2
	Escribir "COSTO TOTAL en el CORRALON 3: $", presu_3
	Escribir "PRECIO UNITARIO PROMEDIO: $", precio_promedio
	
	Escribir "El COMERCIO con el MENOR COSTO es el " Sin Saltar
	Si (presu_1 < presu_2) & (presu_2 < presu_3) Entonces
		Escribir "CORRALON 1"
	SiNo
		Si (presu_2 < presu_1) & (presu_1 < presu_3) Entonces
			Escribir "CORRALON 2"
		SiNo
			Escribir "CORRALON 3"
		FinSi
	FinSi
	
FinAlgoritmo
