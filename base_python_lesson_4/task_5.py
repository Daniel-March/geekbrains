from functools import reduce


def product(a, b):
    return a * b


number_list = [i for i in range(100, 1001) if not i % 2]

print(reduce(product, number_list))
