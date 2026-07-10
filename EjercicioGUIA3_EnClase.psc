Algoritmo EjercicioGUIA3_EnClase
	
	Definir estudiantes Como Cadena
	Dimension estudiantes[10,3]
	
	Definir opcion Como Entero
	
	Repetir
		Escribir "===== MENU ====="
		Escribir "1. Registrar"
		Escribir "2. Mostrar"
		Escribir "3. Actualizar"
		Escribir "4. Eliminar"
		Escribir "5. Salir"
		Escribir "Seleccione una opcion:"
		Leer opcion
		
		Segun opcion Hacer
			1:
				Registrar(estudiantes)
			2:
				MostrarE(estudiantes)
			3:
				Actualizar(estudiantes)
			4:
				Eliminar(estudiantes)
			5:
				Escribir "Saliendo del sistema..."
			De Otro Modo:
				Escribir "Opcion invalida."
		FinSegun
		
		Si opcion<>5 Entonces
			Escribir ""
			Escribir "Presione ENTER para continuar..."
			Esperar Tecla
			Limpiar Pantalla
		FinSi
		
	Hasta Que opcion=5
	
FinAlgoritmo


SubProceso Registrar(estudiantes)
	
	Definir i Como Entero
	Definir registrado Como Logico
	
	registrado <- Falso
	
	Para i<-1 Hasta 10
		Si estudiantes[i,1]="" Entonces
			
			Escribir "Codigo:"
			Leer estudiantes[i,1]
			
			Escribir "Nombre:"
			Leer estudiantes[i,2]
			
			Escribir "Edad:"
			Leer estudiantes[i,3]
			
			Escribir "Estudiante registrado."
			
			registrado <- Verdadero
			i <- 10
		FinSi
	FinPara
	
	Si registrado=Falso Entonces
		Escribir "La matriz esta llena."
	FinSi
	
FinSubProceso


SubProceso MostrarE(estudiantes)
	
	Definir i Como Entero
	
	Escribir ""
	Escribir "CODIGO", "     ", "NOMBRE", "     ", "EDAD"
	Escribir "---------------------------------------"
	
	Para i<-1 Hasta 10
		
		Si estudiantes[i,1]<>"" Entonces
			Escribir estudiantes[i,1],"     ",estudiantes[i,2],"     ",estudiantes[i,3]
		FinSi
		
	FinPara
	
FinSubProceso


SubProceso Actualizar(estudiantes)
	
	Definir i Como Entero
	Definir codigo Como Cadena
	Definir encontrado Como Logico
	
	encontrado <- Falso
	
	Escribir "Codigo a buscar:"
	Leer codigo
	
	Para i<-1 Hasta 10
		
		Si estudiantes[i,1]=codigo Entonces
			
			Escribir "Nuevo nombre:"
			Leer estudiantes[i,2]
			
			Escribir "Nueva edad:"
			Leer estudiantes[i,3]
			
			Escribir "Registro actualizado."
			
			encontrado <- Verdadero
			i <- 10
			
		FinSi
		
	FinPara
	
	Si encontrado=Falso Entonces
		Escribir "Codigo no encontrado."
	FinSi
	
FinSubProceso


SubProceso Eliminar(estudiantes)
	
	Definir i Como Entero
	Definir codigo Como Cadena
	Definir encontrado Como Logico
	
	encontrado <- Falso
	
	Escribir "Codigo a eliminar:"
	Leer codigo
	
	Para i<-1 Hasta 10
		
		Si estudiantes[i,1]=codigo Entonces
			
			estudiantes[i,1]<-""
			estudiantes[i,2]<-""
			estudiantes[i,3]<-""
			
			Escribir "Registro eliminado."
			
			encontrado <- Verdadero
			i <- 10
			
		FinSi
		
	FinPara
	
	Si encontrado=Falso Entonces
		Escribir "Codigo no encontrado."
	FinSi
	
FinSubProceso