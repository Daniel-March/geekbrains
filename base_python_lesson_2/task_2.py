n = int(input("Кол-во элементов: "))

array = []
for i in range(n):
    array.append(input(f"{i+1} элемент: "))

print(array)

for i in range(1,n,2):
    array[i], array[i - 1] = array[i-1], array[i]

print(array)
