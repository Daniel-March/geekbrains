val_a = int(input("Введите выручку: "))
val_b = int(input("Введите издержку: "))

if val_a > val_b:
    print("\nФирма подзаработала")
    print("Рентабельность:", val_a/val_b)

    n = int(input("\nКол-во сотрудников: "))
    print("Прибыль на сотрудника: ", (val_a - val_b)/n)
else:
    print("Фирма скоро обанкротится")