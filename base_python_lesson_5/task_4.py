def read_func(file_name:str):
    with open(file_name, "r") as file:
        while True:
            line = file.readline()
            if line == "":
                break
            yield line

numbers = { "One" : "один",
            "Two" : "два",
            "Three" : "три",
            "Four" : "четыре",
            "Five" : "пять",
            "Six" : "шесть",
            "Seven" : "семь",
            "Eight" : "восемь",
            "Nine" : "девять",
            "Ten" : "десять",
            "Eleven" : "одиннадцать",
            "Twelve" : "двенадцать",
            "Thirteen" : "тринадцать",
            "Fourteen" : "четырнадцать",
            "Fifteen" : "пятнадцать"}
with open("new_test.txt", "w") as new_file:
    for line in read_func("test.txt"):
        for key, value in numbers.items():
            line = line.replace(key, value)
        new_file.write(line)
