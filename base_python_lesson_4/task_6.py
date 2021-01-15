from itertools import cycle


def int_from(start: int):
    i = start
    while True:
        i += 1
        yield i
        if i >= 100:
            break


def cycle_list(list_element):
    i = 0
    for element in cycle(list_element):
        yield element
        i += 1
        if i > 20:
            break


first_generator = [i for i in int_from(10)]
second_generator = [i for i in cycle_list([10, 20, 30, 40, 50])]

print(first_generator)
print(second_generator)
