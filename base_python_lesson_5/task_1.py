def input_func():
    while True:
        input_line = input()
        if input_line == "":
            break
        yield input_line + "\n"


with open("test.txt", "w") as file:
    for line in input_func():
        file.write(line)
