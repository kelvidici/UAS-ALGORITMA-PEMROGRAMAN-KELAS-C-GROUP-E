#Soal 1
#01_analisis_teks.R

#input teks
teks <- "Media sosial atau disebut juga dengan jejaring sosial seperti Facebook, Twitter, Instagram dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat baik bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
#hitung jumlah kalimat
jumlah_kalimat <- length(unlist(strsplit(teks, "\\.")))
#hitung jumlah kata
kata <- unlist(strsplit(teks, " "))
jumlah_kata<- length(kata)
#menampilkan hasil
cat("Jumlah kalimat =", jumlah_kalimat, "\n")
cat("Jumlah kata =", jumlah_kata)
