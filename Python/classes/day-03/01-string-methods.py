#UPPER

texto = "Este es el texto de Lucas"

resultado = texto.upper() #Dentro de los () se pueden poner parámetros para el metodo

print(resultado)

#UPPER 2

texto = "Este es el texto de Lucas"

resultado = texto[2:8].upper()

print(resultado)

#lower

texto = "Este es el texto de Lucas"

resultado = texto.lower()

print(resultado)

#Split

texto = "Este es el texto de Lucas"

resultado = texto.split("t") #Devuelve una "lista", conjunto de objetos separados por []

print(resultado)

#Join

a = "Aprender"
b = "Python"
c = "es"
d = "genial"

e = " ".join([a,b,c,d]) #Une una lista

print(e)

#Find

texto = "Este es el texto de Lucas"

#resultado = texto.find("s")
resultado = texto.find("g") #En este caso lo que lo diferencia de index, es que cuando
#no encuentra un valor, devuelve un -1

print(resultado)

#Replace

texto = "Este es el texto de Lucas"

resultado = texto.replace("Lucas","todos") #se usan dos parámetros para los cambios
#el viejo, con el nuevo cambio

print(resultado)

#Ejercicio plataforma

lista_palabras = ["La","legibilidad","cuenta."]

resultado = " ".join(["La","legibilidad","cuenta."])

print(resultado)

#Ejercicio plataforma 2

frase = "Si la implementación es difícil de explicar, puede que sea una mala idea."

resultado = frase.replace("difícil","fácil",).replace("mala","buena")
#En este caso se encadena el replace para hacer más de una modificación

print(resultado)