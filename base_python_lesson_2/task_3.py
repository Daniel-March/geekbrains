month = int(input("Введите номер месяца: ")) 
seasons = ['зима', "весна", "лето", "осень"]

print(f"{month} месяц это {seasons[(month)%12//3]}")
