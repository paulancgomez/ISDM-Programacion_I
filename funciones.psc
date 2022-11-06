//INGRESA ARRAY
Funcion IngresaArray (array, N)
	Definir i Como Entero
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "Ingresa Numero: "
		Leer array[i]
	FinPara
FinFuncion

//MUESTRA ARRAY
Funcion MuestraArray (array, N)
	Definir i Como Entero
	Escribir "VECTOR"
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir array[i], " | " Sin Saltar
	FinPara
	Escribir ""
FinFuncion

//METODO BUSQUEDA SECUENCIAL (PARA VECTOR DESORDENADO)
Funcion i <- BusquedaSecuencial (array, N, buscado)
	Definir i Como Entero
	i <- 1
	Mientras i <= N & buscado <> array[i] Hacer
		i <- i + 1
	FinMientras
	Si i > N Entonces
		i <- 0
	FinSi
FinFuncion

//METODO BUSQUEDA BINARIA (PARA VECTOR ORDENADO)
Funcion i <- BusquedaBinaria (array, N, buscado)
	Definir i Como Entero
	i <- 1
	Mientras i <= N & buscado <> array[i] Hacer
		i <- i + 1
	FinMientras
	Si i > N Entonces
		i <- 0
	FinSi
FinFuncion

//METODO ORDENAMIENTO SELECCION (DE MENOR A MAYOR)
Funcion OrdenamientoSeleccion (array, N)
	Definir i, j Como Entero
	Definir aux Como Entero
	Para i<-1 Hasta N-1 Con Paso 1 Hacer
		Para j<-i+1 Hasta N Con Paso 1 Hacer
			Si array[i] > array[j] Entonces
				aux <- array[i]
				array[i] <- array[j]
				array[j] <- aux
			FinSi
		FinPara
	FinPara
FinFuncion

//METODO ELIMINACION (ELIMINAR POSICION)
Funcion Eliminacion (array, N Por Referencia, pos)
	Definir i Como Entero
	Para i<-pos Hasta N-1 Con Paso 1 Hacer
		array[i] <- array[i+1]
	FinPara
	N <- N - 1
FinFuncion

//METODO INSERCION
Funcion Insercion (array, N Por Referencia, pos, valorInsertar)
	Definir i Como Entero
	Para i<-N Hasta pos Con Paso -1 Hacer
		array[i+1] = array[i]
	FinPara
	array[pos] <- valorInsertar
	N <- N + 1
FinFuncion

//METODO CANTIDAD DE DIGITOS
Funcion cant <- CantDigitos (num)
	Definir cant Como Entero
	cant <- 0
	Mientras num>0 Hacer
		cant <- cant + 1
		num <- trunc(num/10)
	FinMientras
FinFuncion

//METODO CAPICUA
Funcion resp <- Capicua (num)
	Definir aux, cap Como Entero
	Definir resp Como Logico
	aux <- num
	cap <- 0
	Mientras num>0 Hacer
		dig <- num % 10
		cap <- cap * 10 + dig
		num <- trunc(num/10)
	FinMientras
	Si cap = aux Entonces
		resp <- Verdadero
	SiNo
		resp <- Falso
	FinSi
FinFuncion

//METODO DETERMINACION MENOR
Funcion menor <- Menor (array, N)
	Definir i, menor Como Entero
	menor <- array[1]
	Para i<-2 Hasta N Con Paso 1 Hacer
		Si array[i] < menor Entonces
			menor <- array[i]
		FinSi
	FinPara
FinFuncion

//METODO DETERMINACION MAYOR
Funcion mayor <- Mayor (array, N)
	Definir i, mayor Como Entero
	mayor <- array[1]
	Para i<-2 Hasta N Con Paso 1 Hacer
		Si array[i] > mayor Entonces
			mayor <- array[i]
		FinSi
	FinPara
FinFuncion

//METODO PROMEDIO
Funcion prom <- Promedio (array, N)
	Definir i, acu Como Entero
	Definir prom Como Real
	acu <- 0
	Para i<-1 Hasta N Con Paso 1 Hacer
		acu <- acu + array[i]
	FinPara
	prom <- acu / N
FinFuncion

//FUNCION PRINCIPAL
Algoritmo Principal
	Definir array, N, posBuscado Como Entero
	Dimension array[50]
	
	N <- 10
	
	IngresaArray(array, N)
	MuestraArray(array, N)
	
	Escribir "------------- ELIMINACION (ELIMINA POSICION 2) ------------"
	Eliminacion(array, N, 2)
	MuestraArray(array, N)
	
	Escribir "------------ INSERCCION (INSERTA EN POSICION 2) -----------"
	Insercion(array, N, 2, 100)
	MuestraArray(array, N)
	
	Escribir "---------------- ORDENAMIENTO SELECCION --------------------"
	OrdenamientoSeleccion(array, N)
	MuestraArray(array, N)
	
	Escribir "------------ BUSQUEDA SECUENCIAL (BUSCA VALOR 6) -----------"
	posBuscado <- BusquedaSecuencial(array, N, 6)
	Si posBuscado <> 0 Entonces
		Escribir "El numero buscado esta en la posicion: ", posBuscado
	SiNo
		Escribir "El numero buscado no se encuentró"
	FinSi
	
	Escribir "------------------- CANTIDAD DE DIGITOS -------------------"
	Escribir "La cantidad de digitos de 1234567 es ", CantDigitos(1234567)
	
	Escribir "------------------------- CAPICUA -------------------------"
	Escribir "¿El numero 12321 es capicua?: ", Capicua(12321)
FinAlgoritmo
