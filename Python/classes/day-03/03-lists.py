#Listas

mi_lista = [1,2,3] #Más alla del contenido, la clase va a ser siempre lista
mi_otra_lista = [4,5,6]
mi_gran_lista = mi_lista + mi_otra_lista

#mi_gran_lista[0] = "Uno" #En este caso, sí se pueden modificar valores de las listas
#Dado que está NO son inmutables

#mi_gran_lista.append(7) #Sirve para agregar objetos a la lista

#mi_gran_lista.pop() #Sirve para eliminar elementos, y si no se incluyen parámetros, este elimina el último objeto

elemento_eliminado = mi_gran_lista.pop(2)

#print(type(mi_lista))
#print(len(mi_lista)) #Devuelve el valor 3 porque está compuesta de 3 objetos
print(mi_gran_lista) #Combina las listas, no solamente las suma
print(elemento_eliminado)

