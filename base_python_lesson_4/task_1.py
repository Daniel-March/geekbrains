from sys import argv


def salary(work_time:int=False, rate:int=False, prize:int=False):
    if not(work_time or rate or prize):
        work_time = int(argv[1])
        rate = int(argv[2])
        prize = int(argv[3])

    print(work_time*rate + prize)


salary()
