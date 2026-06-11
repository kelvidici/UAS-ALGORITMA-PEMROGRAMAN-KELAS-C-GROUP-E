#Soal 3
#03_akar_kuadrat.R

# Fungsi untuk menghitung akar persamaan kuadrat
hitung_akar_kuadrat <- function() {
  cat("--- Program Hitung Akar Persamaan Kuadrat (ax^2 + bx + c = 0) ---\n")
  
  # Membaca input koefisien dari user
  a <- as.numeric(readline(prompt = "Masukkan koefisien a: "))
  b <- as.numeric(readline(prompt = "Masukkan koefisien b: "))
  c <- as.numeric(readline(prompt = "Masukkan koefisien c: "))
  
  # Validasi jika a = 0 (bukan persamaan kuadrat)
  if (a == 0) {
    cat("Nilai 'a' tidak boleh 0 karena bukan merupakan persamaan kuadrat.\n")
    return()
  }
  
  # Menghitung Diskriminan (D)
  D <- (b^2) - (4 * a * c)
  
  # Pengecekan kondisi Diskriminan
  if (D > 0) {
    # Dua akar real yang berbeda
    x1 <- (-b + sqrt(D)) / (2 * a)
    x2 <- (-b - sqrt(D)) / (2 * a)
    
    cat("\nPersamaan memiliki dua akar real yang berbeda:\n")
    cat(sprintf("x1 = %.3f\n", x1))
    cat(sprintf("x2 = %.3f\n", x2))
    
  } else if (D == 0) {
    # Satu akar real (kembar)
    x <- -b / (2 * a)
    
    cat("\nPersamaan memiliki satu akar real (kembar):\n")
    cat(sprintf("x = %.3f\n", x))
    
  } else {
    # Akar imajiner jika D < 0
    cat("\nPersamaan tersebut hanya memiliki akar-akar imajiner.\n")
  }
}

# Menjalankan fungsi program
hitung_akar_kuadrat()
