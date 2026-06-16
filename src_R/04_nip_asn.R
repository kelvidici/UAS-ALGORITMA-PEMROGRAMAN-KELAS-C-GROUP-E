#04_nip_asn.R
# Program menampilkan tanggal lahir ASN dari NIP

# Input NIP
nip <- "199301212019031010"

# Mengambil 8 digit pertama
data_lahir <- substr(nip, 1, 8)

# Memisahkan tahun, bulan, tanggal
tahun <- substr(data_lahir, 1, 4)
bulan <- substr(data_lahir, 5, 6)
tanggal <- substr(data_lahir, 7, 8)

# Percabangan nama bulan
if (bulan == "01") {
  nama_bulan <- "Januari"
} else if (bulan == "02") {
  nama_bulan <- "Februari"
} else if (bulan == "03") {
  nama_bulan <- "Maret"
} else if (bulan == "04") {
  nama_bulan <- "April"
} else if (bulan == "05") {
  nama_bulan <- "Mei"
} else if (bulan == "06") {
  nama_bulan <- "Juni"
} else if (bulan == "07") {
  nama_bulan <- "Juli"
} else if (bulan == "08") {
  nama_bulan <- "Agustus"
} else if (bulan == "09") {
  nama_bulan <- "September"
} else if (bulan == "10") {
  nama_bulan <- "Oktober"
} else if (bulan == "11") {
  nama_bulan <- "November"
} else if (bulan == "12") {
  nama_bulan <- "Desember"
} else {
  nama_bulan <- "Bulan tidak valid"
}

# Menampilkan hasil
cat("Tanggal lahir ASN adalah", tanggal, nama_bulan, tahun)
