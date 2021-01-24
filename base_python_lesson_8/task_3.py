class ListError(Exception):
    def __init__(self, text):
        self.__text = text

    @property
    def text(self):
        return self.__text

    @staticmethod
    def validation(element):
        """Проверка элемента на число. Возвращает число или вызывает ошибку."""
        if not element.isdigit():
            raise ListError(
                "Обнаружено вторжение нечислового элемента! Элемент уничтожен! Мобилизовать численную армию!")
        return element


only_digit_list = []
while True:
    input_element = input("Ввод: ")
    if input_element == "stop":
        break

    try:
        only_digit_list.append(ListError.validation(input_element))
    except ListError as exp:
        print(f"\033[91mПоходу мы попали. {exp.text}\033[0m")

print(only_digit_list)
