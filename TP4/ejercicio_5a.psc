Funcion min <- minTemperatura(vec,N)
	Para i <- 1 Hasta N Con Paso 1 Hacer
		Si i=1 Entonces
			min <- vec[i];
		SiNo
			Si min > vec[i] Entonces
				min <- vec[i]; 
			FinSi
		FinSi
	FinPara
FinFuncion

Funcion prom <- PromTemp(vec,N)
	suma = 0
	Para i <- 1 Hasta N Con Paso 1 Hacer
		suma <- suma + vec[i];
	FinPara
	prom <- suma/N;
FinFuncion

Funcion CargarVector(vec,N)
	Para i <- 1 Hasta N Con Paso 1 Hacer
		Escribir "Temperatura Dia ",i,": "; Leer vec[i];
	FinPara
FinFuncion

Funcion MostrarVector(vec,N)
	Escribir "Reg.    TMP";
	Para i <- 1 Hasta N Con Paso 1 Hacer
		Escribir i,":  ",vec[i];
	FinPara
FinFuncion



Algoritmo Principal

	Dimension temp[100]
	Escribir "Ingrese la cantidad de datos:"; Leer n
	//Cargo el vector:
	CargarVector(temp,n)
	//Muestro los datos del vector
	MostrarVector(temp,n)
	Escribir "Se registró una Temp. Media de: ", PromTemp(temp,n);
	Escribir "La Temp. mínima registrada fue de: ", minTemperatura(temp,n);
FinAlgoritmo
