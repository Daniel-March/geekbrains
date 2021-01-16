class Worker:
    __salary = {"cleaner":{"wage": 10000, "bonus": 5000},
                "manager":{"wage": 10001, "bonus": 5200},
                "BOSS":{"wage": 10**1000, "bonus": 10**100}}
    def __init__(self, name, surname, position):
        self.name = name
        self.surname = surname
        self.position  = position
        self._income = self.__salary[position]

class Position(Worker):
    def get_full_name(self):
        return f"{self.name} {self.surname}"

    def get_total_income(self):
        return self._income["wage"] + self._income["bonus"]

worker = Position("Игорь", "Владимир", "manager")
print(worker.get_full_name())
print(worker.get_total_income())