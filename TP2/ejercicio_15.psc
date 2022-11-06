//EJERCICIO 15:
//	Simular el funcionamiento de la emisión de una factura de un cajero de supermercado. Para ello
//	ingresar CodProducto, Precio y Cant. Ingresar cada producto hasta que se ingrese CodProducto = 0.
//	Calcular y mostrar:
//		a. Cada dato del producto ingresado con su respectivo Importe a cobrar;
//		b. El Total de la Compra; con valor de IVA correspondiente (21%)
//		c. Para compras que superen los $10.000 se ofrece un descuento del 20%
//		d. Total a Cobrar

Algoritmo ejercicio_15
	Definir cod_producto, cant como Entero
	Definir precio, total_compra, total_factura, IVA, descuento Como Real
	
	total_compra <- 0
	
	Escribir "                FACTURA"
	Escribir "----------------------------------------"
	Escribir "CODIGO del PRODUCTO (0 para terminar): "
	Leer cod_producto
	Mientras cod_producto <> 0 Hacer
		Escribir "PRECIO UNITARIO: $"
		Leer precio
		Escribir "CANTIDAD: "
		Leer cant
		//INCISO a)
		Escribir "IMPORTE: $", precio*cant
		total_compra = total_compra + (cant*precio)
		Escribir "----------------------------------------"
		Escribir "CODIGO del PRODUCTO (0 para terminar): "
		Leer cod_producto
	FinMientras
	
	//INCISO b)
	IVA = total_compra * 0.21
	total_factura = total_compra + IVA
	Escribir "SUBTOTAL______________________$", total_compra
	Escribir "IVA 21%____________________ + $", IVA
	Escribir "SUBTOTAL +IVA_________________$", total_factura
	
	//INCISO c)
	Si total_compra > 10000 Entonces
		descuento <- total_factura * 0.2
		total_factura <- total_factura - descuento
		Escribir "Descuento 20%______________ - $", descuento
		Escribir "SUBTOTAL c/descuento__________$", total_factura
	FinSi
	
	//INCISO d)
	Escribir "                       TOTAL: $", total_factura
	Escribir "¡GRACIAS POR SU COMPRA! :)"
	
FinAlgoritmo
