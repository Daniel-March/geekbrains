class ZeroDivision(Exception):
    def __init__(self, text):
        self.__text = text

    @property
    def text(self):
        return self.__text


try:
    first_digit = float(input("Первое число: "))
    seccond_digit = float(input("Второе число: "))
    if seccond_digit == 0:
        raise ZeroDivision("Деление на нольььь!!!")
    print(first_digit/seccond_digit)
except ZeroDivision as ext:
    print(
        f"\033[91mВНИМАНИЕ! Обратите свое внимание на это внимание! Так как это внимание говорит: {ext.text}\033[0m")
