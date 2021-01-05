def read_func(file_name: str):
    with open(file_name, "r") as file:
        while True:
            line = file.readline()
            if line == "":
                break
            yield line

result = [{}, {"average_profit":0}]
n_line = 0
average = 0
for line in read_func("test.txt"):
    profit = int(line.split()[2]) -int(line.split()[3])
    n_line +=1
    result[0][line.split()[0]] = profit
    if profit < 0:
        continue
    average += profit
    
result[1]["average_profit"] = average/n_line
print(result)
