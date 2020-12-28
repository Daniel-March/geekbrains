def generator(number_list:list):
    for index, element in enumerate(number_list[1:]):
        if element > number_list[index]:
            yield element


first_list = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]
second_list = [i for i in generator(first_list)]

print(second_list)
