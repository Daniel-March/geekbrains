class Matrix:
    def __init__(self, matrix):
        self.matrix = matrix

    def __str__(self):
        return("\n".join([" ".join(list(map(str, i))) for i in self.matrix]))

    def __add__(self, other):
        return Matrix([element_1 + element_2 for element_1, element_2 in zip(row[0], row[1])] for row in zip(self.matrix, other.matrix))
