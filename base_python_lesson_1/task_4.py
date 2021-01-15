n = int(input('Введите число: '))
N = 0

while n > 0:
    N = n%10 if n%10>N else N
    n //=10

print(N)