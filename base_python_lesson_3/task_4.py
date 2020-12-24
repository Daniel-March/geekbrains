def my_func(x, y, mode="short"):
    res = x

    if mode == "cycle":
        while y < 0:
            res *= x
            y += 1
        return 1/x

    elif mode == "short":
        return res**y

    elif mode == "no-cycle":
        for i in range(abs(y+1)):
            res *= x
        return 1/res


# Example:
print(my_func(4, -5))
print(my_func(4, -5, mode="short"))
print(my_func(4, -5, mode="no-cycle"))
