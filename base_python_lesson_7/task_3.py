class Cellula:
    def __init__(self, cell_count):
        if cell_count >= 1:
            self.__cell_count = cell_count
        else:
            print(
                f"Кол-во клеток не может быть меньше 1. ( {self.cell_count} < 1 )")

    def __str__(self):
        return str(self.cell_count)

    def __add__(self, other):
        return Cellula(self.cell_count + other.cell_count)

    def __sub__(self, other):
        res = self.cell_count - other.cell_count
        if res >= 1:
            return Cellula(res)
        print(
            f"Кол-во клеток не может быть меньше 1. ( {self.cell_count} - {other.cell_count} < 1 )")

    def __mul__(self, other):
        return Cellula(self.cell_count * other.cell_count)

    def __truediv__(self, other):
        res = int(self.cell_count / other.cell_count)
        if res >= 1:
            return Cellula(res)
        print(
            f"Кол-во клеток не может быть меньше 1. ( {self.cell_count} / {other.cell_count} < 1 )")

    @property
    def cell_count(self):
        return self.__cell_count

    def make_order(self, size):
        rows = int(self.cell_count/size-1)
        return ("*"*size+"\n")*rows + "*"*size + "\n" + "*"*(self.cell_count % size)
