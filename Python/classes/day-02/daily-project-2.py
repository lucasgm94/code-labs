nombre = input("¿Cuál es tu nombre?: ")
ventas = int(input("¿Cuántas ventas realizaste?: "))
comision = round(ventas * 13 / 100,2)

print(f"Felicitaciones! Tu comisión del 13% es igual a: ${comision}")