Funcion  result <- sumar(num1, num2) 
	result = num1 + num2
FinFuncion

Funcion result <- restar(num1, num2) 
	result = num1 - num2
FinFuncion

Funcion  result <- multiplicar(num1, num2) 
	result =  num1 * num2
FinFuncion

Funcion result <- dividir(num1, num2) 
	result = num1 / num2
FinFuncion

Algoritmo Calculadora_Especial
    Escribir "Escriba la opción que desea realizar"
    Escribir "1. Sumar"
    Escribir "2. Restar"
    Escribir "3. Multiplicar"
    Escribir "4. Dividir"
    Leer opcion
    
    Segun opcion Hacer
        1:
            Escribir "¿Con cuántos números desea operar?"
            Leer n
            Dimension num[n]
            
            Para i=1 Hasta n con paso 1 Hacer
                Escribir 'Digite el número:'
                Leer num[i]
            FinPara
            
            num1 = 0
            Para i=1 Hasta n con paso 1 Hacer
                num2 <- num[i]
                num1 <- sumar(num1, num2)
            FinPara
            
            Escribir "El total es: ", num1
            
        2:
            Escribir "¿Con cuántos números desea operar?"
            Leer n
            Dimension num[n]
            
            Para i=1 Hasta n con paso 1 Hacer
                Escribir 'Digite el número:'
                Leer num[i]
            FinPara
            
            num1 = num[1]
            Para i=2 Hasta n con paso 1 Hacer
                num2 <- num[i]
                num1 <- restar(num1, num2)
				
            FinPara
            
            Escribir "El total es: ", num1
            
        3:
            Escribir "¿Con cuántos números desea operar?"
            Leer n
            Dimension num[n]
            
            Para i=1 Hasta n con paso 1 Hacer
                Escribir 'Digite el número:'
                Leer num[i]
            FinPara
            
            num1 = 1
            Para i=1 Hasta n con paso 1 Hacer
                num2 <- num[i]
                num1 <- multiplicar(num1, num2)
            FinPara
            
            Escribir "El total es: ", num1
            
        4:
            Escribir "Elija una opción para la división:"
            Escribir "1. Dividir entre la cantidad de números ingresados"
            Escribir "2. Dividir solo los números pares"
            Escribir "3. Dividir solo los números impares"
            Leer opciones
            
            Si opciones = 1 Entonces
                Escribir "¿Con cuántos números desea operar?"
                Leer n
                Dimension num[n]
                
                Para i=1 Hasta n con paso 1 Hacer
                    Escribir 'Digite el número:'
                    Leer num[i]
                FinPara
                
                num1 = num[1]
                Para i=2 Hasta n con paso 1 Hacer
                    num2 <- num[i]
                    num1 <- dividir(num1, num2)
                FinPara
            FinSi
            
            Si opciones = 2 Entonces
                Escribir "¿Con cuántos números desea operar?"
                Leer n
                Dimension num[n]
                
                Para i=1 Hasta n con paso 1 Hacer
                    Escribir 'Digite el número:'
                    Leer num[i]
                FinPara
                
                num1 = num[1]
                Para i=2 Hasta n con paso 1 Hacer
                    Si num[i] MOD 2 = 0 Entonces
                        num2 <- num[i]
                        num1 <- dividir(num1, num2)
                    FinSi
                FinPara
            FinSi
            
            Si opciones = 3 Entonces
                Escribir "¿Con cuántos números desea operar?"
                Leer n
                Dimension num[n]
                
                Para i=1 Hasta n con paso 1 Hacer
                    Escribir 'Digite el número:'
                    Leer num[i]
                FinPara
                
                num1 = num[1]
                Para i=2 Hasta n con paso 1 Hacer
                    Si num[i] MOD 2 <> 0 Entonces
                        num2 <- num[i]
                        num1 <- dividir(num1, num2)
                    FinSi
                FinPara
            FinSi
            
            Escribir "El resultado de la división es: ", num1
            
        De Otro Modo:
            Escribir "Operación incorrecta"
    Fin Segun
FinAlgoritmo
