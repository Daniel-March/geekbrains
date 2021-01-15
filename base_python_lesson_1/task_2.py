sec = int(input('Секунды: '))

res = f"{sec//3600}:{(sec%3600)//60}:{sec%60}"

print(res)