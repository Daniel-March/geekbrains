flag = True
summ = 0

while flag:
    number_list = input("Вводите числа: ").split()

    for element in number_list:
        if element == "&":
            print(summ)
            flag = False
            break
        summ += int(element)
    else:
        print(summ)
