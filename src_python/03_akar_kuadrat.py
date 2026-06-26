import math

a = float(input("Masukkan nilai a: "))
b = float(input("Masukkan nilai b: "))
c = float(input("Masukkan nilai c: "))

D = b**2 - 4*a*c

if D > 0:
    x1 = (-b + math.sqrt(D)) / (2*a)
    x2 = (-b - math.sqrt(D)) / (2*a)

    print("Persamaan memiliki dua akar real")
    print("x1 =", x1)
    print("x2 =", x2)

elif D == 0:
    x = -b / (2*a)

    print("Persamaan memiliki satu akar real kembar")
    print("x =", x)

else:
    bagian_real = -b / (2*a)
    bagian_imajiner = math.sqrt(abs(D)) / (2*a)

    print("Persamaan memiliki akar imajiner")
    print("x1 =", bagian_real, "+", bagian_imajiner, "i")
    print("x2 =", bagian_real, "-", bagian_imajiner, "i")
