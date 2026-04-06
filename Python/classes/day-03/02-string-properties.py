#Propiedades de Strings

#Inmutables

#nombre = "Carina"
#nombre[0] = "K" #Acá se intentó modificar directamente el string, lo que devuelve un error
#Se puede sobreescribir una variable pero no editarla

#print(nombre)

#Concatenables

n1 = "Ka"
n2 = "rina"

print(n1 + n2)
print(n1 * 3) #Multiplica el contenido de la variable

#Multilínea

poema = """Mil peces pequeños blancos
como si hirviera
el color del agua"""
#También se puede utilizar el salto de línea \n

print(poema)

#Verificar su contenido

poema = """Mil peces pequeños blancos
como si hirviera
el color del agua"""

print("agua" in poema) #El valor devuelto es de tipo boolean
print("Lucas" not in poema)

#Medir su longitud

poema = """Mil peces pequeños blancos
como si hirviera
el color del agua"""

print(len(poema)) #Mide la cantidad de caracteres que componen la variable
#Los espacios vacíos tambien cuentan como caracteres!

haiku = """Tierra mojada
mis recuerdos de viaje,
entre las lluvias
"""
print("agua" not in haiku)


