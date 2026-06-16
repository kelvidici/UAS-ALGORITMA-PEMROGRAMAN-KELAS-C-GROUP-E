#Soal 3
#03_akar_kuadrat.R

# input nilai
a <- as.numeric(readline("Masukkan nilai a: "))
b <- as.numeric(readline("Masukkan nilai b: "))
c <- as.numeric(readline("Masukkan nilai c: "))

    # menghitung diskriminan
    D <- b^2 - 4*a*c
    
    if (D > 0) {
      
      x1 <- (-b + sqrt(D)) / (2*a)
      x2 <- (-b - sqrt(D)) / (2*a)
      
      cat("Persamaan memiliki dua akar real\n")
      cat("x1 =", x1, "\n")
      cat("x2 =", x2, "\n")
      
    } else if (D == 0) {
      
      x <- -b / (2*a)
      
      cat("Persamaan memiliki satu akar real kembar\n")
      cat("x =", x, "\n")
      
    } else {
      
      bagian_real <- -b / (2*a)
      bagian_imajiner <- sqrt(abs(D)) / (2*a)
      
      cat("Persamaan memiliki akar imajiner\n")
      cat("x1 =", bagian_real, "+", bagian_imajiner, "i\n")
      cat("x2 =", bagian_real, "-", bagian_imajiner, "i\n")
      
    }
