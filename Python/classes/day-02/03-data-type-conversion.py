#Conversión implícita
#Python de forma automática cambia los tipos de datos de los valores

num1 = 20
num2 = 30.5

num1 = num1 + num2

print(type(num1))
print(type(num2))

#Conversión explícita
#Nosotros de forma manual, realizamos la conversión de tipo de dato

num1 = 5.8

print(num1)
print(type(num1))

num2 = int(num1) #cortó los decimales del formato, NO REDONDEA

print(num2)
print(type(num2))

#Ejemplo

edad = input("Ingrese edad: ") #Primero tiene tipo de dato String

print(type(edad))

edad = int(edad) #Acá lo convertimos a Integer

print(type(edad))

nueva_edad = edad + 1

#Ejercicio de Plataforma

print(nueva_edad)

num1 = "7.5"
num2 = "10"

print(float(num1) + int(num2))

