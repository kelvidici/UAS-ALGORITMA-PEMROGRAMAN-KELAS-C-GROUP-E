import math

# fungsi interval kepercayaan
def interval_konfidensi(phat, n, alpha):
    if alpha == 0.10:
        z = 1.645
    elif alpha == 0.05:
        z = 1.96
    else:
        print("Alpha tidak tersedia")
        return None

    margin_error = z * math.sqrt((phat * (1 - phat)) / n)
    batas_bawah = phat - margin_error
    batas_atas = phat + margin_error

    return batas_bawah, batas_atas

# input data
phat = 0.6
n = 100
alpha = 0.05

# validasi proporsi
if phat < 0 or phat > 1:
    print("Error: Proporsi harus berada di antara 0 dan 1")
else:
    hasil = interval_konfidensi(phat, n, alpha)

    print("Interval Konfidensi")
    print("Batas bawah =", hasil[0])
    print("Batas atas =", hasil[1])
