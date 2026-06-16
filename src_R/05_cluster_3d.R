#05_cluster_3d.R
# Program menentukan cluster titik U

# Fungsi menghitung jarak
hitung_jarak <- function(U, P) {
  
  jarak <- sqrt(
    (U[1] - P[1])^2 +
      (U[2] - P[2])^2 +
      (U[3] - P[3])^2
  )
  
  return(jarak)
}

# Titik pusat cluster
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

# Input titik U
U <- c(3, 2, 1)

# Menghitung jarak dari U ke setiap cluster
jarak_A <- hitung_jarak(U, A)
jarak_B <- hitung_jarak(U, B)
jarak_C <- hitung_jarak(U, C)

# Menentukan cluster terdekat
if (jarak_A < jarak_B & jarak_A < jarak_C) {
  
  cluster <- "A"
  
} else if (jarak_B < jarak_A & jarak_B < jarak_C) {
  
  cluster <- "B"
  
} else {
  
  cluster <- "C"
  
}

# Output
cat("Titik U =", U, "\n")
cat("Jarak ke cluster A =", jarak_A, "\n")
cat("Jarak ke cluster B =", jarak_B, "\n")
cat("Jarak ke cluster C =", jarak_C, "\n")
cat("Cluster =", cluster)

cat("Jarak ke cluster C =", jarak_C, "\n")
cat("Titik U termasuk cluster", cluster) 
