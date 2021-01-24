class Date:
    def __init__(self, date: str):
        """date в формате DAY-MONTH-YEAR"""
        self.__date = self.get_date(date) if self.get_date(
            date) != False else self.get_date("1-1-1")

    def __str__(self):
        return f'{self.__date["D"]}-{self.__date["M"]}-{self.__date["Y"]}'

    @property
    def date(self):
        return str(self)

    @staticmethod
    def validation(date: str) -> bool:
        """date в формате DAY-MONTH-YEAR"""
        temp = date
        month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        date = {"D": date.split("-")[0],
                "M": date.split("-")[1],
                "Y": date.split("-")[2], }

        if not date["Y"].isdigit() or int(date["Y"]) < 1:
            date["Y"] = False
        if not date["M"].isdigit() or int(date["M"]) < 0 or int(date["M"]) > 12:
            date["M"] = False
        if not date["D"].isdigit() or int(date["D"]) < 0 or int(date["D"]) > (month_days[int(date["M"])-1] if date["M"] != False else 31):
            date["D"] = False

        if not date["D"] or not date["M"] or not date["Y"]:
            print("\033[91m" + f'DateError {temp}: {"День - число 0 до 28-31 в зависиомсти от месяца. " if not date["D"] else ""}{"Месяц - число от 1 до 12. " if not date["M"] else ""}{"Год - число больше 0." if not date["Y"] else ""}' + "\033[0m")

        return bool(date["D"] and date["M"] and date["Y"])

    @classmethod
    def get_date(cls, date):
        """date в формате DAY-MONTH-YEAR"""
        if cls.validation(date) == False:
            return False

        date = {"D": int(date.split("-")[0]),
                "M": int(date.split("-")[1]),
                "Y": int(date.split("-")[2]), }

        return date


date_a = Date("32-11-q4")

date_b = Date("12-13-2004")

date_c = Date("12-10-2004")
print("date_c:", date_c.date)

date_d = Date("1w-13-2004")

date_e = Date("25-8-1566")

print("Проверка DD-MM-YYYY вернула", Date.validation("DD-MM-YYYY"))

print("Проверка 14-1-1566 вернула", Date.validation("14-1-1566"))
