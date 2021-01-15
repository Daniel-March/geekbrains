def division(a, b):
    return a / b if b != 0 else None


a_number = float(input("Число a:"))
b_number = float(input("Число b:"))

result = division(a_number, b_number)

print(f"Ответ: {result}" if result != None else 'Деление на ноль. Ай-ай-ай.')
