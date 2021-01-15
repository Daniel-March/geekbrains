n = int(input("Кол-во товаров: "))
products = []

for i in range(n):
    print(f"Товар {i+1} -----")
    products.append((len(products), {   "название":input("Название: "), 
                                        'цена':int(input('Цена: ')), 
                                        "количество":int(input("Количество: ")),
                                        "eд": input("Единица: ")}))

analytics = {   "название": [],
                'цена': [],
                "количество": [],
                "eд": []}

for i in products:
    analytics["название"].append(i[1]['название'])
    analytics['цена'].append(i[1]['цена'])
    analytics["количество"].append(i[1]['количество'])
    analytics["eд"].append(i[1]['eд'])

print(analytics)
