class Car:
    def __init__(self, color, speed, name, is_police):
        self.color = color
        self.speed = speed
        self.name = name
        self.is_police = is_police
        self.move = False
        self.dir = "forward"

    def go(self):
        self.move = True

    def stop(self):
        self.move = False

    def turn(self, dir):
        self.dir = dir

    def show_speed(self):
        return self.speed * self.move


class TownCar(Car):
    def __init__(self, color, speed, name):
        super().__init__(color=color, speed=speed, name=name, is_police=False)

    def show_speed(self):
        return super().show_speed() if super().show_speed() <= 60 else f"{super().show_speed()} Превышение скорости!"


class SportCar(Car):
    def __init__(self, color, speed, name):
        super().__init__(color=color, speed=speed, name=name, is_police=False)


class WorkCar(Car):
    def __init__(self, color, speed, name):
        super().__init__(color=color, speed=speed, name=name, is_police=False)

    def show_speed(self):
        return super().show_speed() if super().show_speed() <= 40 else f"{super().show_speed()} Превышение скорости!"


class PoliceCar(Car):
    def __init__(self, color, speed, name):
        super().__init__(color=color, speed=speed, name=name, is_police=True)


car_1 = TownCar("red", 70, "Nesan-so")
car_2 = PoliceCar("gren", 120, "Wall-swag-en")
car_3 = SportCar("white", 230, "McLarrrrren-tino")
car_4 = WorkCar("gray", 60, "GAZ-illo")

for car in [car_1, car_2, car_3, car_4]:
    car.go()
    print(car.color, car.name)
    print(car.show_speed())
    print()
