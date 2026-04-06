#Diccionarios

diccionario = {"clave1":"valor1", "clave2":"valor2"}
resultado = diccionario["clave2"] #Los diccionarios no están indexados como las listas
print(resultado)

cliente = {"nombre": "Juan",
           "apellido": "Fuentes",
           "peso": 70,
           "talla": 1.76}

print(cliente["apellido"])

#Dentro de la variable del diccionario, se puede a su vez agregar en valores; listas, diccionarios, etc.
#dic = {"c1": 55, "c2": [10, 20, 30], "c3": {"s1": 100, "s2":200}}

#print(dic["c2"][1]) #Se pueden agregar parámetros de búsqueda, como la posición

#dic = {"clave1": ["a","b","c"],"clave2": ["d","e","f"]}

#print(dic["clave2"][1].upper())

dic = {"1": "a", "2" : "b"}
print(dic)

dic["3"] = "c" #De esta manera agregamos valores al diccionario
print(dic)

dic["2"] = "e" #De esta manera reemplazamos valores en el diccionario
print(dic)

print(dic.keys()) #Imprime únicamente la información de las llaves
print(dic.values()) #Imprime únicamente la información de los valores
print(dic.items()) #Imprime toda la información de los elementos que componen el diccionario

#Ejercicio de plataforma

mi_dict = {"valores_1":{"v1":3,"v2":6},"puntos":{"points1":9,"points2":[10,300,15]}}
print(mi_dict["puntos"]["points2"][1])

#Ejercicio de plataforma 2

mi_dic = {"nombre":"Karen", "apellido":"Jurgens", "edad":35, "ocupacion":"Periodista"}

mi_dic["pais"] = "Colombia"

mi_dic["edad"] = 36

mi_dic["ocupacion"] = "Editora"

print(mi_dic)
