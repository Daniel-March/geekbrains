def read_func(file_name:str):
    with open(file_name, "r") as file:
        while True:
            line = file.readline()
            if line == "":
                break
            yield line[:-1]
n_line = 0
average = 0
for line in read_func("test.txt"):
    salary = int(line.split()[1])
    n_line +=1
    average += salary
    if salary < 20000:
        print(line.split()[0])

print("Ср. зарплата:", average/n_line)