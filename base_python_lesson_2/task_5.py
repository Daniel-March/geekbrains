rating = [7, 5, 3, 3, 2]

n = int(input("Кол-во элементов: "))
print('Таблица результатов:', *rating)
for i in range(n):
    element = int(input(f"{i+1} элемент: "))
    rating.append(element)
    rating.sort(reverse=True)

    print(f"Пользователь ввел {element}. Результат:",*rating)