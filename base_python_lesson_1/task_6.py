a = int(input("Начальный результат: "))
b = int(input("Конечный результат: "))
n = 1

while a < b:
    a *= 1.1
    n += 1

print(f'На {n}-й день спортсмен достиг результата — не менее {b} км.')