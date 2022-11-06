//INGRESA ARRAY
Funcion IngresaArray (array, N)
	Definir i Como Entero
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Escribir "Ingresa Numero: "
		Leer array[i]
	FinPara
FinFuncion

//MUESTRA ARRAY
Funcion MuestraArray (array, N)
	Definir i Como Entero
	Escribir "VECTOR"
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		Escribir array[i], " | " Sin Saltar
	FinPara
	Escribir ""
FinFuncion

//METODO BUSQUEDA SECUENCIAL (PARA VECTOR DESORDENADO)
Funcion pos <- BusquedaSecuencial (array, N, buscado)
	Definir pos, i Como Entero
	i <- 0
	Mientras i < N & array[i] <> buscado Hacer
		i <- i + 1
	FinMientras
	Si i < N Entonces
		pos <- i
	SiNo
		pos <- -1
	FinSi
FinFuncion

//METODO BUSQUEDA BINARIA (PARA VECTOR ORDENADO)
Funcion pos <- BusquedaBinaria (array, N, buscado)
	Definir ini, finn, medio, pos Como Entero
	ini <- 0
	finn <- N
	Mientras ini < finn Hacer
		medio <- trunc((ini + finn) / 2)
		Si array[medio] = buscado Entonces
			pos <- medio
		SiNo
			Si buscado < array[medio] Entonces
				finn <- medio - 1
			SiNo
				ini <- medio + 1
			FinSi
		FinSi
	FinMientras
	Si ini >= finn Entonces
		pos <- -1 //NO SE ENCUENTRA
	FinSi
FinFuncion

//METODO ORDENAMIENTO SELECCION (DE MENOR A MAYOR)
Funcion OrdenamientoSeleccion (array, N)
	Definir i, j Como Entero
	Definir aux Como Entero
	Para i<-1 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta (N-1)-i Con Paso 1 Hacer
			Si array[j] > array[j+1] Entonces
				aux <- array[j]
				array[j] <- array[j+1]
				array[j+1] <- aux
			FinSi
		FinPara
	FinPara
FinFuncion

//METODO ORDENAMIENTO INSERCION (DE MENOR A MAYOR)
Funcion OrdenamientoInsercion (array, N)
	Definir i, j Como Entero
	Definir actual Como Entero
	Para i<-1 Hasta N-1 Con Paso 1 Hacer
		actual <- array[i]
		j <- i
		Mientras j >= 0 & array[j-1] > actual Hacer
			array[j] <- array[j-1]
			j <- j - 1
		FinMientras
		array[j] <- actual
	FinPara
FinFuncion

//METODO ORDENAMIENTO BURBUJA (DE MENOR A MAYOR)
Funcion OrdenamientoBurbuja (array, N)
	Definir i, j Como Entero
	Definir aux Como Entero
	Para i<-1 Hasta N-1 Con Paso 1 Hacer
		Para j<-0 Hasta (N-1)-i Con Paso 1 Hacer
			Si array[j] > array[j+1] Entonces
				aux <- array[j]
				array[j] <- array[j+1]
				array[j+1] <- aux
			FinSi
		FinPara
	FinPara
FinFuncion

//METODO ELIMINACION (ELIMINAR POSICION)
Funcion Eliminacion (array, N Por Referencia, pos)
	Definir i Como Entero
	Para i<-pos Hasta N-2 Con Paso 1 Hacer
		array[i] <- array[i+1]
	FinPara
	N <- N - 1
FinFuncion

//METODO INSERCION
Funcion Insercion (array, N Por Referencia, pos, valorInsertar)
	Definir i Como Entero
	Para i<-N Hasta pos Con Paso -1 Hacer
		array[i+1] <- array[i]
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
	Definir aux, cap, dig Como Entero
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
Funcion men <- Menor (array, N)
	Definir i, men Como Entero
	men <- array[0]
	Para i<-1 Hasta N-1 Con Paso 1 Hacer
		Si array[i] < men Entonces
			men <- array[i]
		FinSi
	FinPara
FinFuncion

//METODO DETERMINACION MAYOR
Funcion may <- Mayor (array, N)
	Definir i, may Como Entero
	may <- array[0]
	Para i<-1 Hasta N-1 Con Paso 1 Hacer
		Si array[i] > may Entonces
			may <- array[i]
		FinSi
	FinPara
FinFuncion

//METODO PROMEDIO
Funcion prom <- Promedio (array, N)
	Definir i, acu Como Entero
	Definir prom Como Real
	acu <- 0
	Para i<-0 Hasta N-1 Con Paso 1 Hacer
		acu <- acu + array[i]
	FinPara
	prom <- acu / (N-1)
FinFuncion

//FUNCION PRINCIPAL
Algoritmo Principal
	Definir array, N, posBuscado Como Entero
	Dimension array[50]
	
	N <- 5
	
	IngresaArray(array, N)
	MuestraArray(array, N)
	
	Escribir "------------- ELIMINACION (ELIMINA POSICION 1) ------------"
	Eliminacion(array, N, 1)
	MuestraArray(array, N)
	
	Escribir "------------ INSERCCION (INSERTA EN POSICION 1) -----------"
	Insercion(array, N, 1, 100)
	MuestraArray(array, N)
	
	Escribir "---------------- ORDENAMIENTO SELECCION --------------------"
	OrdenamientoSeleccion(array, N)
	MuestraArray(array, N)
	
	Escribir "---------------- ORDENAMIENTO INSERCION --------------------"
	OrdenamientoInsercion(array, N)
	MuestraArray(array, N)
	
	Escribir "---------------- ORDENAMIENTO BURBUJA --------------------"
	OrdenamientoBurbuja(array, N)
	MuestraArray(array, N)
	
	Escribir "------------ BUSQUEDA SECUENCIAL (BUSCA VALOR 3) -----------"
	posBuscado <- BusquedaSecuencial(array, N, 3)
	Si posBuscado <> -1 Entonces
		Escribir "El numero buscado esta en la posicion: ", posBuscado
	SiNo
		Escribir "El numero buscado no se encuentró"
	FinSi
	
	Escribir "------------ BUSQUEDA BINARIA (BUSCA VALOR 3) -----------"
	posBuscado <- BusquedaBinaria(array, N, 3)
	Si posBuscado <> -1 Entonces
		Escribir "El numero buscado esta en la posicion: ", posBuscado
	SiNo
		Escribir "El numero buscado no se encuentró"
	FinSi
	
	Escribir "------------------- CANTIDAD DE DIGITOS -------------------"
	Escribir "La cantidad de digitos de 1234567 es ", CantDigitos(1234567)
	
	Escribir "------------------------- CAPICUA -------------------------"
	Escribir "¿El numero 12321 es capicua?: ", Capicua(12321)
FinAlgoritmo
