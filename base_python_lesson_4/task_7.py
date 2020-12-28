from math import factorial


def fact(number):
    for n in range(number):
        yield factorial(n+1)


for el in fact(10):
    print(el)
