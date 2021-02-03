class Print:
    __COLOR = {"white": "\033[0m", "red": "\033[91m", "yellow": "\033[93m"}

    def __init__(self, string, size=False, end="\n", color="white", sep=" "):
        if size != False:
            print(f"{self.__COLOR[color]}" +
                  string.ljust(20) + "\033[0m", end=end, sep=sep)
        else:
            print(f"{self.__COLOR[color]}" +
                  string + "\033[0m", end=end, sep=sep)


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
        """Вывести список вещей"""
        Print("-"*100, color="yellow")
        Print("Склад:", color="yellow")
        for index, item in enumerate(self.storage):
            if index % 5 == 0 and index != 0:
                print('\n')
            if item is None:
                Print(f"{index} : _____", end="", color="red", size=20)
            else:
                Print(f"{self.__storage.index(item)} : {item}",
                      end="", color="yellow", size=20)
        print()
        Print("-"*100, color="yellow")

    @property
    def storage(self):
        return self.__storage

    def put_item(self, item):
        """Добавить вещь на склад"""
        if None not in self.__storage:
            raise Storage.FullStorageError("Склад полон!")
        self.__storage[self.__storage.index(None)] = item

    def take_item(self, item_id):
        """Взять вещь со склада"""
        item = self.__storage[item_id]
        self.storage[item_id] = None
        return item

    def send(self, item_id, to):
        """Отправить вещь в to"""
        # to.put_item(self.take_item(item_id))
        self.storage[item_id] = None


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
        specification_list = [f'{i.split("__")[-1]} : {j}' for i,
                              j in self.__dict__.items() if i.split("__")[-1] != "name"]
        Print(f"|{self.__name}", color="yellow")
        for line in specification_list:
            Print("|", color="yellow", end="")
            Print(line)


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

    storage = Storage(places=50)

    storage.put_item(item_a)
    storage.put_item(item_b)
    storage.put_item(item_c)
    storage.put_item(item_d)
    storage.put_item(item_e)

    storage.show

    storage.send(3, "Any other object")

    storage.show

    item_a.specifications
