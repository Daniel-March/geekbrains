def generator(number_list):
    for index, element in enumerate(number_list):
        if element not in number_list[index+1:]:
            yield element


first_list = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]
second_list = [i for i in generator(first_list)]

print(second_list)
