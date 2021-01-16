class Road:
    def __init__(self, lenght:int, width:int):
        self.__lenght = lenght
        self.__width = width

    def asphalt_calculation(self, weight, layers:int):
        """Возвращает массу асфальта необходимую для покрытия дороги асфальтом, весом weight кг/м^2, в layers слоев, толщьной 1 см.(Масса возвращается в тоннах)"""
        mass = self.__lenght * self.__width * weight * layers /10**4
        return mass


road = Road(lenght = 50000, width = 20)
print(road.asphalt_calculation(weight = 25, layers = 5))