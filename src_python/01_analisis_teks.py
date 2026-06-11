# Program Menghitung Jumlah Kata dan Jumlah Kalimat

# Membaca teks yang dimasukkan pengguna melalui keyboard,
# lalu menghapus spasi di awal dan akhir teks dengan .strip()
teks = input("").strip()

# Mengecek apakah pengguna tidak memasukkan teks (kosong)
if teks == "":
    
    # Menampilkan pesan bahwa input tidak boleh kosong
    print("Teks tidak boleh kosong!")

# Jika teks tidak kosong, program masuk ke bagian ini
else:
    
    # Memisahkan teks berdasarkan spasi menjadi beberapa kata,
    # kemudian menghitung banyaknya kata menggunakan len()
    jumlah_kata = len(teks.split())
    
    # Menghitung jumlah tanda titik (.)
    # Karena pada soal titik hanya digunakan sebagai akhir kalimat,
    # maka jumlah titik dianggap sebagai jumlah kalimat
    jumlah_kalimat = teks.count(".")

    # Menampilkan judul hasil analisis
    print("\nHasil Analisis Teks")
    
    # Menampilkan garis pemisah agar output lebih rapi
    print("-------------------")
    
    # Menampilkan jumlah kata yang telah dihitung
    print("Jumlah kata    :", jumlah_kata)
    
    # Menampilkan jumlah kalimat yang telah dihitung
    print("Jumlah kalimat :", jumlah_kalimat)
