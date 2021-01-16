from time import sleep
from threading import Thread


class TrafficLight:
    color = "Красный"

    def running(self):
        while True:
            print(self.color)
            if self.color == "Красный":
                sleep(7)
                self.color = "Желтый"
            elif self.color == "Желтый":
                sleep(2)
                self.color = "Зеленый"
            elif self.color == "Зеленый":
                sleep(7)
                self.color = "Красный"


func = Thread(target=TrafficLight().running, daemon=True)

print("Нажмите Enter, чтобы отключить светофор.")
func.start()
input()
