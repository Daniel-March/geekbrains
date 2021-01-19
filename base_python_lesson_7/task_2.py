from abc import ABC, abstractproperty


class Clothes(ABC):
    def __init__(self, clothes_name):
        self.__name = clothes_name

    @property
    def name(self):
        return self.__name

    @abstractproperty
    def tissue_consumption(self):
        pass


class Coat(Clothes):
    def __init__(self, size, name):
        self.size = size
        super().__init__(name)

    @property
    def tissue_consumption(self):
        return self.size/6.5 + 0.5


class Suit(Clothes):
    def __init__(self, height, name):
        self.height = height
        super().__init__(name)

    @property
    def tissue_consumption(self):
        return 2 * self.height + 0.3
