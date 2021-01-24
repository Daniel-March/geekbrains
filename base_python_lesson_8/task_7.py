class Complex:
    def __init__(self, digit, _imaginary=False):
        if _imaginary is False:
            self.__real = float(str(digit).split("+")[0])
            self.__imaginary = float(str(digit).split("+")[1][:-1])
        else:
            self.__real = float(digit)
            if str(_imaginary).replace("-", "").isdigit():
                self.__imaginary = float(_imaginary)
            else:
                self.__imaginary = float(str(_imaginary)[:-1])
        self.converting()

    def converting(self):
        """Приводит части чтсла к int, если это возможно"""
        if int(self.__real) == self.__real:
            self.__real = int(self.__real)
        if int(self.__imaginary) == self.__imaginary:
            self.__imaginary = int(self.__imaginary)

    @property
    def real(self):
        return self.__real

    @property
    def imaginary(self):
        return self.__imaginary

    def __str__(self):
        res = str(self.__real) if self.__real != 0 else ""
        res += "+" if self.__real != 0 and self.imaginary > 0 else ""
        res += f"{self.__imaginary}i" if self.__imaginary != 0 else ""
        if res == "":
            return 0
        return res

    def __add__(self, other):
        return Complex(self.real + other.real, self.imaginary + other.imaginary)

    def __sub__(self, other):
        return Complex(self.real - other.real, self.imaginary - other.imaginary)

    def __mul__(self, other):
        real = self.real * other.real - self.imaginary * other.imaginary
        imaginary = self.real * other.imaginary + self.imaginary * other.real
        return Complex(real, imaginary)

    def __truediv__(self, other):
        real = self.real * other.real + self.imaginary * other.imaginary
        real /= (other.real**2) + (other.imaginary**2)

        imaginary = self.imaginary * other.real - self.real * other.imaginary
        imaginary /= (other.real**2) + (other.imaginary**2)
        return Complex(real, imaginary)


a = Complex("5+6i")
b = Complex("50", "60i")
c = Complex(5, "6i")
d = Complex(50, 60)

print(a+b)
print(c-d)
print(a/b)
print(c*d)
