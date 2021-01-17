class Stationery:
    def __init__(self, title):
        self.title = title

    def draw(self):
        print('Запуск отрисовки.')


class Pen(Stationery):
    def __init__(self):
        super().__init__("pen")

    def draw(self):
        print('Начата отрисовка Pen.')


class Pencil(Stationery):
    def __init__(self):
        super().__init__("pencil")

    def draw(self):
        print('Начата отрисовка Pencil.')


class Handle(Stationery):
    def __init__(self):
        super().__init__("handle")

    def draw(self):
        print('Начата отрисовка Handle.')


stationery_1 = Pen()
stationery_2 = Pencil()
stationery_3 = Handle()

for item in [stationery_1, stationery_2, stationery_3]:
    item.draw()