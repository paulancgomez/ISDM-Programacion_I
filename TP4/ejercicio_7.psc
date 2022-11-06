//Ej 7) Funci�n para calcular y retornar el �rea de un N tanques de almacenamiento de l�quidos sabiendo el valor del radio R
//y la altura H de cada tanque.

//AREA = 2 * PI * r * (h + r)

Funcion area <- CalcularArea (radio, altura)
	area <- 2 * PI * radio * (altura + radio)
FinFuncion


Algoritmo Principal
	Definir N, i, R, H Como Real
	
	Escribir "Ingrese la cantidad de tanques: "
	Leer N
	
	Para i<-1 Hasta N Con Paso 1 Hacer
		Escribir "------------- TANQUE N� ", i, " -------------"
		Escribir "Ingrese el radio: "; Leer R
		Escribir "Ingrese la altura: "; Leer H
		Escribir "El �rea del tanque es: ", CalcularArea(R, H)
	FinPara
	
FinAlgoritmo
