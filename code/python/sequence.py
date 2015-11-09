def hs(n):
    if (n <= 0):
        return ("error")
    l = 1
    print(n)
    while (n != 1):
        if (n % 2 != 0):
            n = (3*n + 1)
            l = l+1
            print(n)
        else:
            n = (n//2)
            l = l+1
            print(n)
    print("none")
    print(l)
