def hitung_kalimat(teks):
    return len(teks.split(".")) - 1

def hitung_kata(teks):
    kata = teks.split(" ")
    return len(kata)

teks = "Bahan Bakar Minyak (BBM) merupakan salah satu sumber energi yang paling banyak digunakan dalam kehidupan sehari-hari. BBM berasal dari proses pengolahan minyak bumi yang menghasilkan berbagai jenis bahan bakar, seperti bensin, solar, dan avtur. Penggunaan BBM sangat penting untuk mendukung kegiatan transportasi, industri, pembangkit listrik, serta berbagai aktivitas ekonomi lainnya. Kendaraan bermotor, baik roda dua maupun roda empat, umumnya menggunakan BBM sebagai sumber tenaga utama. Meskipun memiliki peran yang besar dalam menunjang kehidupan modern, penggunaan BBM yang berlebihan dapat menimbulkan berbagai dampak negatif, seperti pencemaran udara dan peningkatan emisi gas rumah kaca yang berkontribusi terhadap perubahan iklim. Oleh karena itu, diperlukan upaya untuk menggunakan BBM secara bijak dan efisien. Selain itu, pengembangan energi alternatif seperti tenaga surya, angin, dan listrik juga perlu terus ditingkatkan guna mengurangi ketergantungan terhadap BBM. Dengan demikian, kebutuhan energi masyarakat dapat tetap terpenuhi sekaligus menjaga kelestarian lingkungan untuk generasi mendatang."

jumlah_kalimat = hitung_kalimat(teks)
jumlah_kata = hitung_kata(teks)

print("Jumlah kalimat =", jumlah_kalimat)
print("Jumlah kata =", jumlah_kata)
