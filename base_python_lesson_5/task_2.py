with open("test.txt", "r") as file:
    file = file.read()

    lines = file.split("\n")
    if lines[-1] == "":
        del lines[-1]

    print("Кол-во строк:", len(lines))
    
    for index, line in enumerate(lines):
        print(f"В {index+1} строке {len(line)} символов.")
