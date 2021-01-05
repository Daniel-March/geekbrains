def input_func():
    while True:
        input_element = input()
        if input_element == "":
            break
        yield input_element + " "


with open("test.txt", "w") as file:
    for element in input_func():
        file.write(element)


with open("test.txt", "r") as file:
    print(sum(list(map(int, file.read().split()))))
