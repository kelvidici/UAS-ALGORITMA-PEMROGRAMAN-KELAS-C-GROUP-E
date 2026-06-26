import math

def hitung_jarak(titik1, titik2):
    return math.sqrt(
        (titik1[0] - titik2[0])**2 +
        (titik1[1] - titik2[1])**2 +
        (titik1[2] - titik2[2])**2
    )

A = (2, 1, 3)
B = (1, -4, 6)
C = (-2, 3, -2)

x1 = float(input("Masukkan x1: "))
x2 = float(input("Masukkan x2: "))
x3 = float(input("Masukkan x3: "))

U = (x1, x2, x3)

jarak_A = hitung_jarak(U, A)
jarak_B = hitung_jarak(U, B)
jarak_C = hitung_jarak(U, C)

if jarak_A < jarak_B and jarak_A < jarak_C:
    cluster = "A"
elif jarak_B < jarak_A and jarak_B < jarak_C:
    cluster = "B"
else:
    cluster = "C"

print("\nHasil Klasifikasi")
print("------------------")
print(f"Jarak ke A = {jarak_A:.3f}")
print(f"Jarak ke B = {jarak_B:.3f}")
print(f"Jarak ke C = {jarak_C:.3f}")
print(f"Titik U termasuk Cluster {cluster}")
