class Storage:
    class FullStorageError(Exception):
        def __init__(self, text):
            self.__text = text

        @property
        def text(self):
            return self.__text

    def __init__(self, places: int = 10):
        self.__storage = [None for _ in range(places)]

    @property
    def show(self):
        for index, item in enumerate(self.storage):
            if index % 5 == 0 and index != 0:
                print('\n')
            if item is None:
                print("\033[91m" +
                      f"{index} : _____".ljust(20) + "\033[0m", end="")
            else:
                print(f"{self.__storage.index(item)} : {item}".ljust(20), end="")
        print("\n\n")

    @property
    def storage(self):
        return self.__storage

    def put_item(self, item):
        if None not in self.__storage:
            raise Storage.FullStorageError("Склад полон!")
        self.__storage[self.__storage.index(None)] = item

    def take_item(self, item_id):
        item = self.__storage[item_id]
        self.storage[item_id] = None
        return item


class Item:
    def __init__(self, name, width, height, weight):
        self.__weight = weight
        self.__height = height
        self.__width = width
        self.__name = name

    def __str__(self):
        return self.__name

    @property
    def specifications(self):
        print(f"\033[93m|{self.__name}\033[0m", end="\n\033[93m|\033[0m")
        print("\n\033[93m|\033[0m".join([f'{i.split("__")[-1]} : {j}' for i, j in self.__dict__.items() if i.split("__")[-1] != "name"]))  # Стоило бы разбить на несколько строк наверное)


class Printer(Item):
    def __init__(self, name, width: float, height: float, weight: float, speed: int, colorful: bool, size: int):
        super().__init__(name, width, height, weight)
        self.__speed = speed
        self.__colorful = colorful
        self.__size = size


class Scanner(Item):
    def __init__(self, name, width: float, height: float, weight: float, speed: int, double_sided: bool):
        super().__init__(name, width, height, weight)
        self.__speed = speed
        self.__double_sided = double_sided


class Copier(Item):
    def __init__(self, name, width: float, height: float, weight: float, speed: int, colorful: bool, office: bool):
        super().__init__(name, width, height, weight)
        self.__speed = speed
        self.__colorful = colorful
        self.__office = office


if __name__ == "__main__":
    item_a = Printer("Принтер-Утюг", 12, 14, 235, 12, True, 10)
    item_b = Scanner("Сканер-Бинт", 12, 14, 235, 12, False)
    item_c = Scanner("Светлое Темное", 12, 14, 235, 12, True)
    item_d = Copier("Дважды два", 12, 14, 235, 12, True, False)
    item_e = Copier("И так и сяк", 12, 14, 235, 12, True, True)

    storage = Storage()

    print("\033[93m1 вывод:\033[0m")
    storage.show

    storage.put_item(item_a)
    storage.put_item(item_b)
    storage.put_item(item_c)
    storage.put_item(item_d)
    storage.put_item(item_e)

    print("\033[93m2 вывод:\033[0m")
    storage.show

    storage.take_item(2)

    print("\033[93m3 вывод:\033[0m")
    storage.show

    item_a.specifications
