# имя, фамилия, год рождения, город проживания, email, телефон
def stat(name, surname, birth_year, city, email="Отсутствует", number="Отсутствует"):
    print("-"*10)
    print(f"Имя: {name}\nФамилия: {surname}\nГод рождения: {birth_year}\nГород: {city}\nАдрес электронной почты: {email}\nНомер мобильного телефона: {number}")
    print("-"*10)


name = input("Введите имя: ")
surname = input("Введите фамилия: ")
birth_year = input("Введите год рождения: ")
city = input("Введите город: ")
email = input("Введите адрес электронной почты: ")
number = input("Введите номер мобильного телефона: ")

stat(name=name, surname=surname, birth_year=birth_year, city=city, email=email, number=number)
